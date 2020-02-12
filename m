Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EF815ADD7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 17:57:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B7496F548;
	Wed, 12 Feb 2020 16:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07F1F6F548
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 16:57:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 08:57:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="434104098"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga006.fm.intel.com with ESMTP; 12 Feb 2020 08:57:21 -0800
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 4164D840877; Wed, 12 Feb 2020 18:57:08 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 18:57:07 +0200
Message-Id: <20200212165707.11143-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Use engine wa list for Wa_1607090982
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is in mcr range of register, thus we can only verify
it through mmio. Use engine wa list with mcr range verification
skip.

Fixes: 0db1a5f8706a ("drm/i915: Implement Wa_1607090982")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 62b43f538a56..ba86511f1ef9 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -598,9 +598,6 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK, val,
 	       IS_TGL_REVID(engine->i915, TGL_REVID_A0, TGL_REVID_A0) ? 0 :
 			    FF_MODE2_TDS_TIMER_MASK);
-
-	/* Wa_1606931601:tgl */
-	WA_SET_BIT_MASKED(GEN7_ROW_CHICKEN2, GEN12_DISABLE_EARLY_READ);
 }
 
 static void
@@ -1360,6 +1357,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_write_or(wal,
 			    GEN7_FF_THREAD_MODE,
 			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
+
+		/* Wa_1606931601:tgl */
+		wa_masked_en(wal,
+			     GEN7_ROW_CHICKEN2,
+			     GEN12_DISABLE_EARLY_READ);
 	}
 
 	if (IS_GEN(i915, 11)) {
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
