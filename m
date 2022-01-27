Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B62549EB4E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 20:49:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EC6510E199;
	Thu, 27 Jan 2022 19:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E92510E199
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 19:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643312961; x=1674848961;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RnD453oho3ROYxhN9YErYmwU3lOy0uq2PIjRN2m5LOE=;
 b=YmO2q1mWV0xMebJ7qFn8NDyaR2lVOEUaIjIR/5cySe8dneRnlfaxk7oc
 O40K3TWsS+9eqJiFJairUvSrpn4yxmkCbHcs+B4pyF7GDBqZmwkZeslPk
 xGK7tJ32WLYBz3edD951g0B66SE3ZoRs9ileZzHH3HMvWsztGGpScFKGD
 NOcVZDeKx/4vsPQtsOQv2R1WYtJ8yelYpdh8GrPs/s86e+UOKCC7wQ0CZ
 KxwHRAgGk6T+5oKNgSYVRGDBKrZ9yYJ8Ksz/HxRIAnS8mGOi7z/tYGhnD
 DrZ9Q96oolDPf8wS7i0edhwO3co0OKZVGbBXL0YHQ0XI7QwPqno1evdus Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="246894350"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="246894350"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 11:49:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="480433936"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 11:49:12 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:48:55 -0800
Message-Id: <20220127194855.3963296-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_14015227452
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

Note that the bspec doesn't list the bit we're programming here (bit 11)
as being present on DG2, but we've confirmed with the hardware team that
this is a documentation mistake and the bit does indeed exist on all
Xe_HP-based platforms.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 drivers/gpu/drm/i915/i915_reg.h             | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 748b2daf043f..065dc1c2bb71 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2045,6 +2045,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = engine->i915;
 
+	if (IS_DG2(engine->i915)) {
+		/* Wa_14015227452:dg2 */
+		wa_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
+	}
+
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0)) {
 		/* Wa_14013392000:dg2_g11 */
 		wa_masked_en(wal, GEN7_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2e4dd9db63fe..38c23dd36300 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8927,6 +8927,7 @@ enum {
 
 #define GEN9_ROW_CHICKEN4				_MMIO(0xe48c)
 #define   GEN12_DISABLE_GRF_CLEAR			REG_BIT(13)
+#define   XEHP_DIS_BBL_SYSPIPE				REG_BIT(11)
 #define   GEN12_DISABLE_TDL_PUSH			REG_BIT(9)
 #define   GEN11_DIS_PICK_2ND_EU				REG_BIT(7)
 #define   GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX	REG_BIT(4)
-- 
2.34.1

