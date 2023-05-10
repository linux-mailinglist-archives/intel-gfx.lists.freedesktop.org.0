Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 479886FE74B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 00:37:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9704A10E0F4;
	Wed, 10 May 2023 22:37:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8AB10E0F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 22:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683758236; x=1715294236;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yjWl88TEbyfYn1R5cT15/G5yTlQFWC18x59DIx7LLck=;
 b=Z/4zvT04CO/J0lNmH94opASsMG3tbnp8yg5n9FphdA0lgYcNIOEXLeJu
 CpQjcmXP4gfS90314GLD2esIQ/6ThyDAAm7xZy9KmYnspxpVZD3Opaswc
 B8hef8ejMiY9aCFRZgCkY1vDXem+x2uRudIWkMbIM44IXC/IemI2jFVFr
 RhZNngbz1QoMNDf81W3s/beRPQThjnJXEDoPVqwRnJfsxZZLzVWTz5z4A
 PWrE+i7/RxPWIEo/fDGL20fwdGsnDai0NM7bPCYX+Uft7PDCS+pQUn9gF
 nQBfiUJoHOTJWyWHLXcsX9T+pWF0+/EMB0E4JkgpYBKZOEmSv2fZ4NXCU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="339595356"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="339595356"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 15:37:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="732317523"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="732317523"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 15:37:15 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 15:35:52 -0700
Message-Id: <20230510223552.89656-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230510223552.89656-1-radhakrishna.sripada@intel.com>
References: <20230510223552.89656-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add MTL performance tuning
 changes
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MTL reuses the tuning parameters for DG2. Extend the dg2
performance tuning parameters to MTL.

Bspec: 68331
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 786349e95487..b222a3d367c9 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -817,6 +817,8 @@ static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
 {
 	struct drm_i915_private *i915 = engine->i915;
 
+	dg2_ctx_gt_tuning_init(engine, wal);
+
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
 	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
 		/* Wa_14014947963 */
@@ -1754,7 +1756,7 @@ static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
 		wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_HOSTCACHEEN);
 	}
 
-	if (IS_DG2(gt->i915)) {
+	if (IS_DG2(gt->i915) || IS_METEORLAKE(gt->i915)) {
 		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
 		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
 	}
@@ -2944,7 +2946,7 @@ static void
 add_render_compute_tuning_settings(struct drm_i915_private *i915,
 				   struct i915_wa_list *wal)
 {
-	if (IS_DG2(i915))
+	if (IS_DG2(i915) || IS_METEORLAKE(i915))
 		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
 
 	/*
-- 
2.34.1

