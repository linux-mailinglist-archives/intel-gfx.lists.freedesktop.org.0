Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF4B27F16E
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 20:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF8A6E372;
	Wed, 30 Sep 2020 18:37:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com
 [IPv6:2607:f8b0:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7946D6E5BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 18:37:36 +0000 (UTC)
Received: by mail-ot1-x32e.google.com with SMTP id u25so2820713otq.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 11:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GZokKNgMejCKfo0F2vRKE9nImzYNSzp/HUH90Pr6PJU=;
 b=Iz7k38YFYItPAO2RtiflnlRb5+BDWfPx9FQCvvU2f8SdCl7V1y7fJW6E60irWiBOlQ
 fH9GEK1n0pwT4bpaxG/cqFn7l9Zse+u3/d1Pt4ggVZd6tM3YSzezV3iBWBtU9IY/SgXQ
 GGeYqXdFFnSWXcgBytqYXCxu9xUWTpvQgSvlA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GZokKNgMejCKfo0F2vRKE9nImzYNSzp/HUH90Pr6PJU=;
 b=CxCYEsb8NAr/i76eu5mX18nH3Qr997JUkR+7KQfo9AXKnA7CMqE4mLeKOzmW4SIHdk
 0SvRb+2dhK2xk6P/CCOhM4Ys2oRGdbntbtNWrMXYeqWdr80MCIX6qMpGKXci6fZLiobw
 3PgW3TIxuHo9G6Bih3XEUo+WpDf+0xpc/rIwSd5MOeYKqj8x4nJt6c6aOrdk2wx1bjuC
 89ctdpv8r4eIGttnVTVNA9R88GT3oMfLhvOdF1G/Q9yTUiDBhT++eGGVdni3qqzzdtfN
 WdBaUi3l4Z2C+PC8YoqfWFSHe3jvkNjPzyUX1SXGXBnEkMnVkaKL+n4wgtO6iyjuML1s
 fO0A==
X-Gm-Message-State: AOAM531num7xl5VLdQSbcD49LtQhoEHZxxqF8G0bxX0i+yTFpf9JrGij
 lG6SqYcgWUjrXrd8ZhFJ5X9tdXU7d9Yco4xxRbYjyw==
X-Google-Smtp-Source: ABdhPJzmG8KuipdmIEStVjCt4k/yD8YpcM6mVrZ29T55c3684BNdLJdgOsz6wDtmq5u1TIJFW1qJF02gBOu8zFVEiX4=
X-Received: by 2002:a05:6830:14d9:: with SMTP id
 t25mr2508122otq.188.1601491055725; 
 Wed, 30 Sep 2020 11:37:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200924135853.875294-1-hch@lst.de>
 <20200925194349.d0ee9dbedb2ec48f0bfcd2ec@linux-foundation.org>
 <20200926062959.GA3427@lst.de>
 <160128801808.6464.1013594053120198786@jlahtine-mobl.ger.corp.intel.com>
 <20200928123741.GA4999@lst.de>
 <160138340987.15771.13645983702040612672@jlahtine-mobl.ger.corp.intel.com>
 <20200930144839.GA897@lst.de>
In-Reply-To: <20200930144839.GA897@lst.de>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 30 Sep 2020 20:37:24 +0200
Message-ID: <CAKMK7uE98o-ELvPZ0YVWjrVWgESVEEz5OSexA_qU64qemihyRg@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [Intel-gfx] remove alloc_vm_area v2
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
Cc: David Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Linux MM <linux-mm@kvack.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Stefano Stabellini <sstabellini@kernel.org>, X86 ML <x86@kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Peter Zijlstra <peterz@infradead.org>,
 Matthew Auld <matthew.auld@intel.com>,
 "moderated list:DRM DRIVERS FOR XEN" <xen-devel@lists.xenproject.org>,
 Nitin Gupta <ngupta@vflare.org>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 30, 2020 at 4:48 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Tue, Sep 29, 2020 at 03:43:30PM +0300, Joonas Lahtinen wrote:
> > Hmm, those are both committed after our last -next pull request, so they
> > would normally only target next merge window. drm-next closes the merge
> > window around -rc5 already.
> >
> > But, in this specific case those are both Fixes: patches with Cc: stable,
> > so they should be pulled into drm-intel-next-fixes PR.
> >
> > Rodrigo, can you cherry-pick those patches to -next-fixes that you send
> > to Dave?
>
> They still haven't made it to linux-next.  I think for now I'll just
> rebase without them again and then you can handle the conflicts for
> 5.11.

Yeah after -rc6 drm is frozen for features, so anything that's stuck
in subordinate trees rolls over to the next merge cycle. To avoid
upsetting sfr from linux-next we keep those -next branches out of
linux-next until after -rc1 again. iow, rebasing onto linux-next and
smashing this into 5.10 sounds like the right approach (since everyone
else freezes a bunch later afaik).

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
