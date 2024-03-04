Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA16D870997
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 19:31:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7EE112478;
	Mon,  4 Mar 2024 18:31:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DSFdkz7H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04CBA112476;
 Mon,  4 Mar 2024 18:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709577079; x=1741113079;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6slcgYs1UpDEBAet2UEx8ja1szjQyJMKZgfihPJY970=;
 b=DSFdkz7HyQDMlLTiog4yCUD4l8XlgUX2M+eM+1WmA97ObK1L6vr3floS
 dUEY2oFkyKRNvvkLREfhmRIsSvg0metMbL8crGXGfpw1KZSSQrYaAOOFY
 w+wipKzsW92DdCuPvix2mnYdGY4qj3VlMY2PGxrUv/ejMBzdOkZPXlt2F
 vFXXvQtz23zwF7qOrWILF5EZY5Sx+sGMSeykxUhgbPsrIPDOwgo2RHk+t
 YRdKzQyB71BWcJZ/NOIlKinYcFN+eW9J+458RLjOIwj0Byj/QOzX3Ueib
 PHCGFHiRMtaLIQUkF3iywCZ6WBKZ7JxSnLTdDZN5aeKUkcGHFzzcZZMhU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="3943537"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="3943537"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="13756499"
Received: from ticela-or-128.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.50])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:16 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, vinod.govindapillai@intel.com,
 stanislav.lisovskiy@intel.com, Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH 6/8] drm/i915/xe2lpd: Support MDCLK:CDCLK ratio changes
Date: Mon,  4 Mar 2024 15:30:25 -0300
Message-ID: <20240304183028.195057-7-gustavo.sousa@intel.com>
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

Commit 394b4b7df9f7 ("drm/i915/lnl: Add CDCLK table") and commit
3d3696c0fed1 ("drm/i915/lnl: Start using CDCLK through PLL") started
adding support for CDCLK programming support for Xe2LPD. One final piece
is missing, which is the programming necessary for changed in the ratio
between MDCLK and CDCLK. Let's do that now.

BSpec instructs us to update MBUS_CTL and DBUF_CTL_S* registers when the
ratio between MDCLK and CDCLK changes. The updates must be done before
changing the CDCLK when decreasing the frequency; or after it when
increasing the frequency.

Ratio-related updates to MBUS_CTL also depend on the state of MBus
joining, so they are performed by either CDCLK change sequence or by
changes in MBus joining. Since one might happen independently of the
other, we need to make sure that both logics see the necessary state
values when programming that register. MBus joining logic needs to know
the MDCLK:CDCLK ratio and that's already provided via mdclk_cdclk_ratio
field of struct intel_dbuf_state.

For the CDCLK logic, we need to have something similar: we need to
propagate the status of MBus joining to struct intel_cdclk_state. Do
that by adding the field joined_mbus to struct intel_cdclk_config.
(Preferably, that field would be added to intel_cdclk_state, however
currently only intel_cdclk_config is passed down to the functions that
do the register programming. We might revisit this decision if we find
that refactoring the code to pass the whole intel_cdclk_state is worth
it.)

Bspec: 68864, 68868, 69090, 69482
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 31 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  3 ++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 40 +++++++++++++++----
 drivers/gpu/drm/i915/display/skl_watermark.h  |  1 +
 .../gpu/drm/i915/display/skl_watermark_regs.h | 18 +++++----
 5 files changed, 77 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 04a6e9806254..12753589072d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -40,6 +40,7 @@
 #include "intel_psr.h"
 #include "intel_vdsc.h"
 #include "skl_watermark.h"
