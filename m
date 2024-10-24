Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A35F9AF50D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C19010E99A;
	Thu, 24 Oct 2024 22:07:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kkD8mkLP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35EA510E3C5;
 Thu, 24 Oct 2024 22:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729807678; x=1761343678;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QDLLkhXmqlaijBKkIq+0NmBiDT+VpnMJG3BnxRMPcNA=;
 b=kkD8mkLPpbk0d3YrJWSMz86jmNBbdhnQoSAKC9fjWZyiJcEx86bGOKoV
 aimvYt0sIdv/imVzD8LPwdlPpK7Tpf2bG5WsLRpIclA29necBDTKjtcrx
 +B3Me68eTY7EZmOAsFEOn1oERU0YR7C89scWybLeAjBg1es2etKOPF2Mf
 Vd9u5utjBvOo2Eiixf0ozrpvojTwJHVYjhwQuP0NHYYT6xvQiVx/JbWbM
 nrncslF0GAgMLtwX3VkZZwdz+uSjMtnXJPyv467Zzp1OaeSOdwotS/EEk
 zpy6lNBeDPmBBVJBoPFsv172400U4rpG0qICIMkx2R5+tixgqQRN6bOzt A==;
X-CSE-ConnectionGUID: XOl5N62PRrG2L+0g2/ZlZQ==
X-CSE-MsgGUID: zxRGCZXtTriU86yhT0UObQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29367631"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="29367631"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:07:57 -0700
X-CSE-ConnectionGUID: 70C6Hf4OT/2JpV3H1tB/aQ==
X-CSE-MsgGUID: QjDCjhpSQPCy7ohX8Kt+zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="84687958"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:07:57 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v3 01/11] drm/i915/xe3lpd: Update pmdemand programming
Date: Thu, 24 Oct 2024 15:07:42 -0700
Message-Id: <20241024220752.714457-2-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241024220752.714457-1-clinton.a.taylor@intel.com>
References: <20241024220752.714457-1-clinton.a.taylor@intel.com>
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
v4: add a conditional for number of pipes macro vs using 3.
v5: reverse conditional order of v4.
v6: undo v5 and fix num_pipes assignment

Bspec: 68883, 69125
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 68 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  4 +-
 drivers/gpu/drm/i915/i915_reg.h               |  1 +
 3 files changed, 50 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index ceaf9e3147da..749905b35f2b 100644
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
@@ -327,10 +332,15 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
 	if (IS_ERR(new_dbuf_state))
 		return PTR_ERR(new_dbuf_state);
 
-	new_pmdemand_state->params.active_pipes =
-		min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
-	new_pmdemand_state->params.active_dbufs =
-		min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3);
+	if (DISPLAY_VER(i915) < 30) {
+		new_pmdemand_state->params.active_dbufs =
+			min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3);
+		new_pmdemand_state->params.active_pipes =
+			min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
+	}
+	else
+		new_pmdemand_state->params.active_pipes =
+			min_t(u8, hweight8(new_dbuf_state->active_pipes), INTEL_NUM_PIPES(i915));
 
 	new_cdclk_state = intel_atomic_get_cdclk_state(state);
 	if (IS_ERR(new_cdclk_state))
@@ -395,27 +405,32 @@ intel_pmdemand_init_pmdemand_params(struct drm_i915_private *i915,
 
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
@@ -442,6 +457,10 @@ void intel_pmdemand_program_dbuf(struct drm_i915_private *i915,
 {
 	u32 dbufs = min_t(u32, hweight8(dbuf_slices), 3);
 
+	/* PM Demand only tracks active dbufs on pre-Xe3 platforms */
+	if (DISPLAY_VER(i915) >= 30)
+		return;
+
 	mutex_lock(&i915->display.pmdemand.lock);
 	if (drm_WARN_ON(&i915->drm,
 			!intel_pmdemand_check_prev_transaction(i915)))
@@ -460,7 +479,8 @@ void intel_pmdemand_program_dbuf(struct drm_i915_private *i915,
 }
 
 static void
-intel_pmdemand_update_params(const struct intel_pmdemand_state *new,
+intel_pmdemand_update_params(struct drm_i915_private *i915,
+			     const struct intel_pmdemand_state *new,
 			     const struct intel_pmdemand_state *old,
 			     u32 *reg1, u32 *reg2, bool serialized)
 {
@@ -495,16 +515,22 @@ intel_pmdemand_update_params(const struct intel_pmdemand_state *new,
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
 
@@ -529,7 +555,7 @@ intel_pmdemand_program_params(struct drm_i915_private *i915,
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
index 405f409e9761..89e4381f8baa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2696,6 +2696,7 @@
 #define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK		REG_GENMASK(31, 16)
 #define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK		REG_GENMASK(14, 12)
 #define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK		REG_GENMASK(11, 8)
+#define  XE3_PMDEMAND_PIPES_MASK			REG_GENMASK(7, 4)
 #define  XELPDP_PMDEMAND_PIPES_MASK			REG_GENMASK(7, 6)
 #define  XELPDP_PMDEMAND_DBUFS_MASK			REG_GENMASK(5, 4)
 #define  XELPDP_PMDEMAND_PHYS_MASK			REG_GENMASK(2, 0)
-- 
2.25.1

