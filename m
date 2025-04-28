Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A20A9FA07
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 21:57:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BEEA10E24A;
	Mon, 28 Apr 2025 19:57:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="D+PYCeCV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A80A10E6F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Apr 2025 19:57:14 +0000 (UTC)
Received: by mail-qt1-f182.google.com with SMTP id
 d75a77b69052e-47681dba807so6231cf.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Apr 2025 12:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1745870233; x=1746475033;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KUGna70WQpCWkTeNNt6g447tdKBI53CPsya1LM9jehw=;
 b=D+PYCeCVaxQ33uTfJDj82FwVZoY3AIsveLEZzRCbSvul1hb+emoJiN3BMjvJCk/BRV
 E3D54Bd1O0I8lDRCTdug0WPxT9pZ1ZRHGP8Wo9ZgKWV2Dvofbk1LtzQjK79I7V4ScEYm
 mhYhO0Q7JC+N6CubUg6nOucU6s6iF0bDZkqFVt0813FSYroGkjVMeFjk8SXgB0dJnhOv
 jz8BCFIG+hPTQL1cxjguaZfqaEX8C3jdLarOJNt99mFt1+nG4X1EsX6TV9oUvOVTV/DT
 PlyXBOUX4/0UWSyuTjOL5xpm0Y1tzezkRKPxDLOqN/hz8F/T2GRA8D/EFST//BuisZsP
 QfDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745870233; x=1746475033;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KUGna70WQpCWkTeNNt6g447tdKBI53CPsya1LM9jehw=;
 b=IkoIo5sSm6R9PbeOj0qPKA6i6weFbm7btyKPdk+NtaDeaUTxAzR5lLRBHzopdRaR1f
 1HdNxh4PD/fo4c4sCrG4SkI7NQ9v888sDDDQj9Chrr9YUF8ynfqFCQesxnKxkD2KK71n
 vGPPzp8RXiq5Bpm9jNstx+2olfdmUv5u3Y5oyOaszaHgYYdtw5b6tgxmrkp20REZioee
 qylxjoBfji2nuBs60wC0Uc+PeVpPR5zxYj62JZcED1eDVGc9/0taNmIjuSDjtdUE7TPx
 mvaq5MLAfC1E9npIsnATOchpi92Dpe+zLKEd0U0DdlCV4sYXkdn8yHQTOE6bFoZ9lGM7
 ICyg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWr35i7OfFW7k4dpx47UEvU4J3y2TNuVUn3nvXhnTeK7Ce45qz/BXnebpoyOzlBvTXhw572aUcnFsA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YziJAndHXE+vvuo36t51ZDcVuHO5NQOJrN2Uf1sBRYaHDO72k95
 4KQIuoshwOr3/W7HhFqfVNSCjUiWJ0XzTa1IiNwK2denVKPXv8pUVisBJhTcXylcMHL4aNerp2z
 LcXFcPBg0545O2snlfK8IW4eoWAWW+NiiTeht
X-Gm-Gg: ASbGncu64BxcIIlGh6evJzc0Qt5wBFgZCOkQO3753ecz/p4i5UuKS45ZpLAS/jMmId5
 EGp0Qo0BbYT2Pa2R2jsf9dKj4woPWB1TI7UnRSoW7M9TMmRAM9JObsYAwaXoGJAxbiuOOS7AYM7
 ACkHmWMtSbMWOW9QCphek6
X-Google-Smtp-Source: AGHT+IEhejaHFThaKwhJCfo8/xHV6yGo88io+XsVdICYQukFeW24MAIkT6Fi1xOMkVwdW/FKQmmwSk2eKpS9NWkWZlM=
X-Received: by 2002:a05:622a:452:b0:480:1561:837f with SMTP id
 d75a77b69052e-4885aacab9cmr871171cf.8.1745870232933; Mon, 28 Apr 2025
 12:57:12 -0700 (PDT)
