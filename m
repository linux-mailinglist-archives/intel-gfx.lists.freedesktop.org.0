Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 470AF70684A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 14:38:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AABCA10E413;
	Wed, 17 May 2023 12:38:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7605D10E414
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 12:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684327114; x=1715863114;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Nb5j0BXE+rmH/sr+p/vNWO6CZCnj+cAk7JpoDLaA9ZA=;
 b=YRP4xqa6c3t8xsZ1mbfBoU2aGDeItZdq0Iqqc+88oP3ZbkNiLXqIiqA0
 lG8FKnuCzxgd10llChaH/rpxTDZM679JlqN5ch8cPEnDQgg68AYyKRYig
 gk/rBCu6PzIq/WCIr8+4067o0appeq8G1yKVjczedfyAG7ABeplWzjztz
 oF1DnONgmIm90/yR7ka6//KnBL2aZLhPUuT5oD7WnJBeuwYOprylOgF0Z
 X4RF+YxXHRJcJLh4IT5JYHqrMFZAnoPnT4V5jYqzi5ywwlrAFfFCT1sDF
 2KU1KoV4nr9PmIkc+yBUu6TOrlA7o6BYK8lb/ixmSvlkccfQdrLerz7vA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="354916145"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="354916145"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:38:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="679253605"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="679253605"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:38:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 15:38:17 +0300
Message-Id: <1a0fdae992413dfe328f619fb7bd76529a2d2600.1684327004.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1684327004.git.jani.nikula@intel.com>
References: <cover.1684327004.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/color: move CHV CGM pipe mode read
 to intel_color
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add color .get_config hook to read config other than LUTs and CSCs, and
start off with CHV CGM pipe mode to abstract the platform specific
register access better.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c |  4 ----
 2 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index f458b136e6a8..0a6d5ff494eb 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -76,6 +76,10 @@ struct intel_color_funcs {
 	 * software state. Used by eg. the hardware state checker.
 	 */
 	void (*read_csc)(struct intel_crtc_state *crtc_state);
+	/*
+	 * Read config other than LUTs and CSCs, before them. Optional.
+	 */
+	void (*get_config)(struct intel_crtc_state *crtc_state);
 };
 
 #define CTM_COEFF_SIGN	(1ULL << 63)
@@ -1737,6 +1741,9 @@ void intel_color_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
+	if (i915->display.funcs.color->get_config)
+		i915->display.funcs.color->get_config(crtc_state);
+
 	i915->display.funcs.color->read_luts(crtc_state);
 
 	if (i915->display.funcs.color->read_csc)
@@ -3004,6 +3011,14 @@ static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
 	return blob;
 }
 
+static void chv_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	crtc_state->cgm_mode = intel_de_read(i915, CGM_PIPE_MODE(crtc->pipe));
+}
+
 static void chv_read_luts(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -3365,6 +3380,7 @@ static const struct intel_color_funcs chv_color_funcs = {
 	.read_luts = chv_read_luts,
 	.lut_equal = chv_lut_equal,
 	.read_csc = chv_read_csc,
+	.get_config = chv_get_config,
 };
 
 static const struct intel_color_funcs i965_color_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bca7664d1ffc..9b9b885db8d4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2935,10 +2935,6 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->framestart_delay = REG_FIELD_GET(TRANSCONF_FRAME_START_DELAY_MASK, tmp) + 1;
 
-	if (IS_CHERRYVIEW(dev_priv))
-		pipe_config->cgm_mode = intel_de_read(dev_priv,
-						      CGM_PIPE_MODE(crtc->pipe));
-
 	i9xx_get_pipe_color_config(pipe_config);
 	intel_color_get_config(pipe_config);
 
-- 
2.39.2

