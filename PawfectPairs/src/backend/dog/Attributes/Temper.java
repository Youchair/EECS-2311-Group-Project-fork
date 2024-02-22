package backend.dog.Attributes;

public class Temper extends Attribute {
	private String[] names = {"Friendly","Shy","Assertive"};
    public Temper(int weight){
        super(weight);
        this.setName(names[weight]);    
    }
    @Override
	public String toString() {
		return this.getName();
	}
	@Override
	public String[] getNames() {
		// TODO Auto-generated method stub
		return names;
	}
}


