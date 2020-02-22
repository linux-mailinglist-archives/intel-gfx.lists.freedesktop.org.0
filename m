Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE992168AF4
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 01:28:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0E26E49F;
	Sat, 22 Feb 2020 00:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D7216E49F
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 00:28:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 16:28:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="230581496"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga008.fm.intel.com with ESMTP; 21 Feb 2020 16:28:49 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 16:28:24 -0800
Message-Id: <20200222002824.17103-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1608008084
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wa_1608008084 is an additional WA that applies to writes on FF_MODE2
register. We can't read it back either from CPU or GPU. Since the other
bits should be 0, recommendation to handle Wa_1604555607 is to actually
just write the timer value.

Do a write only and don't try to read it, neither before or after
the WA is applied.

Fixes: ff690b2111ba ("drm/i915/tgl: Implement Wa_1604555607")
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 22 ++++++++++-----------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 887e0dc701f7..0d76e1d6ec87 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -580,24 +580,22 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 				     struct i915_wa_list *wal)
 {
-	u32 val;
-
 	/* Wa_1409142259:tgl */
 	WA_SET_BIT_MASKED(GEN11_COMMON_SLICE_CHICKEN3,
 			  GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
 
-	/* Wa_1604555607:tgl */
-	val = intel_uncore_read(engine->uncore, FF_MODE2);
-	val &= ~FF_MODE2_TDS_TIMER_MASK;
-	val |= FF_MODE2_TDS_TIMER_128;
 	/*
-	 * FIXME: FF_MODE2 register is not readable till TGL B0. We can
-	 * enable verification of WA from the later steppings, which enables
-	 * the read of FF_MODE2.
+	 * Wa_1604555607:gen12
+	 * FF_MODE2 register is not readable till TGL B0, either by CPU or GPU.
+	 *
+	 * Wa_1608008084:gen12
+	 * FF_MODE2 register will return the wrong value when read. The default
+	 * value for this register is zero for all fields and there are no bit
+	 * masks. So instead of doing a RMW we should just write the TDS timer
+	 * value for Wa_1604555607.
 	 */
-	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK, val,
-	       IS_TGL_REVID(engine->i915, TGL_REVID_A0, TGL_REVID_A0) ? 0 :
-			    FF_MODE2_TDS_TIMER_MASK);
+	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK,
+	       FF_MODE2_TDS_TIMER_128, 0);
 }
 
 static void
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
