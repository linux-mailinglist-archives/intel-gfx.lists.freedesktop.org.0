Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE85150C18
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 17:33:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 550C16E3EC;
	Mon,  3 Feb 2020 16:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CEDB6E3EC
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 16:33:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 08:33:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="231072764"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga003.jf.intel.com with ESMTP; 03 Feb 2020 08:33:21 -0800
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id CE03A843BE6; Mon,  3 Feb 2020 18:33:13 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 18:33:12 +0200
Message-Id: <20200203163312.15475-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Remove lite restore defines
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

We have switched from tail manipulation to forced context restore
to implement WaIdleLiteRestore. Remove the useless defines and comments.

References: f26a9e959a7b ("drm/i915/gt: Detect if we miss WaIdleLiteRestore")
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index c196fb90c59f..bc0835c3fb2c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -176,8 +176,6 @@
 
 /* Typical size of the average request (2 pipecontrols and a MI_BB) */
 #define EXECLISTS_REQUEST_SIZE 64 /* bytes */
-#define WA_TAIL_DWORDS 2
-#define WA_TAIL_BYTES (sizeof(u32) * WA_TAIL_DWORDS)
 
 struct virtual_engine {
 	struct intel_engine_cs base;
@@ -2927,22 +2925,6 @@ static void execlists_context_reset(struct intel_context *ce)
 	CE_TRACE(ce, "reset\n");
 	GEM_BUG_ON(!intel_context_is_pinned(ce));
 
-	/*
-	 * Because we emit WA_TAIL_DWORDS there may be a disparity
-	 * between our bookkeeping in ce->ring->head and ce->ring->tail and
-	 * that stored in context. As we only write new commands from
-	 * ce->ring->tail onwards, everything before that is junk. If the GPU
-	 * starts reading from its RING_HEAD from the context, it may try to
-	 * execute that junk and die.
-	 *
-	 * The contexts that are stilled pinned on resume belong to the
-	 * kernel, and are local to each engine. All other contexts will
-	 * have their head/tail sanitized upon pinning before use, so they
-	 * will never see garbage,
-	 *
-	 * So to avoid that we reset the context images upon resume. For
-	 * simplicity, we just zero everything out.
-	 */
 	intel_ring_reset(ce->ring, ce->ring->emit);
 
 	/* Scrub away the garbage */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
