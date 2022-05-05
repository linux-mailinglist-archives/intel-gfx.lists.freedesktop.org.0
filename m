Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B25FB51C948
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 21:34:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9381810EF90;
	Thu,  5 May 2022 19:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7B1110EF7F
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 19:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651779288; x=1683315288;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lA+KJxXURNuI7tsKQeojrr7QtX91oVkcjhxbSVQH99s=;
 b=LCC4GB5Dy3E5Jtz8OHiBjTQg6PRFLHAc+zPvjN8yds9RMRzh/KiCZPpA
 JYjecplgt3lXM8DO+dBLoIRksRfNN10qycaM2YpLfYq/tNI6loO6obCTP
 noDn8fJX/pGTzx+AcgWOlgbrVJIACjmDVWZPX2dgDQ62Xvm1MWhVsh0hx
 TKikyf5ZhwbPBTDyQiUnGKoRXWz0kzbiu8uC45W1+I1z0Zq5KLGfMncrs
 PS2//HSiDT5y4yY0URGFo8GdwEf2LmIi89qv7l589Hir2FIRZuHB3/sVp
 06YSLSa4hMDV+W08nWagi3f4a4Unlh5++KXZ1Tsb96bvZ2gviNs0dBfZn Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="265823136"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="265823136"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:34:48 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="665116701"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.139])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:34:47 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 May 2022 12:35:24 -0700
Message-Id: <20220505193524.276400-7-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220505193524.276400-1-jose.souza@intel.com>
References: <20220505193524.276400-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 7/7] drm/i915: Drop has_psr from device info
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
as all platforms with display version 9 or newer has this feature.

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
index af840fbd6c33c..bd0a9b5fc53f4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1302,7 +1302,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 					  IS_HASWELL(dev_priv))
 #define HAS_DP_MST(dev_priv)		 (HAS_DDI(dev_priv))
 #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
-#define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
+#define HAS_PSR(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9)
 #define HAS_PSR_HW_TRACKING(dev_priv) \
 	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(dev_priv)	 (DISPLAY_VER(dev_priv) >= 12)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 3c4ce836bb99a..799573a5e5a6f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -635,7 +635,6 @@ static const struct intel_device_info chv_info = {
 	.display.has_dmc = 1, \
 	.display.has_hdcp = 1, \
 	.display.has_ipc = 1, \
-	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
 	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \
 	.dbuf.slice_mask = BIT(DBUF_S1)
@@ -684,7 +683,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.has_fpga_dbg = 1, \
 	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.display.has_hdcp = 1, \
-	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
 	.has_runtime_pm = 1, \
 	.display.has_dmc = 1, \
@@ -936,7 +934,6 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_hdcp = 1,							\
 	.display.has_hotplug = 1,						\
 	.display.has_ipc = 1,							\
-	.display.has_psr = 1,							\
 	.display.ver = 13,							\
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
 	.pipe_offsets = {							\
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 7fb90f6c43b78..a2e53b8683285 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -177,7 +177,6 @@ enum intel_ppgtt_type {
 	func(has_ipc); \
 	func(has_modular_fia); \
 	func(has_overlay); \
-	func(has_psr); \
 	func(has_psr_hw_tracking); \
 	func(overlay_needs_physical); \
 	func(supports_tv);
-- 
2.36.0

