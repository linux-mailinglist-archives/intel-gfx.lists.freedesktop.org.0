Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7E751E776
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74537113355;
	Sat,  7 May 2022 13:29:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19F30113355
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930158; x=1683466158;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WCwKXrgY6+QTNQdaF8WpOjUHpl430NfOTU6g8QvW+lw=;
 b=PcJVUCcMEYjdgiQnIbCZmQdbyRIe3U3Ogr16u22YjyKW34hJ2U3FxFW+
 sqTUNplGVahsY3hE3thOS11u+XLWLYmhixAnNzWednQKWEZNS3qC4xXLc
 2pwNS+nhzKjFGg5vLUI+047BKxlbbBKYMij0yw2RIVfEnZ53n6+jGsyvN
 bQdENAf3fmfl6lWZm2/1JiobqJ6E194L5BDzHXnPXr6Ryx6xZeA1VHtwZ
 JZFU30v43WHGbpHC6/4DRR/WDZW3Km/swO4WjERqAO8hlDI17hXI+2Otn
 oW4biKHWvNQfdhZoE4FeKurUCJMDHHIQ2IO/5W16GJx2ftcELG1AIk5Xh w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334311"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334311"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:17 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564293003"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:16 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:48 -0700
Message-Id: <20220507132850.10272-14-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/16] drm/i915: Drop has_runtime_pm from device
 info
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

No need to have this parameter in intel_device_info struct
as this feature is supported in Haswell, Valleyview and all platforms
with graphics version 8 or newer.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
 drivers/gpu/drm/i915/i915_pci.c          | 7 +------
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index fad2bb34b47f0..b193374f53f91 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1330,7 +1330,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_MSO(i915)		(DISPLAY_VER(i915) >= 12)
 
-#define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
+#define HAS_RUNTIME_PM(dev_priv) (GRAPHICS_VER(dev_priv) >= 8 || \
+				  IS_HASWELL(dev_priv) || \
+				  IS_VALLEYVIEW(dev_priv))
 #define HAS_64BIT_RELOC(dev_priv) (GRAPHICS_VER(dev_priv) >= 8)
 
 #define HAS_MSLICES(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 109f90b40da9b..9638949f40eb7 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -501,7 +501,6 @@ static const struct intel_device_info vlv_info = {
 	.is_lp = 1,
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
-	.has_runtime_pm = 1,
 	.has_rps = true,
 	.display.has_gmch = 1,
 	.display.has_hotplug = 1,
@@ -525,8 +524,7 @@ static const struct intel_device_info vlv_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
 	.display.has_fpga_dbg = 1, \
-	HSW_PIPE_OFFSETS, \
-	.has_runtime_pm = 1
+	HSW_PIPE_OFFSETS
 
 #define HSW_PLATFORM \
 	G75_FEATURES, \
@@ -592,7 +590,6 @@ static const struct intel_device_info chv_info = {
 	.display.has_hotplug = 1,
 	.is_lp = 1,
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
-	.has_runtime_pm = 1,
 	.has_rps = true,
 	.has_logical_ring_contexts = 1,
 	.display.has_gmch = 1,
@@ -665,7 +662,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.has_fpga_dbg = 1, \
 	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.display.has_hdcp = 1, \
-	.has_runtime_pm = 1, \
 	.display.has_dmc = 1, \
 	.has_rps = true, \
 	.has_logical_ring_contexts = 1, \
@@ -955,7 +951,6 @@ static const struct intel_device_info adl_p_info = {
 	.has_logical_ring_contexts = 1, \
 	.has_mslices = 1, \
 	.has_rps = 1, \
-	.has_runtime_pm = 1, \
 	.ppgtt_size = 48, \
 	.ppgtt_type = INTEL_PPGTT_FULL
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 952ececab8dba..7974b3edf42e2 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -147,7 +147,6 @@ enum intel_ppgtt_type {
 	func(has_mslices); \
 	func(has_pooled_eu); \
 	func(has_rps); \
-	func(has_runtime_pm); \
 	func(has_snoop); \
 	func(has_coherent_ggtt); \
 	func(unfenced_needs_alignment); \
-- 
2.36.0

