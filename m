Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E234151E76D
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17CB511276D;
	Sat,  7 May 2022 13:29:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32C19112769
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930145; x=1683466145;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=muv5VTrqAXagz8HqwoG6KPy7eH4m+cNqwfXEZrUoa34=;
 b=icwWkrErtmF1rrHZE7JUGIqR+jBILACdr4cgsUddoXW5lQzFIdo7pZBa
 /ieH8WH+cHl8E77BwYnlnzJObHmmyEOIoHLPeue3NDpRU6j1PNBHyi4xw
 7HwomeVkEmQOCx0HU2v/LxWwqqgn8vZJrUww4iyiTC9j9OHnVrRjHOGKY
 W3I8ZmrJwDqWbJee3hRQso9ML1fEx9MsNzRfN/7eQoy3PrCpKPP+P7GxN
 TNIJNNPEt2R1qNV8qCKQuU1zyRGPA3usYTVp3JDvykO/beUOj2WugD4c4
 Uw52xkv0fi5XEvGd/xH/iIIVQzT9O6TtTdDSpni8oB2PCUnpQ8M8sOUBV w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334258"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334258"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:05 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564292953"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:03 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:38 -0700
Message-Id: <20220507132850.10272-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/16] drm/i915: Drop has_rc6p from device info
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
as it was only supported in sandybridge and ivybridge platforms.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

v2:
- simplified check

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 3 ---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 4a93ea3bf4949..27dccddfadd84 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1315,7 +1315,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 /* ilk does support rc6, but we do not implement [power] contexts */
 #define HAS_RC6(dev_priv)		 (GRAPHICS_VER(dev_priv) >= 6)
-#define HAS_RC6p(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6p)
+#define HAS_RC6p(dev_priv)		 (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))
 #define HAS_RC6pp(dev_priv)		 (false) /* HW was never validated */
 
 #define HAS_RPS(dev_priv)	(INTEL_INFO(dev_priv)->has_rps)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 58653e5c24d35..41bcc692e54c7 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -404,7 +404,6 @@ static const struct intel_device_info ilk_m_info = {
 	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_coherent_ggtt = true, \
-	.has_rc6p = 1, \
 	.has_rps = true, \
 	.dma_mask_size = 40, \
 	.ppgtt_type = INTEL_PPGTT_ALIASING, \
@@ -453,7 +452,6 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_coherent_ggtt = true, \
-	.has_rc6p = 1, \
 	.has_rps = true, \
 	.dma_mask_size = 40, \
 	.ppgtt_type = INTEL_PPGTT_ALIASING, \
@@ -534,7 +532,6 @@ static const struct intel_device_info vlv_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
 	.display.has_fpga_dbg = 1, \
-	.has_rc6p = 0 /* RC6p removed-by HSW */, \
 	HSW_PIPE_OFFSETS, \
 	.has_runtime_pm = 1
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d4fb2af3b8be8..5bc866de9b17c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -153,7 +153,6 @@ enum intel_ppgtt_type {
 	func(has_mslices); \
 	func(has_pooled_eu); \
 	func(has_pxp); \
-	func(has_rc6p); \
 	func(has_rps); \
 	func(has_runtime_pm); \
 	func(has_snoop); \
-- 
2.36.0

