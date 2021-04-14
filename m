Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 127A035EB33
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 05:01:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FA5E6E431;
	Wed, 14 Apr 2021 03:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 670856E431
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 03:01:10 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id o123so12771439pfb.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 20:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TAR5yqsN9HoAFUY9r76iY0/Z55yb+yClu81GmGqClH8=;
 b=AxctJN4YKisiNN3mi+jR9a4PjDrVydjLyKAjdhLsmYrQmMrpv2qEobv2Nvyg0HNTWx
 7szvLEm1gEw15HdvEMw40HI+RO95vOD0oLwcO6a8e7OFu4XSukj3DnnIKTZ8dpsRwLw0
 podg0eVzOhWXD4N6oDRZgcgEPZIKqHA6fEZeU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TAR5yqsN9HoAFUY9r76iY0/Z55yb+yClu81GmGqClH8=;
 b=VqqilkVXs9bxbMCLoIBbe1V13wRw2r9dMDFzjLmeLwI8A79dC6jxXrcmR9ULSaHNby
 uS58aFJ9qHsOZtUbZEy73+hJL3nJlyXh1qHnkhYRKa9x0QnVZMuZtiOEny+a9firRFju
 EtnNlXuFs5QBUzpun9H2z9ZH7aRoyYt+QIflW2YDTVXdnKwrDbJn/tHa2YrMno7zVuCr
 8Yz9rmoMfuTulHdbdhk2L6E75Dnn/A4u5DYU52xDXGQh9+xFm+yZ1c1/wpDFXnnBVj6p
 UhxVPtMsdjJPBCHEmPJrNmXCptev44Og0SZ8RwI4mFpx5XUVcLHf3x84IpRgpFkMniI+
 e5Kg==
X-Gm-Message-State: AOAM533BdaQy7R2tOhVVvNACTGweFmaAvrp7oFuTCNl8qfDH0xV03IJ4
 tYPRJ2I/F6NWRWASinzFDJ/dtw==
X-Google-Smtp-Source: ABdhPJxny0HhvRRvjLB4ExxpMb0WRmAlIu/+/yKctZz3k66U0emA0Hktzp0YxGEbXWZI5dhhte4d4Q==
X-Received: by 2002:a05:6a00:796:b029:247:7a27:d612 with SMTP id
 g22-20020a056a000796b02902477a27d612mr22006953pfu.78.1618369269985; 
 Tue, 13 Apr 2021 20:01:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c128sm13632751pfb.81.2021.04.13.20.01.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 20:01:09 -0700 (PDT)
Date: Tue, 13 Apr 2021 20:01:08 -0700
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <202104131935.B5EBDAE@keescook>
References: <20210412080012.357146277@infradead.org>
 <20210412080611.769864829@infradead.org>
 <202104121302.57D7EF8@keescook>
 <YHVKACnVLAhbnt4j@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YHVKACnVLAhbnt4j@hirez.programming.kicks-ass.net>
Subject: Re: [Intel-gfx] [PATCH 4/7] mm: Introduce verify_page_range()
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
Cc: jgross@suse.com, sstabellini@kernel.org, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, linux-kernel@vger.kernel.org, chris@chris-wilson.co.uk,
 linux-mm@kvack.org, boris.ostrovsky@oracle.com, hch@lst.de,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 13, 2021 at 09:36:32AM +0200, Peter Zijlstra wrote:
> On Mon, Apr 12, 2021 at 01:05:09PM -0700, Kees Cook wrote:
> > On Mon, Apr 12, 2021 at 10:00:16AM +0200, Peter Zijlstra wrote:
> > > +struct vpr_data {
> > > +	int (*fn)(pte_t pte, unsigned long addr, void *data);
> > > +	void *data;
> > > +};
> > 
> > Eeerg. This is likely to become an attack target itself. Stored function
> > pointer with stored (3rd) argument.
> > 
> > This doesn't seem needed: only DRM uses it, and that's for error
> > reporting. I'd rather plumb back errors in a way to not have to add
> > another place in the kernel where we do func+arg stored calling.
> 
> Is this any better? It does have the stored pointer, but not a stored
> argument, assuming you don't count returns as arguments I suppose.

It's better in the sense that it's not the func/arg pair that really
bugs me, yes. :)

> The alternative is refactoring apply_to_page_range() :-/

Yeah, I'm looking now, I see what you mean.

> ---
> 
> struct vpr_data {
> 	bool (*fn)(pte_t pte, unsigned long addr);
> 	unsigned long addr;
> };
> 
> static int vpr_fn(pte_t *pte, unsigned long addr, void *data)
> {
> 	struct vpr_data *vpr = data;
> 	if (!vpr->fn(*pte, addr)) {
> 		vpr->addr = addr;
> 		return -EINVAL;
> 	}
> 	return 0;
> }

My point about passing "addr" was that nothing in the callback actually
needs it -- the top level can just as easily report the error. And that
the helper is always vpr_fn(), so it doesn't need to be passed either.

So the addr can just be encoded in "int", and no structure is needed at:

typedef bool (*vpr_fn_t)(pte_t pte);

static int vpr_fn(pte_t *pte, unsigned long addr, void *data)
{
	vpr_fn_t callback = data;

	if (!callback(*pte))
		return addr >> PAGE_SIZE;
	return 0;
}

unsigned long verify_page_range(struct mm_struct *mm,
				unsigned long addr, unsigned long size,
				vpr_fn_t callback)
{
	return apply_to_page_range(mm, addr, size, vpr_fn, callback) << PAGE_SIZE;
}

But maybe I'm missing something?

-- 
Kees Cook
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
