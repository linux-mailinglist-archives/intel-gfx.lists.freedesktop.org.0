Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A48E79C1113
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:38:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D47210E8F6;
	Thu,  7 Nov 2024 21:38:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IfHyBttx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D123310E8F2;
 Thu,  7 Nov 2024 21:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015483; x=1762551483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dK53HawkgMIcS8twWSgDHTmI30ecBsEI3EYhH7QwKcI=;
 b=IfHyBttxQT17WGSYxnlb8czgCJy/q8JIxCR9zDKl64FPOxKnIjvqgbg2
 +3jUHLH1wSM1W8UuLafVJ19pjQT9egaLQuWBsoXkX0XnLQRkdGFDGuyMC
 3aIkb24X8IusoCld8Ul2j8A6bqHyBOSDa+9XQWtSpqtEis02NwVNYhSAI
 f7So90z7TYgMXz8eHTQWGiK3Fr5QyyqBKgHwc2SYJWo3a6Pe32zqF5pr/
 3Z+pATvZnTYaMSsJYS64DzIuXZvP8kezdAWcfotGR+OU/PTz6Rj9b6rRn
 SS705E6VhzXLuWO31JlNpaCkEaOsueJ6Ph/gWMtATtV+v9VJZR6wii7y7 A==;
X-CSE-ConnectionGUID: EHnVbH8YTYOtC5zOMNTylw==
X-CSE-MsgGUID: 1AJwaWCUQ6Ky5CMaYpBBOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="56283034"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="56283034"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:59 -0800
X-CSE-ConnectionGUID: +drSqPYGTkOj2JqNjjn7ww==
X-CSE-MsgGUID: 8y0Bv08ASFiYiFrgTPBOKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="85574907"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [CI v2 v2 12/15] drm/i915/display: rename i915 parameter to __display
 in feature helpers
Date: Thu,  7 Nov 2024 23:36:46 +0200
Message-Id: <a39887940a292f23a4eecf8e62d6e98e28066787.1731015334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731015333.git.jani.nikula@intel.com>
References: <cover.1731015333.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

