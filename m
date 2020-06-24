Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FB620CEC3
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 15:15:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D50C6E23B;
	Mon, 29 Jun 2020 13:15:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com
 [IPv6:2a00:1450:4864:20::644])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 026BA89F3C
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 20:23:15 +0000 (UTC)
Received: by mail-ej1-x644.google.com with SMTP id mb16so3749639ejb.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 13:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3N8Iq+jMa7Wr2bmXCR98pNboSajMlgVPuPMQP9CFTnI=;
 b=gsLANbH8oUM6Oqn4g+49U/gczDfj3IaDXZ4bdqAM970FR1Kzectrc0SAtNLpsQY0LF
 JrlPKLo+goWwEjS3lM+M4CiRFku+WAyJCHeZKt8JxtukWcMI1AlskIDY8bRU6xfll5JQ
 XEvJ7WrIDuTPmB/Q+e3RtTXXOV9jZMPybKMGzBGZdgkOAofL1rY6yrLx0AkYkFvl0LrR
 vM55HjIBf9SnCeu26+5a4DmCplfZH797uDptMTtp7UwjTGM0qKFaPsGMDtD83p29fAPd
 g/7B9Efx/ARDqWtNzohLVDa6iG/gtZ4PBo3rSCtCXq7uMEp+BNPAZ167Fdm/Z/uvTmum
 NzAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3N8Iq+jMa7Wr2bmXCR98pNboSajMlgVPuPMQP9CFTnI=;
 b=K+RUPDaII5stDLyJztwbYgkdzl5gJglevcOts5RLUmLs11gnpwxtcMQbtXRgs7oC6O
 MOHNWKxadAm0jczLPEQoVRNXqKYhU8C8+VPm+NN3cehRrWiA7Anmq48a1mr/zWanY65b
 XE6yK9SSdwPu49q6ZcVovM7bSlAEa+HOLfF1Gn7A3j7wqliIdKoMKYmUUik7Z7dPXkOJ
 TMBcsmjrlQYHvKEhysVvQEOnR5DQyrtqNOLNT81kdqg81kqS1l5qRmByNKN/z4oANFUr
 +ys8E5gvl80VoCsoV6gPOOr3mavyTFrZYUTOd1Qokqns5aZ8lKVh9IIDOMGKU7K4UYSc
 hD2w==
X-Gm-Message-State: AOAM531xm8FrchwCqjchUT5bMR2dSaqUBP5Ug+xGnBBLfKylFVNqzs8K
 2iawXmQRA23VQVO6mC2vYGjjxMliBZ06EN0qE/4=
X-Google-Smtp-Source: ABdhPJyZ0A3i4KIhrEMZ2Pt4CNQKY0ZyDPCM7n8IH+lqiA4Y4W2gkj1dII1B79yKWD+r3QyLP7FE2RgA1MTiJtGowBs=
X-Received: by 2002:a17:907:2058:: with SMTP id
 pg24mr18819307ejb.79.1593030194663; 
 Wed, 24 Jun 2020 13:23:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200624191417.16735-1-chris@chris-wilson.co.uk>
 <20200624192116.GO6578@ziepe.ca>
In-Reply-To: <20200624192116.GO6578@ziepe.ca>
From: Yang Shi <shy828301@gmail.com>
Date: Wed, 24 Jun 2020 13:23:02 -0700
Message-ID: <CAHbLzkoy2kz7yirch7t9ruzJjNTyCCZHJFZst7OEz_DdmQyaaA@mail.gmail.com>
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

On Wed, Jun 24, 2020 at 12:21 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Wed, Jun 24, 2020 at 08:14:17PM +0100, Chris Wilson wrote:
> > A general rule of thumb is that shrinkers should be fast and effective.
> > They are called from direct reclaim at the most incovenient of times when
> > the caller is waiting for a page. If we attempt to reclaim a page being
> > pinned for active dma [pin_user_pages()], we will incur far greater
> > latency than a normal anonymous page mapped multiple times. Worse the
> > page may be in use indefinitely by the HW and unable to be reclaimed
> > in a timely manner.
>
> A pinned page can't be migrated, discarded or swapped by definition -
> it would cause data corruption.
>
> So, how do things even get here and/or work today at all? I think the
> explanation is missing something important.

The __remove_mapping() will try to freeze page count if the count is
expected otherwise just not discard the page. I'm not quite sure why
the check is done that late, my wild guess is to check the refcount at
the last minute so there might be a chance the pin gets released right
before it.

But I noticed a bug in __remove_ampping() for THP since THP's dma
pinned count is recorded in the tail page's hpage_pinned_refcount
instead of refcount. So, the refcount freeze might be successful for
pinned THP.  Chris's patch could solve this issue too, but I'm not
sure if it is worth backing earlier once dma pinned page is met. If it
is worth, the follow-up question is why not just skip such page in
scan phase?

>
> Jason
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
