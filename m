Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B787CA673
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 13:17:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1519510E1C7;
	Mon, 16 Oct 2023 11:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A50AF10E1C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 11:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697455056; x=1728991056;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=axdCilvd6UNyiVoo893VIOaXyCoiDe3NuAqUwur2Du4=;
 b=R0aDls2CHzdX0nMyzW68cqAOU+zY6tQ5yh8i7JnvZSokaLk9hNWzDT+q
 lMv3Hpi2jqdMScYyD47LPSi42ZaQO4o3FIsHi9ZYZEi66GUW/jClrIEIv
 I6tOvD6Yf2XFGpelG2YG/VhTAgm4fgfa1cErqIjlngesIGqedxOaVjd22
 8nnYl+GB62YZ32uDC/I1WbioBE2eYQY/qIXhBOcdTBJzAX/pGcqPfNpJF
 QflIOLfdD27JRPoz3Mo1k6+w8FD+qZgKTJrfP8fFgHEPdKcRcuxesJ7+s
 /IPJxr2NhuTDwb0vS34VfJHpEXipaSPDjJ6rc/skxWq/8ISbvQgHbqYVh A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385341372"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385341372"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="821532647"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="821532647"
Received: from dleve-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.41.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 14:16:49 +0300
Message-Id: <20231016111658.3432581-16-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231016111658.3432581-1-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 15/24] drm/i915/display: Move edp_vswing
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
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
index 8d8050a22bf7..a16adfa36b64 100644
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
index 23fa03ea38c9..9e749ea97707 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -34,6 +34,7 @@ struct drm_i915_private;
 	param(int, disable_power_well, -1, 0400) \
 	param(int, enable_ips, 1, 0600) \
 	param(int, invert_brightness, 0, 0600) \
+	param(int, edp_vswing, 0, 0400) \
 	param(int, enable_fbc, -1, 0600)	\
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

