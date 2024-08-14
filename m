Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFC0951501
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2024 09:10:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E8C10E41A;
	Wed, 14 Aug 2024 07:10:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="BnI6IZ/Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CAEC10E0A3
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2024 07:10:49 +0000 (UTC)
Received: by mail-lf1-f54.google.com with SMTP id
 2adb3069b0e04-53212a805c4so303542e87.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2024 00:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1723619447; x=1724224247; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=L009pugR3zZsWpNfGU81RRmQUSZUEj3DLYLLNMmbkfo=;
 b=BnI6IZ/Z8gy14dJqtbc7gXgNwnrNr9ymhY1GhRcWGrkRyxBasCwB+oJdLkRa7C7Aao
 zjHoZbyMn/FLr+J6DtXc1JoQDF2RM5gOT9+DFnatnDtdp0x88UKgLzDwZn4V8g4mCdtk
 gKR3STjOwM9pGn13sbL8VxR89CiAWVBPqlkgI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723619447; x=1724224247;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=L009pugR3zZsWpNfGU81RRmQUSZUEj3DLYLLNMmbkfo=;
 b=uQjtAT6taXBrJDvUYXjTadc9opfgdQnlgOkWaxVn4N91MGJ8GCQ/tQowQ+ydARCT6l
 n3UUIxXrnC5vwlbrn0p3g9rZ+PoD5+tr6VZc2T9SXKev7tKTHEHWSBMxhEjmYYalY4RF
 5caz2wpF276zKY3khRHEBKFrngM2KXgG2KRFeQISQj/cBaCcvQEC1aIWTnJCJGwTkXcR
 DeXPjVjDHVDDQqPg0elMT/DcIyQDiLGJ2gcXTNr8doLReUNeAr3goNm5LcPNXovpd/Hd
 H194U9v3yvqL3i33IDexzoRRHAoDfw2Zkqhk/oBPKfZ064JiClWzDRZilOIbTOfs+i7T
 +P+w==
X-Forwarded-Encrypted: i=1;
 AJvYcCU35kRbupXh7KfI/29WEorEcZKRPLFpblHEOAtMMw5fOk+5xjgD/efkjf3ANie3QUv/dNs4mIB4bTGMSbTfnOE5KyLDzHsU/Uqv0p2GjVEz
X-Gm-Message-State: AOJu0Yw51LtI8tXQOaosijZHaNfnT4R88TYysrs45NikIqyCKkGUFfqw
 anjmmruzfnUCI8iA4NDRWkZWsP9sPsVgEcX3xrOgtWpNzt3sfEO9FrKPVQgszm4=
X-Google-Smtp-Source: AGHT+IFJ0T+6ZPjrLE9RUkWiG7ivjV/AsZbBIxfzoGlMEd+h35WslR/zOFqPc/9Ohv4TR8VAErYwow==
X-Received: by 2002:a05:6512:3b28:b0:52f:c337:4c1f with SMTP id
 2adb3069b0e04-532ed727acdmr616823e87.0.1723619447130; 
 Wed, 14 Aug 2024 00:10:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-429ded3d1bbsm11066285e9.26.2024.08.14.00.10.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2024 00:10:46 -0700 (PDT)
Date: Wed, 14 Aug 2024 09:10:44 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Cc: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 Christian Koenig <christian.koenig@amd.com>, intel-xe@lists.freedesktop.org
Subject: Re: [RFC PATCH] dma-buf/dma-fence: Use a successful read_trylock()
 annotation for dma_fence_begin_signalling()
Message-ID: <ZrxYdIDdEJXRTFrn@phenom.ffwll.local>
References: <20230428125233.228353-1-thomas.hellstrom@linux.intel.com>
 <be9b192a-a125-6774-bb4f-8b9fb517ce0d@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <be9b192a-a125-6774-bb4f-8b9fb517ce0d@linux.intel.com>
X-Operating-System: Linux phenom 6.9.10-amd64 
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

On Fri, May 26, 2023 at 01:11:28PM +0200, Thomas Hellström wrote:
> Daniel,
> 
> On 4/28/23 14:52, Thomas Hellström wrote:
> > Condsider the following call sequence:
> > 
> > /* Upper layer */
> > dma_fence_begin_signalling();
> > lock(tainted_shared_lock);
> > /* Driver callback */
> > dma_fence_begin_signalling();
> > ...
> > 
> > The driver might here use a utility that is annotated as intended for the
> > dma-fence signalling critical path. Now if the upper layer isn't correctly
> > annotated yet for whatever reason, resulting in
> > 
> > /* Upper layer */
> > lock(tainted_shared_lock);
> > /* Driver callback */
> > dma_fence_begin_signalling();
> > 
> > We will receive a false lockdep locking order violation notification from
> > dma_fence_begin_signalling(). However entering a dma-fence signalling
> > critical section itself doesn't block and could not cause a deadlock.
> > 
> > So use a successful read_trylock() annotation instead for
> > dma_fence_begin_signalling(). That will make sure that the locking order
> > is correctly registered in the first case, and doesn't register any
> > locking order in the second case.
> > 
> > The alternative is of course to make sure that the "Upper layer" is always
> > correctly annotated. But experience shows that's not easily achievable
> > in all cases.
> > 
> > Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> 
> Resurrecting the discussion on this one. I can't see a situation where we
> would miss *relevant* locking
> order violation warnings with this patch. Ofc if we have a scheduler
> annotation patch that would work fine as well, but the lack of annotation in
> the scheduler callbacks is really starting to hurt us.

Yeah this is just a bit too brain-melting to review, but I concur now.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I think what would help is some lockdep selftests to check that we both
catch the stuff we want to, and don't incur false positives. Maybe with a
plea that lockdep should have some native form of cross-release
annotations ...

But definitely seperate patch set, since it might take a few rounds of
review by lockdep folks.
-Sima

> 
> Thanks,
> 
> Thomas
> 
> 
> 
> > ---
> >   drivers/dma-buf/dma-fence.c | 6 +++---
> >   1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> > index f177c56269bb..17f632768ef9 100644
> > --- a/drivers/dma-buf/dma-fence.c
> > +++ b/drivers/dma-buf/dma-fence.c
> > @@ -308,8 +308,8 @@ bool dma_fence_begin_signalling(void)
> >   	if (in_atomic())
> >   		return true;
> > -	/* ... and non-recursive readlock */
> > -	lock_acquire(&dma_fence_lockdep_map, 0, 0, 1, 1, NULL, _RET_IP_);
> > +	/* ... and non-recursive successful read_trylock */
> > +	lock_acquire(&dma_fence_lockdep_map, 0, 1, 1, 1, NULL, _RET_IP_);
> >   	return false;
> >   }
> > @@ -340,7 +340,7 @@ void __dma_fence_might_wait(void)
> >   	lock_map_acquire(&dma_fence_lockdep_map);
> >   	lock_map_release(&dma_fence_lockdep_map);
> >   	if (tmp)
> > -		lock_acquire(&dma_fence_lockdep_map, 0, 0, 1, 1, NULL, _THIS_IP_);
> > +		lock_acquire(&dma_fence_lockdep_map, 0, 1, 1, 1, NULL, _THIS_IP_);
> >   }
> >   #endif

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
