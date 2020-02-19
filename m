Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D195D165210
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 23:05:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0A3E6ECBE;
	Wed, 19 Feb 2020 22:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE8F6ECBE
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 22:05:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 14:05:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,462,1574150400"; d="scan'208";a="228726656"
Received: from msatwood-mobl.jf.intel.com (HELO msatwood-mobl.intel.com)
 ([10.24.15.21])
 by fmsmga007.fm.intel.com with ESMTP; 19 Feb 2020 14:05:34 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Feb 2020 14:05:29 -0500
Message-Id: <20200219190529.10502-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: add Wa_1409085225, Wa_14010229206
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

Disable Push Constant buffer addition, which can cause FIFO
underruns.

Fix a minor white space issue while we're here.

v2: typos, add additional Wa reference

Bspec: 52890
Cc: Rafael Antognolli <rafael.antognolli@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
 drivers/gpu/drm/i915/i915_reg.h             | 3 +++
 2 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 887e0dc701f7..0681e64be741 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -580,6 +580,7 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 				     struct i915_wa_list *wal)
 {
+	struct drm_i915_private *i915 = engine->i915;
 	u32 val;
 
 	/* Wa_1409142259:tgl */
@@ -590,6 +591,7 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	val = intel_uncore_read(engine->uncore, FF_MODE2);
 	val &= ~FF_MODE2_TDS_TIMER_MASK;
 	val |= FF_MODE2_TDS_TIMER_128;
+
 	/*
 	 * FIXME: FF_MODE2 register is not readable till TGL B0. We can
 	 * enable verification of WA from the later steppings, which enables
@@ -598,6 +600,13 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK, val,
 	       IS_TGL_REVID(engine->i915, TGL_REVID_A0, TGL_REVID_A0) ? 0 :
 			    FF_MODE2_TDS_TIMER_MASK);
+
+	/*
+	 * Wa_1409085225:tgl
+	 * Wa_14010229206:tgl
+	 * Push Constant Buffer can cause FIFO underruns on tgl
+	 */
+	WA_SET_BIT_MASKED(GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b09c1d6dc0aa..70cbe576fdfa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9153,6 +9153,9 @@ enum {
 #define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
 #define   GEN11_TDL_CLOCK_GATING_FIX_DISABLE	(1 << 1)
 
+#define GEN9_ROW_CHICKEN4		_MMIO(0xe48c)
+#define  GEN12_DISABLE_TDL_PUSH		(1 << 9)
+
 #define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
 #define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
 
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
