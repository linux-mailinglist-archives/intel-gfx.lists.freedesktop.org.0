Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EE18D1EA9
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 16:25:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D012010E501;
	Tue, 28 May 2024 14:25:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="moySnpiu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95D74112268;
 Tue, 28 May 2024 14:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716906329; x=1748442329;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aorMxZA4pmnf79WbbHVewR93sDfAI1yy9hUPZzs/YPw=;
 b=moySnpiuzDxHrRBAQ+dgvdcDiWSkF+3MV6+Czj3eqSqUJASla8RIwHch
 RXl6iaCKha5IvuCaGopr8qsJd2RU4nTsW1mMO82SxnHD4BpnKfqebHG1R
 8CPZ3ozLs7B0kWSyjHHTFQqFDE1Gykv86jsABW7FAOxZYjteN6BdWkmB4
 8MplHvwHZOx/bqjHdMTeTYSU7IvNmhvEMo2EB4rxn5s9UyX8swVCTkQB+
 b3J7qBODbC79rTW61qeWJStjZf0seU0BrlfcrinVSjLBTkj1mvk5Df7St
 w6UBtNo7LC+/x4RP5NzELXyCZA70oJG/helsF3hO7Iz/33sYh/ZT237wG g==;
X-CSE-ConnectionGUID: 2n3P5oxYTSu7hDn0ykiD6w==
X-CSE-MsgGUID: RHmiYCT9RemyWGbP3zTgww==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24381050"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="24381050"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:28 -0700
X-CSE-ConnectionGUID: m1fT3fqNQ3+9ECLlVucRbg==
X-CSE-MsgGUID: bUJOUzz4THO9kIFTlc+zQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39531101"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 04/12] drm/i915/dram: split out pnv DDR3 detection
Date: Tue, 28 May 2024 17:24:53 +0300
Message-Id: <d3b83e5059d26f21844248b37b3c5b90b7379b05.1716906179.git.jani.nikula@intel.com>
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

Split out the PNV DDR3 detection to a distinct step instead of
conflating it with mem freq detection.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 3dce9b9a2c5e..1a4db52ac258 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -43,6 +43,11 @@ static const char *intel_dram_type_str(enum intel_dram_type type)
 
 #undef DRAM_TYPE_STR
 
+static bool pnv_is_ddr3(struct drm_i915_private *i915)
+{
+	return intel_uncore_read(&i915->uncore, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3;
+}
+
 static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
 {
 	u32 tmp;
@@ -60,10 +65,6 @@ static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
 		dev_priv->mem_freq = 800;
 		break;
 	}
-
-	/* detect pineview DDR3 setting */
-	tmp = intel_uncore_read(&dev_priv->uncore, CSHRDDR3CTL);
-	dev_priv->is_ddr3 = (tmp & CSHRDDR3CTL_DDR3) ? 1 : 0;
 }
 
 static void ilk_detect_mem_freq(struct drm_i915_private *dev_priv)
@@ -143,6 +144,9 @@ static void detect_mem_freq(struct drm_i915_private *i915)
 	else if (IS_VALLEYVIEW(i915))
 		vlv_detect_mem_freq(i915);
 
+	if (IS_PINEVIEW(i915))
+		i915->is_ddr3 = pnv_is_ddr3(i915);
+
 	if (i915->mem_freq)
 		drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
 }
-- 
2.39.2

