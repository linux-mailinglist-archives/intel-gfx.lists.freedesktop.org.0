Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF2D6CF46E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 22:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D371D10EC4E;
	Wed, 29 Mar 2023 20:25:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56BCD10EC4B
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 20:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680121531; x=1711657531;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aFzHlPnT+s5cmXWfJ5R27akVr6Kea0p1abClaAi1hXQ=;
 b=lHpUA2QtGVjHslqhJ3s5Fb0j04U5S0dVpn3Gcn32T0bHtKhRuh/LQtdP
 yEiAvRZe4Oj1jfZCD01GWv7SQbvu971EMLaUIdvsKZ0iq5Lhjc9biulxz
 KbrVc2s8Byt0ZVRXkLGkGt4yTZTrlAP1TLqapq+KP23lR6zIwt/ai5wE6
 t/KcmPAhK7bElPXaPG8Zzt4zsLe9BxXE6RDbtIDDJS4RtWEnDweT4v58e
 z9pNr5MRjVXvtHNg9hbCJsO5GslTBfGNyFLWN/WRf2DphZbb1AY1A4bnf
 jvKIzjhPlCYK6uWlOSYh1lPbFCIhgo4kr5f7DJktxGlm5lPvPF3A9Q1nI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="405946058"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="405946058"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 13:25:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="748907171"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="748907171"
Received: from snalwade-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.255.37.126])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 13:25:29 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 17:24:50 -0300
Message-Id: <20230329202451.98364-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230329202451.98364-1-gustavo.sousa@intel.com>
References: <20230329202451.98364-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Add workarounds
 Wa_14017066071 and Wa_14017654203
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

From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Both workarounds require the same implementation and apply to MTL P and
M from stepping A0 to B0 (exclusive).

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 ++++++++++--
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 4aecb5a7b631..1ec855813632 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1144,6 +1144,7 @@
 #define   ENABLE_SMALLPL			REG_BIT(15)
 #define   SC_DISABLE_POWER_OPTIMIZATION_EBB	REG_BIT(9)
 #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
+#define   MTL_DISABLE_SAMPLER_SC_OOO		REG_BIT(3)
 
 #define GEN9_HALF_SLICE_CHICKEN7		MCR_REG(0xe194)
 #define   DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA	REG_BIT(15)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e7ee24bcad89..cafdf66d9562 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2388,11 +2388,10 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	struct drm_i915_private *i915 = engine->i915;
 
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
 		/* Wa_22014600077 */
 		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
 				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
-	}
 
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
 	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
@@ -2971,6 +2970,15 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 
 	add_render_compute_tuning_settings(i915, wal);
 
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+		/*
+		 * Wa_14017066071
+		 * Wa_14017654203
+		 */
+		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
+				 MTL_DISABLE_SAMPLER_SC_OOO);
+
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
 	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
-- 
2.40.0

