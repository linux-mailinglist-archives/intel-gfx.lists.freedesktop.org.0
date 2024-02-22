Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAC385F8F2
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 13:56:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44FE110E909;
	Thu, 22 Feb 2024 12:56:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NRH7e4lD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3986710E8FF
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 12:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708606614; x=1740142614;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kczJ96TsMT5y1aAnly4gAWOIqlkGOI1igqG6+e0jZWw=;
 b=NRH7e4lDouyJlmiKYmoSGy5xAtuusCBqlk7e8A3GlSeeUt2HYqXNV6+A
 otUlw+MTkMMMwTMqx2v7gfSrICu3cFBxGr/A6TvkL2UMr86GOotN+6i5A
 PVWLKhKxB8dMDmLE7lLNE4l3lGA/qbo21OvmPMpUZixqEI68xDRBk45xn
 5vo/VHqvkoYrqCFuBFKSn4+/utQzty7JA8hbt8hFTvY6iJzYWjQwG7Hj+
 z9qmV8WqZelnXvjt+a26DtXPWL95QHgg62luPWZSQqPcgAm0CeQmG72t6
 RKtrwlPSHRjG4jupOjuBzrSF6TR2eMCfGFD6TNuxXCDmgWCUhkLIQCNz7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2979102"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2979102"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:56:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5464290"
Received: from sfriis-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.249.44.6])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:56:52 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 lucas.demarchi@intel.com, matthew.d.roper@intel.com
Subject: [PATCH v1 1/6] drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf
Date: Thu, 22 Feb 2024 14:56:29 +0200
Message-Id: <20240222125634.275047-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240222125634.275047-1-vinod.govindapillai@intel.com>
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

When we change MDCLK/CDCLK the BSpec now instructs us to write a ratio
between MDCLK/CDCLK to MBUS CTL and DBUF CTL registers during that
change.

Previsouly DBuf state and CDCLK were not anyhow coupled together.  Now
at compute stage when we know which CDCLK/MDCLK we are going to use, we
need to update the DBuf state with that ratio, being properly encoded,
so that it gets written to those registers, once DBuf state is being
update. The criteria for updating DBuf state is also a CDCLK/MDCLK ratio
change now.

v2:
  - Remove condition check for display version 20 since it's compatible
    with previous versions (Matt Roper)
  - Squash the serialization of global state when mdclk_cdclk_ratio
    changes

Bspec: 68864, 69482, 69445
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 28 +++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 28 ++++++++++++++++---
 drivers/gpu/drm/i915/display/skl_watermark.h  |  1 +
 .../gpu/drm/i915/display/skl_watermark_regs.h |  2 ++
 4 files changed, 55 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 30dae4fef6cb..4d7244284efc 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -39,6 +39,7 @@
 #include "intel_pcode.h"
 #include "intel_psr.h"
 #include "intel_vdsc.h"
+#include "skl_watermark.h"
 #include "vlv_sideband.h"
 
 /**
@@ -1849,6 +1850,16 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
 	return vco == ~0;
 }
 
+/* Return the MBUS_CTL's encoding of the mdclk/cdclk ratio */
+static int get_mdclk_cdclk_ratio(struct drm_i915_private *i915,
+				 const struct intel_cdclk_config *cdclk_config)
+{
+	if (DISPLAY_VER(i915) >= 20)
+		return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cdclk) - 1;
+
+	return 1;
+}
+
 static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
 						    const struct intel_cdclk_config *old_cdclk_config,
 						    const struct intel_cdclk_config *new_cdclk_config,
@@ -2761,6 +2772,8 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 	struct intel_crtc_state *crtc_state;
 	int min_cdclk, i;
 	enum pipe pipe;
+	struct intel_dbuf_state *new_dbuf_state;
+	struct intel_dbuf_state *old_dbuf_state;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		int ret;
@@ -2794,6 +2807,21 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 		}
 	}
 
