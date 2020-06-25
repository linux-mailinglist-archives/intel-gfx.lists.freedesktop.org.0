Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 662DF209AD8
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 09:57:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7FAF6E4B0;
	Thu, 25 Jun 2020 07:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7103F6E4B0
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 07:57:29 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id l2so3437047wmf.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 00:57:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=76jtp+TwB1a1n9n3LirBRf2c/ErzhfeJSIfA3xs53ow=;
 b=rr9xG2O7sJSbZtGl5gHvWYHVw8IDZNU1CaNWoa+gtwvsg6VXmPmTbkMC0YYo0sgguk
 q7CNCEK9+D+gzfv6lVvHl5wp4YXEC2lfuuNufejIZ3srqYreN4a8vg0Kvkpaj/v9dyCg
 VAEJRDid/eN044iojfrcedtkyA5HOj2H0bWFFEeBSHqPsQVI/LIWtdOTxCYE4C0oAtbK
 rR882ZsF4QAhcyoBo2O7aFzXdl8Kma6iVAzG7CrHcoO8aD5psBzCNUMYfeFKre7zJS+e
 5edee31GRT6CRV+B0tGRml1P6OtqHL7mgEMmdbDPIQ+V2oOWKlelauS74zGHgLhGuY6S
 z5cA==
X-Gm-Message-State: AOAM530Y6BU18vOuwbnPpAlujZuRcSqk4UqQg73vjPbTeR6EoSBcc/MM
 yWn3TfeNYMZFWs7QCY8OkkA=
X-Google-Smtp-Source: ABdhPJyVo3sL23V3dy9eVB9kTVhLyIFLY0vrnH4sSiseICByNWKLZD2sZsGnuyHw9krpXFUV9RdZSQ==
X-Received: by 2002:a7b:c208:: with SMTP id x8mr1973927wmi.49.1593071847972;
 Thu, 25 Jun 2020 00:57:27 -0700 (PDT)
Received: from localhost (ip-37-188-168-3.eurotel.cz. [37.188.168.3])
 by smtp.gmail.com with ESMTPSA id n16sm24012639wrq.39.2020.06.25.00.57.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 00:57:27 -0700 (PDT)
Date: Thu, 25 Jun 2020 09:57:25 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200625075725.GC1320@dhcp22.suse.cz>
References: <20200624191417.16735-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200624191417.16735-1-chris@chris-wilson.co.uk>
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
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed 24-06-20 20:14:17, Chris Wilson wrote:
> A general rule of thumb is that shrinkers should be fast and effective.
> They are called from direct reclaim at the most incovenient of times when
> the caller is waiting for a page. If we attempt to reclaim a page being
> pinned for active dma [pin_user_pages()], we will incur far greater
> latency than a normal anonymous page mapped multiple times. Worse the
> page may be in use indefinitely by the HW and unable to be reclaimed
> in a timely manner.
> =

> A side effect of the LRU shrinker not being dma aware is that we will
> often attempt to perform direct reclaim on the persistent group of dma
> pages while continuing to use the dma HW (an issue as the HW may already
> be actively waiting for the next user request), and even attempt to
> reclaim a partially allocated dma object in order to satisfy pinning
> the next user page for that object.

You are talking about direct reclaim but this path is shared with the
background reclaim. This is a bit confusing. Maybe you just want to
outline the latency in the reclaim which is more noticeable in the
direct reclaim to the userspace. This would be good to be clarified.

How much memory are we talking about here btw?

> It is to be expected that such pages are made available for reclaim at
> the end of the dma operation [unpin_user_pages()], and for truly
> longterm pins to be proactively recovered via device specific shrinkers
> [i.e. stop the HW, allow the pages to be returned to the system, and
> then compete again for the memory].

Is the later implemented?

Btw. overall intention of the patch is not really clear to me. Do I get
it right that this is going to reduce latency of the reclaim for pages
that are not reclaimable anyway because they are pinned? If yes do we
have any numbers for that.

It would be also good to explain why the bail out is implemented in
try_to_unmap rather than shrink_shrink_page_list.

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Jan Kara <jack@suse.cz>
> Cc: J=E9r=F4me Glisse <jglisse@redhat.com>
> Cc: John Hubbard <jhubbard@nvidia.com>
> Cc: Claudio Imbrenda <imbrenda@linux.ibm.com>
> Cc: Jan Kara <jack@suse.cz>
> Cc: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
> Cc: Jason Gunthorpe <jgg@ziepe.ca>
> ---
> This seems perhaps a little devious and overzealous. Is there a more
> appropriate TTU flag? Would there be a way to limit its effect to say
> FOLL_LONGTERM? Doing the migration first would seem to be sensible if
> we disable opportunistic migration for the duration of the pin.
> ---
>  mm/rmap.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> =

> diff --git a/mm/rmap.c b/mm/rmap.c
> index 5fe2dedce1fc..374c6e65551b 100644
> --- a/mm/rmap.c
> +++ b/mm/rmap.c
> @@ -1393,6 +1393,22 @@ static bool try_to_unmap_one(struct page *page, st=
ruct vm_area_struct *vma,
>  	    is_zone_device_page(page) && !is_device_private_page(page))
>  		return true;
>  =

> +	/*
> +	 * Try and fail early to revoke a costly DMA pinned page.
> +	 *
> +	 * Reclaiming an active DMA page requires stopping the hardware
> +	 * and flushing access. [Hardware that does support pagefaulting,
> +	 * and so can quickly revoke DMA pages at any time, does not need
> +	 * to pin the DMA page.] At worst, the page may be indefinitely in
> +	 * use by the hardware. Even at best it will take far longer to
> +	 * revoke the access via the mmu notifier, forcing that latency
> +	 * onto our callers rather than the consumer of the HW. As we are
> +	 * called during opportunistic direct reclaim, declare the
> +	 * opportunity cost too high and ignore the page.
> +	 */
> +	if (page_maybe_dma_pinned(page))
> +		return true;

I do not understand why the page table walk needs to be done. The page
is going to be pinned no matter how many page tables are mapping it
right?

> +
>  	if (flags & TTU_SPLIT_HUGE_PMD) {
>  		split_huge_pmd_address(vma, address,
>  				flags & TTU_SPLIT_FREEZE, page);
> -- =

> 2.20.1

-- =

Michal Hocko
SUSE Labs
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
