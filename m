Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81680870996
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 19:31:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A413112467;
	Mon,  4 Mar 2024 18:31:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Og2B82kE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E11F112475;
 Mon,  4 Mar 2024 18:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709577076; x=1741113076;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WezHtewa0WxHVQ26Z3D6zfQuXKGpzmSMcpGhFUOdWoY=;
 b=Og2B82kEr/ODIU+pCO11BbD13HHZQMwslC86ih7NZ2VY/gpJleoTfFG+
 IuDVNaw2pPP6lo5lYOGVVxDLY4VicCqYPYBUBO0D/5zeGks9eFE2KVpIm
 MgLTtsHfJYA4F4EJxahpGNQ7lFli4FvTULLEkGrbc205KqS6N4FDhVS/u
 512yOxLBhYSnpKsF6fKTwK3paivAYCk9FNxfU+bfMtB04MNEVGog6FzqZ
 gCSJQpxz6o8J8ZCy09TkJHc/MBy/TXzKjkAbNt9EhuAzTAKQktkcFlfVb
 mDMPc8iW9NP7XNjnsq8N53eJGQheReuOv9EkNkjPfDA2wkGcE5l5egjzF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="3943531"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="3943531"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="13756486"
Received: from ticela-or-128.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.50])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:14 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, vinod.govindapillai@intel.com,
 stanislav.lisovskiy@intel.com, Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH 5/8] drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
Date: Mon,  4 Mar 2024 15:30:24 -0300
Message-ID: <20240304183028.195057-6-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240304183028.195057-1-gustavo.sousa@intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
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

CDCLK programming Xe2LPD always selects the CDCLK PLL as source for the
MDCLK. Because of that, the ratio between MDCLK and CDCLK is not be
constant anymore. As such, make sure to have the current ratio available
in intel_dbuf_state so that it can be used during dbuf programming.

Note that we write-lock the global state instead of serializing to a
hardware commit because a change in the ratio should be rather handled
in the CDCLK change sequence, which will need to take care of updating
the necessary registers in that case. We will implement that in upcoming
changes.

That said, changes in the MBus joining state should be handled by the
DBUF/MBUS logic, just like it is already done, but the logic will need
to know the ratio to properly update the registers.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 26 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h   |  2 ++
 drivers/gpu/drm/i915/display/skl_watermark.c | 18 +++++++++++++-
 drivers/gpu/drm/i915/display/skl_watermark.h |  3 +++
 4 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index cdf3ae766f9e..04a6e9806254 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -39,6 +39,7 @@
 #include "intel_pcode.h"
 #include "intel_psr.h"
 #include "intel_vdsc.h"
+#include "skl_watermark.h"
 #include "vlv_sideband.h"
 
 /**
@@ -1891,6 +1892,22 @@ static u32 xe2lpd_mdclk_source_sel(struct drm_i915_private *i915)
 	return MDCLK_SOURCE_SEL_CD2XCLK;
 }
 
+u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
+			   const struct intel_cdclk_config *cdclk_config)
+{
+	u32 source_sel = xe2lpd_mdclk_source_sel(i915);
+
+	switch (source_sel) {
+	case MDCLK_SOURCE_SEL_CD2XCLK:
+		return 2;
+	case MDCLK_SOURCE_SEL_CDCLK_PLL:
+		return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cdclk);
+	default:
+		MISSING_CASE(source_sel);
+		return 2;
+	}
+}
+
 static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
 						    const struct intel_cdclk_config *old_cdclk_config,
 						    const struct intel_cdclk_config *new_cdclk_config,
@@ -3281,6 +3298,15 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			    "Modeset required for cdclk change\n");
 	}
 
+	if (intel_mdclk_cdclk_ratio(dev_priv, &old_cdclk_state->actual) !=
+	    intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual)) {
+		u8 ratio = intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual);
+
+		ret = intel_dbuf_state_set_mdclk_cdclk_ratio(state, ratio);
+		if (ret)
+			return ret;
+	}
+
 	drm_dbg_kms(&dev_priv->drm,
 		    "New cdclk calculated to be logical %u kHz, actual %u kHz\n",
 		    new_cdclk_state->logical.cdclk,
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index fa301495e7f1..8e6e302bd599 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -62,6 +62,8 @@ void intel_update_cdclk(struct drm_i915_private *dev_priv);
 u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
 bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b);
+u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
+			   const struct intel_cdclk_config *cdclk_config);
 void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
 void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
 void intel_cdclk_dump_config(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d9e49cd60d3a..4410e21888ad 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3057,6 +3057,8 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 	if (HAS_MBUS_JOINING(i915))
 		dbuf_state->joined_mbus = intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
 
+	dbuf_state->mdclk_cdclk_ratio = intel_mdclk_cdclk_ratio(i915, &i915->display.cdclk.hw);
+
 	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
@@ -3530,6 +3532,19 @@ int intel_dbuf_init(struct drm_i915_private *i915)
 	return 0;
 }
 
+int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8 ratio)
+{
+	struct intel_dbuf_state *dbuf_state;
+
+	dbuf_state = intel_atomic_get_dbuf_state(state);
+	if (IS_ERR(dbuf_state))
+		return PTR_ERR(dbuf_state);
+
+	dbuf_state->mdclk_cdclk_ratio = ratio;
+
+	return intel_atomic_lock_global_state(&dbuf_state->base);
+}
+
 static void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
 						u8 ratio,
 						bool joined_mbus)
@@ -3574,7 +3589,8 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
 		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
 		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
 
-	intel_dbuf_mdclk_cdclk_ratio_update(i915, 2, dbuf_state->joined_mbus);
+	intel_dbuf_mdclk_cdclk_ratio_update(i915, dbuf_state->mdclk_cdclk_ratio,
+					    dbuf_state->joined_mbus);
 }
 
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index e3d1d74a7b17..fed4d12df584 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -58,6 +58,7 @@ struct intel_dbuf_state {
 	u8 slices[I915_MAX_PIPES];
 	u8 enabled_slices;
 	u8 active_pipes;
+	u8 mdclk_cdclk_ratio;
 	bool joined_mbus;
 };
 
@@ -71,6 +72,8 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
 	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))
 
 int intel_dbuf_init(struct drm_i915_private *i915);
+int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8 ratio);
+
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
 void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
 void intel_mbus_dbox_update(struct intel_atomic_state *state);
-- 
2.44.0

