Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A657599B8C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 14:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F28E10EAEF;
	Fri, 19 Aug 2022 12:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B205710EABC
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 12:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660910623; x=1692446623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SXFsdsPACl4bspLAMAz7iX3NnuFI2L+tra6NFBJ/ivo=;
 b=V/r3HkrbLdekfM4+ilVf9NXgqFc3XHIgb6zEjeSOSZMwKm6eBryKoarG
 KfSIhVHDVmE8iDOrGNwbxFS2Stg6m+kBQlDR2Egs6oRU18MQnpe3lThAN
 TSL3hFfdOHzf2W9pyg6hjLGd91+8hcgLcTGNcCeQyH3QP/1lKiGh5CzM7
 t6nOOiRJGIk9I4A6p7/DCVKDdmn9k3rSt3I045WEFTalD/0w9iYXhhPCi
 zYQiMFATofilR8l4dR20ujcmZgBcDKwxiD9H57Mgt1HZ46StwbMcrLysp
 Ibl2pa50W7DHxi7R/5H1FS3hJN91jK14vhLOnptft97M1w8uR29R14AM3 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="293786090"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="293786090"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="558921057"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 15:02:45 +0300
Message-Id: <b146250e02a4b2f086e7e587dd1742589e0e8fba.1660910433.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660910433.git.jani.nikula@intel.com>
References: <cover.1660910433.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 12/14] drm/i915: move has_hdcp to runtime info
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

If it's modified runtime, it's runtime info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
 drivers/gpu/drm/i915/i915_pci.c           | 6 +++---
 drivers/gpu/drm/i915/intel_device_info.c  | 4 +++-
 drivers/gpu/drm/i915/intel_device_info.h  | 3 ++-
 4 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index c5e9e86bb4cb..73b9b4c3dbe9 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1110,8 +1110,8 @@ static void intel_hdcp_prop_work(struct work_struct *work)
 
 bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port)
 {
-	return INTEL_INFO(dev_priv)->display.has_hdcp &&
-			(DISPLAY_VER(dev_priv) >= 12 || port < PORT_E);
+	return RUNTIME_INFO(dev_priv)->has_hdcp &&
+		(DISPLAY_VER(dev_priv) >= 12 || port < PORT_E);
 }
 
 static int
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 365cbb80975a..818c18bc0aba 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -656,7 +656,7 @@ static const struct intel_device_info chv_info = {
 	GEN9_DEFAULT_PAGE_SIZES, \
 	.display.has_dmc = 1, \
 	.has_gt_uc = 1, \
-	.display.has_hdcp = 1, \
+	.__runtime.has_hdcp = 1, \
 	.display.has_ipc = 1, \
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
@@ -708,7 +708,7 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
-	.display.has_hdcp = 1, \
+	.__runtime.has_hdcp = 1, \
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
 	.has_runtime_pm = 1, \
@@ -958,7 +958,7 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_dsc = 1,							\
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A),					\
 	.display.has_fpga_dbg = 1,						\
-	.display.has_hdcp = 1,							\
+	.__runtime.has_hdcp = 1,						\
 	.display.has_hotplug = 1,						\
 	.display.has_ipc = 1,							\
 	.display.has_psr = 1,							\
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 91ac149ad85a..c5367b8344be 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -126,6 +126,8 @@ void intel_device_info_print(const struct intel_device_info *info,
 	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
 #undef PRINT_FLAG
 
+	drm_printf(p, "has_hdcp: %s\n", str_yes_no(runtime->has_hdcp));
+
 	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
 
@@ -395,7 +397,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		}
 
 		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
-			info->display.has_hdcp = 0;
+			runtime->has_hdcp = 0;
 
 		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
 			runtime->fbc_mask = 0;
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index f419848f52cb..7ac24bfbf3ea 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -185,7 +185,6 @@ enum intel_ppgtt_type {
 	func(has_dsc); \
 	func(has_fpga_dbg); \
 	func(has_gmch); \
-	func(has_hdcp); \
 	func(has_hotplug); \
 	func(has_hti); \
 	func(has_ipc); \
@@ -240,6 +239,8 @@ struct intel_runtime_info {
 		u8 num_scalers[I915_MAX_PIPES];
 
 		u8 fbc_mask;
+
+		bool has_hdcp;
 	};
 };
 
-- 
2.34.1