+	new_dbuf_state = intel_atomic_get_new_dbuf_state(state);
+	old_dbuf_state = intel_atomic_get_old_dbuf_state(state);
+	if (new_dbuf_state && old_dbuf_state) {
+		new_dbuf_state->mdclk_cdclk_ratio =
+			get_mdclk_cdclk_ratio(dev_priv, &cdclk_state->actual);
+
+		if (new_dbuf_state->mdclk_cdclk_ratio != old_dbuf_state->mdclk_cdclk_ratio) {
+			int ret;
+
+			ret = intel_atomic_serialize_global_state(&new_dbuf_state->base);
+			if (ret)
+				return ret;
+		}
+	}
+
 	min_cdclk = max(cdclk_state->force_min_cdclk,
 			cdclk_state->bw_min_cdclk);
 	for_each_pipe(dev_priv, pipe)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 614f319d754e..ad76db6c6ab7 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3480,6 +3480,16 @@ int intel_dbuf_init(struct drm_i915_private *i915)
 	return 0;
 }
 
+static int get_mbus_mdclk_cdclk_ratio(struct drm_i915_private *i915,
+				      int mdclk_cdclk_ratio,
+				      int mbus_joined)
+{
+	if (mbus_joined)
+		return (mdclk_cdclk_ratio << 1) + 1;
+
+	return mdclk_cdclk_ratio;
+}
+
 /*
  * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
  * update the request state of all DBUS slices.
@@ -3491,10 +3501,16 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
 	enum dbuf_slice slice;
 	const struct intel_dbuf_state *dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
+	int tracker_state_service;
 
 	if (!HAS_MBUS_JOINING(i915))
 		return;
 
+	tracker_state_service =
+		get_mbus_mdclk_cdclk_ratio(i915,
+					   dbuf_state->mdclk_cdclk_ratio,
+					   dbuf_state->joined_mbus);
+
 	/*
 	 * TODO: Implement vblank synchronized MBUS joining changes.
 	 * Must be properly coordinated with dbuf reprogramming.
@@ -3502,13 +3518,15 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
 	if (dbuf_state->joined_mbus) {
 		mbus_ctl = MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
 			MBUS_JOIN_PIPE_SELECT_NONE;
-		dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(3);
 	} else {
 		mbus_ctl = MBUS_HASHING_MODE_2x2 |
 			MBUS_JOIN_PIPE_SELECT_NONE;
-		dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(1);
 	}
 
+	dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(tracker_state_service);
+
+	mbus_ctl |= MBUS_TRANS_THROTTLE_MIN_SELECT(dbuf_state->mdclk_cdclk_ratio);
+
 	intel_de_rmw(i915, MBUS_CTL,
 		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
 		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
@@ -3529,7 +3547,8 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 
 	if (!new_dbuf_state ||
 	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
-	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
+	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus &&
+	     new_dbuf_state->mdclk_cdclk_ratio == old_dbuf_state->mdclk_cdclk_ratio))
 		return;
 
 	WARN_ON(!new_dbuf_state->base.changed);
@@ -3550,7 +3569,8 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 
 	if (!new_dbuf_state ||
 	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
-	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
+	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus &&
+	     new_dbuf_state->mdclk_cdclk_ratio == old_dbuf_state->mdclk_cdclk_ratio))
 		return;
 
 	WARN_ON(!new_dbuf_state->base.changed);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index fb0da36fd3ec..e3f3eb2c35a1 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -58,6 +58,7 @@ struct intel_dbuf_state {
 	u8 slices[I915_MAX_PIPES];
 	u8 enabled_slices;
 	u8 active_pipes;
+	u8 mdclk_cdclk_ratio;
 	bool joined_mbus;
 };
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
index 628c5920ad49..4c820f1d351d 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
@@ -38,6 +38,8 @@
 #define MBUS_HASHING_MODE_2x2		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
 #define MBUS_HASHING_MODE_1x4		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
 #define MBUS_JOIN_PIPE_SELECT_MASK	REG_GENMASK(28, 26)
+#define MBUS_TRANS_THROTTLE_MIN_MASK	REG_GENMASK(15, 13)
+#define MBUS_TRANS_THROTTLE_MIN_SELECT(ratio)	REG_FIELD_PREP(MBUS_TRANS_THROTTLE_MIN_MASK, ratio)
 #define MBUS_JOIN_PIPE_SELECT(pipe)	REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
 #define MBUS_JOIN_PIPE_SELECT_NONE	MBUS_JOIN_PIPE_SELECT(7)
 
-- 
2.34.1

