Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC7C879915
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 17:37:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85858112F0E;
	Tue, 12 Mar 2024 16:37:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PFusKuMy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 863C311254E;
 Tue, 12 Mar 2024 16:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710261428; x=1741797428;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2mMMrMwraSJ5W93lWwj6MrYMD+Gayws/PxGAS8Ylx5U=;
 b=PFusKuMy/6gQKausJa/60Hwcs+YOExJ5YvAtE2WCp/yfGD3nhxlMUoeN
 vCRnIuQCwhmU14wpO6shePjVywlAPkCynm/Ag6yKhZDNwvJYUws4Y8LAm
 eZPJVXEPtitkHR2eMtch1krEp3XW7QwdLAGI3SF/gtFsN25OX2ruaB9w6
 BMObWCnuTRgHcHWfNuksPW/WijG+QNVs0MyPwi5Csed9bye7QhgZe7fr8
 8av8Fig0cGtGKJqPczozpaO/GIllsfkQ4NMHAZWndqhbi1PzT7Z4uBTC9
 zd+5c7gq3PMaYVGz6TgL1pqSdbph3n/PLrT1tSLdiwvIBRCwnI5FTvWq5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="27458081"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="27458081"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16245837"
Received: from ticela-or-524.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.238])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:37:07 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 gustavo.sousa@intel.com
Subject: [PATCH v2 5/8] drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
Date: Tue, 12 Mar 2024 13:36:36 -0300
Message-ID: <20240312163639.172321-6-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240312163639.172321-1-gustavo.sousa@intel.com>
References: <20240312163639.172321-1-gustavo.sousa@intel.com>
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

Xe2LPD always selects the CDCLK PLL as source for the MDCLK. Because of
that, the ratio between MDCLK and CDCLK is not be constant anymore. As
such, make sure to have the current ratio available in intel_dbuf_state
so that it can be used during dbuf programming.

Note that we write-lock the global state instead of serializing to a
hardware commit because a change in the ratio should be rather handled
in the CDCLK change sequence, which will need to take care of updating
the necessary registers in that case. We will implement that in upcoming
changes.

That said, changes in the MBus joining state should be handled by the
DBUF/MBUS logic, just like it is already done, but the logic will need
to know the ratio to properly update the registers.

v2:
  - Make first sentence of commit message more intelligible. (Matt)

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h   |  2 ++
 drivers/gpu/drm/i915/display/skl_watermark.c | 18 +++++++++++++++++-
 drivers/gpu/drm/i915/display/skl_watermark.h |  3 +++
 4 files changed, 42 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 354a9dba6440..4e143082dca1 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -39,6 +39,7 @@
 #include "intel_pcode.h"
 #include "intel_psr.h"
 #include "intel_vdsc.h"
+#include "skl_watermark.h"
 #include "vlv_sideband.h"
 
 /**
@@ -1889,6 +1890,16 @@ static u32 xe2lpd_mdclk_source_sel(struct drm_i915_private *i915)
 	return MDCLK_SOURCE_SEL_CD2XCLK;
 }
 
+u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
+			   const struct intel_cdclk_config *cdclk_config)
+{
+	if (mdclk_source_is_cdclk_pll(i915))
+		return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cdclk);
+
+	/* Otherwise, source for MDCLK is CD2XCLK. */
+	return 2;
+}
+
 static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
 						    const struct intel_cdclk_config *old_cdclk_config,
 						    const struct intel_cdclk_config *new_cdclk_config,
@@ -3278,6 +3289,15 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
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

