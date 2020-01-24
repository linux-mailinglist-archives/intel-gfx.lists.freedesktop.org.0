Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 433EB14905F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 22:46:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E98172BCC;
	Fri, 24 Jan 2020 21:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94F3E72BCC
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 21:46:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 13:41:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,359,1574150400"; d="scan'208";a="216714112"
Received: from anusha.jf.intel.com ([10.165.21.155])
 by orsmga007.jf.intel.com with ESMTP; 24 Jan 2020 13:41:58 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 13:29:41 -0800
Message-Id: <20200124212941.7988-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Implement Wa_1606931601
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Disable Early Read and Src Swap by setting the bit 14
and 15 in the chicken register.

BSpec: 46045,52890

v2: Follow the Bspec implementation for the WA.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 drivers/gpu/drm/i915/i915_reg.h             | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 5a7db279f702..c1c970b15395 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -593,6 +593,11 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK, val,
 	       IS_TGL_REVID(engine->i915, TGL_REVID_A0, TGL_REVID_A0) ? 0 :
 			    FF_MODE2_TDS_TIMER_MASK);
+
+	/* Wa_1606931601:tgl */
+	WA_SET_BIT_MASKED(GEN7_ROW_CHICKEN2,
+			  GEN11_EARLY_READ_SRC0_DISABLE);
+
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b93c4c18f05c..c8b51ccfa5e6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9146,6 +9146,7 @@ enum {
 #define   DOP_CLOCK_GATING_DISABLE	(1 << 0)
 #define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
 #define   GEN11_TDL_CLOCK_GATING_FIX_DISABLE	(1 << 1)
+#define   GEN11_EARLY_READ_SRC0_DISABLE	(1 << 14)
 
 #define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
 #define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
