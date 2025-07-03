Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF4EAF741A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 14:29:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F79010E0E9;
	Thu,  3 Jul 2025 12:29:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF0A310E0E9;
 Thu,  3 Jul 2025 12:29:45 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uXJ4O-00000008ddg-1oay; Thu, 03 Jul 2025 15:29:42 +0300
Message-ID: <70f44e4a07d6dd28df08baef3fd07133d0e7caa6.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 03 Jul 2025 15:29:39 +0300
In-Reply-To: <20250626082053.219514-15-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-15-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 14/20] drm/i915/dp: Return early if getting/ackink link
 service IRQs fails
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2025-06-26 at 11:20 +0300, Imre Deak wrote:
> If getting/acking the link service IRQs fail, the short HPD handler
> should bail out, falling back to a full connector detection as in case
> of any AUX access failures during the HPD handling. Do this by
> separating the getting/acking and handling steps of the IRQs.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 35 +++++++++++++++++--------
>  1 file changed, 24 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index cfbe7c6f896ab..2ba4a810f22c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5428,33 +5428,43 @@ static void intel_dp_handle_device_service_irq(st=
ruct intel_dp *intel_dp, u8 irq
>  		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
>  }
> =20
> -static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
> +static bool intel_dp_get_and_ack_link_service_irq(struct intel_dp *intel=
_dp, u8 *irq_mask)
>  {
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> -	bool reprobe_needed =3D false;
>  	u8 val;
> =20
> +	*irq_mask =3D 0;
> +
>  	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
> -		return false;
> +		return true;
> =20
>  	if (drm_dp_dpcd_readb(&intel_dp->aux,
>  			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) !=3D 1)
> -		return true;
> +		return false;
> =20
>  	if (!val)
> -		return false;
> +		return true;
> =20
>  	if (drm_dp_dpcd_writeb(&intel_dp->aux,
>  			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) !=3D 1)
> -		return true;
> +		return false;
> =20
> -	if (val & RX_CAP_CHANGED)
> +	*irq_mask =3D val;
> +
> +	return true;
> +}
> +
> +static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, =
u8 irq_mask)
> +{
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +	bool reprobe_needed =3D false;
> +
> +	if (irq_mask & RX_CAP_CHANGED)
>  		reprobe_needed =3D true;
> =20
> -	if (val & HDMI_LINK_STATUS_CHANGED)
> +	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
>  		intel_dp_handle_hdmi_link_status_change(intel_dp);
> =20
> -	if ((val & DP_TUNNELING_IRQ) &&
> +	if ((irq_mask & DP_TUNNELING_IRQ) &&
>  	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
>  				     &intel_dp->aux))
>  		reprobe_needed =3D true;
> @@ -5499,7 +5509,10 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
> =20
>  	intel_dp_handle_device_service_irq(intel_dp, irq_mask);
> =20
> -	if (intel_dp_check_link_service_irq(intel_dp))
> +	if (!intel_dp_get_and_ack_link_service_irq(intel_dp, &irq_mask))
> +		return false;
> +
> +	if (intel_dp_handle_link_service_irq(intel_dp, irq_mask))
>  		reprobe_needed =3D true;
> =20
>  	/* Handle CEC interrupts, if any */

Same as with the previous patch.  With a short comment about the bool
meaning:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
