Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 988511ED3F4
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 18:10:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C59738987C;
	Wed,  3 Jun 2020 16:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 311E28987C
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 16:10:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21386895-1500050 
 for multiple; Wed, 03 Jun 2020 17:09:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jun 2020 17:09:32 +0100
Message-Id: <20200603160932.1805-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200603145529.3851-1-chris@chris-wilson.co.uk>
References: <20200603145529.3851-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Restore "08fff7aeddc9 ("drm/i915/tgl:
 Wa_1607138340")
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This restores 08fff7aeddc9 ("drm/i915/tgl: Wa_1607138340") by reverting
commit 921f0c47f228 ("drm/i915: Revert "drm/i915/tgl: Wa_1607138340"").

Our CI machines are recording a rare error where the CS events are out
of order, leading to a machine death. Restoring the Wa_1607138340 (i.e.
forcing a full restore on every context switch) prevents it. Whether or
not is it the same root cause remains to be seen, but since the machine
death is quite easy to hit on B0, it is unresolved.

Fixes: 921f0c47f228 ("drm/i915: Revert "drm/i915/tgl: Wa_1607138340"")
References: 08fff7aeddc9 ("drm/i915/tgl: Wa_1607138340")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Francesco Balestrieri <francesco.balestrieri@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index aac8da18694f..b28ea01375ba 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1520,6 +1520,10 @@ static u64 execlists_update_context(struct i915_request *rq)
 	 */
 	wmb();
 
+	/* Wa_1607138340:tgl */
+	if (IS_TGL_REVID(ce->engine->i915, TGL_REVID_A0, TGL_REVID_B0))
+		desc |= CTX_DESC_FORCE_RESTORE;
+
 	ce->lrc.desc &= ~CTX_DESC_FORCE_RESTORE;
 	return desc;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
