Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A730C327A57
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 10:05:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BB0E6E527;
	Mon,  1 Mar 2021 09:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 043CF6E526
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 09:05:41 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id 7so15253516wrz.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Mar 2021 01:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=cVbwaILawr8VFjKUKwesruDRur2V1zj4ivYNWTbHSSk=;
 b=BZfedt8pZjPTo5WI0bg6pW9A+sh/sGhTCalJ3ZYZK41IyQfNQcFaAUUpOcbKUO4MDM
 5W8Euj0XmnMnhOIZXWHMLTFMJzdhto7V00oQF/Ma14cTU98ee9/fUVZJy7Zg5FwX2TtA
 Go7BWlZnS0BoTZyrQ9sinmcNCgRkLtZnbTDpc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=cVbwaILawr8VFjKUKwesruDRur2V1zj4ivYNWTbHSSk=;
 b=Jx1TChQt3nZ6AB1mHzZ+U4Jk5GZRy5sIttSleLFv8E+Asf8XbsdQrZNUuwvKOq7a6I
 RavbU3bFoX7+cL7MkMCG+klPDTYKQ63NUgDE0/lbvmSTiFsSUvEYUIAz0HEB60981zME
 nTCFlpqvf6cCF5Boh9OczpsF5zA31BdRfHOjpbD3We3Qn+FujnULu52DULgIEKvOqAPU
 N6HMRGn5Vuhrs228Rw5CnALo+h3qZ4/Ef4WUolXwrXD4eEwgCzf4TUFTrd7kCCwYTxN8
 QxU+u2d76aY8a920Mmdc6GAd0ciP9aWVHYEQb/fM/fAUVwwY+wpJWJ7UyDZ2G21Lig+L
 l/hw==
X-Gm-Message-State: AOAM531WJqtr9m5NEHEJ1jha0hXLZM9+VzwoAXJFsQJ4XmKHsWUiAJF5
 RYyn0ntsWSfaj+BkmqIOO/qMAQ==
X-Google-Smtp-Source: ABdhPJwbxk9JTsmEAmPPb6Sdkee8KtxRRRHjT6lI6Dvpux7/UqbYuCRW2gXVLVTMIID9pGDYw8LWZQ==
X-Received: by 2002:adf:e8c9:: with SMTP id k9mr15735421wrn.315.1614589540614; 
 Mon, 01 Mar 2021 01:05:40 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j16sm1090049wmi.2.2021.03.01.01.05.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 01:05:40 -0800 (PST)
Date: Mon, 1 Mar 2021 10:05:38 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <YDyuYk8x5QeX83s6@phenom.ffwll.local>
References: <f43311c8-a02a-1a29-a53b-88e599c92187@shipmail.org>
 <CAKMK7uE2UrOruQPWG9KPBQ781f9Bq9xpVRNserAC9BZ2VzDutQ@mail.gmail.com>
 <b30dacb0-edea-0a3c-6163-0f329e58ba61@gmail.com>
 <YDd/hlf8uM3+lxhr@phenom.ffwll.local>
 <CAKMK7uFezcV52oTZbHeve2HFFATeCGyK6zTT6nE1KVP69QRr0A@mail.gmail.com>
 <61c5c371-debe-4ca0-a067-ce306e51ef88@shipmail.org>
 <CAKMK7uFUiJyMP0E5JUzMOx=NyMW+ZObGsaFOh409x0LOvGbnzg@mail.gmail.com>
 <0d69bd00-e673-17cf-c9e3-ccbcd52649a6@shipmail.org>
 <CAKMK7uE=8+hj-MUFXHFoG_hAbz_Obi8a99+DE5_d1K+KZaG+tQ@mail.gmail.com>
 <b367b7e8-f202-4d23-d672-a5c9bc7fcec1@shipmail.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b367b7e8-f202-4d23-d672-a5c9bc7fcec1@shipmail.org>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH 1/2] dma-buf: Require
 VM_PFNMAP vma for mmap
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 01, 2021 at 09:39:53AM +0100, Thomas Hellstr=F6m (Intel) wrote:
> Hi,
> =

> On 3/1/21 9:28 AM, Daniel Vetter wrote:
> > On Sat, Feb 27, 2021 at 9:06 AM Thomas Hellstr=F6m (Intel)
> > <thomas_os@shipmail.org> wrote:
> > > On 2/26/21 2:28 PM, Daniel Vetter wrote:
> > > > So I think it stops gup. But I haven't verified at all. Would be go=
od
> > > > if Christian can check this with some direct io to a buffer in syst=
em
> > > > memory.
> > > Hmm,
> > > =

> > > Docs (again vm_normal_page() say)
> > > =

> > >    * VM_MIXEDMAP mappings can likewise contain memory with or without=
 "struct
> > >    * page" backing, however the difference is that _all_ pages with a=
 struct
> > >    * page (that is, those where pfn_valid is true) are refcounted and
> > > considered
> > >    * normal pages by the VM. The disadvantage is that pages are refco=
unted
> > >    * (which can be slower and simply not an option for some PFNMAP
> > > users). The
> > >    * advantage is that we don't have to follow the strict linearity r=
ule of
> > >    * PFNMAP mappings in order to support COWable mappings.
> > > =

> > > but it's true __vm_insert_mixed() ends up in the insert_pfn() path, so
> > > the above isn't really true, which makes me wonder if and in that case
> > > why there could any longer ever be a significant performance differen=
ce
> > > between MIXEDMAP and PFNMAP.
> > Yeah it's definitely confusing. I guess I'll hack up a patch and see
> > what sticks.
> > =

> > > BTW regarding the TTM hugeptes, I don't think we ever landed that dev=
map
> > > hack, so they are (for the non-gup case) relying on
> > > vma_is_special_huge(). For the gup case, I think the bug is still the=
re.
> > Maybe there's another devmap hack, but the ttm_vm_insert functions do
> > use PFN_DEV and all that. And I think that stops gup_fast from trying
> > to find the underlying page.
> > -Daniel
> =

> Hmm perhaps it might, but I don't think so. The fix I tried out was to set
> =

> PFN_DEV | PFN_MAP for huge PTEs which causes pfn_devmap() to be true, and
> then
> =

> follow_devmap_pmd()->get_dev_pagemap() which returns NULL and gup_fast()
> backs off,
> =

> in the end that would mean setting in stone that "if there is a huge devm=
ap
> page table entry for which we haven't registered any devmap struct pages
> (get_dev_pagemap returns NULL), we should treat that as a "special" huge
> page table entry".
> =

> From what I can tell, all code calling get_dev_pagemap() already does tha=
t,
> it's just a question of getting it accepted and formalizing it.

Oh I thought that's already how it works, since I didn't spot anything
else that would block gup_fast from falling over. I guess really would
need some testcases to make sure direct i/o (that's the easiest to test)
fails like we expect.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
