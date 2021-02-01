Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7658130AFFD
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 20:04:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EB2E6E879;
	Mon,  1 Feb 2021 19:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 748CE6E876
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 19:04:45 +0000 (UTC)
IronPort-SDR: 5lYu2H+yz6W3yPBTtzMrn9+LJw8gQYmswhpjVYzxw4kliOC8OzRgZ0ZqiTM/5EbqOjUAabu8nO
 2E5h1BZ0tcDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="167842571"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="167842571"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 11:04:44 -0800
IronPort-SDR: VN7ZPriXwaE/tnOXhXEW6+GYlBXsVPis2CL2maMTP4yqQ6Ocn4KNrWh4BxML9pYa7oPsC5ZDqR
 ayLxcmW+KKOw==
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="479202204"
Received: from scewbso01.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.142.9])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 11:04:42 -0800
Date: Mon, 1 Feb 2021 11:04:40 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210201190440.epy4osz7pe3otx7u@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
 <20210201183343.15292-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210201183343.15292-4-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 03/15] drm/i915: Introduce .{enable,
 disable}_clock() encoder vfuncs
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 01, 2021 at 08:33:31PM +0200, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>The current code dealing with the clock routing for DDI encoders
>is a maintenance nightmare. Let's start cleaning it up by allowing
>the encoder to provide vfuncs for enablign/disabling the clock.
>
>We leave them initially unimplemented, falling back to the old
>if-else approach.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_ddi.c      | 29 +++++++++++++++----
> .../drm/i915/display/intel_display_types.h    |  6 ++++
> 2 files changed, 29 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 23fbb9013e09..da8bb9a2de0b 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -3464,6 +3464,23 @@ static void intel_ddi_clk_disable(struct intel_enco=
der *encoder)
> 	}
> }
>
>+static void intel_ddi_enable_clock(struct intel_encoder *encoder,
>+				   const struct intel_crtc_state *crtc_state)
>+{
>+	if (encoder->enable_clock)
>+		encoder->enable_clock(encoder, crtc_state);
>+	else
>+		intel_ddi_clk_select(encoder, crtc_state);
>+}
>+
>+static void intel_ddi_disable_clock(struct intel_encoder *encoder)
>+{
>+	if (encoder->disable_clock)
>+		encoder->disable_clock(encoder);
>+	else
>+		intel_ddi_clk_disable(encoder);

intel_ddi_disable_clock  vs  intel_ddi_clk_disable

I think the names here is very prone to mistake. Maybe we should come
back with better names?  We could have renamed intel_ddi_clk_disable to
__ddi_clk_disable in this patch, since we are going to remove the
function once everything is converted.

Lucas De Marchi


>+}
>+
> static void
> icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
> 		       const struct intel_crtc_state *crtc_state)
>@@ -3708,7 +3725,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomi=
c_state *state,
> 	 * hsw_crtc_enable()->intel_enable_shared_dpll().  We need only
> 	 * configure the PLL to port mapping here.
> 	 */
>-	intel_ddi_clk_select(encoder, crtc_state);
>+	intel_ddi_enable_clock(encoder, crtc_state);
>
> 	/* 5. If IO power is controlled through PWR_WELL_CTL, Enable IO Power */
> 	if (!intel_phy_is_tc(dev_priv, phy) ||
>@@ -3829,7 +3846,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomi=
c_state *state,
>
> 	intel_pps_on(intel_dp);
>
>-	intel_ddi_clk_select(encoder, crtc_state);
>+	intel_ddi_enable_clock(encoder, crtc_state);
>
> 	if (!intel_phy_is_tc(dev_priv, phy) ||
> 	    dig_port->tc_mode !=3D TC_PORT_TBT_ALT) {
>@@ -3904,7 +3921,7 @@ static void intel_ddi_pre_enable_hdmi(struct intel_a=
tomic_state *state,
> 	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>
> 	intel_dp_dual_mode_set_tmds_output(intel_hdmi, true);
>-	intel_ddi_clk_select(encoder, crtc_state);
>+	intel_ddi_enable_clock(encoder, crtc_state);
>
> 	drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
> 	dig_port->ddi_io_wakeref =3D intel_display_power_get(dev_priv,
>@@ -4056,7 +4073,7 @@ static void intel_ddi_post_disable_dp(struct intel_a=
tomic_state *state,
> 					dig_port->ddi_io_power_domain,
> 					fetch_and_zero(&dig_port->ddi_io_wakeref));
>
>-	intel_ddi_clk_disable(encoder);
>+	intel_ddi_disable_clock(encoder);
> }
>
> static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
>@@ -4079,7 +4096,7 @@ static void intel_ddi_post_disable_hdmi(struct intel=
_atomic_state *state,
> 				dig_port->ddi_io_power_domain,
> 				fetch_and_zero(&dig_port->ddi_io_wakeref));
>
>-	intel_ddi_clk_disable(encoder);
>+	intel_ddi_disable_clock(encoder);
>
> 	intel_dp_dual_mode_set_tmds_output(intel_hdmi, false);
> }
>@@ -4179,7 +4196,7 @@ void intel_ddi_fdi_post_disable(struct intel_atomic_=
state *state,
> 	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
>
> 	intel_disable_ddi_buf(encoder, old_crtc_state);
>-	intel_ddi_clk_disable(encoder);
>+	intel_ddi_disable_clock(encoder);
>
> 	val =3D intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
> 	val &=3D ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
>diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/=
gpu/drm/i915/display/intel_display_types.h
>index 39397748b4b0..085162616112 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_types.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>@@ -219,6 +219,12 @@ struct intel_encoder {
> 	 * encoders have been disabled and suspended.
> 	 */
> 	void (*shutdown)(struct intel_encoder *encoder);
>+	/*
>+	 * Enable/disable the clock to the port.
>+	 */
>+	void (*enable_clock)(struct intel_encoder *encoder,
>+			     const struct intel_crtc_state *crtc_state);
>+	void (*disable_clock)(struct intel_encoder *encoder);
> 	enum hpd_pin hpd_pin;
> 	enum intel_display_power_domain power_domain;
> 	/* for communication with audio component; protected by av_mutex */
>-- =

>2.26.2
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
