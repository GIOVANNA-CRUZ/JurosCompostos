package dados;

public class Juros {

	public double[] calcularJuros(double aporte, double porcentagem) {

		int meses = 0;
		int anos = 0;
		int mesesAnos = 0;
		double dinheiroGuardado = 0;
		double rendimento = 0;
		double rendimentoFinal = 0;
		porcentagem = porcentagem / 100;

		while(dinheiroGuardado < 1000000) {
			meses++;
			rendimento = porcentagem * dinheiroGuardado;
			rendimentoFinal = rendimentoFinal + rendimento;
			dinheiroGuardado = dinheiroGuardado + rendimento + aporte;
		}

		aporte = aporte * meses;
		anos = meses / 12;
		mesesAnos = anos * 12;
		mesesAnos = meses - mesesAnos;
		

		double[] retorno = { meses, anos, rendimentoFinal, aporte , mesesAnos };
		return retorno;
	}

}