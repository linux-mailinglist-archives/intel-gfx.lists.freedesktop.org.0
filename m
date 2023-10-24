Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA7A7D5004
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A11E310E37A;
	Tue, 24 Oct 2023 12:42:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D8710E379
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698151327; x=1729687327;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pOCVGddcgS4JtM8YKWBLDvlomlJkUOPz3CyeuPXB+e4=;
 b=lFYb2NhctW3+vzmDH11YZ28aARyg7uosmaR9YoFHKYiATd3wtGcudlJX
 p8jcWB/lthD2Fi771GH4CNi6UaKA4Ip87IMoaj3E8BYZMEvEjy2lsFOY0
 UpsRP3aDQAx3zzIaJqcKU6CGSEQ/btU1QksJVQk+6nJk2l0Jlo5HvOzp5
 8C/ILFLcN51FviH8Jfo7nhDtPZABFkOqHc/gsdjstgCjuDPg41U2YlYDx
 b96tz2ZcBIt3gbUONsf1Q+Z4MRThRkJY9+ronGXYwN2w7Hkor78q+csfp
 9kZ/V+YT9jKZ7JNxHo2Hm7idzll1pgT0KeRZ0GUqa3YWAV3RCYQKnO+YK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="386856686"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386856686"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:42:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758464474"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="758464474"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:42:04 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 15:41:01 +0300
Message-Id: <20231024124109.384973-16-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231024124109.384973-1-jouni.hogander@intel.com>
References: <20231024124109.384973-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 15/23] drm/i915/display: Move edp_vswing
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
 drivers/gpu/drm/i915/display/intel_bios.c           | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_params.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/i915_params.c                  | 6 ------
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 70c0491aac42..69db1a3a1499 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1514,9 +1514,9 @@ parse_edp(struct drm_i915_private *i915,
 		u8 vswing;
 
 		/* Don't read from VBT if module parameter has valid value*/
-		if (i915->params.edp_vswing) {
+		if (i915->display.params.edp_vswing) {
 			panel->vbt.edp.low_vswing =
-				i915->params.edp_vswing == 1;
+				i915->display.params.edp_vswing == 1;
 		} else {
 			vswing = (edp->edp_vswing_preemph >> (panel_type * 4)) & 0xF;
 			panel->vbt.edp.low_vswing = vswing == 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 2d721afaba30..70a475223512 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -66,6 +66,12 @@ intel_display_param_named_unsafe(invert_brightness, int, 0400,
 	"to dri-devel@lists.freedesktop.org, if your machine needs it. "
 	"It will then be included in an upcoming module version.");
 
+/* WA to get away with the default setting in VBT for early platforms.Will be removed */
+intel_display_param_named_unsafe(edp_vswing, int, 0400,
+	"Ignore/Override vswing pre-emph table selection from VBT "
+	"(0=use value from vbt [default], 1=low power swing(200mV),"
+	"2=default swing(400mV))");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 4723b4522413..10c79ce23063 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -34,6 +34,7 @@ struct drm_i915_private;
 	param(int, disable_power_well, -1, 0400) \
 	param(bool, enable_ips, true, 0600) \
 	param(int, invert_brightness, 0, 0600) \
+	param(int, edp_vswing, 0, 0400) \
 	param(int, enable_fbc, -1, 0600) \
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 423fe54484e1..6b9df9f9d842 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -111,12 +111,6 @@ i915_param_named(verbose_state_checks, bool, 0600,
 i915_param_named_unsafe(nuclear_pageflip, bool, 0400,
 	"Force enable atomic functionality on platforms that don't have full support yet.");
 
-/* WA to get away with the default setting in VBT for early platforms.Will be removed */
-i915_param_named_unsafe(edp_vswing, int, 0400,
-	"Ignore/Override vswing pre-emph table selection from VBT "
-	"(0=use value from vbt [default], 1=low power swing(200mV),"
-	"2=default swing(400mV))");
-
 i915_param_named_unsafe(enable_guc, int, 0400,
 	"Enable GuC load for GuC submission and/or HuC load. "
 	"Required functionality can be selected using bitmask values. "
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index ae0873443a65..c33edaee5032 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -55,7 +55,6 @@ struct drm_printer;
 	param(char *, gsc_firmware_path, NULL, 0400) \
 	param(bool, memtest, false, 0400) \
 	param(int, mmio_debug, -IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO), 0600) \
-	param(int, edp_vswing, 0, 0400) \
 	param(unsigned int, reset, 3, 0600) \
 	param(unsigned int, inject_probe_failure, 0, 0) \
 	param(int, enable_dpcd_backlight, -1, 0600) \
-- 
2.34.1

