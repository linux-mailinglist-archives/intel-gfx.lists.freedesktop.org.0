Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BD077FB31
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 17:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B795310E4ED;
	Thu, 17 Aug 2023 15:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 899C910E081
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 15:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692287606; x=1723823606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wI/A8wEWhVqo5IHhJYIbzKr9Xh3qZgERvbojxz2M9uQ=;
 b=KcwWtDZgjhc4QUo9RxVWd+RMYP4oE4urkQU8T03BP6VsrDHWj5H91/WP
 2NAXuqUqsbh+0JMBDJKBuipI55dIPuYKDM9mQ8N+wcw0rydbMySAQPHG3
 7rfRFRFi0kKduZI7BuRt4jF3wGUm07IKITVsUWzgaVR80l5ryUuLCK62o
 w7aR7oGx2TIyPYDrvjSM9Ov+T5JN0T5YTRdMWw6Mp0ehYwNV/9cl+A10X
 CmCu8A3WpdFwlGFFCyUKwEM4yGGQ2BBW1t0A8Rx6yFApYLri8IdJpk3tt
 NH5GqJDNUBDso74lPNHVGQU8tSNDBiapz6nuDWgQsipwszDxSfb6l8g8q Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="436768420"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="436768420"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 08:53:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="878282569"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 08:53:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 18:53:04 +0300
Message-Id: <1444200931ae61b6360e3dcad8cbea206ad62e2f.1692287501.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1692287501.git.jani.nikula@intel.com>
References: <cover.1692287501.git.jani.nikula@intel.com>
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
index d4407228c8a7..73110bf1dbc2 100644
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
@@ -1892,6 +1896,9 @@ void intel_color_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
+	if (i915->display.funcs.color->get_config)
+		i915->display.funcs.color->get_config(crtc_state);
+
 	i915->display.funcs.color->read_luts(crtc_state);
 
 	if (i915->display.funcs.color->read_csc)
@@ -3205,6 +3212,14 @@ static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
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
@@ -3574,6 +3589,7 @@ static const struct intel_color_funcs chv_color_funcs = {
 	.read_luts = chv_read_luts,
 	.lut_equal = chv_lut_equal,
 	.read_csc = chv_read_csc,
+	.get_config = chv_get_config,
 };
 
 static const struct intel_color_funcs vlv_color_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 32c8bf003437..fd74f4d33f8c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2943,10 +2943,6 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	    (tmp & TRANSCONF_WGC_ENABLE))
 		pipe_config->wgc_enable = true;
 
-	if (IS_CHERRYVIEW(dev_priv))
-		pipe_config->cgm_mode = intel_de_read(dev_priv,
-						      CGM_PIPE_MODE(crtc->pipe));
-
 	i9xx_get_pipe_color_config(pipe_config);
 	intel_color_get_config(pipe_config);
 
-- 
2.39.2

