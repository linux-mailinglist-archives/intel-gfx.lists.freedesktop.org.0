Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44576AEF05D
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 10:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E85B510E519;
	Tue,  1 Jul 2025 08:02:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8791110E518;
 Tue,  1 Jul 2025 08:02:35 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uWVwl-00000008ZGr-251g; Tue, 01 Jul 2025 11:02:33 +0300
Message-ID: <d6bbc8ebfc0e5948d271cca3e1dbe736b611e3e0.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Date: Tue, 01 Jul 2025 11:02:30 +0300
In-Reply-To: <20250626082053.219514-5-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-5-imre.deak@intel.com>
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
Subject: Re: [PATCH 04/20] drm/i915/dp: Handle a tunneling IRQ after acking it
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
> From: Imre Deak <imre.deak@gmail.com>
>=20
> HPD IRQs in general should be handled after acking them. The
>=20
> 1. Read IRQ register (read DP_DEVICE_SERVICE_IRQ_VECTOR,
>    DP_LINK_SERVICE_IRQ_VECTOR_ESI0)
> 2. Handle IRQ
> 3. Ack IRQ (write DP_DEVICE_SERVICE_IRQ_VECTOR,
>    DP_LINK_SERVICE_IRQ_VECTOR_ESI0)
>=20
> sequence would miss a new interrupt triggered after 2. and before 3.,
> since the flag set in the IRQ register for this interrupt would be
> cleared in step 3.
>=20
> Fix the above by handling the IRQ after acking it.
>=20
> Signed-off-by: Imre Deak <imre.deak@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++--------------
>  1 file changed, 11 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 285cd9a5d4a7b..453416b9e9bec 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5099,17 +5099,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_=
dp)
> =20
>  		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
> =20
> -		ack[3] |=3D esi[3] & LINK_STATUS_CHANGED;
> +		ack[3] |=3D esi[3] & (LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
> =20
>  		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
> =20
> -		if (esi[3] & DP_TUNNELING_IRQ) {
> -			if (drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
> -						     &intel_dp->aux))
> -				reprobe_needed =3D true;
> -			ack[3] |=3D DP_TUNNELING_IRQ;
> -		}
> -
>  		if (mem_is_zero(ack, sizeof(ack)))
>  			break;

What happens if we ack the interrupt, but end up not handling it, e.g.
if mem_is_zero() returns true here?


> =20
> @@ -5121,6 +5114,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_d=
p)
> =20
>  		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
>  			intel_dp_check_link_state(intel_dp);
> +
> +		if ((ack[3] & DP_TUNNELING_IRQ) &&
> +		    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr, &intel_dp->aux))
> +			reprobe_needed =3D true;
>  	}
> =20
>  	return !reprobe_needed;
> @@ -5423,18 +5420,18 @@ static bool intel_dp_check_link_service_irq(struc=
t intel_dp *intel_dp)
>  			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) !=3D 1 || !val)
>  		return false;
> =20
> -	if ((val & DP_TUNNELING_IRQ) &&
> -	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
> -				     &intel_dp->aux))
> -		reprobe_needed =3D true;
> -
>  	if (drm_dp_dpcd_writeb(&intel_dp->aux,
>  			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) !=3D 1)
> -		return reprobe_needed;
> +		return false;
> =20
>  	if (val & HDMI_LINK_STATUS_CHANGED)
>  		intel_dp_handle_hdmi_link_status_change(intel_dp);
> =20
> +	if ((val & DP_TUNNELING_IRQ) &&
> +	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
> +				     &intel_dp->aux))
> +		reprobe_needed =3D true;
> +
>  	return reprobe_needed;
>  }
> =20

--
Cheers,
Luca.