All the feature check helpers now support (and some require) passing
struct intel_display. Rename the parameter to __display to reflect the
fact.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.h   | 114 +++++++++---------
 1 file changed, 57 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index e8197dacb676..df805a82e623 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -139,62 +139,62 @@ struct intel_display_platforms {
 	func(supports_tv);
 
 #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
-#define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
-#define HAS_BIGJOINER(i915)		(DISPLAY_VER(i915) >= 11 && HAS_DSC(i915))
-#define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
-#define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
-#define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && IS_DISPLAY_VER(i915, 7, 13))
+#define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
+#define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
+#define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
+#define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
+#define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
 #define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
-#define HAS_DBUF_OVERLAP_DETECTION(__i915) (DISPLAY_RUNTIME_INFO(__i915)->has_dbuf_overlap_detection)
-#define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
-#define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
-#define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
+#define HAS_DBUF_OVERLAP_DETECTION(__display)	(DISPLAY_RUNTIME_INFO(__display)->has_dbuf_overlap_detection)
+#define HAS_DDI(__display)		(DISPLAY_INFO(__display)->has_ddi)
+#define HAS_DISPLAY(__display)		(DISPLAY_RUNTIME_INFO(__display)->pipe_mask != 0)
+#define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dmc)
 #define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
-#define HAS_DOUBLE_WIDE(i915)		(DISPLAY_VER(i915) < 4)
-#define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
+#define HAS_DOUBLE_WIDE(__display)	(DISPLAY_VER(__display) < 4)
+#define HAS_DP_MST(__display)		(DISPLAY_INFO(__display)->has_dp_mst)
 #define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
-#define HAS_DPT(i915)			(DISPLAY_VER(i915) >= 13)
-#define HAS_DSB(i915)			(DISPLAY_INFO(i915)->has_dsb)
-#define HAS_DSC(__i915)			(DISPLAY_RUNTIME_INFO(__i915)->has_dsc)
-#define HAS_DSC_MST(__i915)		(DISPLAY_VER(__i915) >= 12 && HAS_DSC(__i915))
-#define HAS_FBC(i915)			(DISPLAY_RUNTIME_INFO(i915)->fbc_mask != 0)
-#define HAS_FPGA_DBG_UNCLAIMED(i915)	(DISPLAY_INFO(i915)->has_fpga_dbg)
-#define HAS_FW_BLC(i915)		(DISPLAY_VER(i915) >= 3)
-#define HAS_GMBUS_IRQ(i915)		(DISPLAY_VER(i915) >= 4)
+#define HAS_DPT(__display)		(DISPLAY_VER(__display) >= 13)
+#define HAS_DSB(__display)		(DISPLAY_INFO(__display)->has_dsb)
+#define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dsc)
+#define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
+#define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
+#define HAS_FPGA_DBG_UNCLAIMED(__display)	(DISPLAY_INFO(__display)->has_fpga_dbg)
+#define HAS_FW_BLC(__display)		(DISPLAY_VER(__display) >= 3)
+#define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
 #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
-#define HAS_GMCH(i915)			(DISPLAY_INFO(i915)->has_gmch)
+#define HAS_GMCH(__display)		(DISPLAY_INFO(__display)->has_gmch)
 #define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
-#define HAS_IPC(i915)			(DISPLAY_INFO(i915)->has_ipc)
+#define HAS_IPC(__display)		(DISPLAY_INFO(__display)->has_ipc)
 #define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)
-#define HAS_LRR(i915)			(DISPLAY_VER(i915) >= 12)
-#define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
+#define HAS_LRR(__display)		(DISPLAY_VER(__display) >= 12)
+#define HAS_LSPCON(__display)		(IS_DISPLAY_VER(__display, 9, 10))
 #define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)
-#define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
-#define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
-#define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
-#define HAS_PSR_HW_TRACKING(i915)	(DISPLAY_INFO(i915)->has_psr_hw_tracking)
-#define HAS_PSR2_SEL_FETCH(i915)	(DISPLAY_VER(i915) >= 12)
+#define HAS_MSO(__display)		(DISPLAY_VER(__display) >= 12)
+#define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)->has_overlay)
+#define HAS_PSR(__display)		(DISPLAY_INFO(__display)->has_psr)
+#define HAS_PSR_HW_TRACKING(__display)	(DISPLAY_INFO(__display)->has_psr_hw_tracking)
+#define HAS_PSR2_SEL_FETCH(__display)	(DISPLAY_VER(__display) >= 12)
 #define HAS_SAGV(__display)		(DISPLAY_VER(__display) >= 9 && \
 					 !(__display)->platform.broxton && !(__display)->platform.geminilake)
-#define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
-					  BIT(trans)) != 0)
-#define HAS_UNCOMPRESSED_JOINER(i915)	(DISPLAY_VER(i915) >= 13)
+#define HAS_TRANSCODER(__display, trans)	((DISPLAY_RUNTIME_INFO(__display)->cpu_transcoder_mask & \
+						  BIT(trans)) != 0)
+#define HAS_UNCOMPRESSED_JOINER(__display)	(DISPLAY_VER(__display) >= 13)
 #define HAS_ULTRAJOINER(__display)	((DISPLAY_VER(__display) >= 20 || \
 					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
 					 HAS_DSC(__display))
-#define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
-#define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
-#define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
-#define INTEL_NUM_PIPES(i915)		(hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
-#define I915_HAS_HOTPLUG(i915)		(DISPLAY_INFO(i915)->has_hotplug)
-#define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)->overlay_needs_physical)
-#define SUPPORTS_TV(i915)		(DISPLAY_INFO(i915)->supports_tv)
+#define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
+#define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
+#define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
+#define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
+#define I915_HAS_HOTPLUG(__display)	(DISPLAY_INFO(__display)->has_hotplug)
+#define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
+#define SUPPORTS_TV(__display)		(DISPLAY_INFO(__display)->supports_tv)
 
 /* Check that device has a display IP version within the specific range. */
