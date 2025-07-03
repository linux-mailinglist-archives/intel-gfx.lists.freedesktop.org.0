Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF61AF74FD
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 15:06:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AB6310E194;
	Thu,  3 Jul 2025 13:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C3BE10E194;
 Thu,  3 Jul 2025 13:06:01 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uXJdW-00000008djQ-0vab; Thu, 03 Jul 2025 16:05:59 +0300
Message-ID: <df47c8729e41a8eb268897861997a218637102ff.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Date: Thu, 03 Jul 2025 16:05:57 +0300
In-Reply-To: <20250626082053.219514-18-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-18-imre.deak@intel.com>
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
Subject: Re: [PATCH 17/20] drm/i915/dp: Check SST link status while handling
 link service IRQs
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
> Move checking the link status for SST to
> intel_dp_handle_link_service_irq(). This is the logical place for the
> check which should only happen in response to a LINK_STATUS_CHANGE sink
> IRQ. This IRQ is only supported by DPCD revision >=3D 1.2, so for sinks
> with an older DPCD revision the link status is checked in response to
> any HPD IRQ. For newer DPCD revisions however the link status check can
> be made conditional on LINK_STATUS_CHANGE.
>=20
> For now keep the current behavior of always forcing a link status check
> regardless of LINK_STATUS_CHANGE being set or not.
>=20
> This also prepares for a follow-up change sharing the link service IRQ
> handler for SST and MST (on MST the link status check only happening in
> response to a LINK_STATUS_CHANGE IRQ).
>=20
> Signed-off-by: Imre Deak <imre.deak@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 90f6fe20e4c0d..000c57da92d60 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5481,6 +5481,9 @@ static bool intel_dp_handle_link_service_irq(struct=
 intel_dp *intel_dp, u8 irq_m
>  	if (irq_mask & RX_CAP_CHANGED)
>  		reprobe_needed =3D true;
> =20
> +	if (irq_mask & LINK_STATUS_CHANGED)
> +		intel_dp_check_link_state(intel_dp);
> +
>  	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
>  		intel_dp_handle_hdmi_link_status_change(intel_dp);
> =20
> @@ -5534,14 +5537,18 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
> =20
>  	intel_dp_handle_device_service_irq(intel_dp, esi[1]);
> =20
> +	/*
> +	 * Force checking the link status for DPCD_REV < 1.2
> +	 * TODO: let the link status check depend on LINK_STATUS_CHANGED
> +	 * for DPCD_REV >=3D 1.2
> +	 */
> +	esi[3] |=3D LINK_STATUS_CHANGED;
>  	if (intel_dp_handle_link_service_irq(intel_dp, esi[3]))
>  		reprobe_needed =3D true;
> =20
>  	/* Handle CEC interrupts, if any */
>  	drm_dp_cec_irq(&intel_dp->aux);
> =20
> -	intel_dp_check_link_state(intel_dp);
> -
>  	if (READ_ONCE(intel_dp->downstream_port_changed)) {
>  		WRITE_ONCE(intel_dp->downstream_port_changed, false);
>  		reprobe_needed =3D true;

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
