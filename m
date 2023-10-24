Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8972A7D4DD6
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 12:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D9F10E325;
	Tue, 24 Oct 2023 10:32:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C122D10E32C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 10:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698143576; x=1729679576;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kVA7Mslr/Q04h6Vu0IXyjDSyopgttn7U+s6sYrnwRR0=;
 b=TEhT5WC27BSTCt/dSyiPk05ordF885pmdd1SK3HXh4p5obOjsE27TD19
 FoU7/Hep+YPc73IegfZ2nGncKcOv2doRU+wo/YJHJSHVFZdu9gepY+ucI
 rPqTpZcf+EfYd696KYWwcE4JGsjD/GL4wvIDFUSsLw9daTXLP/vW27Sn4
 h0Vg4u5ezxU1yYS9UvK0DXM58wtyCdwpS+Pe8QIBMeS2X+kHb6TSKm4UB
 O7yIZPbYgzViwZ8/kX22z+7HRvP73PK/Kx9osDsS3SJ6U5Zzhh9fHGnCe
 ddilGqGYXTSIGY/LyhtdyzWKwS4mW/VHDaOTI94qlGXclM5E95X3yCXY5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="386839510"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386839510"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:32:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="793439388"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="793439388"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:32:54 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 13:32:06 +0300
Message-Id: <20231024103222.302256-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231024103222.302256-1-jouni.hogander@intel.com>
References: <20231024103222.302256-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 07/23] drm/i915/display: Move panel_use_ssc
 module parameter under display
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
Cc: Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/intel_panel.c          | 4 ++--
 drivers/gpu/drm/i915/i915_params.c                  | 4 ----
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 91e2b5056d63..0813adfa5651 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -34,6 +34,10 @@ intel_display_param_named_unsafe(lvds_channel_mode, int, 0400,
 	 "Specify LVDS channel mode "
 	 "(0=probe BIOS [default], 1=single-channel, 2=dual-channel)");
 
+intel_display_param_named_unsafe(panel_use_ssc, int, 0400,
+	"Use Spread Spectrum Clock with panels [LVDS/eDP] "
+	"(default: auto from VBT)");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 09bd6614b813..ceed4af192c9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -26,6 +26,7 @@ struct drm_i915_private;
 #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
 	param(char *, vbt_firmware, NULL, 0400) \
 	param(int, lvds_channel_mode, 0, 0400) \
+	param(int, panel_use_ssc, -1, 0600) \
 	param(int, enable_fbc, -1, 0600) \
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 483beedac5b8..0d8e5320a4f8 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -46,8 +46,8 @@
 
 bool intel_panel_use_ssc(struct drm_i915_private *i915)
 {
-	if (i915->params.panel_use_ssc >= 0)
-		return i915->params.panel_use_ssc != 0;
+	if (i915->display.params.panel_use_ssc >= 0)
+		return i915->display.params.panel_use_ssc != 0;
 	return i915->display.vbt.lvds_use_ssc &&
 		!intel_has_quirk(i915, QUIRK_LVDS_SSC_DISABLE);
 }
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index ea55cc2c4854..4123424b2c2e 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -72,10 +72,6 @@ i915_param_named_unsafe(enable_dc, int, 0400,
 	"(-1=auto [default]; 0=disable; 1=up to DC5; 2=up to DC6; "
 	"3=up to DC5 with DC3CO; 4=up to DC6 with DC3CO)");
 
-i915_param_named_unsafe(panel_use_ssc, int, 0400,
-	"Use Spread Spectrum Clock with panels [LVDS/eDP] "
-	"(default: auto from VBT)");
-
 i915_param_named_unsafe(vbt_sdvo_panel_type, int, 0400,
 	"Override/Ignore selection of SDVO panel mode in the VBT "
 	"(-2=ignore, -1=auto [default], index in VBT BIOS table)");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 03ec2c2b589d..0bd365889e73 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -47,7 +47,6 @@ struct drm_printer;
  */
 #define I915_PARAMS_FOR_EACH(param) \
 	param(int, modeset, -1, 0400) \
-	param(int, panel_use_ssc, -1, 0600) \
 	param(int, vbt_sdvo_panel_type, -1, 0400) \
 	param(int, enable_dc, -1, 0400) \
 	param(bool, enable_dpt, true, 0400) \
-- 
2.34.1

