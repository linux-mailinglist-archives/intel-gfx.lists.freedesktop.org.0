Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCE820F153
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 11:14:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEFB389EAC;
	Tue, 30 Jun 2020 09:14:53 +0000 (UTC)
X-Original-To: intel-gfx@freedesktop.org
Delivered-To: intel-gfx@freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6AE089EAC
 for <intel-gfx@freedesktop.org>; Tue, 30 Jun 2020 09:14:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21659972-1500050 for multiple; Tue, 30 Jun 2020 10:14:25 +0100
MIME-Version: 1.0
In-Reply-To: <20200630053936.GA168021@roeck-us.net>
References: <20190903062133.27360-1-chris@chris-wilson.co.uk>
 <20200630053936.GA168021@roeck-us.net>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Guenter Roeck <linux@roeck-us.net>
Date: Tue, 30 Jun 2020 10:14:25 +0100
Message-ID: <159350846525.9830.11510134258802464713@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Protect debugfs per_file_stats
 with RCU lock
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
Cc: intel-gfx@freedesktop.org, bgeffon@google.com, levinale@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Guenter Roeck (2020-06-30 06:39:36)
> On Tue, Sep 03, 2019 at 07:21:33AM +0100, Chris Wilson wrote:
> > If we make sure we grab a strong reference to each object as we dump it,
> > we can reduce the locks outside of our iterators to an rcu_read_lock.
> > 
> > This should prevent errors like:
> > [ 2138.371911] BUG: KASAN: use-after-free in per_file_stats+0x43/0x380 [i915]
> > [ 2138.371924] Read of size 8 at addr ffff888223651000 by task cat/8293
> > 
> > [ 2138.371947] CPU: 0 PID: 8293 Comm: cat Not tainted 5.3.0-rc6-CI-Custom_4352+ #1
> > [ 2138.371953] Hardware name: To Be Filled By O.E.M. To Be Filled By O.E.M./J4205-ITX, BIOS P1.40 07/14/2017
> > [ 2138.371959] Call Trace:
> > [ 2138.371974]  dump_stack+0x7c/0xbb
> > [ 2138.372099]  ? per_file_stats+0x43/0x380 [i915]
> > [ 2138.372108]  print_address_description+0x73/0x3a0
> > [ 2138.372231]  ? per_file_stats+0x43/0x380 [i915]
> > [ 2138.372352]  ? per_file_stats+0x43/0x380 [i915]
> > [ 2138.372362]  __kasan_report+0x14e/0x192
> > [ 2138.372489]  ? per_file_stats+0x43/0x380 [i915]
> > [ 2138.372502]  kasan_report+0xe/0x20
> > [ 2138.372625]  per_file_stats+0x43/0x380 [i915]
> > [ 2138.372751]  ? i915_panel_show+0x110/0x110 [i915]
> > [ 2138.372761]  idr_for_each+0xa7/0x160
> > [ 2138.372773]  ? idr_get_next_ul+0x110/0x110
> > [ 2138.372782]  ? do_raw_spin_lock+0x10a/0x1d0
> > [ 2138.372923]  print_context_stats+0x264/0x510 [i915]
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Tested-by: David Weinehall <david.weinehall@linux.intel.com>
> > Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_debugfs.c | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> > index 9798f27a697a..708855e051b5 100644
> [ ... ]
> >               }
> > @@ -328,9 +334,9 @@ static void print_context_stats(struct seq_file *m,
> >                       struct task_struct *task;
> >                       char name[80];
> >  
> > -                     spin_lock(&file->table_lock);
> > +                     rcu_read_lock();
> >                       idr_for_each(&file->object_idr, per_file_stats, &stats);
> > -                     spin_unlock(&file->table_lock);
> > +                     rcu_read_unlock();
> >  
> For my education - is it indeed possible and valid to replace spin_lock()
> with rcu_read_lock() to prevent list manipulation for a list used by
> idr_for_each(), even if that list is otherwise manipulated under the
> spinlock ?

It's a pure read of a radixtree here, and is supposed to be RCU safe:

 * idr_for_each() can be called concurrently with idr_alloc() and
 * idr_remove() if protected by RCU.  Newly added entries may not be
 * seen and deleted entries may be seen, but adding and removing entries
 * will not cause other entries to be skipped, nor spurious ones to be seen.

That is the tree structure is stable.

> Background: we are seeing a crash with the following call trace.
> 
> [ 1016.651593] BUG: kernel NULL pointer dereference, address: 0000000000000000
> ...
> [ 1016.651693] Call Trace:
> [ 1016.651703]  idr_for_each+0x8a/0xe8
> [ 1016.651711]  i915_gem_object_info+0x2a3/0x3eb
> [ 1016.651720]  seq_read+0x162/0x3ca
> [ 1016.651727]  full_proxy_read+0x5b/0x8d
> [ 1016.651733]  __vfs_read+0x45/0x1bb
> [ 1016.651741]  vfs_read+0xc9/0x15e
> [ 1016.651746]  ksys_read+0x7e/0xde
> [ 1016.651752]  do_syscall_64+0x54/0x68
> [ 1016.651758]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

Is there a reason you are using this slow debugfs in the first place?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
