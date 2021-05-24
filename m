Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F017C38E62B
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 14:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 673A76E29D;
	Mon, 24 May 2021 12:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 323 seconds by postgrey-1.36 at gabe;
 Mon, 24 May 2021 07:57:02 UTC
Received: from mail3-166.sinamail.sina.com.cn (mail3-166.sinamail.sina.com.cn
 [202.108.3.166])
 by gabe.freedesktop.org (Postfix) with SMTP id C66DE6E134
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 07:56:53 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([221.199.207.226])
 by sina.com (172.16.97.23) with ESMTP
 id 60AB5AFE0000514A; Mon, 24 May 2021 15:51:28 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 31657854919588
From: Hillf Danton <hdanton@sina.com>
To: Philippe Troin <phil@fifi.org>
Date: Mon, 24 May 2021 15:51:21 +0800
Message-Id: <20210524075121.1949-1-hdanton@sina.com>
In-Reply-To: <4d84b06ee9e8dad88ff101de5e7b78b9b09cfee3.camel@fifi.org>
References: <4d84b06ee9e8dad88ff101de5e7b78b9b09cfee3.camel@fifi.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 24 May 2021 12:05:07 +0000
Subject: Re: [Intel-gfx] Bug: 5.12.5 - list_add double add at
 __i915_gem_object_make_shrinkable+0xa6/0xe0
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 23 May 2021 12:47:34 -0700 Philippe Troin wrote:
> Found the following bug on a FUJITSU LIFEBOOK S6520.
> 
> The kernel crash happens when selecting a user from the gdm login
> screen right after boot.
> The same hardware has no problems with 5.11.21.
> 
> OOPS:
>    list_add double add: new=ffff8e785604c620, prev=ffff8e785604c620, next=ffff8e784d105b38.
>    ------------[ cut here ]------------
>    kernel BUG at lib/list_debug.c:29!
>    invalid opcode: 0000 [#1] SMP PTI
>    CPU: 0 PID: 1498 Comm: gnome-shell Not tainted 5.12.5-200.fc33.x86_64 #1
>    Hardware name: FUJITSU LIFEBOOK S6520/FJNB1E6, BIOS Version 1.31  09/09/2009
>    RIP: 0010:__list_add_valid.cold+0x26/0x3f
>    Code: d8 77 a6 ff 4c 89 c1 48 c7 c7 10 52 41 b8 e8 7f 2c fe ff 0f 0b 48 89 f2 4c 89 c1 48 89 fe 48 c7 c7 c0 52 41 b8 e8 68 2c fe ff <0f> 0b 48 89 d1 4c 89 c6 4c 89 ca 48 c7 c7 68 52 41 b8 e8 51 2c fe
>    RSP: 0018:ffffb84100ebfcf8 EFLAGS: 00010082
>    RAX: 0000000000000058 RBX: ffff8e785604c340 RCX: 0000000000000000
>    RDX: ffff8e787bc26720 RSI: ffff8e787bc185c0 RDI: ffff8e787bc185c0
>    RBP: ffff8e784d105b38 R08: 0000000000000000 R09: ffffb84100ebfb30
>    R10: ffffb84100ebfb28 R11: ffffffffb8b45f28 R12: ffff8e784d100000
>    R13: 0000000000000246 R14: ffff8e784d105b20 R15: ffff8e785604c620
>    FS:  00007fa65ebf6d40(0000) GS:ffff8e787bc00000(0000) knlGS:0000000000000000
>    CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>    CR2: 00007fa638311a10 CR3: 00000001162d0000 CR4: 00000000000006f0
>    Call Trace:
>     __i915_gem_object_make_shrinkable+0xa6/0xe0 [i915]
>     i915_gem_object_set_tiling+0x4fe/0x530 [i915]
>     ? i915_gem_object_make_unshrinkable+0x75/0xd0 [i915]
>     i915_gem_set_tiling_ioctl+0x148/0x230 [i915]
>     ? i915_gem_object_set_tiling+0x530/0x530 [i915]
>     drm_ioctl_kernel+0x86/0xd0 [drm]
>     drm_ioctl+0x20f/0x3a0 [drm]
>     ? i915_gem_object_set_tiling+0x530/0x530 [i915]
>     ? handle_mm_fault+0xd5/0x2b0
>     __x64_sys_ioctl+0x83/0xb0
>     do_syscall_64+0x33/0x40
>     entry_SYSCALL_64_after_hwframe+0x44/0xae

Update shrink_pin under lock to cut chance for races. 
If it is a cure then atomic_t will be dropped.

+++ x/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -435,6 +435,7 @@ void i915_gem_object_make_unshrinkable(s
 {
 	struct drm_i915_private *i915 = obj_to_i915(obj);
 	unsigned long flags;
+	int pin;
 
 	/*
 	 * We can only be called while the pages are pinned or when
@@ -442,12 +443,10 @@ void i915_gem_object_make_unshrinkable(s
 	 * from a single caller under controlled conditions; and on release
 	 * only one caller may release us. Neither the two may cross.
 	 */
-	if (atomic_add_unless(&obj->mm.shrink_pin, 1, 0))
-		return;
-
 	spin_lock_irqsave(&i915->mm.obj_lock, flags);
-	if (!atomic_fetch_inc(&obj->mm.shrink_pin) &&
-	    !list_empty(&obj->mm.link)) {
+	pin = atomic_read(&obj->mm.shrink_pin);
+	atomic_inc(&obj->mm.shrink_pin);
+	if (!pin && !list_empty(&obj->mm.link)) {
 		list_del_init(&obj->mm.link);
 		i915->mm.shrink_count--;
 		i915->mm.shrink_memory -= obj->base.size;
@@ -460,23 +459,23 @@ static void __i915_gem_object_make_shrin
 {
 	struct drm_i915_private *i915 = obj_to_i915(obj);
 	unsigned long flags;
+	int pin;
 
 	GEM_BUG_ON(!i915_gem_object_has_pages(obj));
 	if (!i915_gem_object_is_shrinkable(obj))
 		return;
 
-	if (atomic_add_unless(&obj->mm.shrink_pin, -1, 1))
-		return;
-
 	spin_lock_irqsave(&i915->mm.obj_lock, flags);
 	GEM_BUG_ON(!kref_read(&obj->base.refcount));
-	if (atomic_dec_and_test(&obj->mm.shrink_pin)) {
+
+	pin = atomic_read(&obj->mm.shrink_pin);
+	atomic_dec(&obj->mm.shrink_pin);
+	if (pin == 1) {
 		GEM_BUG_ON(!list_empty(&obj->mm.link));
 
 		list_add_tail(&obj->mm.link, head);
 		i915->mm.shrink_count++;
 		i915->mm.shrink_memory += obj->base.size;
-
 	}
 	spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
 }
--
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
