Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC65DAF74EC
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 15:04:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B67F10E193;
	Thu,  3 Jul 2025 13:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F4B110E193;
 Thu,  3 Jul 2025 13:03:56 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uXJbU-00000008dj0-3Nhb; Thu, 03 Jul 2025 16:03:54 +0300
Message-ID: <81127fdad667fab5e6b5b08aff8c80f25a7fb624.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Date: Thu, 03 Jul 2025 16:03:52 +0300
In-Reply-To: <20250626082053.219514-17-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-17-imre.deak@intel.com>
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
Subject: Re: [PATCH 16/20] drm/i915/dp: Print debug message for a sink
 connected off request
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
> So far the CONNECTED_OFF_ENTRY_REQUESTED request was accepted only
> implicitly, by acking all the IRQs raised by the sink. Make this
> explicit by printing a debug message.
>=20
> Signed-off-by: Imre Deak <imre.deak@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 2e6ed7d2a64a6..90f6fe20e4c0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5474,6 +5474,8 @@ static void intel_dp_handle_device_service_irq(stru=
ct intel_dp *intel_dp, u8 irq
>  static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, =
u8 irq_mask)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> +	struct intel_connector *connector =3D intel_dp->attached_connector;
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	bool reprobe_needed =3D false;
> =20
>  	if (irq_mask & RX_CAP_CHANGED)
> @@ -5482,6 +5484,12 @@ static bool intel_dp_handle_link_service_irq(struc=
t intel_dp *intel_dp, u8 irq_m
>  	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
>  		intel_dp_handle_hdmi_link_status_change(intel_dp);
> =20
> +	if (irq_mask & CONNECTED_OFF_ENTRY_REQUESTED)
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s][ENCODER:%d:%s] Allowing connected off request\=
n",
> +			    connector->base.base.id, connector->base.name,
> +			    encoder->base.base.id, encoder->base.name);
> +
>  	if ((irq_mask & DP_TUNNELING_IRQ) &&
>  	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
>  				     &intel_dp->aux))

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
