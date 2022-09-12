Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3865B5923
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:18:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD7E310E3B7;
	Mon, 12 Sep 2022 11:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3C9410E3A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981511; x=1694517511;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3MH8gegRdOgwkHoIcEqkqMqrqZmjQeDDIy5Qicgi8so=;
 b=gU0nEFvZBv+SvfwSx7heNPmMdxCNKa5sdcRI5fYowUVMm5nZTK2j0oyX
 1vu+Y66fAFBqshdsjg8nETunsnhJytVGYXb8tQ/R/lv+4n+bAQDXcNUt/
 P5Gyx3KIvLnPTJ9977LUEVOgs6lh6hBnermVQ6rl2IvobltULpb590Dp+
 KlHPEQ4LSFkyRt+sfHoPvv6ECIWHRPNelFxSUMZTcU0zQJyi4w1ll4SdK
 uB4HjJZD5WsgC2ui5KX7NUzcvxFgo2NL0jdzSYdMHgCmtWNDgd75ZYWUB
 LZXualZu6YCWXxNdTbgjhg7MQ8vVdEMFfMVcwGmI3QH4VgEERd1WJJ9CE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="324072019"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="324072019"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="649213560"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 12 Sep 2022 04:18:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:04 +0300
Message-Id: <20220912111814.17466-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/15] drm/i915: Pass intel_encoder to
 to_lvds_encoder()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Most of our encoder type cast stuff already operates on
intel_encoder rather than drm_encoder. Switch to_lvds_encoder()
over as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 9aa38e8141b5..6fef829e855b 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -78,9 +78,9 @@ struct intel_lvds_encoder {
 	struct intel_connector *attached_connector;
 };
 
-static struct intel_lvds_encoder *to_lvds_encoder(struct drm_encoder *encoder)
+static struct intel_lvds_encoder *to_lvds_encoder(struct intel_encoder *encoder)
 {
-	return container_of(encoder, struct intel_lvds_encoder, base.base);
+	return container_of(encoder, struct intel_lvds_encoder, base);
 }
 
 bool intel_lvds_port_enabled(struct drm_i915_private *dev_priv,
@@ -103,7 +103,7 @@ static bool intel_lvds_get_hw_state(struct intel_encoder *encoder,
 				    enum pipe *pipe)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(&encoder->base);
+	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	intel_wakeref_t wakeref;
 	bool ret;
 
@@ -123,7 +123,7 @@ static void intel_lvds_get_config(struct intel_encoder *encoder,
 				  struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(&encoder->base);
+	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	u32 tmp, flags = 0;
 
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_LVDS);
@@ -229,7 +229,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 				  const struct intel_crtc_state *pipe_config,
 				  const struct drm_connector_state *conn_state)
 {
-	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(&encoder->base);
+	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
@@ -312,7 +312,7 @@ static void intel_enable_lvds(struct intel_atomic_state *state,
 			      const struct drm_connector_state *conn_state)
 {
 	struct drm_device *dev = encoder->base.dev;
-	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(&encoder->base);
+	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct drm_i915_private *dev_priv = to_i915(dev);
 
 	intel_de_write(dev_priv, lvds_encoder->reg,
@@ -334,7 +334,7 @@ static void intel_disable_lvds(struct intel_atomic_state *state,
 			       const struct intel_crtc_state *old_crtc_state,
 			       const struct drm_connector_state *old_conn_state)
 {
-	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(&encoder->base);
+	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	intel_de_write(dev_priv, PP_CONTROL(0),
@@ -413,7 +413,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
 	struct intel_lvds_encoder *lvds_encoder =
-		to_lvds_encoder(&intel_encoder->base);
+		to_lvds_encoder(intel_encoder);
 	struct intel_connector *intel_connector =
 		lvds_encoder->attached_connector;
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
@@ -775,7 +775,7 @@ bool intel_is_dual_link_lvds(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder = intel_get_lvds_encoder(dev_priv);
 
-	return encoder && to_lvds_encoder(&encoder->base)->is_dual_link;
+	return encoder && to_lvds_encoder(encoder)->is_dual_link;
 }
 
 static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
-- 
2.35.1

