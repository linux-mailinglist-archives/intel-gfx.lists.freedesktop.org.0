Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB3C79C4DC
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:49:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CFFC10E39E;
	Tue, 12 Sep 2023 04:48:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E28B10E360;
 Tue, 12 Sep 2023 04:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494118; x=1726030118;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=93tFk+mBNs/icz+BukuLi/u2SYRxxik5Wo/lHkqhwGk=;
 b=PFiD0elXRn5+5bMKEGVckV1KWwgjHeRakWEdO2Mhv1GGQbL3DfPomH6U
 CnxNvVlYUNaOWnCoaWlPakKrD04VyK87COEmiwDX7ZPSr8NOy+UqmZEdI
 oIppEnXx3C3LR3RgViPgiZ7Pk76xzr4fnzDlPfzf99Gg1vbjuBrpFnEhe
 cbaupRfCCxkBy4Cwcl6l5HHoegN9HCYMStdnWr1VRpMGcG8OcUQYZxAcD
 DRgE4B+DOWWODa33O771WjdMv+jWpX/jprNaRTVhGql3pB/KPQggJIU7h
 5EsFPMurBMrinMbnt+mDvwvfCg8HL27fxWeUUmwHezQWWzBJJb9+LH70q w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182345"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182345"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419986"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419986"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:37 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:34 -0700
Message-Id: <20230912044837.1672060-27-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 26/29] FIXME: drm/i915/lnl: Introduce
 MDCLK_CDCLK ratio to DBuf
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 28 +++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 28 ++++++++++++++++---
 drivers/gpu/drm/i915/display/skl_watermark.h  |  1 +
 .../gpu/drm/i915/display/skl_watermark_regs.h |  2 ++
 4 files changed, 55 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b55a3f75f392..e3db6c7934f3 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -39,6 +39,7 @@
 #include "intel_pcode.h"
 #include "intel_psr.h"
 #include "intel_vdsc.h"
+#include "skl_watermark.h"
 #include "vlv_sideband.h"
 
 /**
@@ -1800,6 +1801,16 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
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
 static int cdclk_squash_divider(u16 waveform)
 {
 	return hweight16(waveform ?: 0xffff);
@@ -2712,6 +2723,8 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 	struct intel_crtc_state *crtc_state;
 	int min_cdclk, i;
 	enum pipe pipe;
+	struct intel_dbuf_state *new_dbuf_state;
+	struct intel_dbuf_state *old_dbuf_state;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		int ret;
@@ -2745,6 +2758,21 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
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
index 64a122d3c9c0..1fefb02876c8 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3472,6 +3472,16 @@ int intel_dbuf_init(struct drm_i915_private *i915)
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
@@ -3483,10 +3493,16 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
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
@@ -3494,13 +3510,15 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
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
@@ -3521,7 +3539,8 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 
 	if (!new_dbuf_state ||
 	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
-	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
+	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus &&
+	     new_dbuf_state->mdclk_cdclk_ratio == old_dbuf_state->mdclk_cdclk_ratio))
 		return;
 
 	WARN_ON(!new_dbuf_state->base.changed);
@@ -3542,7 +3561,8 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 
 	if (!new_dbuf_state ||
 	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
-	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
+	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus &&
+	     new_dbuf_state->mdclk_cdclk_ratio == old_dbuf_state->mdclk_cdclk_ratio))
 		return;
 
 	WARN_ON(!new_dbuf_state->base.changed);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index f91a3d4ddc07..54db5c7d517e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -56,6 +56,7 @@ struct intel_dbuf_state {
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
2.40.1

