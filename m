Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54465139E8E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 01:47:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB5EE6E1BE;
	Tue, 14 Jan 2020 00:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 705356E1BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 00:47:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 16:47:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,431,1571727600"; d="scan'208";a="256087438"
Received: from invictus.jf.intel.com ([10.165.21.212])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jan 2020 16:47:22 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jan 2020 16:47:28 -0800
Message-Id: <20200114004728.21958-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl. Add Wa_1409085225
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

On pre-production hardware workload that uses push constant could cause
FIFO overflow and a hang. Disable the push constant buffer in TDL to
workaround.

Bspec: 46047
Bspec: 52890

Cc: Jordan Justen <jordan.l.justen@intel.com>
Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 +++++++-
 drivers/gpu/drm/i915/i915_reg.h             | 3 +++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 4e292d4bf7b9..b6fc861a8b59 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -576,6 +576,7 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 				     struct i915_wa_list *wal)
 {
 	u32 val;
+	struct drm_i915_private *i915 = engine->i915;
 
 	/* Wa_1409142259:tgl */
 	WA_SET_BIT_MASKED(GEN11_COMMON_SLICE_CHICKEN3,
@@ -591,8 +592,13 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 * the read of FF_MODE2.
 	 */
 	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK, val,
-	       IS_TGL_REVID(engine->i915, TGL_REVID_A0, TGL_REVID_A0) ? 0 :
+	       IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0) ? 0 :
 			    FF_MODE2_TDS_TIMER_MASK);
+
+	/* Wa_1409085225:tgl (pre-prod) */
+	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
+		WA_SET_BIT_MASKED(GEN9_ROW_CHICKEN4,
+				  GEN12_DISABLE_TDL_PUSH_CONSTANT);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6cc55c103f67..49d8407c079a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9141,6 +9141,9 @@ enum {
 #define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
 #define   GEN11_TDL_CLOCK_GATING_FIX_DISABLE	(1 << 1)
 
+#define GEN9_ROW_CHICKEN4		_MMIO(0xe48c)
+#define   GEN12_DISABLE_TDL_PUSH_CONSTANT	REG_BIT(9)
+
 #define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
 #define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
