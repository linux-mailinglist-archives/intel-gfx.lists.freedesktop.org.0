Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B16FAF7549
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 15:19:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B91D010E831;
	Thu,  3 Jul 2025 13:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D6BF10E831;
 Thu,  3 Jul 2025 13:18:58 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uXJq4-00000008dlQ-1YNy; Thu, 03 Jul 2025 16:18:56 +0300
Message-ID: <e5f83c3f26515323c86809f26eaf46811854261f.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Date: Thu, 03 Jul 2025 16:18:55 +0300
In-Reply-To: <20250626082053.219514-21-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-21-imre.deak@intel.com>
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
Subject: Re: [PATCH 20/20] drm/i915/dp: Ack only the handled link service IRQs
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
> Ack only those SST link service IRQs that will be handled, similarly to
> device service IRQs. While at it add asserts that only the known/acked
> link service IRQs are handled both in the MST and SST case.
>=20
> Signed-off-by: Imre Deak <imre.deak@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 6f67fac9724e1..0e3e9ab3ac604 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4545,6 +4545,16 @@ intel_dp_mst_disconnect(struct intel_dp *intel_dp)
>  						 DP_DOWN_REP_MSG_RDY | \
>  						 DP_UP_REQ_MSG_RDY)
> =20
> +#define INTEL_DP_LINK_SERVICE_IRQ_MASK_SST	(RX_CAP_CHANGED | \
> +						 LINK_STATUS_CHANGED | \
> +						 HDMI_LINK_STATUS_CHANGED | \
> +						 CONNECTED_OFF_ENTRY_REQUESTED | \
> +						 DP_TUNNELING_IRQ)
> +
> +#define INTEL_DP_LINK_SERVICE_IRQ_MASK_MST	(RX_CAP_CHANGED | \
> +						 LINK_STATUS_CHANGED | \
> +						 DP_TUNNELING_IRQ)
> +
>  static bool
>  intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
>  {
> @@ -4637,6 +4647,7 @@ static bool intel_dp_get_and_ack_sink_irq_esi_sst(s=
truct intel_dp *intel_dp, u8
>  		    esi);
> =20
>  	esi[1] &=3D INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST;
> +	esi[3] &=3D INTEL_DP_LINK_SERVICE_IRQ_MASK_SST;
> =20
>  	if (mem_is_zero(&esi[1], 3))
>  		return true;
> @@ -5175,7 +5186,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp=
)
> =20
>  		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
> =20
> -		ack[3] |=3D esi[3] & (RX_CAP_CHANGED | LINK_STATUS_CHANGED | DP_TUNNEL=
ING_IRQ);
> +		ack[3] |=3D esi[3] & INTEL_DP_LINK_SERVICE_IRQ_MASK_MST;
> =20
>  		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
> =20
> @@ -5183,6 +5194,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp=
)
>  			break;
> =20
>  		drm_WARN_ON(display->drm, ack[1] & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_M=
ST);
> +		drm_WARN_ON(display->drm, ack[3] & ~INTEL_DP_LINK_SERVICE_IRQ_MASK_MST=
);
> =20
>  		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
>  			drm_dbg_kms(display->drm, "Failed to ack ESI\n");
> @@ -5487,6 +5499,9 @@ static bool intel_dp_handle_link_service_irq(struct=
 intel_dp *intel_dp, u8 irq_m
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	bool reprobe_needed =3D false;
> =20
> +	drm_WARN_ON(display->drm, irq_mask & ~(INTEL_DP_LINK_SERVICE_IRQ_MASK_S=
ST |
> +					       INTEL_DP_LINK_SERVICE_IRQ_MASK_MST));
> +
>  	if (irq_mask & RX_CAP_CHANGED)
>  		reprobe_needed =3D true;
> =20

Okay, so for link service, this is function also handles MST stuff.=20
So, maybe for consistency, you can ignore my comment about adding
"_sst" in the previous patch.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
