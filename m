Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1F018049E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 18:18:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9776E369;
	Tue, 10 Mar 2020 17:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14CE86E369
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 17:18:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20512654-1500050 
 for multiple; Tue, 10 Mar 2020 17:18:07 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 17:18:07 +0000
Message-Id: <20200310171807.1122-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Mark up the racy read of the
 mmap_singleton
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

[11057.642683] BUG: KCSAN: data-race in i915_gem_mmap [i915] / singleton_release [i915]
[11057.642717]
[11057.642740] write (marked) to 0xffff8881f24471a0 of 8 bytes by task 44668 on cpu 2:
[11057.643162]  singleton_release+0x38/0x60 [i915]
[11057.643192]  __fput+0x160/0x3c0
[11057.643217]  ____fput+0x16/0x20
[11057.643241]  task_work_run+0xba/0x100
[11057.643263]  exit_to_usermode_loop+0xe4/0xf0
[11057.643286]  do_syscall_64+0x27e/0x2c0
[11057.643314]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[11057.643339]
[11057.643359] read to 0xffff8881f24471a0 of 8 bytes by task 44667 on cpu 3:
[11057.643774]  i915_gem_mmap+0x295/0x670 [i915]
[11057.643802]  mmap_region+0x62b/0xac0
[11057.643825]  do_mmap+0x414/0x6b0
[11057.643848]  vm_mmap_pgoff+0xa9/0xf0
[11057.643875]  ksys_mmap_pgoff+0x1ac/0x2f0
[11057.643900]  do_syscall_64+0x6e/0x2c0
[11057.643924]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index e8cccc131c40..b39c24dae64e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -775,7 +775,7 @@ static struct file *mmap_singleton(struct drm_i915_private *i915)
 	struct file *file;
 
 	rcu_read_lock();
-	file = i915->gem.mmap_singleton;
+	file = READ_ONCE(i915->gem.mmap_singleton);
 	if (file && !get_file_rcu(file))
 		file = NULL;
 	rcu_read_unlock();
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
