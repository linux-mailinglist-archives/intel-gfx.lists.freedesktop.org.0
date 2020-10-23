Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD0D29718A
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 16:46:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C94BB6F896;
	Fri, 23 Oct 2020 14:46:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA4546F892
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 14:46:00 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id w191so2129647oif.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 07:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cmGjJdbt9z1UYbT5/ZpSCpz1o50MyYCTMK9AHq0Aakg=;
 b=Spx4hwCaXf34JyFBNZU5P3z2Yc6125/UltDMuzpO1FUom3Imvy74oVwjnfX6eEVi0B
 zjkOgtlhaqtz+7NG7zdnSLUt5Rs0WTD2wX6fxpxq0VZide9nyesLxotL7/nXMV4OBZYk
 nvC79EU7g32SfEqeva4RGwvPB0L1tnqWAT7KQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cmGjJdbt9z1UYbT5/ZpSCpz1o50MyYCTMK9AHq0Aakg=;
 b=fWN4oX92YXynJ1smgolOUBvRXFN8h0Z5aMU2Q3nbqjbrB4y43PkoLrpQJn0iOwttZM
 4vxFKkJYhXdlIRrHgoZSJDd6mbei+q/wJWBGnkMnz0tQY0/gqMEEleK/9Rky7FY1UcdS
 Ew6/navZnyys7MdNKRCaERqvIj5p7Qj32qwel/EgHEakBDZw1v9pv2Gmxifvp1w+IpxA
 X5uT8r8KL2P7Cd0dDWLHBu0Ic+RLJ1wxthMX2X70+wOnWK6ihFMTgI4g3stNzMHUW3d5
 U1cnxu9r/bT5o+xfINoKojZ/2sFAdQ/2up+OzN1tktjTYiZ6TqAoQEc/3OhGP0pxgKSr
 Pk0A==
X-Gm-Message-State: AOAM533g0eb1HcZLQQYDVACdo2arDc9HKNnQ8H66s7jUZfzt37bMCUTY
 8AMyCMKg4Ku6jj1oljn6yDYXMpgoPz+fRYHIwLs+sw==
X-Google-Smtp-Source: ABdhPJxzM7Q4pHq2VPzHFl40r08AFCr6VXVCJPwfsZqO2s0Hja92tgFb3rm5wRQVurhNjcBpW7T188EV4zJA1keqdEo=
X-Received: by 2002:aca:cc01:: with SMTP id c1mr2005619oig.128.1603464360217; 
 Fri, 23 Oct 2020 07:46:00 -0700 (PDT)
MIME-Version: 1.0
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-4-daniel.vetter@ffwll.ch>
 <20201023141619.GC20115@casper.infradead.org>
 <CAKMK7uESHHHzEC2U3xVKQEBZqS5xwQJeYFpwMz3b8OaoFEYcUQ@mail.gmail.com>
In-Reply-To: <CAKMK7uESHHHzEC2U3xVKQEBZqS5xwQJeYFpwMz3b8OaoFEYcUQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 23 Oct 2020 16:45:49 +0200
Message-ID: <CAKMK7uHXJhFov96un9-itsTwkatzdKqSThGpFdJuaW_G-6w5Uw@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [Intel-gfx] [PATCH 04/65] mm: Extract might_alloc() debug check
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Dave Chinner <david@fromorbit.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Christoph Lameter <cl@linux.com>, Michel Lespinasse <walken@google.com>,
 Ingo Molnar <mingo@kernel.org>, Pekka Enberg <penberg@kernel.org>,
 David Rientjes <rientjes@google.com>, Waiman Long <longman@redhat.com>,
 "Paul E . McKenney" <paulmck@kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Qian Cai <cai@lca.pw>, Thomas Gleixner <tglx@linutronix.de>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Vlastimil Babka <vbabka@suse.cz>,
 Randy Dunlap <rdunlap@infradead.org>, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 23, 2020 at 4:37 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> On Fri, Oct 23, 2020 at 4:16 PM Matthew Wilcox <willy@infradead.org> wrote:
> >
> > On Fri, Oct 23, 2020 at 02:21:15PM +0200, Daniel Vetter wrote:
> > > Note that unlike fs_reclaim_acquire/release gfpflags_allow_blocking
> > > does not consult the PF_MEMALLOC flags. But there is no flag
> > > equivalent for GFP_NOWAIT, hence this check can't go wrong due to
> > > memalloc_no*_save/restore contexts.
> >
> > I have a patch series that adds memalloc_nowait_save/restore.
>
> tbh this was a typoed git send-email, but thanks for the heads-up,
> I'll adjust the patch accordingly.

On 2nd thought I think your patch should update
gfpflags_allow_blocking to take into account the new ->memalloc_nowait
flag you're adding. I'll comment over there in that thread.
-Daniel

>
> > https://lore.kernel.org/linux-mm/20200625113122.7540-7-willy@infradead.org/
>
>
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
