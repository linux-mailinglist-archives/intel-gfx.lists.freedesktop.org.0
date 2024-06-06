Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E10A88FE504
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7CE10E8F5;
	Thu,  6 Jun 2024 11:16:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bXwDOEv6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B03110E8F5
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672584; x=1749208584;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MfhDdCdjOpdOWfUGk1xjOrroHMgzg68T11lgqKql5Cs=;
 b=bXwDOEv686hRdw4VgeO/kiLyUKx7nw3xEw34qVHUXBBLCLbFdCRohVL9
 3lcP4KqNG2qXKw8K8RuLb6VfapiskmtdKdCBFRpWLuo8GkppXV51QakRz
 nADBME2cjCQgYKcr+ucPM41ojfuyhBofXK/19q8l0z0lWikFVbglt9gh8
 a0crd7RQkSva7r2PB4w2i3JZW9VRUu8SijusdPg7RM5lO76V32CeGTLa1
 gif7xvDx6NzpFOA2HPQ5iDEdX1UfpOPPyJ5HjqeYc//7IGt6+QLuZMrX/
 I6clKsw1/FMuSiFoUlI9eRHk5rjtfWyYV+rtnyNDfigniZ8i8JUjVD7Am w==;
X-CSE-ConnectionGUID: ffJQVRCjRhe7PYEXO6AmjA==
X-CSE-MsgGUID: Z2LLmCyWSNKfmnOtLE+NZQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="18123374"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18123374"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:24 -0700
X-CSE-ConnectionGUID: 7/7VGe/rT+OE5Eu6xWrN5Q==
X-CSE-MsgGUID: d+uSc5lHTiahHOPziRkLsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42862865"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 04/14] drm/i915/dram: split out pnv DDR3 detection
Date: Thu,  6 Jun 2024 14:15:56 +0300
Message-Id: <5cea7f6e36182367027e10a1e027220beb954857.1717672515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717672515.git.jani.nikula@intel.com>
References: <cover.1717672515.git.jani.nikula@intel.com>
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

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
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

