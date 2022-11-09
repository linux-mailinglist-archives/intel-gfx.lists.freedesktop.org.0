Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5408622E30
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 15:42:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDF0E10E5E5;
	Wed,  9 Nov 2022 14:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AE3410E5E0
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 14:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668004938; x=1699540938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hMrMMFQgs7E0cD2eBvkiK3xjeuUSu9d9mnQ2bXEM4mM=;
 b=hSzgHqNiyN51Qy1whr5HAa1uMlbGTJoR83pQHOUNTGexP+Zmvza98RlW
 2kgoI3NFp8QG9aFCJcXzFPo/DWNRhWyiMGOsoPsZZ/ZOm3l7gNW1iv2QK
 XIzEx1AyaGSBTGBOFP1eLlZnnWZaT8P75spMMAjSoR3Zs4ScMQCSJnC0D
 7719oZCZDXX+cJlVasxx7hq7YH/mLN98kDnIzpbhg7Jx/spZ5Nk76Tp4d
 1oIWm/BY2iXJUOkNePX2R75YbeOnc/rMtiMV9y+9qDHPpkbvXP00zYcMB
 wLFQdeBQJ63f738APhQpUukO7z8SrchzxD/u+7ULpcxItpk/RNtqAf05c A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="294366005"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="294366005"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:42:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="669970293"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="669970293"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:42:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 16:42:07 +0200
Message-Id: <20221109144209.3624739-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221109144209.3624739-1-jani.nikula@intel.com>
References: <20221109144209.3624739-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/display: move hti under display
 sub-struct
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display hti/hdport related members under drm_i915_private display
sub-struct.

Prefer adding anonymous sub-structs even for single members that aren't
our own structs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_hti.c          | 10 +++++-----
 drivers/gpu/drm/i915/i915_drv.h                   |  8 --------
 3 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 337d8e08ba43..d851d401211f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -370,6 +370,16 @@ struct intel_display {
 		struct mutex comp_mutex;
 	} hdcp;
 
+	struct {
+		/*
+		 * HTI (aka HDPORT) state read during initial hw readout. Most
+		 * platforms don't have HTI, so this will just stay 0. Those
+		 * that do will use this later to figure out which PLLs and PHYs
+		 * are unavailable for driver usage.
+		 */
+		u32 state;
+	} hti;
+
 	struct {
 		struct i915_power_domains domains;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hti.c b/drivers/gpu/drm/i915/display/intel_hti.c
index e2b09e96f9a9..7d48f5646274 100644
--- a/drivers/gpu/drm/i915/display/intel_hti.c
+++ b/drivers/gpu/drm/i915/display/intel_hti.c
@@ -16,24 +16,24 @@ void intel_hti_init(struct drm_i915_private *i915)
 	 * any display resources before we create our display outputs.
 	 */
 	if (INTEL_INFO(i915)->display.has_hti)
-		i915->hti_state = intel_de_read(i915, HDPORT_STATE);
+		i915->display.hti.state = intel_de_read(i915, HDPORT_STATE);
 }
 
 bool intel_hti_uses_phy(struct drm_i915_private *i915, enum phy phy)
 {
-	return i915->hti_state & HDPORT_ENABLED &&
-		i915->hti_state & HDPORT_DDI_USED(phy);
+	return i915->display.hti.state & HDPORT_ENABLED &&
+		i915->display.hti.state & HDPORT_DDI_USED(phy);
 }
 
 u32 intel_hti_dpll_mask(struct drm_i915_private *i915)
 {
-	if (!(i915->hti_state & HDPORT_ENABLED))
+	if (!(i915->display.hti.state & HDPORT_ENABLED))
 		return 0;
 
 	/*
 	 * Note: This is subtle. The values must coincide with what's defined
 	 * for the platform.
 	 */
-	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, i915->hti_state);
+	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, i915->display.hti.state);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 05b3300cc4ed..bb88aee2af25 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -300,14 +300,6 @@ struct drm_i915_private {
 
 	struct intel_l3_parity l3_parity;
 
-	/*
-	 * HTI (aka HDPORT) state read during initial hw readout.  Most
-	 * platforms don't have HTI, so this will just stay 0.  Those that do
-	 * will use this later to figure out which PLLs and PHYs are unavailable
-	 * for driver usage.
-	 */
-	u32 hti_state;
-
 	/*
 	 * edram size in MB.
 	 * Cannot be determined by PCIID. You must always read a register.
-- 
2.34.1

