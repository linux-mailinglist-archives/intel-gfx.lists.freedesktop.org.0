Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4C720F7D0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 17:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BB236E2D1;
	Tue, 30 Jun 2020 15:01:09 +0000 (UTC)
X-Original-To: intel-gfx@freedesktop.org
Delivered-To: intel-gfx@freedesktop.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com
 [IPv6:2607:f8b0:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A91D6E2D1
 for <intel-gfx@freedesktop.org>; Tue, 30 Jun 2020 15:01:08 +0000 (UTC)
Received: by mail-pf1-x442.google.com with SMTP id t11so4677209pfq.11
 for <intel-gfx@freedesktop.org>; Tue, 30 Jun 2020 08:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fqF1f3GdQeCsCinHp0Z0LzfZahMWSM1xRJWRF+EAyRI=;
 b=aKTKTqqMZcMXgtIkIybq1bVINihB/CgrRvWNtrElhYtGPMQYP0gylXnRko3k8cE5fM
 IhPOD/RWGVXvApB7d4Mm6cKxuF1GZu276Mg/eQK5VxavWmOxkaR9GU+tUt3KOaHvwKbX
 r4UyePIzWwJQ2kcUs6Ef46uaz4oxyEyzDhLpyYwxj8GVsPgnK3aX2pwD6/d3j2QgzkRb
 2CohKsBeM5PdUZFzy3O3kSag7klUkipugvEoLOkaxG15TBWg2b5wf5xfEayeM+GMa8hf
 ZO2Z7DLqOKw8kgw+6sDjn/g0hT5Di1rh30HWdAmWIMXK4pLtMkmm08a9UP/+Vb2Y4TUw
 9nBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=fqF1f3GdQeCsCinHp0Z0LzfZahMWSM1xRJWRF+EAyRI=;
 b=XM1gWSHu9191dU/Y5Ak0QJnsMO71QawEU04oB9jqaTIoIR4eReV+FXot2zj4OnVshi
 xMJqiz0cglbHZZaPS3RHWYk7yvWUilPUJd4CyFXrU+2CziwD9M7DuQXtAmkFMuWgxxrr
 NCqSN4aZC4q2X+Y8c0N4s5zkIZOjb1e9/UHyMm2dFD4L5airsQyvIm/CGiK74g5bW802
 DXRjE2hIcoYq5o+/mLc5Bgba2sSDJpJSRRnxfqUUeAgDvSTyGt0nOkA9WYLNWQEDE2Tr
 Mj6EWaqTrUwY6tN6I8dQgIaKMn7swiyGhWPoZa9PjXaH1Dn4AE7lrsZ1LKIsIhc6XJTD
 ewMQ==
X-Gm-Message-State: AOAM531RoXLnx/jvRZeYfODdNeOoaqQhTVN+ANbKbQBEGFB+mtggPjmh
 aKacvSVADLu1NdEtHjrh+qM=
X-Google-Smtp-Source: ABdhPJwhlRyz8yy9AVag99mLIp83pMaPgz42xualu/r865ka5U0oxWcxKG0ZGWGY+OooScF5j9IkjQ==
X-Received: by 2002:aa7:8298:: with SMTP id s24mr20286236pfm.21.1593529268115; 
 Tue, 30 Jun 2020 08:01:08 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id k14sm3090395pfk.97.2020.06.30.08.01.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Jun 2020 08:01:07 -0700 (PDT)
Date: Tue, 30 Jun 2020 08:01:05 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200630150105.GA13355@roeck-us.net>
References: <20190903062133.27360-1-chris@chris-wilson.co.uk>
 <20200630053936.GA168021@roeck-us.net>
 <159350846525.9830.11510134258802464713@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159350846525.9830.11510134258802464713@build.alporthouse.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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

On Tue, Jun 30, 2020 at 10:14:25AM +0100, Chris Wilson wrote:
[ ... ]
> > > @@ -328,9 +334,9 @@ static void print_context_stats(struct seq_file *m,
> > >                       struct task_struct *task;
> > >                       char name[80];
> > >  
> > > -                     spin_lock(&file->table_lock);
> > > +                     rcu_read_lock();
> > >                       idr_for_each(&file->object_idr, per_file_stats, &stats);
> > > -                     spin_unlock(&file->table_lock);
> > > +                     rcu_read_unlock();
> > >  
> > For my education - is it indeed possible and valid to replace spin_lock()
> > with rcu_read_lock() to prevent list manipulation for a list used by
> > idr_for_each(), even if that list is otherwise manipulated under the
> > spinlock ?
> 
> It's a pure read of a radixtree here, and is supposed to be RCU safe:
> 
>  * idr_for_each() can be called concurrently with idr_alloc() and
>  * idr_remove() if protected by RCU.  Newly added entries may not be
>  * seen and deleted entries may be seen, but adding and removing entries
>  * will not cause other entries to be skipped, nor spurious ones to be seen.
> 
> That is the tree structure is stable.
> 
Ah, that makes sense. Thanks for the clarification.

> > Background: we are seeing a crash with the following call trace.
> > 
> > [ 1016.651593] BUG: kernel NULL pointer dereference, address: 0000000000000000
> > ...
> > [ 1016.651693] Call Trace:
> > [ 1016.651703]  idr_for_each+0x8a/0xe8
> > [ 1016.651711]  i915_gem_object_info+0x2a3/0x3eb
> > [ 1016.651720]  seq_read+0x162/0x3ca
> > [ 1016.651727]  full_proxy_read+0x5b/0x8d
> > [ 1016.651733]  __vfs_read+0x45/0x1bb
> > [ 1016.651741]  vfs_read+0xc9/0x15e
> > [ 1016.651746]  ksys_read+0x7e/0xde
> > [ 1016.651752]  do_syscall_64+0x54/0x68
> > [ 1016.651758]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> 
Actually, the crash is not in idr_for_each, but in per_file_stats:

[ 1016.651637] RIP: 0010:per_file_stats+0xe/0x16e
[ 1016.651646] Code: d2 41 0f b6 8e 69 8c 00 00 48 89 df 48 c7 c6 7b 74 8c be 31 c0 e8 0c 89 cf ff eb d2 0f 1f 44 00 00 55 48 89 e5 41 57 41 56 53 <8b> 06 85 c0 0f 84 4d 01 00 00 49 89 d6 48 89 f3 3d ff ff ff 7f 73
[ 1016.651651] RSP: 0018:ffffad3a01337ba0 EFLAGS: 00010293
[ 1016.651656] RAX: 0000000000000018 RBX: ffff96fe040d65e0 RCX: 0000000000000002
[ 1016.651660] RDX: ffffad3a01337c50 RSI: 0000000000000000 RDI: 00000000000001e8
[ 1016.651663] RBP: ffffad3a01337bb8 R08: 0000000000000000 R09: 00000000000001c0
[ 1016.651667] R10: 0000000000000000 R11: ffffffffbdbe5fce R12: 0000000000000000
[ 1016.651671] R13: ffffffffbdbe5fce R14: ffffad3a01337c50 R15: 0000000000000001
[ 1016.651676] FS:  00007a597e2d7480(0000) GS:ffff96ff3bb00000(0000) knlGS:0000000000000000
[ 1016.651680] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 1016.651683] CR2: 0000000000000000 CR3: 0000000171fc2001 CR4: 00000000003606e0
[ 1016.651687] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[ 1016.651690] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[ 1016.651693] Call Trace:

Sorry for the confusion. From the context it appears that the second parameter
of per_file_stats() may be NULL, though I am not entirely sure if I got that
correctly.

> Is there a reason you are using this slow debugfs in the first place?

AFAICS ChromeOS is using the information to calculate graphics memory use.

Guenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
