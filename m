Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E58755133C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:49:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C43C610E5FD;
	Mon, 20 Jun 2022 08:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53CB810E5FD
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714992; x=1687250992;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ovn5/uSyafilz7saJPvdgzNG/KIdGhuhD+Ed3eDtLRo=;
 b=GnMf1q8O0shwchL2tS1OWxPs8IMPNKt6oAXUFRhx0xhhPwhX8pj+Ya+5
 89nISxGKge4o/b549f8lHhI9He+mn3HyuacTYDcC74oXhwQTovXRP4cmD
 9RmzonNxl7IbqYaE1+9c+0lCOrq/qqY/g/9FQrrXrRwzevh/XJwsNtidJ
 /66lYFUn2h2imoWnaPzrdnCBE9GBhM3a5Oxp269r13U2vyz2rTubFfCmC
 0wrtFYSFS86jXbFlpcJBLBGgP/7KzXgAJLA63OxQL46bTEO02yJ7AqmQS
 KtjWtx5RK6bndhxITTXKZDhdpIWxIRTURrq4Wkvjd0yMACh+07A8pQMLE A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="305277495"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="305277495"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:52 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="654578337"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:49:33 +0300
Message-Id: <7a402d3c43de395fe3ccebf5534f9cf654310531.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/16] drm/i915: move has_dmc to runtime info
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
index 5bb1f0e9368c..89472440947c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1267,7 +1267,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_RPS(dev_priv)	(INTEL_INFO(dev_priv)->has_rps)
 
-#define HAS_DMC(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dmc)
+#define HAS_DMC(dev_priv)	(RUNTIME_INFO(dev_priv)->has_dmc)
 
 #define HAS_HECI_PXP(dev_priv) \
 	(INTEL_INFO(dev_priv)->has_heci_pxp)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 11c236b6a017..c6637a4982ed 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -650,7 +650,7 @@ static const struct intel_device_info chv_info = {
 	GEN8_FEATURES, \
 	GEN(9), \
 	GEN9_DEFAULT_PAGE_SIZES, \
-	.display.has_dmc = 1, \
+	.__runtime.has_dmc = 1, \
 	.has_gt_uc = 1, \
 	.__runtime.has_hdcp = 1, \
 	.display.has_ipc = 1, \
@@ -708,7 +708,7 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
 	.has_runtime_pm = 1, \
-	.display.has_dmc = 1, \
+	.__runtime.has_dmc = 1, \
 	.has_rc6 = 1, \
 	.has_rps = true, \
 	.display.has_dp_mst = 1, \
@@ -955,7 +955,7 @@ static const struct intel_device_info adl_s_info = {
 	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
 		BIT(DBUF_S4),							\
 	.display.has_ddi = 1,							\
-	.display.has_dmc = 1,							\
+	.__runtime.has_dmc = 1,							\
 	.display.has_dp_mst = 1,						\
 	.display.has_dsb = 1,							\
 	.display.has_dsc = 1,							\
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 26c883c05e44..ed5ad5c60db6 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -126,6 +126,7 @@ void intel_device_info_print(const struct intel_device_info *info,
 #undef PRINT_FLAG
 
 	drm_printf(p, "has_hdcp: %s\n", str_yes_no(runtime->has_hdcp));
+	drm_printf(p, "has_dmc: %s\n", str_yes_no(runtime->has_dmc));
 
 	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
@@ -388,7 +389,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			runtime->fbc_mask = 0;
 
 		if (DISPLAY_VER(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
-			info->display.has_dmc = 0;
+			runtime->has_dmc = 0;
 
 		if (DISPLAY_VER(dev_priv) >= 10 &&
 		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 76317db394b7..0a3c925d02b7 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -173,7 +173,6 @@ enum intel_ppgtt_type {
 	/* Keep in alphabetical order */ \
 	func(cursor_needs_physical); \
 	func(has_cdclk_crawl); \
-	func(has_dmc); \
 	func(has_ddi); \
 	func(has_dp_mst); \
 	func(has_dsb); \
@@ -236,6 +235,7 @@ struct intel_runtime_info {
 		u8 fbc_mask;
 
 		bool has_hdcp;
+		bool has_dmc;
 	};
 };
 
-- 
2.30.2

