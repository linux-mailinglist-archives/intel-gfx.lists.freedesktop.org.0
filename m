Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B960451C947
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 21:34:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A22710EF7F;
	Thu,  5 May 2022 19:34:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66B5910EEFA
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 19:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651779287; x=1683315287;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T0uYsoByWi4EQfWUnkltUh/77iK321tWVbw86+rVe5M=;
 b=Hisj1TbwnXXZAjRPeSmnpT9o6ybMotrS+GmAOZ9pEg4qYZlqueokWJux
 UR0+sYEW18RDDfvUHrdnlQyTGcOpD69HIe0AhhLaAvk1X74q2tIgkT1lX
 Yqq9bqIcpn1RUZTfIxFfyE9b7URyZ7LOk4UIbZ6Bzr457aBr46bkeDeEe
 rv/AVnNjE+BHMAvSbRreto5hmvurAN022FLZtplJNXHeI2KutByDIHX6X
 +SK/QA1YkY6paPcVJPBcrcHFHMYdtLprCW/UyMy+njsgejFfChVoGLaki
 BX43FSfs9kaChJd4WnkPyqL5i8yHlIPuPLWYhtynwXPTAR1m31HkljndJ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="265823135"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="265823135"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:34:47 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="665116694"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.139])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:34:46 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 May 2022 12:35:23 -0700
Message-Id: <20220505193524.276400-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220505193524.276400-1-jose.souza@intel.com>
References: <20220505193524.276400-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 6/7] drm/i915: Drop has_dp_mst from device
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
as the requirement to support it is the DDI support.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 3 ---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 600d8cee272da..af840fbd6c33c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1294,13 +1294,13 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))
 
-#define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
 #define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
 
 #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
 #define HAS_DDI(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9 || \
 					  IS_BROADWELL(dev_priv) || \
 					  IS_HASWELL(dev_priv))
+#define HAS_DP_MST(dev_priv)		 (HAS_DDI(dev_priv))
 #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
 #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
 #define HAS_PSR_HW_TRACKING(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index a0693d9ff9cee..3c4ce836bb99a 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -536,7 +536,6 @@ static const struct intel_device_info vlv_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
 	.display.has_fpga_dbg = 1, \
-	.display.has_dp_mst = 1, \
 	.has_rc6p = 0 /* RC6p removed-by HSW */, \
 	HSW_PIPE_OFFSETS, \
 	.has_runtime_pm = 1
@@ -690,7 +689,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.has_runtime_pm = 1, \
 	.display.has_dmc = 1, \
 	.has_rps = true, \
-	.display.has_dp_mst = 1, \
 	.has_logical_ring_contexts = 1, \
 	.dma_mask_size = 39, \
 	.ppgtt_type = INTEL_PPGTT_FULL, \
@@ -931,7 +929,6 @@ static const struct intel_device_info adl_s_info = {
 	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
 		BIT(DBUF_S4),							\
 	.display.has_dmc = 1,							\
-	.display.has_dp_mst = 1,						\
 	.display.has_dsb = 1,							\
 	.display.has_dsc = 1,							\
 	.display.fbc_mask = BIT(INTEL_FBC_A),					\
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index bc71ce48763ad..7fb90f6c43b78 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -167,7 +167,6 @@ enum intel_ppgtt_type {
 	func(cursor_needs_physical); \
 	func(has_cdclk_crawl); \
 	func(has_dmc); \
-	func(has_dp_mst); \
 	func(has_dsb); \
 	func(has_dsc); \
 	func(has_fpga_dbg); \
-- 
2.36.0

