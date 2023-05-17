Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2412570684E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 14:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9378E10E418;
	Wed, 17 May 2023 12:38:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A63C10E41B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 12:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684327131; x=1715863131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t3rDW7ymjDQF33Q/5d48RRP2NI5dqnk8MbTHVjQ2a8I=;
 b=XX1mKGRWSjdaZM2Iocvkg/AEHXHOXdXI5oItW3ovMYDy/wqgsHx+lPN2
 i+yu3+kQhHg9v8gx203dgu7h56qt7Fb+i7qJQ2jm3PvheKN8/k5B70KCh
 cBgCZYtt0kIxwbkZ6qcir4IxLeoyGPVARQQBkCkFeChucW7C2Fhjn9upc
 2er7w+YF6M5YrmP0o6yMf/j+fHixfAFuyQ/QN+bPVqRczADCsobViVWXQ
 6Sd7BY+yT5k6gh5fkWCg0sdzROmYk6JMHf8OLSrZjEY10umg4bzMqRCM3
 k7Tac+bN5ZfKevHsWbGOdJFH8pqxevtr8YW7g3rl/7qa7cQ4YfcWqDZRg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="417402143"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="417402143"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:38:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="695850451"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="695850451"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:38:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 15:38:20 +0300
Message-Id: <001cbde6f244d5bd6058c60fe5a97eb3fef75f29.1684327004.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1684327004.git.jani.nikula@intel.com>
References: <cover.1684327004.git.jani.nikula@intel.com>
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
index c99941472cb2..882536b372e0 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -924,6 +924,24 @@ static void hsw_get_config(struct intel_crtc_state *crtc_state)
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
@@ -3436,7 +3454,7 @@ static const struct intel_color_funcs tgl_color_funcs = {
 	.read_luts = icl_read_luts,
 	.lut_equal = icl_lut_equal,
 	.read_csc = icl_read_csc,
-	.get_config = hsw_get_config,
+	.get_config = skl_get_config,
 };
 
 static const struct intel_color_funcs icl_color_funcs = {
@@ -3448,7 +3466,7 @@ static const struct intel_color_funcs icl_color_funcs = {
 	.read_luts = icl_read_luts,
 	.lut_equal = icl_lut_equal,
 	.read_csc = icl_read_csc,
-	.get_config = hsw_get_config,
+	.get_config = skl_get_config,
 };
 
 static const struct intel_color_funcs glk_color_funcs = {
@@ -3459,7 +3477,7 @@ static const struct intel_color_funcs glk_color_funcs = {
 	.read_luts = glk_read_luts,
 	.lut_equal = glk_lut_equal,
 	.read_csc = skl_read_csc,
-	.get_config = hsw_get_config,
+	.get_config = skl_get_config,
 };
 
 static const struct intel_color_funcs skl_color_funcs = {
@@ -3470,7 +3488,7 @@ static const struct intel_color_funcs skl_color_funcs = {
 	.read_luts = bdw_read_luts,
 	.lut_equal = ivb_lut_equal,
 	.read_csc = skl_read_csc,
-	.get_config = hsw_get_config,
+	.get_config = skl_get_config,
 };
 
 static const struct intel_color_funcs bdw_color_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a24466efe0ae..b17279ddc409 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -61,7 +61,6 @@
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
 #include "intel_color.h"
-#include "intel_color_regs.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
 #include "intel_crtc_state_dump.h"
@@ -3720,17 +3719,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
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