-#define IS_DISPLAY_VERx100(__i915, from, until) ( \
+#define IS_DISPLAY_VERx100(__display, from, until) ( \
 	BUILD_BUG_ON_ZERO((from) < 200) + \
-	(DISPLAY_VERx100(__i915) >= (from) && \
-	 DISPLAY_VERx100(__i915) <= (until)))
+	(DISPLAY_VERx100(__display) >= (from) && \
+	 DISPLAY_VERx100(__display) <= (until)))
 
 /*
  * Check if a device has a specific IP version as well as a stepping within the
@@ -205,30 +205,30 @@ struct intel_display_platforms {
  * hardware fix is present and the software workaround is no longer necessary.
  * E.g.,
  *
- *    IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_A0, STEP_B2)
- *    IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_C0, STEP_FOREVER)
+ *    IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B2)
+ *    IS_DISPLAY_VERx100_STEP(display, 1400, STEP_C0, STEP_FOREVER)
  *
  * "STEP_FOREVER" can be passed as "until" for workarounds that have no upper
  * stepping bound for the specified IP version.
  */
-#define IS_DISPLAY_VERx100_STEP(__i915, ipver, from, until) \
-	(IS_DISPLAY_VERx100((__i915), (ipver), (ipver)) && \
-	 IS_DISPLAY_STEP((__i915), (from), (until)))
+#define IS_DISPLAY_VERx100_STEP(__display, ipver, from, until) \
+	(IS_DISPLAY_VERx100((__display), (ipver), (ipver)) && \
+	 IS_DISPLAY_STEP((__display), (from), (until)))
 
-#define DISPLAY_INFO(i915)		(__to_intel_display(i915)->info.__device_info)
-#define DISPLAY_RUNTIME_INFO(i915)	(&__to_intel_display(i915)->info.__runtime_info)
+#define DISPLAY_INFO(__display)		(__to_intel_display(__display)->info.__device_info)
+#define DISPLAY_RUNTIME_INFO(__display)	(&__to_intel_display(__display)->info.__runtime_info)
 
-#define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
-#define DISPLAY_VERx100(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver * 100 + \
-				 DISPLAY_RUNTIME_INFO(i915)->ip.rel)
-#define IS_DISPLAY_VER(i915, from, until) \
-	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
+#define DISPLAY_VER(__display)		(DISPLAY_RUNTIME_INFO(__display)->ip.ver)
+#define DISPLAY_VERx100(__display)	(DISPLAY_RUNTIME_INFO(__display)->ip.ver * 100 + \
+					 DISPLAY_RUNTIME_INFO(__display)->ip.rel)
+#define IS_DISPLAY_VER(__display, from, until) \
+	(DISPLAY_VER(__display) >= (from) && DISPLAY_VER(__display) <= (until))
 
-#define INTEL_DISPLAY_STEP(__i915) (DISPLAY_RUNTIME_INFO(__i915)->step)
+#define INTEL_DISPLAY_STEP(__display)	(DISPLAY_RUNTIME_INFO(__display)->step)
 
-#define IS_DISPLAY_STEP(__i915, since, until) \
-	(drm_WARN_ON(__to_intel_display(__i915)->drm, INTEL_DISPLAY_STEP(__i915) == STEP_NONE), \
-	 INTEL_DISPLAY_STEP(__i915) >= (since) && INTEL_DISPLAY_STEP(__i915) < (until))
+#define IS_DISPLAY_STEP(__display, since, until) \
+	(drm_WARN_ON(__to_intel_display(__display)->drm, INTEL_DISPLAY_STEP(__display) == STEP_NONE), \
+	 INTEL_DISPLAY_STEP(__display) >= (since) && INTEL_DISPLAY_STEP(__display) < (until))
 
 struct intel_display_runtime_info {
 	struct intel_display_ip_ver {
-- 
2.39.5

