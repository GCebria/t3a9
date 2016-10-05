/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidad;

/**
 *
 * @author alumno
 */
public class autorizacion {
    private String practica;
    private Integer cantidad;
    private String estado;
    private String pendienteAutorizacion;
    private String motivo;

    /**
     * @return the practica
     */
    public String getPractica() {
        return practica;
    }

    /**
     * @param practica the practica to set
     */
    public void setPractica(String practica) {
        this.practica = practica;
    }

    /**
     * @return the cantidad
     */
    public Integer getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the estado
     */
    public String getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }

    /**
     * @return the pendienteAutorizacion
     */
    public String getPendienteAutorizacion() {
        return pendienteAutorizacion;
    }

    /**
     * @param pendienteAutorizacion the pendienteAutorizacion to set
     */
    public void setPendienteAutorizacion(String pendienteAutorizacion) {
        this.pendienteAutorizacion = pendienteAutorizacion;
    }

    /**
     * @return the motivo
     */
    public String getMotivo() {
        return motivo;
    }

    /**
     * @param motivo the motivo to set
     */
    public void setMotivo(String motivo) {
        this.motivo = motivo;
    }
}
