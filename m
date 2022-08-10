Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAA458ED02
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 15:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F21E3B0DAB;
	Wed, 10 Aug 2022 13:19:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE018F2C9
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 13:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660137551; x=1691673551;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RCT+8nw6lQBXkmylMqGlyo1AhZuKhSJZ8j72DPKq/fg=;
 b=eOEf449RlWGDHxbMl7hjnRc5udkUDh0bS4aJxcmQgDYdqpKEwpAzd2NL
 r8F21LM8xQ7eZOe37tpdbiFgpC0TIVFzeX6qMfGLOhYVWWAT5n0J07oaD
 LVsmpCdG/lUBhbQmWrzT9pKr1xiBku5SxdLuOq6lHUCxLFJ3Lmk28wT6e
 IpprMKqYp3vBmNLYp41i0UF04iWWMfj9C5Fm1khIVj2TBl2X2UL05SH1O
 Ax140g5xPJoW0ng4LGVHEe7aDLNMycEE0diPRdP4Tb6suVsztwWOq4joj
 lnY9Fld/LGu0brwbF5priZTxHHxqDYZOf0OMTnZ/BRJqpbAw2a5pts9Fr Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="289832819"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="289832819"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:19:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="605140280"
Received: from iefimov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.49.172])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:19:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Aug 2022 16:18:16 +0300
Message-Id: <6d878fe45937867653d001618ac292095f603a11.1660137416.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660137416.git.jani.nikula@intel.com>
References: <cover.1660137416.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/15] drm/i915: move has_dmc to runtime info
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

If it's	modified runtime, it's runtime info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 6 +++---
 drivers/gpu/drm/i915/intel_device_info.c | 3 ++-
 drivers/gpu/drm/i915/intel_device_info.h | 2 +-
 4 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 231bdb4dfa22..4c0104d84c1b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1272,7 +1272,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_RPS(dev_priv)	(INTEL_INFO(dev_priv)->has_rps)
 
-#define HAS_DMC(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dmc)
+#define HAS_DMC(dev_priv)	(RUNTIME_INFO(dev_priv)->has_dmc)
 
 #define HAS_HECI_PXP(dev_priv) \
 	(INTEL_INFO(dev_priv)->has_heci_pxp)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 9088e1da2872..3cbab3ead2ab 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -654,7 +654,7 @@ static const struct intel_device_info chv_info = {
 	GEN8_FEATURES, \
 	GEN(9), \
 	GEN9_DEFAULT_PAGE_SIZES, \
-	.display.has_dmc = 1, \
+	.__runtime.has_dmc = 1, \
 	.has_gt_uc = 1, \
 	.__runtime.has_hdcp = 1, \
 	.display.has_ipc = 1, \
@@ -712,7 +712,7 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
 	.has_runtime_pm = 1, \
-	.display.has_dmc = 1, \
+	.__runtime.has_dmc = 1, \
 	.has_rc6 = 1, \
 	.has_rps = true, \
 	.display.has_dp_mst = 1, \
@@ -952,7 +952,7 @@ static const struct intel_device_info adl_s_info = {
 	.display.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |	\
 		BIT(DBUF_S4),							\
 	.display.has_ddi = 1,							\
-	.display.has_dmc = 1,							\
+	.__runtime.has_dmc = 1,							\
 	.display.has_dp_mst = 1,						\
 	.display.has_dsb = 1,							\
 	.display.has_dsc = 1,							\
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index c5367b8344be..b0b37e98b112 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -127,6 +127,7 @@ void intel_device_info_print(const struct intel_device_info *info,
 #undef PRINT_FLAG
 
 	drm_printf(p, "has_hdcp: %s\n", str_yes_no(runtime->has_hdcp));
+	drm_printf(p, "has_dmc: %s\n", str_yes_no(runtime->has_dmc));
 
 	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
@@ -403,7 +404,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			runtime->fbc_mask = 0;
 
 		if (DISPLAY_VER(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
-			info->display.has_dmc = 0;
+			runtime->has_dmc = 0;
 
 		if (DISPLAY_VER(dev_priv) >= 10 &&
 		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 7ac24bfbf3ea..d94fc4ee3805 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -178,7 +178,6 @@ enum intel_ppgtt_type {
 	/* Keep in alphabetical order */ \
 	func(cursor_needs_physical); \
 	func(has_cdclk_crawl); \
-	func(has_dmc); \
 	func(has_ddi); \
 	func(has_dp_mst); \
 	func(has_dsb); \
@@ -241,6 +240,7 @@ struct intel_runtime_info {
 		u8 fbc_mask;
 
 		bool has_hdcp;
+		bool has_dmc;
 	};
 };
 
-- 
2.34.1

