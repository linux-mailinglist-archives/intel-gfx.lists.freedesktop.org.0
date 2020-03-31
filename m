Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CBD199685
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 14:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4CA36E311;
	Tue, 31 Mar 2020 12:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB5556E311
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 12:28:32 +0000 (UTC)
IronPort-SDR: A6BeUtA7LkDIeKYWHBr71osuV9PGuk2iSmNIc9Ra3dAiubAmcl2r0Y93N6hGSh0Slj64pTHL2L
 VPdKGiRAgVyw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 04:57:07 -0700
IronPort-SDR: YNbGhGj+70e/G43nHcWBVZSzU5PjfSZe+4tcL7w+q/FB/bA9/jeOHFVsQgnGqfInp0phIL7gga
 lA1PbdHfIDLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="448645486"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga005.fm.intel.com with ESMTP; 31 Mar 2020 04:57:06 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 69AB48442B9; Tue, 31 Mar 2020 14:56:52 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 14:56:49 +0300
Message-Id: <20200331115649.27143-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Report all failed registers for ctx
 isolation
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We want to log all failed registers so don't stop
on a first.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index d3e163c93e22..7d7b0ab52b63 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -5104,6 +5104,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
 {
 	u32 x, dw, *hw, *lrc;
 	u32 *A[2], *B[2];
+	unsigned long failed;
 	int err = 0;
 
 	A[0] = i915_gem_object_pin_map(ref[0]->obj, I915_MAP_WC);
@@ -5136,6 +5137,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
 	}
 	lrc += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
 
+	failed = 0;
 	x = 0;
 	dw = 0;
 	hw = engine->pinned_default_state;
@@ -5169,8 +5171,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
 					       hw[dw], hw[dw + 1],
 					       A[0][x], B[0][x], B[1][x],
 					       poison, lrc[dw + 1]);
-					err = -EINVAL;
-					break;
+					failed++;
 				}
 			}
 			dw += 2;
@@ -5179,6 +5180,9 @@ static int compare_isolation(struct intel_engine_cs *engine,
 	} while (dw < PAGE_SIZE / sizeof(u32) &&
 		 (hw[dw] & ~BIT(0)) != MI_BATCH_BUFFER_END);
 
+	if (failed)
+		err = -EINVAL;
+
 	i915_gem_object_unpin_map(ce->state->obj);
 err_B1:
 	i915_gem_object_unpin_map(result[1]->obj);
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
