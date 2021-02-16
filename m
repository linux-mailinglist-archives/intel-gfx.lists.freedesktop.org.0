Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A10A31CAD3
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 14:00:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEFC76E11F;
	Tue, 16 Feb 2021 13:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B8786E11F
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Feb 2021 13:00:51 +0000 (UTC)
IronPort-SDR: uPtYlrVJRtDQ7mB6GY3gXBmQ+Dnyi/HW+g51y0mgPT4BvQRb6d9Acyj+9TFO8z0tp+g6YhlQyt
 tB+xmHzLT6dA==
X-IronPort-AV: E=McAfee;i="6000,8403,9896"; a="182950074"
X-IronPort-AV: E=Sophos;i="5.81,183,1610438400"; d="scan'208";a="182950074"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 05:00:50 -0800
IronPort-SDR: IE0DNekiq+kCUuVish4keskDovHxqc9MkDcF0noMyKgLKK5BtHNEUcBguVwZrzcn7nMoGulQSO
 QnXu3R9vLGOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,183,1610438400"; d="scan'208";a="399493421"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 16 Feb 2021 05:00:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Feb 2021 15:00:48 +0200
Date: Tue, 16 Feb 2021 15:00:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YCvCAARVFIlv+eCc@intel.com>
References: <20210205214634.19341-1-ville.syrjala@linux.intel.com>
 <20210205214634.19341-2-ville.syrjala@linux.intel.com>
 <20210213173336.6ibm5rhm2jwtbase@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210213173336.6ibm5rhm2jwtbase@ldmartin-desk1>
X-Patchwork-Hint: comment
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Feb 13, 2021 at 09:33:36AM -0800, Lucas De Marchi wrote:
> On Fri, Feb 05, 2021 at 11:46:20PM +0200, Ville Syrj=E4l=E4 wrote:
> >From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> >We want to put all DDI clock routing code into one place.
> >Unify the FDI enable sequence to use the standard function
> >instead of hand rolling its own. The disable sequence already
> >uses the normal thing.
> >
> >Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++---
> > drivers/gpu/drm/i915/display/intel_ddi.h | 3 ++-
> > drivers/gpu/drm/i915/display/intel_fdi.c | 7 +++----
> > 3 files changed, 8 insertions(+), 8 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
> >index 28877a31adc0..dbef228555a0 100644
> >--- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >@@ -184,7 +184,7 @@ static void intel_wait_ddi_buf_active(struct drm_i91=
5_private *dev_priv,
> > 			port_name(port));
> > }
> >
> >-u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
> >+static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
> > {
> > 	switch (pll->info->id) {
> > 	case DPLL_ID_WRPLL1:
> >@@ -1845,8 +1845,8 @@ void icl_sanitize_encoder_pll_mapping(struct intel=
_encoder *encoder)
> > 		icl_sanitize_port_clk_off(dev_priv, port_mask, ddi_clk_needed);
> > }
> >
> >-static void intel_ddi_clk_select(struct intel_encoder *encoder,
> >-				 const struct intel_crtc_state *crtc_state)
> >+void intel_ddi_clk_select(struct intel_encoder *encoder,
> >+			  const struct intel_crtc_state *crtc_state)
> > {
> > 	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > 	enum port port =3D encoder->port;
> >diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/=
i915/display/intel_ddi.h
> >index f9a916cad7e7..e618e1c80252 100644
> >--- a/drivers/gpu/drm/i915/display/intel_ddi.h
> >+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> >@@ -28,7 +28,8 @@ void intel_ddi_fdi_post_disable(struct intel_atomic_st=
ate *state,
> > 				struct intel_encoder *intel_encoder,
> > 				const struct intel_crtc_state *old_crtc_state,
> > 				const struct drm_connector_state *old_conn_state);
> >-u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll);
> >+void intel_ddi_clk_select(struct intel_encoder *encoder,
> >+			  const struct intel_crtc_state *crtc_state);
> > void intel_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
> > 				  const struct intel_crtc_state *crtc_state);
> > void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
> >diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/=
i915/display/intel_fdi.c
> >index 77df675e607e..dbd6be3342c0 100644
> >--- a/drivers/gpu/drm/i915/display/intel_fdi.c
> >+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> >@@ -565,7 +565,7 @@ void hsw_fdi_link_train(struct intel_encoder *encode=
r,
> > {
> > 	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > 	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >-	u32 temp, i, rx_ctl_val, ddi_pll_sel;
> >+	u32 temp, i, rx_ctl_val;
> > 	int n_entries;
> >
> > 	intel_ddi_get_buf_trans_fdi(dev_priv, &n_entries);
> >@@ -595,9 +595,8 @@ void hsw_fdi_link_train(struct intel_encoder *encode=
r,
> > 	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
> >
> > 	/* Configure Port Clock Select */
> >-	ddi_pll_sel =3D hsw_pll_to_ddi_pll_sel(crtc_state->shared_dpll);
> =

> you can also unexport hsw_pll_to_ddi_pll_sel() now that it's only used
> in intel_ddi.c

I guess you skipped reading the other hunks?

> =

> with that,
> =

> =

> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks. Pushed the series. Now on to readout...

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
