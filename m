Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEE958ED01
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 15:21:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4761FB0C4A;
	Wed, 10 Aug 2022 13:19:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E64A4B0B35
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 13:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660137559; x=1691673559;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ga06CqnSJ4Q1rullD3lBu7RsPjFaeo18F3OgmPw38r8=;
 b=S08/oUkcbCUrY00FgS7f0KZ8MAYBqjg+406J2KOEbdUEiXj6ySUF9MVJ
 2LWHd4ekE8T1UYm1tzM4T5/LgsmTxIYN+8eUFaRwB51o3XgK6sEXLpYup
 1Ejrf8gqCrxs9CPtee+asqthmd5AjiQ36zZun9RihnUAF9qeftHGWmc2X
 GsgitQDU+sXIA3Mt0dVk5UoV433G5mQbI7yh9wcmZuYJmr5f5fY1U6aDQ
 zVBbxPRnpQz32XwIp8x4fmVvyK8QbsacR0RuhrxNEnhlsLpyzfhhrr6p7
 gVOm7JFNm7XOav9vY1ftIJr9ztyVMWoO0qbyRIGLKcGfg+UqwgUelQyV7 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="317027491"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="317027491"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:19:06 -0700
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="555730082"
Received: from iefimov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.49.172])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:19:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Aug 2022 16:18:15 +0300
Message-Id: <e04fd3e1d0a63bb40f2e179dee5fa37619fa71f4.1660137416.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660137416.git.jani.nikula@intel.com>
References: <cover.1660137416.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/15] drm/i915: move has_hdcp to runtime info
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
index 8f61fae64003..9088e1da2872 100644
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