+#include "skl_watermark_regs.h"
 #include "vlv_sideband.h"
 
 /**
@@ -1683,6 +1684,8 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 	}
 
  out:
+	if (DISPLAY_VER(dev_priv) >= 20)
+		cdclk_config->joined_mbus = intel_de_read(dev_priv, MBUS_CTL) & MBUS_JOIN;
 	/*
 	 * Can't read this out :( Let's assume it's
 	 * at least what the CDCLK frequency requires.
@@ -1908,6 +1911,14 @@ u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
 	}
 }
 
+static void xe2lpd_mdclk_cdclk_ratio_program(struct drm_i915_private *i915,
+					     const struct intel_cdclk_config *cdclk_config)
+{
+	intel_dbuf_mdclk_cdclk_ratio_update(i915,
+					    intel_mdclk_cdclk_ratio(i915, cdclk_config),
+					    cdclk_config->joined_mbus);
+}
+
 static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
 						    const struct intel_cdclk_config *old_cdclk_config,
 						    const struct intel_cdclk_config *new_cdclk_config,
@@ -2089,6 +2100,9 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
+	if (DISPLAY_VER(dev_priv) >= 20 && cdclk < dev_priv->display.cdclk.hw.cdclk)
+		xe2lpd_mdclk_cdclk_ratio_program(dev_priv, cdclk_config);
+
 	if (cdclk_compute_crawl_and_squash_midpoint(dev_priv, &dev_priv->display.cdclk.hw,
 						    cdclk_config, &mid_cdclk_config)) {
 		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
@@ -2097,6 +2111,9 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
 	}
 
+	if (DISPLAY_VER(dev_priv) >= 20 && cdclk > dev_priv->display.cdclk.hw.cdclk)
+		xe2lpd_mdclk_cdclk_ratio_program(dev_priv, cdclk_config);
+
 	if (DISPLAY_VER(dev_priv) >= 14)
 		/*
 		 * NOOP - No Pcode communication needed for
@@ -3179,6 +3196,20 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 	return 0;
 }
 
+int intel_cdclk_state_set_joined_mbus(struct intel_atomic_state *state, bool joined_mbus)
+{
+	struct intel_cdclk_state *cdclk_state;
+
+	cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(cdclk_state))
+		return PTR_ERR(cdclk_state);
+
+	cdclk_state->actual.joined_mbus = joined_mbus;
+	cdclk_state->logical.joined_mbus = joined_mbus;
+
+	return intel_atomic_lock_global_state(&cdclk_state->base);
+}
+
 int intel_cdclk_init(struct drm_i915_private *dev_priv)
 {
 	struct intel_cdclk_state *cdclk_state;
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 8e6e302bd599..e358234bfe26 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -18,6 +18,8 @@ struct intel_crtc_state;
 struct intel_cdclk_config {
 	unsigned int cdclk, vco, ref, bypass;
 	u8 voltage_level;
+	/* This field is only valid for Xe2LPD and above. */
+	bool joined_mbus;
 };
 
 struct intel_cdclk_state {
@@ -74,6 +76,7 @@ void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
 			   struct intel_cdclk_config *cdclk_config);
 int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 			     bool *need_cdclk_calc);
+int intel_cdclk_state_set_joined_mbus(struct intel_atomic_state *state, bool joined_mbus);
 struct intel_cdclk_state *
 intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 4410e21888ad..bc341abcab2f 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -12,6 +12,7 @@
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_bw.h"
+#include "intel_cdclk.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display.h"
@@ -2601,10 +2602,17 @@ skl_compute_ddb(struct intel_atomic_state *state)
 			return ret;
 	}
 
-	if (HAS_MBUS_JOINING(i915))
+	if (HAS_MBUS_JOINING(i915)) {
 		new_dbuf_state->joined_mbus =
 			adlp_check_mbus_joined(new_dbuf_state->active_pipes);
 
+		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
+			ret = intel_cdclk_state_set_joined_mbus(state, new_dbuf_state->joined_mbus);
+			if (ret)
+				return ret;
+		}
+	}
+
 	for_each_intel_crtc(&i915->drm, crtc) {
 		enum pipe pipe = crtc->pipe;
 
@@ -3545,12 +3553,14 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8
 	return intel_atomic_lock_global_state(&dbuf_state->base);
 }
 
