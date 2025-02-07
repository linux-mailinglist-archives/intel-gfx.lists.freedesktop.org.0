Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C87A2C06C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 11:19:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D04610EA9B;
	Fri,  7 Feb 2025 10:19:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BLHMvfdD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97EC610EA97;
 Fri,  7 Feb 2025 10:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738923480; x=1770459480;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1G8CQ2ivujioarBB6/qU4fYI4DFPOis2WMHAfuEhgxE=;
 b=BLHMvfdDqHJ7eEH5zTRuFcDUjTKFPyW0ROnx0+y43VlMSj7kE6kA9C0F
 w+kdjMu9VtZI5XPfyJCECZ8qcfcjq6d16BbCnjHKy/7dVjMRrjcz1q18f
 cQmGObqJbI9WTK7R7BUOVWhsqda+fT4x1i2p8L9yekEHDT79OjwZS0FSx
 kmLjX4kPLc+IZI5I9HPhCUwuLMaIRcR0g8DxpIfIbe5BTgX3w1A4+bZLh
 JtydLEyxn3mDaXDgcyfTbOfy+I+uyHWg158WBUuY7+fiQN+0G0kUVVo3A
 ufOmGbCRtyds6+k4XGlfCOiaYeP2Qqx8NFCU4F1fAxF8r9TxHtG9yhmJQ w==;
X-CSE-ConnectionGUID: CzkEbm+aSO2RDfAtXWtX1g==
X-CSE-MsgGUID: JhgirSeZRzKn1wzK6VtMlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="39674943"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="39674943"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:18:00 -0800
X-CSE-ConnectionGUID: pr82/QIvRziaZrPQc7Ps9w==
X-CSE-MsgGUID: UYqdDwovT/WnkHjz7XBumg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116686107"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:17:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915/pch: Remove unused i915->pch_id
Date: Fri,  7 Feb 2025 12:17:38 +0200
Message-Id: <fac1c59800128e8f398e83d718a3a5dc235d0526.1738923308.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738923308.git.jani.nikula@intel.com>
References: <cover.1738923308.git.jani.nikula@intel.com>
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

With the PCH checks based on PCH types instead of IDs, the i915->pch_id
member has become unused. Remove it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h      | 1 -
 drivers/gpu/drm/i915/soc/intel_pch.c | 4 ----
 drivers/gpu/drm/xe/xe_device_types.h | 1 -
 3 files changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b96b8de12756..ffc346379cc2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -274,7 +274,6 @@ struct drm_i915_private {
 
 	/* PCH chipset type */
 	enum intel_pch pch_type;
-	unsigned short pch_id;
 
 	unsigned long gem_quirks;
 
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index fa03b5068a19..82dc7fbd1a3e 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -286,13 +286,11 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 		pch_type = intel_pch_type(dev_priv, id);
 		if (pch_type != PCH_NONE) {
 			dev_priv->pch_type = pch_type;
-			dev_priv->pch_id = id;
 			break;
 		} else if (intel_is_virt_pch(id, pch->subsystem_vendor,
 					     pch->subsystem_device)) {
 			intel_virt_detect_pch(dev_priv, &id, &pch_type);
 			dev_priv->pch_type = pch_type;
-			dev_priv->pch_id = id;
 			break;
 		}
 	}
@@ -305,12 +303,10 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 		drm_dbg_kms(&dev_priv->drm,
 			    "Display disabled, reverting to NOP PCH\n");
 		dev_priv->pch_type = PCH_NOP;
-		dev_priv->pch_id = 0;
 	} else if (!pch) {
 		if (i915_run_as_guest() && HAS_DISPLAY(dev_priv)) {
 			intel_virt_detect_pch(dev_priv, &id, &pch_type);
 			dev_priv->pch_type = pch_type;
-			dev_priv->pch_id = id;
 		} else {
 			drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
 		}
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index c0e886bac183..c71b15897f74 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -547,7 +547,6 @@ struct xe_device {
 	 */
 	struct intel_display display;
 	enum intel_pch pch_type;
-	u16 pch_id;
 
 	struct dram_info {
 		bool wm_lv_0_adjust_needed;
-- 
2.39.5

