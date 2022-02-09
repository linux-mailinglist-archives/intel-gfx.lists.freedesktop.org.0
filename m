Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F544B0175
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 01:01:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0800410E164;
	Thu, 10 Feb 2022 00:01:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 845D810E164
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 00:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644451288; x=1675987288;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VcbAsP+FhigHdGLjORdbAtSV1LfZKQAOZrMn0hsG0uk=;
 b=gywi1TpUkkD5rdakBPUgd+nIj4ISbs6LuvkssbZTh4BwBnP8rHiJpKkY
 j2Jh4TbP8vorHDOrszIvk2TtAJmGJI6iS2hTYhoBDQJ/XBwBqX2Wc//Dv
 CjdPGtQ40y+JkI+zbFiDh3v3gKj+bA6YLbwU5OgE7F5Y52F5FlVA1VRsz
 n9TIO7H3xY0htj8FT4v+MQ25X5A/ghQuBhUY55zy8SC8cWNeVZhPNDhqQ
 lvwmbg+OuxbJgMgGSKSO69qKOUTIaIraQY94jcq3bF6a2a9aQzvW48VyU
 EzneJlA+Ey+vHXMdd2tqksO8ZjvBdymtIkINAJpfxH67M7CAghbly+gEQ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="236774154"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="236774154"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 16:01:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="485468958"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 16:01:27 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Feb 2022 15:58:57 -0800
Message-Id: <20220209235857.245687-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Invalidate LSC L1 cache
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

Set the chicken bit to invalidate LSC L1 operation due to UAV
coherency barrier.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index a6f0220c2e9f..43945661ad28 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1088,6 +1088,7 @@ enum {
 
 #define GEN12_HDC_CHICKEN0					_MMIO(0xE5F0)
 #define   LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK	REG_GENMASK(13, 11)
+#define   INVALIDATE_UNTYPED_L1					REG_FIELD_PREP(LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK, 0x2)
 
 #define SARB_CHICKEN1				_MMIO(0xe90c)
 #define   COMP_CKN_IN				REG_GENMASK(30, 29)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b146a393cd79..deba076f74d8 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2049,6 +2049,13 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	if (IS_DG2(i915)) {
 		/* Wa_14015227452:dg2 */
 		wa_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
+
+		/* This is not an actual workaround, but a hardware requirement
+		 * done to override the default value.
+		 */
+		wa_masked_en(wal,
+			     GEN12_HDC_CHICKEN0,
+			     INVALIDATE_UNTYPED_L1);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
-- 
2.25.1

