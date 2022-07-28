Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CB2583659
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:35:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B15610E654;
	Thu, 28 Jul 2022 01:35:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6133110E654
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972082; x=1690508082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jFQ8sTiJrYqhpioa7R6mIGjNzCK8oKJCCkKUsxP9SjI=;
 b=m/2WnjaICQ+MHGQLbLUjmMQ4+renYdUgVwvM1mB3JPPp9tKif3DCNOl4
 UWdEfA51AqaA/N0w7ZSFv7jTjiHtVHgP9MOGaqspC8+hD+kb7K1E2AeV/
 lj7XDD1HSNJA0OMBRD7lQUSu/Jidgb/0KN5mJ4ac2Is566uNTtbjIC6cu
 9D9/lUtFwfigsd3OCSE93vB73hm4qMXAepdup2jXzKv2QhBy2t1//iIyt
 BEx8YoiJRcP0Zu1NeaX9W6l1BcqVB8mI7CA/GmvB76azPvI7eLrzRn07+
 RbQjErUvPSF+p+E5drxl+KPEO+81igsfaFlyyndblVhUjuWYxgVWqJbNq g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271431762"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="271431762"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659457036"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:41 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:14 -0700
Message-Id: <20220728013420.3750388-18-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/23] drm/i915/mtl: Update MBUS_DBOX credits
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

Display version 14 platforms has different credits values compared to ADL-P.
Update the credits based on pipe usage.

Bspec: 49213

Cc: Jose Roberto de Souza <jose.souza@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Original Author: Caz Yokoyama
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h |  4 +++
 drivers/gpu/drm/i915/intel_pm.c | 47 ++++++++++++++++++++++++++++++---
 2 files changed, 47 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d37607109398..2f9cbdd068e8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1125,8 +1125,12 @@
 #define MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN	REG_BIT(16) /* tgl+ */
 #define MBUS_DBOX_BW_CREDIT_MASK		REG_GENMASK(15, 14)
 #define MBUS_DBOX_BW_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_BW_CREDIT_MASK, x)
+#define MBUS_DBOX_BW_4CREDITS_MTL		0x2
+#define MBUS_DBOX_BW_8CREDITS_MTL		0x3
 #define MBUS_DBOX_B_CREDIT_MASK			REG_GENMASK(12, 8)
 #define MBUS_DBOX_B_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_B_CREDIT_MASK, x)
+#define MBUS_DBOX_I_CREDIT_MASK			REG_GENMASK(7, 5)
+#define MBUS_DBOX_I_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_I_CREDIT_MASK, x)
 #define MBUS_DBOX_A_CREDIT_MASK			REG_GENMASK(3, 0)
 #define MBUS_DBOX_A_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_A_CREDIT_MASK, x)
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index f71b3b8b590c..58a3c72418a7 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -8443,6 +8443,27 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 				new_dbuf_state->enabled_slices);
 }
 
+static bool xelpdp_is_one_pipe_per_dbuf_bank(enum pipe pipe, u8 active_pipes)
+{
+	switch (pipe) {
+	case PIPE_A:
+	case PIPE_D:
+		if (is_power_of_2(active_pipes & (BIT(PIPE_A) | BIT(PIPE_D))))
+			return true;
+		break;
+	case PIPE_B:
+	case PIPE_C:
+		if (is_power_of_2(active_pipes & (BIT(PIPE_B) | BIT(PIPE_C))))
+			return true;
+		break;
+	default: /* to suppress compiler warning */
+		MISSING_CASE(pipe);
+		break;
+	}
+
+	return false;
+}
+
 void intel_mbus_dbox_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
@@ -8462,20 +8483,28 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
 	     new_dbuf_state->active_pipes == old_dbuf_state->active_pipes))
 		return;
 
+	if (DISPLAY_VER(i915) >= 14)
+		val |= MBUS_DBOX_I_CREDIT(2);
+
 	if (DISPLAY_VER(i915) >= 12) {
 		val |= MBUS_DBOX_B2B_TRANSACTIONS_MAX(16);
 		val |= MBUS_DBOX_B2B_TRANSACTIONS_DELAY(1);
 		val |= MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN;
 	}
 
-	/* Wa_22010947358:adl-p */
-	if (IS_ALDERLAKE_P(i915))
+	if (DISPLAY_VER(i915) >= 14)
+		val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(12) :
+						     MBUS_DBOX_A_CREDIT(8);
+	else if (IS_ALDERLAKE_P(i915))
+		/* Wa_22010947358:adl-p */
 		val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
 						     MBUS_DBOX_A_CREDIT(4);
 	else
 		val |= MBUS_DBOX_A_CREDIT(2);
 
-	if (IS_ALDERLAKE_P(i915)) {
+	if (DISPLAY_VER(i915) >= 14) {
+		val |= MBUS_DBOX_B_CREDIT(0xA);
+	} else if (IS_ALDERLAKE_P(i915)) {
 		val |= MBUS_DBOX_BW_CREDIT(2);
 		val |= MBUS_DBOX_B_CREDIT(8);
 	} else if (DISPLAY_VER(i915) >= 12) {
@@ -8487,10 +8516,20 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
 	}
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		u32 pipe_val = val;
+
 		if (!new_crtc_state->hw.active ||
 		    !intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), val);
+		if (DISPLAY_VER(i915) >= 14) {
+			if (xelpdp_is_one_pipe_per_dbuf_bank(crtc->pipe,
+							     new_dbuf_state->active_pipes))
+				pipe_val |= MBUS_DBOX_BW_CREDIT(MBUS_DBOX_BW_8CREDITS_MTL);
+			else
+				pipe_val |= MBUS_DBOX_BW_CREDIT(MBUS_DBOX_BW_4CREDITS_MTL);
+		}
+
+		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), pipe_val);
 	}
 }
-- 
2.25.1

