Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1D41DE65A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 14:10:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 935C86E9A4;
	Fri, 22 May 2020 12:10:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com
 [IPv6:2607:f8b0:4864:20::a42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77CF56E9A4
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 12:10:08 +0000 (UTC)
Received: by mail-vk1-xa42.google.com with SMTP id o8so2497622vkd.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 05:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j0tD841zwFIlHTuvBXKFlqGzX8M4mq1nr2on+hlNf0c=;
 b=McEkZJIazN8SDGHWmlRUv75+8X+1+ebgBDqu3SMb1KVtz2xt01FZWzqS3nRyVBGmOS
 PDeFpcvCsMdHp6X7w/oPa3fhmL4uT4LpMorgl6QynjQiIpJoYH/D1i7xQ4oeJPLZ0Tbe
 3E2Pk4UI8loJq5OdW25lrQQ90dxEVXOC7hXPznHpEiQuAvCM3DrdZuFFFGg3a9qy6dps
 VkXnUjAbSE0FGnkf2QERJZqB2fmCfKyFRv30RZFMART0fuai2VIx5F5m5nPDEpjdaOdp
 AFb85xtX3mg2pTLjFqTtBQm8T3OxcN1yKkAS+lY6BnlwSrzeexCP4vIU9rFNsRzal5fn
 w80g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j0tD841zwFIlHTuvBXKFlqGzX8M4mq1nr2on+hlNf0c=;
 b=X4NDPZlW/W2e65bkPY+M5FYzmibkSZOjCpHy2v7MOLh5utI1yN9zac6CiLd3rwj5s/
 e7rhQz1gGu7nspVtheFcPlvhCMHZ7BVCV9QX8svuAs08T5rs4oyeQtfD9nHse0Ngxyvg
 JSOHYe9ldU9Rrc7mChyVca17xVKG5j90ywxY8PrMp4zlE3KnC2as43F9WFyytLDg3M6t
 ei9ka1Y4PqfcgDZPKVafsMeawMvCq+0RE4sjjh2mcwlcfz+pcQc+NRZvMFEOChRZtHBw
 /WOjz293h1el7juYdIA8RCFldML6DZdFZkmX58IkeBL/K/pc+l+8WB8X4leqyGl5F3FV
 AAeQ==
X-Gm-Message-State: AOAM530q4SwRGNx/2mX+HWZZRvfQaArOQVCXus2a3HTyvR2aaSnTBsae
 ZgJllJnwTbHKPVabArCFfmd4Q4nz0J2X8H3BUYE=
X-Google-Smtp-Source: ABdhPJyd/Nqqub1fEJ3EBij5SKiCEngrI0Ke7E1EFTG84WCyJ0frziHeTTjIbzxgB2YTLXoQkIPzLKJfZQwTkUM0e5g=
X-Received: by 2002:a1f:212:: with SMTP id 18mr11684572vkc.14.1590149407556;
 Fri, 22 May 2020 05:10:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200522104207.19439-1-chris@chris-wilson.co.uk>
 <159014892558.32320.14917683830875571843@build.alporthouse.com>
In-Reply-To: <159014892558.32320.14917683830875571843@build.alporthouse.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 22 May 2020 13:09:41 +0100
Message-ID: <CAM0jSHMWMNAphnoPXsKjYqja4aWPCzMttMAy8qsaq0epzbjBFA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Avoid iterating an empty list
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 22 May 2020 at 13:02, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Chris Wilson (2020-05-22 11:42:07)
> > Our __sgt_iter assumes that the scattergather list has at least one
> > element. But during construction we may fail in allocating the first
> > page, and so mark the first element as the terminator. This is
> > unexpected!
> >
> > [22555.524752] RIP: 0010:shmem_get_pages+0x506/0x710 [i915]
> > [22555.524759] Code: 49 8b 2c 24 31 c0 66 89 44 24 40 48 85 ed 0f 84 62 01 00 00 4c 8b 75 00 8b 5d 08 44 8b 7d 0c 48 8b 0d 7e 34 07 e2 49 83 e6 fc <49> 8b 16 41 01 df 48 89 cf 48 89 d0 48 c1 e8 2d 48 85 c9 0f 84 c8
> > [22555.524765] RSP: 0018:ffffc9000053f9d0 EFLAGS: 00010246
> > [22555.524770] RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffff8881ffffa000
> > [22555.524774] RDX: fffffffffffffff4 RSI: ffffffffffffffff RDI: ffffffff821efe00
> > [22555.524778] RBP: ffff8881b099ab00 R08: 0000000000000000 R09: 00000000fffffff4
> > [22555.524782] R10: 0000000000000002 R11: 00000000ffec0a02 R12: ffff8881cd3c8d60
> > [22555.524786] R13: 00000000fffffff4 R14: 0000000000000000 R15: 0000000000000000
> > [22555.524790] FS:  00007f4fbeb9b9c0(0000) GS:ffff8881f8580000(0000) knlGS:0000000000000000
> > [22555.524795] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [22555.524799] CR2: 0000000000000000 CR3: 00000001ec7f0004 CR4: 00000000001606e0
> > [22555.524803] Call Trace:
> > [22555.524919]  __i915_gem_object_get_pages+0x4f/0x60 [i915]
> >
>
> Fixes: 85d1225ec066 ("drm/i915: Introduce & use new lightweight SGL iterators")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: <stable@vger.kernel.org> # v4.8+
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
