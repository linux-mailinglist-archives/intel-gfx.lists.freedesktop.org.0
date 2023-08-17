Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8224E77FB38
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 17:53:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04FF610E4F3;
	Thu, 17 Aug 2023 15:53:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E98D410E4F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 15:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692287633; x=1723823633;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tN3lBJ/6ao5+5JMpkQcNc3ziue1WSuK+1nugJlLXUUs=;
 b=ToECFVPt115J5YQsTAwXJ/5dvVxAq/zzc1KKk2ItGoshacUACuFM8qnk
 ZbjUL0ooNvUqdndfq5fUkDkWbD3a3wHjZv9WfXkPvs65dtP1hvUS8sND0
 dmoBWGCqnoCLOcLUjyRXKTQG2VfuUQfwhVL6iYT97xKejwTnPOFO7hHzp
 hWb7wJZxbt0L1Wqw5UHJopgXgwLFomhFrsMNbPzuYRXZ7vpqpxcfcgSrZ
 uKDIJMUd6qXEKI6XsKokRorBmnWpElUVvqVUQc14ykx/7a+H28Sxvkaht
 E8GQGE0k8bEYq+yKrEPSuZbGcAtN5XTqlo+wbo3fBFbH5aAXNNjGM8Qqj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="439227425"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="439227425"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 08:53:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="764150414"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="764150414"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 08:53:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 18:53:07 +0300
Message-Id: <c0c37c06d1f2673c82d567c8bcbb6b0b0054b5fa.1692287501.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1692287501.git.jani.nikula@intel.com>
References: <cover.1692287501.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/color: move SKL+ gamma and CSC
 enable read to intel_color
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

Abstract the platform specific register access better.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 26 +++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.c | 12 +--------
 2 files changed, 23 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 27331bd47781..bcc3d994dc26 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1040,6 +1040,24 @@ static void hsw_get_config(struct intel_crtc_state *crtc_state)
 	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
 }
 
+static void skl_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	u32 tmp;
+
+	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
+	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
+
+	tmp = intel_de_read(i915, SKL_BOTTOM_COLOR(crtc->pipe));
+
+	if (tmp & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
+		crtc_state->gamma_enable = true;
+
+	if (tmp & SKL_BOTTOM_COLOR_CSC_ENABLE)
+		crtc_state->csc_enable = true;
+}
+
 static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -3654,7 +3672,7 @@ static const struct intel_color_funcs tgl_color_funcs = {
 	.read_luts = icl_read_luts,
 	.lut_equal = icl_lut_equal,
 	.read_csc = icl_read_csc,
-	.get_config = hsw_get_config,
+	.get_config = skl_get_config,
 };
 
 static const struct intel_color_funcs icl_color_funcs = {
@@ -3666,7 +3684,7 @@ static const struct intel_color_funcs icl_color_funcs = {
 	.read_luts = icl_read_luts,
 	.lut_equal = icl_lut_equal,
 	.read_csc = icl_read_csc,
-	.get_config = hsw_get_config,
+	.get_config = skl_get_config,
 };
 
 static const struct intel_color_funcs glk_color_funcs = {
@@ -3677,7 +3695,7 @@ static const struct intel_color_funcs glk_color_funcs = {
 	.read_luts = glk_read_luts,
 	.lut_equal = glk_lut_equal,
 	.read_csc = skl_read_csc,
-	.get_config = hsw_get_config,
+	.get_config = skl_get_config,
 };
 
 static const struct intel_color_funcs skl_color_funcs = {
@@ -3688,7 +3706,7 @@ static const struct intel_color_funcs skl_color_funcs = {
 	.read_luts = bdw_read_luts,
 	.lut_equal = ivb_lut_equal,
 	.read_csc = skl_read_csc,
-	.get_config = hsw_get_config,
+	.get_config = skl_get_config,
 };
 
 static const struct intel_color_funcs bdw_color_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f2632e010643..7dd07965144d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -60,7 +60,6 @@
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
 #include "intel_color.h"
-#include "intel_color_regs.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
 #include "intel_crtc_state_dump.h"
@@ -3732,17 +3731,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->sink_format = pipe_config->output_format;
 
-	if (DISPLAY_VER(dev_priv) >= 9) {
-		tmp = intel_de_read(dev_priv, SKL_BOTTOM_COLOR(crtc->pipe));
-
-		if (tmp & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
-			pipe_config->gamma_enable = true;
-
-		if (tmp & SKL_BOTTOM_COLOR_CSC_ENABLE)
-			pipe_config->csc_enable = true;
-	} else {
+	if (DISPLAY_VER(dev_priv) < 9)
 		i9xx_get_pipe_color_config(pipe_config);
-	}
 
 	intel_color_get_config(pipe_config);
 
-- 
2.39.2

