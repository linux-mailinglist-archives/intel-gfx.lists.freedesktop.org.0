Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C10831AD64
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Feb 2021 18:33:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FCEF6E858;
	Sat, 13 Feb 2021 17:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C48E6E858
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Feb 2021 17:33:38 +0000 (UTC)
IronPort-SDR: xqXj3Qjx3LDjmcypvHL0/mrG+zfx6KF1k0Q6f/5AW/4ZkYAc2mUQOJyfJvVPZBVHHqn+qu1bXv
 MwARVIMr9fNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9894"; a="161679120"
X-IronPort-AV: E=Sophos;i="5.81,176,1610438400"; d="scan'208";a="161679120"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2021 09:33:37 -0800
IronPort-SDR: CdDBe6TXqRYb+dCTEZVYfNPQg4FQ/ZIQuxefWrIqdFZQi4HRdYJd+gSwKglrIumbhRizauM67Z
 EGtcMVINz8yA==
X-IronPort-AV: E=Sophos;i="5.81,176,1610438400"; d="scan'208";a="590547149"
Received: from aureliaw-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.211.220])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2021 09:33:36 -0800
Date: Sat, 13 Feb 2021 09:33:36 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210213173336.6ibm5rhm2jwtbase@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210205214634.19341-1-ville.syrjala@linux.intel.com>
 <20210205214634.19341-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210205214634.19341-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 01/15] drm/i915: Use
 intel_ddi_clk_select() for FDI
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

On Fri, Feb 05, 2021 at 11:46:20PM +0200, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>We want to put all DDI clock routing code into one place.
>Unify the FDI enable sequence to use the standard function
>instead of hand rolling its own. The disable sequence already
>uses the normal thing.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++---
> drivers/gpu/drm/i915/display/intel_ddi.h | 3 ++-
> drivers/gpu/drm/i915/display/intel_fdi.c | 7 +++----
> 3 files changed, 8 insertions(+), 8 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 28877a31adc0..dbef228555a0 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -184,7 +184,7 @@ static void intel_wait_ddi_buf_active(struct drm_i915_=
private *dev_priv,
> 			port_name(port));
> }
>
>-u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
>+static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
> {
> 	switch (pll->info->id) {
> 	case DPLL_ID_WRPLL1:
>@@ -1845,8 +1845,8 @@ void icl_sanitize_encoder_pll_mapping(struct intel_e=
ncoder *encoder)
> 		icl_sanitize_port_clk_off(dev_priv, port_mask, ddi_clk_needed);
> }
>
>-static void intel_ddi_clk_select(struct intel_encoder *encoder,
>-				 const struct intel_crtc_state *crtc_state)
>+void intel_ddi_clk_select(struct intel_encoder *encoder,
>+			  const struct intel_crtc_state *crtc_state)
> {
> 	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> 	enum port port =3D encoder->port;
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i9=
15/display/intel_ddi.h
>index f9a916cad7e7..e618e1c80252 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.h
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
>@@ -28,7 +28,8 @@ void intel_ddi_fdi_post_disable(struct intel_atomic_stat=
e *state,
> 				struct intel_encoder *intel_encoder,
> 				const struct intel_crtc_state *old_crtc_state,
> 				const struct drm_connector_state *old_conn_state);
>-u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll);
>+void intel_ddi_clk_select(struct intel_encoder *encoder,
>+			  const struct intel_crtc_state *crtc_state);
> void intel_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
> 				  const struct intel_crtc_state *crtc_state);
> void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
>diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i9=
15/display/intel_fdi.c
>index 77df675e607e..dbd6be3342c0 100644
>--- a/drivers/gpu/drm/i915/display/intel_fdi.c
>+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
>@@ -565,7 +565,7 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
> {
> 	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> 	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>-	u32 temp, i, rx_ctl_val, ddi_pll_sel;
>+	u32 temp, i, rx_ctl_val;
> 	int n_entries;
>
> 	intel_ddi_get_buf_trans_fdi(dev_priv, &n_entries);
>@@ -595,9 +595,8 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
> 	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
>
> 	/* Configure Port Clock Select */
>-	ddi_pll_sel =3D hsw_pll_to_ddi_pll_sel(crtc_state->shared_dpll);

you can also unexport hsw_pll_to_ddi_pll_sel() now that it's only used
in intel_ddi.c

with that,


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>-	intel_de_write(dev_priv, PORT_CLK_SEL(PORT_E), ddi_pll_sel);
>-	drm_WARN_ON(&dev_priv->drm, ddi_pll_sel !=3D PORT_CLK_SEL_SPLL);
>+	drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll->info->id !=3D DPLL_=
ID_SPLL);
>+	intel_ddi_clk_select(encoder, crtc_state);
>
> 	/* Start the training iterating through available voltages and emphasis,
> 	 * testing each value twice. */
>-- =

>2.26.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
