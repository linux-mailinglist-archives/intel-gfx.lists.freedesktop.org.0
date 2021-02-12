Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8991331A76A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 23:20:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393DC6E044;
	Fri, 12 Feb 2021 22:20:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F32A6E044
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 22:20:56 +0000 (UTC)
IronPort-SDR: /PVVaTOd8TAB0uUaniwIO/yTpkn+gYmD0+SvUVKgb/fnrbg7WTzNG1Mcco3HwCvYiZ2tj2xsWH
 TNo3qk3zJOLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="201637236"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="201637236"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 14:20:54 -0800
IronPort-SDR: 3MWJM8oWqoOdVc17ZzkCjZNzYNyfohz4FRAot0blOimFUvvoj9DMi7BFkNTxnKjQYx7yRZ15dI
 9ptzNV6Po87g==
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="491289762"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 14:20:54 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Feb 2021 14:20:49 -0800
Message-Id: <20210212222049.3516344-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210212211925.3418280-1-matthew.d.roper@intel.com>
References: <20210212211925.3418280-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: FPGA_DBG is display-specific
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Although the bspec's description doesn't make it very clear, the
hardware architects have confirmed that the FPGA_DBG register that we
use to check for unclaimed MMIO accesses is display-specific and will
only properly flag unclaimed MMIO transactions for registers in the
display range.  If a platform doesn't have display, FPGA_DBG itself will
not be available and should not be checked.  Let's move the feature flag
into intel_device_info.display to more accurately reflect this.

Given that we now know FPGA_DBG is display-specific, it could be argued
that we should only check it on out intel_de_*() functions.  However
let's not make that change right now; keeping the checks in all of the
existing locations still helps us catch cases where regular
intel_uncore_*() functions use bad MMIO offset math / base addresses and
accidentally wind up landing within an unused area within the display
MMIO range.  It will also help catch cases where userspace-initiated
MMIO (e.g., IGT's intel_reg tool) attempt to read bad offsets within the
display range.

v2:  Add missing hunk with the update to the HAS_FPGA_DBG_UNCLAIMED
     macro.  (CI)

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 4 ++--
 drivers/gpu/drm/i915/intel_device_info.h | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9f55b5e6d8c9..f8413b3b9da8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1694,7 +1694,7 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
 #define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
 
 #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
-#define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->has_fpga_dbg)
+#define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
 #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
 #define HAS_PSR_HW_TRACKING(dev_priv) \
 	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index eff7155db2fd..a9f24f2bda33 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -538,7 +538,7 @@ static const struct intel_device_info vlv_info = {
 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
 	.display.has_ddi = 1, \
-	.has_fpga_dbg = 1, \
+	.display.has_fpga_dbg = 1, \
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
 	.display.has_dp_mst = 1, \
@@ -689,7 +689,7 @@ static const struct intel_device_info skl_gt4_info = {
 		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
 	.has_64bit_reloc = 1, \
 	.display.has_ddi = 1, \
-	.has_fpga_dbg = 1, \
+	.display.has_fpga_dbg = 1, \
 	.display.has_fbc = 1, \
 	.display.has_hdcp = 1, \
 	.display.has_psr = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index e6ca1023ffcf..d44f64b57b7a 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -118,7 +118,6 @@ enum intel_ppgtt_type {
 	func(has_64bit_reloc); \
 	func(gpu_reset_clobbers_display); \
 	func(has_reset_engine); \
-	func(has_fpga_dbg); \
 	func(has_global_mocs); \
 	func(has_gt_uc); \
 	func(has_l3_dpf); \
@@ -145,6 +144,7 @@ enum intel_ppgtt_type {
 	func(has_dsb); \
 	func(has_dsc); \
 	func(has_fbc); \
+	func(has_fpga_dbg); \
 	func(has_gmch); \
 	func(has_hdcp); \
 	func(has_hotplug); \
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
