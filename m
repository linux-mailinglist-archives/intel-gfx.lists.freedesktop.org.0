Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE5520CEB8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 15:14:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D36C89FE3;
	Mon, 29 Jun 2020 13:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com
 [IPv6:2a00:1450:4864:20::642])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 217BA6E878
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 21:02:21 +0000 (UTC)
Received: by mail-ej1-x642.google.com with SMTP id w16so3846653ejj.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 14:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q65HneRMVLhdg5SVAjawRKs3e4Na9FxPWBLgo8PD4DM=;
 b=C0Do7bcUEx1h891atQwx7sZfQK/co/oG5+keMt+dphDsjEoV7ElA4VRaEUwwl2WyPx
 jHFcXosSdWbwdjNXrPQxg54FGXbeidn6T6UwSBKPV2zT/kEGYOLm5PlqKumfRtYP19XB
 0J/jcMXrC4Bvk7fpoY5iO0GjQIkfjaxC6VxlizzfQF+Y9EcaBcxNMfroMIR9v5Ekv71/
 lqrH5fypCSpjQRp6EM5ptJLlTafD3hlK1WfBrk2cGJTLj00RpS7NPn+q2RVmbQCAq1y4
 jAV+g8VmpC+rw49LdR13HpfUq3/5A0BanSQd8KUpiKvr3x+RuDFX8cl8khwrrvvTC7SR
 MVNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q65HneRMVLhdg5SVAjawRKs3e4Na9FxPWBLgo8PD4DM=;
 b=nweHZXyDLx6s3A07BaMUlPsxJ2DXZhPRh8LohCPNO+Wl+6F9y4U+DrbtOQWzHCbHxg
 oQ1ivUBMclqXY+WkX1wvtSjxzfWq/ST45rAPkL0WCaa9/uzHHRYRMTIpc5AgRmGvV6b3
 eoaLwbHoZx73U1Gclxup4vSCrf/UmmhsLqtJ81uGgKxB1nqNDW5ssecwC/moHQfvlljt
 tLe9lq5NJJ5OIaDGr9//GndRVGBQhvQfuVQz/edqYjqGe8vbGNaDHg1YEyanT4XxGvM4
 /3hR7e/04337ZsXsCCjL8RLCNa296BxAIfowrnkclWDiqBrH3TT21Qy3lAATxerpPxiQ
 2V2w==
X-Gm-Message-State: AOAM5311FpmK1UcDn1Vo7DZQcJky6lxCkwospDFXnU2OKyeyNbjLAd/9
 7elCDPYgZMGjuCHmuBl4igtBhuwlSC0VMX0L1ks=
X-Google-Smtp-Source: ABdhPJxMbkTVZFeqafVKJn8HY0wcCBMIsoXT8hVjSV2RB0oGms2P5ENEgkeFqhXyUNeyiMWdtYbU3LLL5pFCTAlnd2s=
X-Received: by 2002:a17:906:7751:: with SMTP id
 o17mr28009624ejn.111.1593032539710; 
 Wed, 24 Jun 2020 14:02:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200624191417.16735-1-chris@chris-wilson.co.uk>
 <20200624192116.GO6578@ziepe.ca>
 <CAHbLzkoy2kz7yirch7t9ruzJjNTyCCZHJFZst7OEz_DdmQyaaA@mail.gmail.com>
In-Reply-To: <CAHbLzkoy2kz7yirch7t9ruzJjNTyCCZHJFZst7OEz_DdmQyaaA@mail.gmail.com>
From: Yang Shi <shy828301@gmail.com>
Date: Wed, 24 Jun 2020 14:02:07 -0700
Message-ID: <CAHbLzkomoxKE73SgZvRD0cLELBtx71jx+g07zZ5YMajUPPcRLw@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
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
Cc: Jan Kara <jack@suse.cz>, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org,
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

On Wed, Jun 24, 2020 at 1:23 PM Yang Shi <shy828301@gmail.com> wrote:
>
> On Wed, Jun 24, 2020 at 12:21 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> >
> > On Wed, Jun 24, 2020 at 08:14:17PM +0100, Chris Wilson wrote:
> > > A general rule of thumb is that shrinkers should be fast and effective.
> > > They are called from direct reclaim at the most incovenient of times when
> > > the caller is waiting for a page. If we attempt to reclaim a page being
> > > pinned for active dma [pin_user_pages()], we will incur far greater
> > > latency than a normal anonymous page mapped multiple times. Worse the
> > > page may be in use indefinitely by the HW and unable to be reclaimed
> > > in a timely manner.
> >
> > A pinned page can't be migrated, discarded or swapped by definition -
> > it would cause data corruption.
> >
> > So, how do things even get here and/or work today at all? I think the
> > explanation is missing something important.
>
> The __remove_mapping() will try to freeze page count if the count is
> expected otherwise just not discard the page. I'm not quite sure why
> the check is done that late, my wild guess is to check the refcount at
> the last minute so there might be a chance the pin gets released right
> before it.
>
> But I noticed a bug in __remove_ampping() for THP since THP's dma
> pinned count is recorded in the tail page's hpage_pinned_refcount
> instead of refcount. So, the refcount freeze might be successful for
> pinned THP.  Chris's patch could solve this issue too, but I'm not

This bug is not valid. I just realized try_grab_page() would increase
both refcount and hpage_pinned_refcount.

> sure if it is worth backing earlier once dma pinned page is met. If it
> is worth, the follow-up question is why not just skip such page in
> scan phase?
>
> >
> > Jason
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
