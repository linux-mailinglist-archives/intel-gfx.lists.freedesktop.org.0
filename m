Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A104717DEA7
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 12:25:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81EC16E159;
	Mon,  9 Mar 2020 11:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D626E159
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 11:25:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20494004-1500050 
 for multiple; Mon, 09 Mar 2020 11:24:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 11:24:31 +0000
Message-Id: <20200309112431.13903-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Defend against concurrent updates
 to execlists->active
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

[  206.875637] BUG: KCSAN: data-race in __i915_schedule+0x7fc/0x930 [i915]
[  206.875654]
[  206.875666] race at unknown origin, with read to 0xffff8881f7644480 of 8 bytes by task 703 on cpu 3:
[  206.875901]  __i915_schedule+0x7fc/0x930 [i915]
[  206.876130]  __bump_priority+0x63/0x80 [i915]
[  206.876361]  __i915_sched_node_add_dependency+0x258/0x300 [i915]
[  206.876593]  i915_sched_node_add_dependency+0x50/0xa0 [i915]
[  206.876824]  i915_request_await_dma_fence+0x1da/0x530 [i915]
[  206.877057]  i915_request_await_object+0x2fe/0x470 [i915]
[  206.877287]  i915_gem_do_execbuffer+0x45dc/0x4c20 [i915]
[  206.877517]  i915_gem_execbuffer2_ioctl+0x2c3/0x580 [i915]
[  206.877535]  drm_ioctl_kernel+0xe4/0x120
[  206.877549]  drm_ioctl+0x297/0x4c7
[  206.877563]  ksys_ioctl+0x89/0xb0
[  206.877577]  __x64_sys_ioctl+0x42/0x60
[  206.877591]  do_syscall_64+0x6e/0x2c0
[  206.877606]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

References: https://gitlab.freedesktop.org/drm/intel/issues/1318
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine.h | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 29c8c03c5caa..f267f51c457c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -107,7 +107,17 @@ execlists_num_ports(const struct intel_engine_execlists * const execlists)
 static inline struct i915_request *
 execlists_active(const struct intel_engine_execlists *execlists)
 {
-	return *READ_ONCE(execlists->active);
+	struct i915_request * const *cur = READ_ONCE(execlists->active);
+	struct i915_request * const *old;
+	struct i915_request *active;
+
+	do {
+		old = cur;
+		active = READ_ONCE(*cur);
+		cur = READ_ONCE(execlists->active);
+	} while (cur != old);
+
+	return active;
 }
 
 static inline void
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
