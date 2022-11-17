Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3708462E85B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 23:24:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECCD910E140;
	Thu, 17 Nov 2022 22:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D929010E69B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 22:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668723891; x=1700259891;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r8wXj4lMVJPxVzIpxgI4oX8Oc1xLST1w0OQ79GgNnic=;
 b=fXbSiNRiDdj/zh1KVW+cqdZbaxUttWhgNP1sBjRGxOW2NOigWqJWd31H
 ReWcoQTNYajv+tNzAcUkj8OyOgmgrG1uPql4AhyjloxIgmMQi+kCq6fUK
 PyialFyiEsIuV0KWS42pA4Y2KhUOCykb4IaeMqOfhyPjuYcjWrEfZtG1V
 GIkO61H5qGZqWF+W3qf0kcOzjEV8I91unFaEsIEIbyL3d8zO1A49nFu1K
 8/EO2pr97KiR8q9ermDaJPaCCGKWNKFgje4CsM2Ty2b4M55Vm0F5EkLD3
 c0FefR4QwAC6tsiPYNGkaPioMEVsyoBeq7MjrtnQoN4jCgJ4JV42nkPwM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="377257328"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="377257328"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 14:24:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="639979408"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="639979408"
Received: from pasafier-mobl.amr.corp.intel.com (HELO msatwood-mobl.intel.com)
 ([10.212.77.208])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 14:24:51 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Nov 2022 14:24:46 -0800
Message-Id: <20221117222447.193245-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/dg2: Introduce Wa_18018764978
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
G11 and G12 A0+).

Bspec: 66622

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index c3cd926917957..1711dbf9dd462 100644
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
index 1bd8d63ad4f3f..483fd2a83ca19 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -774,6 +774,11 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
 		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
 
+	/* Wa_18018764978:dg2 */
+	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
+		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
+		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
+
 	/* Wa_15010599737:dg2 */
 	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
 }
-- 
2.38.1