-static void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
-						u8 ratio,
-						bool joined_mbus)
+void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio, bool joined_mbus)
 {
 	enum dbuf_slice slice;
 
+	if (DISPLAY_VER(i915) >= 20)
+		intel_de_rmw(i915, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
+			     MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
+
 	if (joined_mbus)
 		ratio *= 2;
 
@@ -3568,7 +3578,9 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	u32 mbus_ctl;
-	const struct intel_dbuf_state *dbuf_state =
+	const struct intel_dbuf_state *old_dbuf_state =
+		intel_atomic_get_old_dbuf_state(state);
+	const struct intel_dbuf_state *new_dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
 
 	if (!HAS_MBUS_JOINING(i915))
@@ -3578,7 +3590,7 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
 	 * TODO: Implement vblank synchronized MBUS joining changes.
 	 * Must be properly coordinated with dbuf reprogramming.
 	 */
-	if (dbuf_state->joined_mbus)
+	if (new_dbuf_state->joined_mbus)
 		mbus_ctl = MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
 			MBUS_JOIN_PIPE_SELECT_NONE;
 	else
@@ -3589,8 +3601,20 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
 		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
 		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
 
-	intel_dbuf_mdclk_cdclk_ratio_update(i915, dbuf_state->mdclk_cdclk_ratio,
-					    dbuf_state->joined_mbus);
+	if (DISPLAY_VER(i915) >= 20 &&
+	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
+		/*
+		 * For Xe2LPD and beyond, when there is a change in the ratio
+		 * between MDCLK and CDCLK, updates to related registers need to
+		 * happen at a specific point in the CDCLK change sequence. In
+		 * that case, we defer to the call to
+		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
+		 */
+		return;
+	}
+
+	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
+					    new_dbuf_state->joined_mbus);
 }
 
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index fed4d12df584..3a90741cab06 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -76,6 +76,7 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8
 
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
 void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
+void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio, bool joined_mbus);
 void intel_mbus_dbox_update(struct intel_atomic_state *state);
 
 #endif /* __SKL_WATERMARK_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
index 20b30c9a6613..269163fa3350 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
@@ -32,14 +32,16 @@
 #define MBUS_BBOX_CTL_S1		_MMIO(0x45040)
 #define MBUS_BBOX_CTL_S2		_MMIO(0x45044)
 
-#define MBUS_CTL			_MMIO(0x4438C)
-#define MBUS_JOIN			REG_BIT(31)
-#define MBUS_HASHING_MODE_MASK		REG_BIT(30)
-#define MBUS_HASHING_MODE_2x2		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
-#define MBUS_HASHING_MODE_1x4		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
-#define MBUS_JOIN_PIPE_SELECT_MASK	REG_GENMASK(28, 26)
-#define MBUS_JOIN_PIPE_SELECT(pipe)	REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
-#define MBUS_JOIN_PIPE_SELECT_NONE	MBUS_JOIN_PIPE_SELECT(7)
+#define MBUS_CTL				_MMIO(0x4438C)
+#define   MBUS_JOIN				REG_BIT(31)
+#define   MBUS_HASHING_MODE_MASK		REG_BIT(30)
+#define   MBUS_HASHING_MODE_2x2			REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
+#define   MBUS_HASHING_MODE_1x4			REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
+#define   MBUS_JOIN_PIPE_SELECT_MASK		REG_GENMASK(28, 26)
+#define   MBUS_JOIN_PIPE_SELECT(pipe)		REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
+#define   MBUS_JOIN_PIPE_SELECT_NONE		MBUS_JOIN_PIPE_SELECT(7)
+#define   MBUS_TRANSLATION_THROTTLE_MIN_MASK	REG_GENMASK(15, 13)
+#define   MBUS_TRANSLATION_THROTTLE_MIN(val)	REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
 
 /* Watermark register definitions for SKL */
 #define _CUR_WM_A_0		0x70140
-- 
2.44.0

