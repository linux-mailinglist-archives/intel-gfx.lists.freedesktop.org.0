Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA49AEF019
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 09:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 300AD10E26D;
	Tue,  1 Jul 2025 07:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D95F310E26D;
 Tue,  1 Jul 2025 07:51:05 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uWVlV-00000008ZFZ-3SDi; Tue, 01 Jul 2025 10:51:02 +0300
Message-ID: <a1a0e21f601d7b6cd097dde22e425d77c170dea1.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Date: Tue, 01 Jul 2025 10:50:52 +0300
In-Reply-To: <20250626082053.219514-4-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-4-imre.deak@intel.com>
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
Subject: Re: [PATCH 03/20] drm/i915/dp_mst: Reuse
 intel_dp_check_link_state() in the HPD IRQ handler
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
> Use intel_dp_check_link_state() in the MST HPD IRQ handler instead of
> open-coding it.
>=20
> Signed-off-by: Imre Deak <imre.deak@gmail.com>

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 34 +++----------------------
>  1 file changed, 4 insertions(+), 30 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index ac7e08f485309..285cd9a5d4a7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5065,24 +5065,6 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8=
 *esi, u8 *ack)
>  	}
>  }
> =20
> -static bool intel_dp_mst_link_status(struct intel_dp *intel_dp)
> -{
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> -	u8 link_status[DP_LINK_STATUS_SIZE] =3D {};
> -	const size_t esi_link_status_size =3D DP_LINK_STATUS_SIZE - 2;
> -
> -	if (drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS_ESI, link_status=
,
> -			     esi_link_status_size) !=3D esi_link_status_size) {
> -		drm_err(display->drm,
> -			"[ENCODER:%d:%s] Failed to read link status\n",
> -			encoder->base.base.id, encoder->base.name);
> -		return false;
> -	}
> -
> -	return intel_dp_link_ok(intel_dp, link_status);
> -}
> -
>  /**
>   * intel_dp_check_mst_status - service any pending MST interrupts, check=
 link status
>   * @intel_dp: Intel DP struct
> @@ -5101,9 +5083,6 @@ static bool
>  intel_dp_check_mst_status(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	struct intel_encoder *encoder =3D &dig_port->base;
> -	bool link_ok =3D true;
>  	bool reprobe_needed =3D false;
> =20
>  	for (;;) {
> @@ -5120,12 +5099,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_d=
p)
> =20
>  		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
> =20
> -		if (intel_dp_mst_active_streams(intel_dp) > 0 && link_ok &&
> -		    esi[3] & LINK_STATUS_CHANGED) {
> -			if (!intel_dp_mst_link_status(intel_dp))
> -				link_ok =3D false;
> -			ack[3] |=3D LINK_STATUS_CHANGED;
> -		}
> +		ack[3] |=3D esi[3] & LINK_STATUS_CHANGED;
> =20
>  		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
> =20
> @@ -5144,10 +5118,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_=
dp)
> =20
>  		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
>  			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst.mgr);
> -	}
> =20
> -	if (!link_ok || intel_dp->link.force_retrain)
> -		intel_encoder_link_check_queue_work(encoder, 0);
> +		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
> +			intel_dp_check_link_state(intel_dp);
> +	}
> =20
>  	return !reprobe_needed;
>  }
