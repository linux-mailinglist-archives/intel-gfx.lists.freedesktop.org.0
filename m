Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFD2636910
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 19:37:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B63010E5F4;
	Wed, 23 Nov 2022 18:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D743710E609
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 18:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669228612; x=1700764612;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CMzBidsdCWWsNhUkis4AGPbfZwzSiR0X+1y1HkWyFYM=;
 b=BgeTK8gOVmFd4v5GCd4LUiJoxk5BE+WmEQPOIf89+x779AslNJiYzglK
 aQPs67u/dvcAMNa5nNuL6g/N2ru+QaQ+jNWDVLULxAAhg9RWAGpWrZ4tm
 otjh2WpYmCBS2DV6zeEDDBgdS1+JfY+pTujaS/qvQuUQcC2jAVR+4O5aP
 A1+J5Ja+d310ESHXU20LOJB31lG/NN5dl150ghnQmoTg3bU2QPNJHOpge
 L0/C84gyE5eKXzH5OLOab1eKfHDsTtU4ZgnpQAW1YUnNfoPV/jNRWgU0X
 DCKr40NOPzkQD2iyo2Z3g4bjfumK2xurJATQW1FIrmipIOyJGUkvUljXX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="400428236"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="400428236"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 10:36:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="636008374"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="636008374"
Received: from cjuang-mobl.amr.corp.intel.com (HELO msatwood-mobl.intel.com)
 ([10.213.167.33])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 10:36:51 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 10:36:47 -0800
Message-Id: <20221123183648.407058-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915/dg2: Introduce Wa_18018764978
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

Wa_18018764978 applies to specific steppings of DG2 (G10 C0+,
G11 and G12 A0+). Clean up style in function at the same time.

Bspec: 66622

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 ++++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 80a979e6f6be..74379d3c5a4d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -457,6 +457,9 @@
 #define GEN8_L3CNTLREG				_MMIO(0x7034)
 #define   GEN8_ERRDETBCTRL			(1 << 9)
 
+#define PSS_MODE2				_MMIO(0x703c)
+#define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
+
 #define GEN7_SC_INSTDONE			_MMIO(0x7100)
 #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
 #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 2afb4f80a954..870db5a202dd 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -771,9 +771,14 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_14014947963:dg2 */
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
-		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
+	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
 		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
 
+	/* Wa_18018764978:dg2 */
+	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
+	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
+		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
+
 	/* Wa_15010599737:dg2 */
 	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
 }
-- 
2.38.1

