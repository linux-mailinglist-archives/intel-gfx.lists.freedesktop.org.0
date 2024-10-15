Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E224F99FC1E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 01:11:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1410010E62B;
	Tue, 15 Oct 2024 23:11:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZO8uC7Ti";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71C0710E62B;
 Tue, 15 Oct 2024 23:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729033895; x=1760569895;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BLtwbFBXwUYl7P9uLiv+eBfhV4wrkGCKlto/VgimokY=;
 b=ZO8uC7TiKtBOpzqpRxtOa0M1IrMCFxcXzMnhjt1Kahy7knh5Ls32H6NE
 L4KqQNYb7r1+/lrxr0aPcGOdIf5ssXHbC9OoqVxnteQXMzWvztNGOC++T
 DZnwpzqzqtn3OrtfxxcGmoSEAAlocAqcpG6liNOF7IzrLEnmvab5jb8+K
 WxOEBw3VXBISEqfMDpeGSGSh8ANlUWr+YjPpaVatbHja7xj8CtJIFaK7g
 rCpRs/tNH0pZ0VBRUwMFkm8EPoEPEjH9Yz9zlfEKZ6QPNXknOjOfbXdtr
 glFwsxxyQCDTO7wUVhqeIOBEh4ZD6jA4UvEvtR7xcf5fBf03KqWuXdq8n Q==;
X-CSE-ConnectionGUID: gYwQqe3vSpC21ljEc6C+sA==
X-CSE-MsgGUID: RTbiAhC+QTirG6SX0CIXNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28600787"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28600787"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:33 -0700
X-CSE-ConnectionGUID: QCRTKG9PQkWEYrR5aS0NQw==
X-CSE-MsgGUID: +9RIfbQSRcCsTDRVxz7mbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,206,1725346800"; d="scan'208";a="83120406"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.108.167])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:32 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v3 1/7] drm/i915/xe3lpd: Update pmdemand programming
Date: Tue, 15 Oct 2024 16:11:18 -0700
Message-ID: <20241015231124.23982-2-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241015231124.23982-1-matthew.s.atwood@intel.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
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

From: Matt Roper <matthew.d.roper@intel.com>

There are some minor changes to pmdemand handling on Xe3:
 - Active scalers are no longer tracked.  We can simply skip the readout
   and programming of this field.
 - Active dbuf slices are no longer tracked.  We should skip the readout
   and programming of this field and also make sure that it stays 0 in
   our software bookkeeping so that we won't erroneously return true
   from intel_pmdemand_needs_update() due to mismatches.
 - Even though there aren't enough pipes to utilize them, the size of
   the 'active pipes' field has expanded to four bits, taking over the
   register bits previously used for dbuf slices.  Since the lower bits
   of the mask have moved, we need to update our reads/writes to handle
   this properly.

v2: active pipes is no longer always max 3, add in the ability to go to
4 for PTL.
v3: use intel_display for display_ver check, use INTEL_NUM_PIPES

Bspec: 68883, 69125
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 63 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  4 +-
 drivers/gpu/drm/i915/i915_reg.h               |  1 +
 3 files changed, 46 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index ceaf9e3147da..6edc0a706921 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -258,6 +258,7 @@ intel_pmdemand_connector_needs_update(struct intel_atomic_state *state)
 
 static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_bw_state *new_bw_state, *old_bw_state;
 	const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state;
 	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
@@ -274,12 +275,16 @@ static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
 	new_dbuf_state = intel_atomic_get_new_dbuf_state(state);
 	old_dbuf_state = intel_atomic_get_old_dbuf_state(state);
 	if (new_dbuf_state &&
-	    (new_dbuf_state->active_pipes !=
-	     old_dbuf_state->active_pipes ||
-	     new_dbuf_state->enabled_slices !=
-	     old_dbuf_state->enabled_slices))
+	    new_dbuf_state->active_pipes != old_dbuf_state->active_pipes)
 		return true;
 
+	if (DISPLAY_VER(display) < 30) {
+		if (new_dbuf_state &&
+		    new_dbuf_state->enabled_slices !=
+		    old_dbuf_state->enabled_slices)
+			return true;
+	}
+
 	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
 	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
 	if (new_cdclk_state &&
@@ -328,9 +333,11 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
 		return PTR_ERR(new_dbuf_state);
 
 	new_pmdemand_state->params.active_pipes =
-		min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
-	new_pmdemand_state->params.active_dbufs =
-		min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3);
+		min_t(u8, hweight8(new_dbuf_state->active_pipes), INTEL_NUM_PIPES(i915));
+
+	if (DISPLAY_VER(i915) < 30)
+		new_pmdemand_state->params.active_dbufs =
+			min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3);
 
 	new_cdclk_state = intel_atomic_get_cdclk_state(state);
 	if (IS_ERR(new_cdclk_state))
@@ -395,27 +402,32 @@ intel_pmdemand_init_pmdemand_params(struct drm_i915_private *i915,
 
 	reg2 = intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
 
-	/* Set 1*/
 	pmdemand_state->params.qclk_gv_bw =
 		REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, reg1);
 	pmdemand_state->params.voltage_index =
 		REG_FIELD_GET(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, reg1);
 	pmdemand_state->params.qclk_gv_index =
 		REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, reg1);
-	pmdemand_state->params.active_pipes =
-		REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
-	pmdemand_state->params.active_dbufs =
-		REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
 	pmdemand_state->params.active_phys =
 		REG_FIELD_GET(XELPDP_PMDEMAND_PHYS_MASK, reg1);
 
