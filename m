Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4658420F7EA
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 17:08:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 234DF6E2E2;
	Tue, 30 Jun 2020 15:08:28 +0000 (UTC)
X-Original-To: intel-gfx@freedesktop.org
Delivered-To: intel-gfx@freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A86E06E2E2
 for <intel-gfx@freedesktop.org>; Tue, 30 Jun 2020 15:08:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21664410-1500050 for multiple; Tue, 30 Jun 2020 16:08:00 +0100
MIME-Version: 1.0
In-Reply-To: <20200630150105.GA13355@roeck-us.net>
References: <20190903062133.27360-1-chris@chris-wilson.co.uk>
 <20200630053936.GA168021@roeck-us.net>
 <159350846525.9830.11510134258802464713@build.alporthouse.com>
 <20200630150105.GA13355@roeck-us.net>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Guenter Roeck <linux@roeck-us.net>
Date: Tue, 30 Jun 2020 16:08:00 +0100
Message-ID: <159352968098.22902.15606199075854362593@build.alporthouse.com>
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

Quoting Guenter Roeck (2020-06-30 16:01:05)
> On Tue, Jun 30, 2020 at 10:14:25AM +0100, Chris Wilson wrote:
> [ ... ]
> > > > @@ -328,9 +334,9 @@ static void print_context_stats(struct seq_file *m,
> > > >                       struct task_struct *task;
> > > >                       char name[80];
> > > >  
> > > > -                     spin_lock(&file->table_lock);
> > > > +                     rcu_read_lock();
> > > >                       idr_for_each(&file->object_idr, per_file_stats, &stats);
> > > > -                     spin_unlock(&file->table_lock);
> > > > +                     rcu_read_unlock();
> > > >  
> > > For my education - is it indeed possible and valid to replace spin_lock()
> > > with rcu_read_lock() to prevent list manipulation for a list used by
> > > idr_for_each(), even if that list is otherwise manipulated under the
> > > spinlock ?
> > 
> > It's a pure read of a radixtree here, and is supposed to be RCU safe:
> > 
> >  * idr_for_each() can be called concurrently with idr_alloc() and
> >  * idr_remove() if protected by RCU.  Newly added entries may not be
> >  * seen and deleted entries may be seen, but adding and removing entries
> >  * will not cause other entries to be skipped, nor spurious ones to be seen.
> > 
> > That is the tree structure is stable.
> > 
> Ah, that makes sense. Thanks for the clarification.
> 
> > > Background: we are seeing a crash with the following call trace.
> > > 
> > > [ 1016.651593] BUG: kernel NULL pointer dereference, address: 0000000000000000
> > > ...
> > > [ 1016.651693] Call Trace:
> > > [ 1016.651703]  idr_for_each+0x8a/0xe8
> > > [ 1016.651711]  i915_gem_object_info+0x2a3/0x3eb
> > > [ 1016.651720]  seq_read+0x162/0x3ca
> > > [ 1016.651727]  full_proxy_read+0x5b/0x8d
> > > [ 1016.651733]  __vfs_read+0x45/0x1bb
> > > [ 1016.651741]  vfs_read+0xc9/0x15e
> > > [ 1016.651746]  ksys_read+0x7e/0xde
> > > [ 1016.651752]  do_syscall_64+0x54/0x68
> > > [ 1016.651758]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> > 
> Actually, the crash is not in idr_for_each, but in per_file_stats:

Ok, let's assume that the object is being closed as we read the idr. The
idr will temporarily hold an error pointer for the handle to indicate the
in-progress closure, so something like:

@@ -230,7 +230,7 @@ static int per_file_stats(int id, void *ptr, void *data)
        struct file_stats *stats = data;
        struct i915_vma *vma;

-       if (!kref_get_unless_zero(&obj->base.refcount))
+       if (IS_ERR_OR_NULL(obj) || !kref_get_unless_zero(&obj->base.refcount))
                return 0;

-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
