Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE142AEF061
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 10:04:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C2F10E518;
	Tue,  1 Jul 2025 08:04:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 160C410E045;
 Tue,  1 Jul 2025 08:03:59 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uWVy8-00000008ZHD-3kEh; Tue, 01 Jul 2025 11:03:57 +0300
Message-ID: <286aac3a6b38a7a2775172d0dba5b5cc6c785b5a.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Date: Tue, 01 Jul 2025 11:03:56 +0300
In-Reply-To: <20250626082053.219514-6-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-6-imre.deak@intel.com>
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
Subject: Re: [PATCH 05/20] drm/i915/dp: Handle the RX_CAP_CHANGED HPD IRQ
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
> Handle the RX_CAP_CHANGED IRQ, which a sink can use to indicate a DPRX
> capability change without disconnecting and reconnecting itself (i.e.
> through a short vs. long HPD pulse). Handle the IRQ by doing a full
> connector detection.
>=20
> Signed-off-by: Imre Deak <imre.deak@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 453416b9e9bec..c2eadfa060c2d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5099,7 +5099,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp=
)
> =20
>  		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
> =20
> -		ack[3] |=3D esi[3] & (LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
> +		ack[3] |=3D esi[3] & (RX_CAP_CHANGED | LINK_STATUS_CHANGED | DP_TUNNEL=
ING_IRQ);
> =20
>  		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
> =20
> @@ -5112,6 +5112,9 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp=
)
>  		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
>  			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst.mgr);
> =20
> +		if (ack[3] & RX_CAP_CHANGED)
> +			reprobe_needed =3D true;
> +
>  		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
>  			intel_dp_check_link_state(intel_dp);
> =20
> @@ -5424,6 +5427,9 @@ static bool intel_dp_check_link_service_irq(struct =
intel_dp *intel_dp)
>  			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) !=3D 1)
>  		return false;
> =20
> +	if (val & RX_CAP_CHANGED)
> +		reprobe_needed =3D true;
> +
>  	if (val & HDMI_LINK_STATUS_CHANGED)
>  		intel_dp_handle_hdmi_link_status_change(intel_dp);
> =20

Same question as to the previous patch.  What happens if the interrupt
is not actually handled?

--
Cheers,
Luca.