-	/* Set 2*/
 	pmdemand_state->params.cdclk_freq_mhz =
 		REG_FIELD_GET(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, reg2);
 	pmdemand_state->params.ddiclk_max =
 		REG_FIELD_GET(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, reg2);
-	pmdemand_state->params.scalers =
-		REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2);
+
+	if (DISPLAY_VER(i915) >= 30) {
+		pmdemand_state->params.active_pipes =
+			REG_FIELD_GET(XE3_PMDEMAND_PIPES_MASK, reg1);
+	} else {
+		pmdemand_state->params.active_pipes =
+			REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
+		pmdemand_state->params.active_dbufs =
+			REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
+
+		pmdemand_state->params.scalers =
+			REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2);
+	}
 
 unlock:
 	mutex_unlock(&i915->display.pmdemand.lock);
@@ -442,6 +454,10 @@ void intel_pmdemand_program_dbuf(struct drm_i915_private *i915,
 {
 	u32 dbufs = min_t(u32, hweight8(dbuf_slices), 3);
 
+	/* PM Demand only tracks active dbufs on pre-Xe3 platforms */
+	if (DISPLAY_VER(i915) >= 30)
+		return;
+
 	mutex_lock(&i915->display.pmdemand.lock);
 	if (drm_WARN_ON(&i915->drm,
 			!intel_pmdemand_check_prev_transaction(i915)))
@@ -460,7 +476,8 @@ void intel_pmdemand_program_dbuf(struct drm_i915_private *i915,
 }
 
 static void
-intel_pmdemand_update_params(const struct intel_pmdemand_state *new,
+intel_pmdemand_update_params(struct drm_i915_private *i915,
+			     const struct intel_pmdemand_state *new,
 			     const struct intel_pmdemand_state *old,
 			     u32 *reg1, u32 *reg2, bool serialized)
 {
@@ -495,16 +512,22 @@ intel_pmdemand_update_params(const struct intel_pmdemand_state *new,
 	update_reg(reg1, qclk_gv_bw, XELPDP_PMDEMAND_QCLK_GV_BW_MASK);
 	update_reg(reg1, voltage_index, XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK);
 	update_reg(reg1, qclk_gv_index, XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK);
-	update_reg(reg1, active_pipes, XELPDP_PMDEMAND_PIPES_MASK);
-	update_reg(reg1, active_dbufs, XELPDP_PMDEMAND_DBUFS_MASK);
 	update_reg(reg1, active_phys, XELPDP_PMDEMAND_PHYS_MASK);
 
 	/* Set 2*/
 	update_reg(reg2, cdclk_freq_mhz, XELPDP_PMDEMAND_CDCLK_FREQ_MASK);
 	update_reg(reg2, ddiclk_max, XELPDP_PMDEMAND_DDICLK_FREQ_MASK);
-	update_reg(reg2, scalers, XELPDP_PMDEMAND_SCALERS_MASK);
 	update_reg(reg2, plls, XELPDP_PMDEMAND_PLLS_MASK);
 
+	if (DISPLAY_VER(i915) >= 30) {
+		update_reg(reg1, active_pipes, XE3_PMDEMAND_PIPES_MASK);
+	} else {
+		update_reg(reg1, active_pipes, XELPDP_PMDEMAND_PIPES_MASK);
+		update_reg(reg1, active_dbufs, XELPDP_PMDEMAND_DBUFS_MASK);
+
+		update_reg(reg2, scalers, XELPDP_PMDEMAND_SCALERS_MASK);
+	}
+
 #undef update_reg
 }
 
@@ -529,7 +552,7 @@ intel_pmdemand_program_params(struct drm_i915_private *i915,
 	reg2 = intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
 	mod_reg2 = reg2;
 
-	intel_pmdemand_update_params(new, old, &mod_reg1, &mod_reg2,
+	intel_pmdemand_update_params(i915, new, old, &mod_reg1, &mod_reg2,
 				     serialized);
 
 	if (reg1 != mod_reg1) {
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/drm/i915/display/intel_pmdemand.h
index 128fd61f8f14..a1c49efdc493 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
@@ -20,14 +20,14 @@ struct pmdemand_params {
 	u8 voltage_index;
 	u8 qclk_gv_index;
 	u8 active_pipes;
-	u8 active_dbufs;
+	u8 active_dbufs;	/* pre-Xe3 only */
 	/* Total number of non type C active phys from active_phys_mask */
 	u8 active_phys;
 	u8 plls;
 	u16 cdclk_freq_mhz;
 	/* max from ddi_clocks[] */
 	u16 ddiclk_max;
-	u8 scalers;
+	u8 scalers;		/* pre-Xe3 only */
 };
 
 struct intel_pmdemand_state {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 818142f5a10c..d30459f8d1cb 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2705,6 +2705,7 @@
 #define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK		REG_GENMASK(31, 16)
 #define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK		REG_GENMASK(14, 12)
 #define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK		REG_GENMASK(11, 8)
+#define  XE3_PMDEMAND_PIPES_MASK			REG_GENMASK(7, 4)
 #define  XELPDP_PMDEMAND_PIPES_MASK			REG_GENMASK(7, 6)
 #define  XELPDP_PMDEMAND_DBUFS_MASK			REG_GENMASK(5, 4)
 #define  XELPDP_PMDEMAND_PHYS_MASK			REG_GENMASK(2, 0)
-- 
2.45.0

