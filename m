Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C055696E8
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 02:31:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22BBE10E1F6;
	Thu,  7 Jul 2022 00:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 602B310E1F6
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 00:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657153902; x=1688689902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2Cs43zpj5R5qhlOciqIAhaYsgVciFj2qaGwdQRqZe6A=;
 b=M3KfoOXH2UO1fP4d06A1g+0qNUJseVA7EpiXCOaMGwjXMOAavXKAw0qE
 Tj0JCDhgW/b+YZHzAsTXVwdMiuR1QjEpk1eZL+0ibvmet/1NsIrhGr80u
 YtzIwm+TjvAGaysruyXs/F3Xp5gCLkbuMG/+YTlKhqZDXxGOsRjjpRKjo
 zDpYqXXbdTbikaLBE/roeLNZiqZTOTEJAoNTDmA/vIAyf3bALQTdMYH8I
 VwlcSytIdf5iYePFc6vDOhsDuPVk//+kJ/Sl56/HZp8+x3S40Tdr0A1+5
 Lj6F+XvKvrRE/NHFeQhNnR15Q96y0QMaNalKC2GjsE9mqaRWXtCtihCG4 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="370216163"
X-IronPort-AV: E=Sophos;i="5.92,251,1650956400"; d="scan'208";a="370216163"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 17:31:25 -0700
X-IronPort-AV: E=Sophos;i="5.92,251,1650956400"; d="scan'208";a="661174398"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 17:31:25 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Jul 2022 17:31:06 -0700
Message-Id: <20220707003107.2533184-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220707003107.2533184-1-radhakrishna.sripada@intel.com>
References: <20220707003107.2533184-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Add MeteorLake platform info
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MTL has Xe_LPD+ display IP (version = 14), MTL graphics IP
(version = 12.70), and Xe_LPM+ media IP (version = 13).

Bspec: 55413
Bspec: 55416
Bspec: 55417
Bspec: 55418
Bspec: 55726
Bspec: 45544
Bspec: 65380

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  1 +
 drivers/gpu/drm/i915/i915_pci.c          | 25 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_device_info.c |  1 +
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 4 files changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2f6910050aa2..413a126a6dea 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -999,6 +999,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
 #define IS_ADLP_RPLP(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
+#define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, INTEL_METEORLAKE)
 #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
 				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
 #define IS_BDW_ULT(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 04346929d009..6559c770036f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1069,6 +1069,31 @@ static const struct intel_device_info ats_m_info = {
 	.require_force_probe = 1,
 };
 
+#define XE_LPDP_FEATURES	\
+	XE_LPD_FEATURES,	\
+	.display.ver = 14,	\
+	.display.has_cdclk_crawl = 1
+
+__maybe_unused
+static const struct intel_device_info mtl_info = {
+	XE_HP_FEATURES,
+	XE_LPDP_FEATURES,
+	/*
+	 * Real graphics IP version will be obtained from hardware GMD_ID
+	 * register.  Value provided here is just for sanity checking.
+	 */
+	.graphics.ver = 12,
+	.graphics.rel = 70,
+	.media.ver = 13,
+	.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
+	PLATFORM(INTEL_METEORLAKE),
+	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
+	.require_force_probe = 1,
+	.has_flat_ccs = 0,
+	.has_snoop = 1,
+	.display.has_modular_fia = 1,
+};
+
 #undef PLATFORM
 
 /*
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index cefa9ed784ff..d6934d4f965d 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -72,6 +72,7 @@ static const char * const platform_names[] = {
 	PLATFORM_NAME(ALDERLAKE_P),
 	PLATFORM_NAME(XEHPSDV),
 	PLATFORM_NAME(DG2),
+	PLATFORM_NAME(METEORLAKE),
 };
 #undef PLATFORM_NAME
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index b259a3dbbe0e..2a86e8445fcf 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -88,6 +88,7 @@ enum intel_platform {
 	INTEL_ALDERLAKE_P,
 	INTEL_XEHPSDV,
 	INTEL_DG2,
+	INTEL_METEORLAKE,
 	INTEL_MAX_PLATFORMS
 };
 
-- 
2.25.1

