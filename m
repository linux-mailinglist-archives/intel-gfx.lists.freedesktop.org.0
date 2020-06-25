Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A93220CEBB
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 15:14:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FEBE6E02A;
	Mon, 29 Jun 2020 13:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com
 [IPv6:2a00:1450:4864:20::641])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F236EBF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 16:32:47 +0000 (UTC)
Received: by mail-ej1-x641.google.com with SMTP id w16so6581722ejj.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 09:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9u1owb98wt1rgpllIsg8TqO/K5Zij7HRxC2lX5Y95rM=;
 b=FbO+5/p0HCLuFIg2S0AOrDg23Sy86SuXq4Dj+c6XGdH5TLqJ9GNhDQB6EJ80jsNha7
 WL3Tzu4KE4o1Ev8zhRwEwqIoE+Dq7+wIquVm+oeTyIdI4PyWXkJBcxwP5jKCi6fskgb+
 Y+oPtD8P6WEjFKuqMlBgw4CiF2HufhMBolAIY61YiGpfTDSDbN2DMApoB3yGNTymywy2
 laqUxXpD281N9g2NLNRw9I1hwyIgKzX9gZS6NjSwAQVoCH/tvO6h7KpVXzBHi8TxfvPb
 tGRHEXC1ey6mvARCYX6Eg2WhxqpYGV0xPozs9A9yxArEqxmFHGLMZuuUcgE5gRxO/4+m
 XSQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9u1owb98wt1rgpllIsg8TqO/K5Zij7HRxC2lX5Y95rM=;
 b=LHM7PY1bdA+8W0DduS3maTZsZThfs5cTcTG13+oD1iC979UI4KZB7jIXhuS6ETG+ZA
 rNGpMieRj9YmeGYu58mJVwa/xpuOtCWj+apAj0Z3/I0iuD69YQ//5MV3wqxb3wAptHev
 w//4a0p/cpnvw9D3eYSK2/KZGOqk1IQjBlgica8snBEvzUQcJGUf9gOD1qQ0PCGmI++F
 lkHWhJzuNCidL+rqnwfIAzj9JVXaRDHKVu2X9WR4kfWn0kY5hFUY2/GwR8MTz6OZJSv8
 ADNvnHF7l9p246YoxRnF/aRX1+fvAFq0/hBAOBHpTaCahlgobXbKWvGBMRZ8I78moJ8k
 S+6Q==
X-Gm-Message-State: AOAM532lu3TGIlJb8rnQtn8c9xq4s6nVunkXwfReJ8172rDqQiLU8QXe
 9Ps58ReVpMmC3v5zdonyTlR6oIo/kiDKDtD4C0U=
X-Google-Smtp-Source: ABdhPJxCQ59rjR5ytah0ieuIxKCiuojtjkelpJ5yQw9SkARvH/ShawMVo6l3ItgeCk3XW3XYiA8pvKX6fQdv0er+1CE=
X-Received: by 2002:a17:906:5496:: with SMTP id
 r22mr31614377ejo.449.1593102766231; 
 Thu, 25 Jun 2020 09:32:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200624191417.16735-1-chris@chris-wilson.co.uk>
 <20200625114209.GA7703@casper.infradead.org>
In-Reply-To: <20200625114209.GA7703@casper.infradead.org>
From: Yang Shi <shy828301@gmail.com>
Date: Thu, 25 Jun 2020 09:32:34 -0700
Message-ID: <CAHbLzkqBJWx89tTSPXjCzMG8=2OGQSmzPNjhqZv55surP8oFCQ@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
X-Mailman-Approved-At: Mon, 29 Jun 2020 13:14:32 +0000
Subject: Re: [Intel-gfx] [PATCH] mm: Skip opportunistic reclaim for dma
 pinned pages
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
Cc: Jan Kara <jack@suse.cz>, Jason Gunthorpe <jgg@ziepe.ca>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Linux MM <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 25, 2020 at 4:42 AM Matthew Wilcox <willy@infradead.org> wrote:
>
> On Wed, Jun 24, 2020 at 08:14:17PM +0100, Chris Wilson wrote:
> > A side effect of the LRU shrinker not being dma aware is that we will
> > often attempt to perform direct reclaim on the persistent group of dma
> > pages while continuing to use the dma HW (an issue as the HW may already
> > be actively waiting for the next user request), and even attempt to
> > reclaim a partially allocated dma object in order to satisfy pinning
> > the next user page for that object.
> >
> > It is to be expected that such pages are made available for reclaim at
> > the end of the dma operation [unpin_user_pages()], and for truly
> > longterm pins to be proactively recovered via device specific shrinkers
> > [i.e. stop the HW, allow the pages to be returned to the system, and
> > then compete again for the memory].
>
> Why are DMA pinned pages still on the LRU list at all?  I never got an
> answer to this that made sense to me.  By definition, a page which is
> pinned for DMA is being accessed, and needs to at the very least change
> position on the LRU list, so just take it off the list when DMA-pinned
> and put it back on the list when DMA-unpinned.

Sounds reasonable to me. In the earlier email I suggested skip isolate
dma pinned page in scan phase, but if they are long term pinned, it
seems preferred to put them on the unevictable lru IMHO.

>
> This overly complex lease stuff must have some reason for existing, but
> I still don't get it.
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
