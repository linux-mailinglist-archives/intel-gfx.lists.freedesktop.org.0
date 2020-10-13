Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FBD28CC3E
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 13:08:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC626E114;
	Tue, 13 Oct 2020 11:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 594076E114
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 11:08:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22700805-1500050 
 for multiple; Tue, 13 Oct 2020 12:08:46 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Oct 2020 12:08:45 +0100
Message-Id: <20201013110845.16127-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Cleanup kasan warning for on-stack
 (unsigned long) casting
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

Kasan is gving a warning for passing a u32 parameter into find_first_bit
(casting to a unsigned long *, with appropriate length restrictions):

[   44.678262] BUG: KASAN: stack-out-of-bounds in find_first_bit+0x2e/0x50
[   44.678295] Read of size 8 at addr ffff888233f4fc30 by task core_hotunplug/474
[   44.678326]
[   44.678358] CPU: 0 PID: 474 Comm: core_hotunplug Not tainted 5.9.0+ #608
[   44.678465] Hardware name: BESSTAR (HK) LIMITED GN41/Default string, BIOS BLT-BI-MINIPC-F4G-EX3R110-GA65A-101-D 10/12/2018
[   44.678500] Call Trace:
[   44.678534]  dump_stack+0x84/0xba
[   44.678569]  print_address_description.constprop.0+0x21/0x220
[   44.678605]  ? kmsg_dump_rewind_nolock+0x5f/0x5f
[   44.678638]  ? _raw_spin_lock_irqsave+0x6d/0xb0
[   44.678669]  ? _raw_write_lock_irqsave+0xb0/0xb0
[   44.678702]  ? set_task_cpu+0x1e0/0x1e0
[   44.678733]  ? find_first_bit+0x2e/0x50
[   44.678763]  kasan_report.cold+0x20/0x42
[   44.678794]  ? find_first_bit+0x2e/0x50
[   44.678825]  __asan_load8+0x69/0x90
[   44.678856]  find_first_bit+0x2e/0x50
[   44.679027]  __caps_show.isra.0+0x9e/0x1f0 [i915]

Since we are only using the shorter type for our own convenience,
accomodate kasan and use unsigned long.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/sysfs_engines.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
index 535cc1169e54..967031056202 100644
--- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
@@ -79,14 +79,12 @@ static ssize_t repr_trim(char *buf, ssize_t len)
 
 static ssize_t
 __caps_show(struct intel_engine_cs *engine,
-	    u32 caps, char *buf, bool show_unknown)
+	    unsigned long caps, char *buf, bool show_unknown)
 {
 	const char * const *repr;
 	int count, n;
 	ssize_t len;
 
-	BUILD_BUG_ON(!typecheck(typeof(caps), engine->uabi_capabilities));
-
 	switch (engine->class) {
 	case VIDEO_DECODE_CLASS:
 		repr = vcs_caps;
@@ -103,12 +101,10 @@ __caps_show(struct intel_engine_cs *engine,
 		count = 0;
 		break;
 	}
-	GEM_BUG_ON(count > BITS_PER_TYPE(typeof(caps)));
+	GEM_BUG_ON(count > BITS_PER_LONG);
 
 	len = 0;
-	for_each_set_bit(n,
-			 (unsigned long *)&caps,
-			 show_unknown ? BITS_PER_TYPE(typeof(caps)) : count) {
+	for_each_set_bit(n, &caps, show_unknown ? BITS_PER_LONG : count) {
 		if (n >= count || !repr[n]) {
 			if (GEM_WARN_ON(show_unknown))
 				len += snprintf(buf + len, PAGE_SIZE - len,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