MIME-Version: 1.0
References: <20250425081715.1341199-1-david@redhat.com>
 <20250425081715.1341199-6-david@redhat.com>
 <aAvvQ1h9bg11hiqI@x1.local> <bbadf008-9ffc-4628-9809-2d8cf104a424@redhat.com>
 <aA-n9hvSX9JLsRM-@x1.local> <7a26e29c-d889-450a-a5e1-ce671f09e4c8@redhat.com>
 <aA-rtji7ujQgckbM@x1.local> <884fab29-e16a-4663-8e33-885bc70ca2f7@redhat.com>
 <f08118b3-0736-4a5d-b780-8e3d88f45c02@lucifer.local>
In-Reply-To: <f08118b3-0736-4a5d-b780-8e3d88f45c02@lucifer.local>
From: Suren Baghdasaryan <surenb@google.com>
Date: Mon, 28 Apr 2025 12:57:02 -0700
X-Gm-Features: ATxdqUFN4dSm5xUeBut-iPBeU1VBNXf3LtoK4Lvt9a17IgRXhS8pQBx8VXvr8KE
Message-ID: <CAJuCfpEtnBrAkSV-6PDv4Au5gs02vWYeMNHo3OxZb8NB0sy8cw@mail.gmail.com>
Subject: Re: [PATCH v1 05/11] mm: convert VM_PFNMAP tracking to pfnmap_track()
 + pfnmap_untrack()
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: David Hildenbrand <david@redhat.com>, Peter Xu <peterx@redhat.com>,
 linux-kernel@vger.kernel.org, 
 linux-mm@kvack.org, x86@kernel.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-trace-kernel@vger.kernel.org, 
 Dave Hansen <dave.hansen@linux.intel.com>, Andy Lutomirski <luto@kernel.org>, 
 Peter Zijlstra <peterz@infradead.org>, Thomas Gleixner <tglx@linutronix.de>, 
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Andrew Morton <akpm@linux-foundation.org>, 
 Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>,
 Jann Horn <jannh@google.com>, Pedro Falcato <pfalcato@suse.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 28, 2025 at 12:37=E2=80=AFPM Lorenzo Stoakes
<lorenzo.stoakes@oracle.com> wrote:
>
> On Mon, Apr 28, 2025 at 07:23:18PM +0200, David Hildenbrand wrote:
> > On 28.04.25 18:24, Peter Xu wrote:
> > > On Mon, Apr 28, 2025 at 06:16:21PM +0200, David Hildenbrand wrote:
> > > > > Probably due to what config you have.  E.g., when I'm looking min=
e it's
> > > > > much bigger and already consuming 256B, but it's because I enable=
d more
> > > > > things (userfaultfd, lockdep, etc.).
> > > >
> > > > Note that I enabled everything that you would expect on a productio=
n system
> > > > (incld. userfaultfd, mempolicy, per-vma locks), so I didn't enable =
lockep.
> > >
> > > I still doubt whether you at least enabled userfaultfd, e.g., your pr=
evious
> > > paste has:
> > >
> > >    struct vm_userfaultfd_ctx  vm_userfaultfd_ctx;   /*   176     0 */
> > >
> > > Not something that matters.. but just in case you didn't use the expe=
cted
> > > config file you wanted to use..
> >
> > You're absolutely right. I only briefly rechecked for this purpose here=
 on
> > my notebook, and only looked for the existence of members, not expectin=
g
> > that we have confusing stuff like vm_userfaultfd_ctx.
> >
> > I checked again and the size stays at 192 with allyesconfig and then
> > disabling debug options.
>
> I think a reasonable case is everything on, except CONFIG_DEBUG_LOCK_ALLO=
C and I
> don't care about nommu.

I think it's safe to assume that production systems would disable
lockdep due to the performance overhead. At least that's what we do on
Android - enable it on development branches but disable in production.

>
> So:
>
> CONFIG_PER_VMA_LOCK
> CONFIG_SWAP
> CONFIG_MMU (exclude the nommu vm_region field)
> CONFIG_NUMA
> CONFIG_NUMA_BALANCING
> CONFIG_PER_VMA_LOCK
> CONFIG_ANON_VMA_NAME
> __HAVE_PFNMAP_TRACKING
>
> So to be clear - allyesconfig w/o debug gives us this yes? And we don't a=
dd a
> cache line? In which case all good :)
>
>
> >
> > --
> > Cheers,
> >
> > David / dhildenb
> >
>
