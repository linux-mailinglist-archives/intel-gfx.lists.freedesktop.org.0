Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4011E9F1E
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 09:25:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 767086E159;
	Mon,  1 Jun 2020 07:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 773496E0DA
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 07:25:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21356601-1500050 
 for multiple; Mon, 01 Jun 2020 08:24:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jun 2020 08:24:11 +0100
Message-Id: <20200601072446.19548-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/36] drm/i915: Handle very early engine
 initialisation failure
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

If we fail during engine setup, we may leave some engines not yet setup.
During the error cleanup, we have to be careful not to try and use the
uninitialise engines before discarding them.

[   16.136152] RIP: 0010:__flush_work+0x198/0x1b0
[   16.136168] Code: ff ff 8b 0b 48 8b 53 08 83 e1 08 48 0f ba 2b 03 80 c9 f0 e9 63 ff ff ff 0f 0b 48 83 c4 48 44 89 f0 5b 5d 41 5c 41 5d 41 5e c3 <0f> 0b 45 31 f6 e9 62 ff ff ff 66 66 2e 0f 1f 84 00 00 00 00 00 0f
[   16.136186] RSP: 0018:ffffc900003bb928 EFLAGS: 00010246
[   16.136201] RAX: 0000000000000000 RBX: ffff88844f392168 RCX: 0000000000000000
[   16.136216] RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffff88844f392168
[   16.136231] RBP: ffff88844f392130 R08: 0000000000000000 R09: 0000000000000001
[   16.136246] R10: ffff888441e31e40 R11: ffff88845e329c70 R12: ffff88844f796988
[   16.136261] R13: ffff888441e4fb80 R14: 0000000000000001 R15: ffff88844f790000
[   16.136388] FS:  00007fecbd208880(0000) GS:ffff88845e380000(0000) knlGS:0000000000000000
[   16.136405] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   16.136420] CR2: 00007ff3ce748f90 CR3: 0000000457a6a001 CR4: 00000000000606e0
[   16.136437] Call Trace:
[   16.136456]  ? try_to_del_timer_sync+0x3a/0x50
[   16.136529]  intel_wakeref_wait_for_idle+0x87/0xb0 [i915]
[   16.136606]  ? intel_engines_release+0x68/0xc0 [i915]
[   16.136680]  intel_engines_release+0x49/0xc0 [i915]
[   16.136757]  intel_gt_init+0x2f4/0x5e0 [i915]

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index da5b61085257..c8c14981eb5d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -414,12 +414,12 @@ void intel_engines_release(struct intel_gt *gt)
 
 	/* Decouple the backend; but keep the layout for late GPU resets */
 	for_each_engine(engine, gt, id) {
-		intel_wakeref_wait_for_idle(&engine->wakeref);
-		GEM_BUG_ON(intel_engine_pm_is_awake(engine));
-
 		if (!engine->release)
 			continue;
 
+		intel_wakeref_wait_for_idle(&engine->wakeref);
+		GEM_BUG_ON(intel_engine_pm_is_awake(engine));
+
 		engine->release(engine);
 		engine->release = NULL;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
