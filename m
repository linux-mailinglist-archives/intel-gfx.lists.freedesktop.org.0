Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C7C8D1EAA
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 16:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6846710EE3D;
	Tue, 28 May 2024 14:25:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SBf2gMEM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B9B3112322;
 Tue, 28 May 2024 14:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716906333; x=1748442333;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O6HWgoD/wpft4AU++fKecGnRzpy3dHCYx2nguyLMtKw=;
 b=SBf2gMEMfySFLDLQ7dWYCoACcXVeFkpUg9Fi/GXj6p0rIbsxVM59UwRv
 efYC0t1M+9otiMOyiK/dgpOCYO6M2aGIxwO2B914CHvUO9qwDPFkxWCfe
 iJVY3xQBd5EhK3IT8sb3O0E9iAGlzQwCXi0gXsPVq1SYTMuLcjwhfwhUd
 qECiEETS08O1fNCEvsOiuBHY2smEiDQb2lREK59fi+SDIESMZ648a062b
 g8aqWcirQrR+O9CR0ykfxMhuZ0DVmssdqgvxUebxtakGs586vPVKXyXiP
 zqA2W1XsSCgNa4avwJfSQZpPpnjV+8RE0TaMP4ihE9IS8FJx49HeJ3gOM Q==;
X-CSE-ConnectionGUID: aC3k1N+zRu2mDFilIA/TDg==
X-CSE-MsgGUID: +JZ5DSylRnCOXuAVMk4ZmQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24381077"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="24381077"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:33 -0700
X-CSE-ConnectionGUID: FQ75DlZeTZyQcWMku8pzfg==
X-CSE-MsgGUID: UzJu8LXmTomHhyqO/IC3bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39531133"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 05/12] drm/i915/dram: rearrange mem freq init
Date: Tue, 28 May 2024 17:24:54 +0300
Message-Id: <b5d045df9cc2cba746cfd3d29990b132ddbaf023.1716906179.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716906179.git.jani.nikula@intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Follow the same style in mem freq init as in fsb freq init, returning
the value instead of assigning in multiple places.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 59 ++++++++++++---------------
 1 file changed, 25 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 1a4db52ac258..266ed6cfa485 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -48,7 +48,7 @@ static bool pnv_is_ddr3(struct drm_i915_private *i915)
 	return intel_uncore_read(&i915->uncore, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3;
 }
 
-static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
+static unsigned int pnv_mem_freq(struct drm_i915_private *dev_priv)
 {
 	u32 tmp;
 
@@ -56,44 +56,38 @@ static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
 
 	switch (tmp & CLKCFG_MEM_MASK) {
 	case CLKCFG_MEM_533:
-		dev_priv->mem_freq = 533;
-		break;
+		return 533;
 	case CLKCFG_MEM_667:
-		dev_priv->mem_freq = 667;
-		break;
+		return 667;
 	case CLKCFG_MEM_800:
-		dev_priv->mem_freq = 800;
-		break;
+		return 800;
 	}
+
+	return 0;
 }
 
-static void ilk_detect_mem_freq(struct drm_i915_private *dev_priv)
+static unsigned int ilk_mem_freq(struct drm_i915_private *dev_priv)
 {
 	u16 ddrpll;
 
 	ddrpll = intel_uncore_read16(&dev_priv->uncore, DDRMPLL1);
 	switch (ddrpll & 0xff) {
 	case 0xc:
-		dev_priv->mem_freq = 800;
-		break;
+		return 800;
 	case 0x10:
-		dev_priv->mem_freq = 1066;
-		break;
+		return 1066;
 	case 0x14:
-		dev_priv->mem_freq = 1333;
-		break;
+		return 1333;
 	case 0x18:
-		dev_priv->mem_freq = 1600;
-		break;
+		return 1600;
 	default:
 		drm_dbg(&dev_priv->drm, "unknown memory frequency 0x%02x\n",
 			ddrpll & 0xff);
-		dev_priv->mem_freq = 0;
-		break;
+		return 0;
 	}
 }
 
-static void chv_detect_mem_freq(struct drm_i915_private *i915)
+static unsigned int chv_mem_freq(struct drm_i915_private *i915)
 {
 	u32 val;
 
@@ -103,15 +97,13 @@ static void chv_detect_mem_freq(struct drm_i915_private *i915)
 
 	switch ((val >> 2) & 0x7) {
 	case 3:
-		i915->mem_freq = 2000;
-		break;
+		return 2000;
 	default:
-		i915->mem_freq = 1600;
-		break;
+		return 1600;
 	}
 }
 
-static void vlv_detect_mem_freq(struct drm_i915_private *i915)
+static unsigned int vlv_mem_freq(struct drm_i915_private *i915)
 {
 	u32 val;
 
@@ -122,27 +114,26 @@ static void vlv_detect_mem_freq(struct drm_i915_private *i915)
 	switch ((val >> 6) & 3) {
 	case 0:
 	case 1:
-		i915->mem_freq = 800;
-		break;
+		return 800;
 	case 2:
-		i915->mem_freq = 1066;
-		break;
+		return 1066;
 	case 3:
-		i915->mem_freq = 1333;
-		break;
+		return 1333;
 	}
+
+	return 0;
 }
 
 static void detect_mem_freq(struct drm_i915_private *i915)
 {
 	if (IS_PINEVIEW(i915))
-		pnv_detect_mem_freq(i915);
+		i915->mem_freq = pnv_mem_freq(i915);
 	else if (GRAPHICS_VER(i915) == 5)
-		ilk_detect_mem_freq(i915);
+		i915->mem_freq = ilk_mem_freq(i915);
 	else if (IS_CHERRYVIEW(i915))
-		chv_detect_mem_freq(i915);
+		i915->mem_freq = chv_mem_freq(i915);
 	else if (IS_VALLEYVIEW(i915))
-		vlv_detect_mem_freq(i915);
+		i915->mem_freq = vlv_mem_freq(i915);
 
 	if (IS_PINEVIEW(i915))
 		i915->is_ddr3 = pnv_is_ddr3(i915);
-- 
2.39.2

