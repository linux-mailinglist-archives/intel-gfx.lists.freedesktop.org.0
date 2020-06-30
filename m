Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D54120F8CD
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 17:48:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F07896E3FB;
	Tue, 30 Jun 2020 15:48:56 +0000 (UTC)
X-Original-To: intel-gfx@freedesktop.org
Delivered-To: intel-gfx@freedesktop.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com
 [IPv6:2607:f8b0:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C74AB6E3FB
 for <intel-gfx@freedesktop.org>; Tue, 30 Jun 2020 15:48:55 +0000 (UTC)
Received: by mail-pf1-x441.google.com with SMTP id u5so9600299pfn.7
 for <intel-gfx@freedesktop.org>; Tue, 30 Jun 2020 08:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kWN9Vm2wvcTHCSERyXhte4s9+6J3LnAQsx77vgZOtfA=;
 b=A9a0FEZpJdq7NaTycLwf3UoGeufUrTaUEhl2sDjlkCQArtWle6PL8J/wImoXtb5fMz
 2/IDpl/Kk6JOkF9yQixL0OJoxTdCrG2VhSo5R9/8ss0FvSa1IRkwW86ByvP+hm3eT04d
 JQd/oiQKHxq8GJSpWY23muP7FeeM/xhBX2MfuWSW5hmUDE7YEsZw6kRWs4z+vLrzpmuO
 GegWmExmDTsTMIPWhaellueTwxHmgxgztOnc31TsuEm/hhue6DLk+mna92MXl7tP0Ez1
 csfUjI9evb2lgckAq/HVpmE9JWok8B7GeqwXUZejHYp/EFfGFftoIH4xiQ/lGJ7KUyU9
 LrKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=kWN9Vm2wvcTHCSERyXhte4s9+6J3LnAQsx77vgZOtfA=;
 b=AlqdZv+iIk0x2NXEDWx0QSXkLYR26k9rd8LqNRL7g/w+25CH0YmNOHJszRQjQUQp1r
 vwY4elFD3wXaxAZ5HrHA6QOSab4KpzZ8gw/BJowKuDPgMyRnYSWF8bo0Q0S6xgu9UDi1
 SGqUTykfg8WY6bZ0bXOuSnwE01e6e+uA8XvP4/Ya0qcIsHho69aBIQYcyLkqXIo/N8Bk
 z5qEkAZngaiM2LdcatOFzxHMQAJGHs6Js340RNsU1MYzerBp68enAFnrmsW+Nsm5voxs
 MbtdB2fa6vqeRqUgHojXUWDRAAtWOI23qklcTI0Yus/650/uTFMLedUYnqibb2Lwt8h8
 GDBw==
X-Gm-Message-State: AOAM530iN3x0XKS3L4joet4TmMHVdGJ3temfBuqpw04ujFYMdXf2puBn
 YdVKmWeHW5Q7UuWqDQAktcc=
X-Google-Smtp-Source: ABdhPJwfCv1WBSRl4L4L7A4+KSRP9WvDUGBkb8+r9QvciVRgC85eGKCcnb/0y9Kb/O+ZqODVIG2cGw==
X-Received: by 2002:a62:ed02:: with SMTP id u2mr19241018pfh.283.1593532135343; 
 Tue, 30 Jun 2020 08:48:55 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id b22sm1632403pju.26.2020.06.30.08.48.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Jun 2020 08:48:54 -0700 (PDT)
Date: Tue, 30 Jun 2020 08:48:53 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200630154853.GA54681@roeck-us.net>
References: <20190903062133.27360-1-chris@chris-wilson.co.uk>
 <20200630053936.GA168021@roeck-us.net>
 <159350846525.9830.11510134258802464713@build.alporthouse.com>
 <20200630150105.GA13355@roeck-us.net>
 <159352968098.22902.15606199075854362593@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159352968098.22902.15606199075854362593@build.alporthouse.com>
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

On Tue, Jun 30, 2020 at 04:08:00PM +0100, Chris Wilson wrote:
> Quoting Guenter Roeck (2020-06-30 16:01:05)
> > On Tue, Jun 30, 2020 at 10:14:25AM +0100, Chris Wilson wrote:
> > [ ... ]
> > > > > @@ -328,9 +334,9 @@ static void print_context_stats(struct seq_file *m,
> > > > >                       struct task_struct *task;
> > > > >                       char name[80];
> > > > >  
> > > > > -                     spin_lock(&file->table_lock);
> > > > > +                     rcu_read_lock();
> > > > >                       idr_for_each(&file->object_idr, per_file_stats, &stats);
> > > > > -                     spin_unlock(&file->table_lock);
> > > > > +                     rcu_read_unlock();
> > > > >  
> > > > For my education - is it indeed possible and valid to replace spin_lock()
> > > > with rcu_read_lock() to prevent list manipulation for a list used by
> > > > idr_for_each(), even if that list is otherwise manipulated under the
> > > > spinlock ?
> > > 
> > > It's a pure read of a radixtree here, and is supposed to be RCU safe:
> > > 
> > >  * idr_for_each() can be called concurrently with idr_alloc() and
> > >  * idr_remove() if protected by RCU.  Newly added entries may not be
> > >  * seen and deleted entries may be seen, but adding and removing entries
> > >  * will not cause other entries to be skipped, nor spurious ones to be seen.
> > > 
> > > That is the tree structure is stable.
> > > 
> > Ah, that makes sense. Thanks for the clarification.
> > 
> > > > Background: we are seeing a crash with the following call trace.
> > > > 
> > > > [ 1016.651593] BUG: kernel NULL pointer dereference, address: 0000000000000000
> > > > ...
> > > > [ 1016.651693] Call Trace:
> > > > [ 1016.651703]  idr_for_each+0x8a/0xe8
> > > > [ 1016.651711]  i915_gem_object_info+0x2a3/0x3eb
> > > > [ 1016.651720]  seq_read+0x162/0x3ca
> > > > [ 1016.651727]  full_proxy_read+0x5b/0x8d
> > > > [ 1016.651733]  __vfs_read+0x45/0x1bb
> > > > [ 1016.651741]  vfs_read+0xc9/0x15e
> > > > [ 1016.651746]  ksys_read+0x7e/0xde
> > > > [ 1016.651752]  do_syscall_64+0x54/0x68
> > > > [ 1016.651758]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> > > 
> > Actually, the crash is not in idr_for_each, but in per_file_stats:
> 
> Ok, let's assume that the object is being closed as we read the idr. The
> idr will temporarily hold an error pointer for the handle to indicate the
> in-progress closure, so something like:
> 
> @@ -230,7 +230,7 @@ static int per_file_stats(int id, void *ptr, void *data)
>         struct file_stats *stats = data;
>         struct i915_vma *vma;
> 
> -       if (!kref_get_unless_zero(&obj->base.refcount))
> +       if (IS_ERR_OR_NULL(obj) || !kref_get_unless_zero(&obj->base.refcount))
>                 return 0;
> 
Makes sense. Thanks a lot for the patch!

Guenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
