Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFD35AD8B7
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 20:01:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8532110E484;
	Mon,  5 Sep 2022 18:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 070DC10E484
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 18:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662400906; x=1693936906;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9igO1BUN2lTK54hX4agrq2zaqg44gZO4/XQH+3cKpW8=;
 b=H0vpGI8z1Z0Q9uPiJGmk9iLyqKxYb1HNSACNdAI92ywtbC79/p3xo520
 TqzGR4fsLY2/6emDAv5LdtJeblmZw0zXEKOlPaSOaR6G/FeFUdRuNdetx
 yZVoI35jQU0iZiq6a/ikLzPrGUjQidowP3esPXS8Aui22ogsuK0mFYbzH
 flgNrxpkAvYXuae8RVGVI7p7XTZkahVpFekodoCt0joM7Wxm3yxKeK0Np
 ihc3lne3y5TBebSCMeWqKtGx0pYKSaxPgE80xj8iOzGeK/MfX4Oz8w4WK
 gahhtDbgHNDv+IMa/siQvy2WKRc5TrQQcyntfEHUfhoPiIaonosiAdDLg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="295171301"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="295171301"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:01:45 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="942179577"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:01:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 21:01:08 +0300
Message-Id: <5e19a069ca8d6957e9509f2e81da7126409e6fdb.1662400767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662400767.git.jani.nikula@intel.com>
References: <cover.1662400767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/display: move hdport under display
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

Move display hdport related members under drm_i915_private display
sub-struct.

Prefer adding anonymous sub-structs even for single members that aren't
our own structs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c          |  4 ++--
 drivers/gpu/drm/i915/display/intel_display.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display_core.h | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c     |  4 ++--
 drivers/gpu/drm/i915/i915_drv.h                   |  8 --------
 5 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f5416433826d..266c379c1d98 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4130,8 +4130,8 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_port)
 
 static bool hti_uses_phy(struct drm_i915_private *i915, enum phy phy)
 {
-	return i915->hti_state & HDPORT_ENABLED &&
-	       i915->hti_state & HDPORT_DDI_USED(phy);
+	return i915->display.hdport.hti_state & HDPORT_ENABLED &&
+	       i915->display.hdport.hti_state & HDPORT_DDI_USED(phy);
 }
 
 static enum hpd_pin xelpd_hpd_pin(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7834a47e0b4b..2160537fee73 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8774,7 +8774,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 	 * any display resources before we create our display outputs.
 	 */
 	if (INTEL_INFO(i915)->display.has_hti)
-		i915->hti_state = intel_de_read(i915, HDPORT_STATE);
+		i915->display.hdport.hti_state = intel_de_read(i915, HDPORT_STATE);
 
 	/* Just disable it once at startup */
 	intel_vga_disable(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 4c9a6b9c5512..eb013c153c48 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -355,6 +355,16 @@ struct intel_display {
 		struct mutex comp_mutex;
 	} hdcp;
 
+	struct {
+		/*
+		 * HTI (aka HDPORT) state read during initial hw readout.  Most
+		 * platforms don't have HTI, so this will just stay 0.  Those
+		 * that do will use this later to figure out which PLLs and PHYs
+		 * are unavailable for driver usage.
+		 */
+		u32 hti_state;
+	} hdport;
+
 	struct {
 		bool enabled;
 	} ipc;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index d437fcf04bdd..8260f1168e8b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3169,10 +3169,10 @@ static void icl_update_active_dpll(struct intel_atomic_state *state,
 
 static u32 intel_get_hti_plls(struct drm_i915_private *i915)
 {
-	if (!(i915->hti_state & HDPORT_ENABLED))
+	if (!(i915->display.hdport.hti_state & HDPORT_ENABLED))
 		return 0;
 
-	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, i915->hti_state);
+	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, i915->display.hdport.hti_state);
 }
 
 static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1c95c75714da..ae63a8d71392 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -305,14 +305,6 @@ struct drm_i915_private {
 
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

