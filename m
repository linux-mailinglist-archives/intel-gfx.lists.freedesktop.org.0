Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DE268D1B9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 09:49:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6235410E480;
	Tue,  7 Feb 2023 08:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CDB810E480
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 08:49:34 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id i5so5602323wrc.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Feb 2023 00:49:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=NmdN5gKwZDVdlAKsQvd2ajpnUIin36pXf74crNjXxO8=;
 b=Cdf9dK6ehVNXj9ebzQbgwv4NxkFkt0NiiwsWlmTSnnHFV9jB75Zsavv9cahmM40VL2
 LTG+kWJs0dzuMkXBoewer4tMf7xfaSyZwaCTi9R1ggtkmGzVXoTLk6y1nbSS3uxWt7ok
 1C9BKZzGndIFnbbFYbMWTIoBJUqwdWhhJUpi7X9YV87uZHreTwDnpUgfba/fKL+uZlBf
 FB3V/6X0ALcLA4LJeJWSYWNA8JAk9WBoFN/S5TTL/G1ulXEkQ1ZtSedHQSkmzXu8dja4
 FpfleK+cILGCbloO/h5s9X8K1vzW+4bljwksqPLG0PPLtBTF5E4719tqeXoHR6Uw2c1d
 kGrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NmdN5gKwZDVdlAKsQvd2ajpnUIin36pXf74crNjXxO8=;
 b=0nA93YBI5ZvFDTHUI+8idfX3+9gKTrlslYbzoapmNYJ6+PbkFXdlUJD+TsBeF6w2+e
 0q/fJ6oVyquiNgdQwaOKRMfuJIk0b+j3LuDMyIaJnymOBdkSbscQSaR96fOsiMgp3YYH
 ARloZ5oz8YwLSLpusMSh755/0+M0gn4b0Eotaef1R5bKsvTWCildrtuNIbXva6WnALf1
 ytPT6gK6eiRQjf7pZKby3rt5CdIQOif5Z9ls1Y6x87V2t/w1Ps5fmmckMp1UEeB5m4Jk
 Yv8GmCQ3B0JkoH2nvlOpymW01C6tkzwkFCkNnyfHe9e+ydC8tsG+4y0FqTnsGsYkvLFB
 TdrA==
X-Gm-Message-State: AO0yUKU4FyT7GxjCcHzCMIzH+E37+8qP4dkmK2jC6whhr2fOfrOgeG9/
 GgUe8JynzjxomKa2lf8LTZo=
X-Google-Smtp-Source: AK7set9pYEAI8Axov6xH3xCaTLOmfIJhVlLn44KG1EAT2OzQlw9GJmM2qy7z/5dEkxPn/gavNXZZ4A==
X-Received: by 2002:adf:f5c5:0:b0:2c3:db63:3418 with SMTP id
 k5-20020adff5c5000000b002c3db633418mr1934172wrp.49.1675759772934; 
 Tue, 07 Feb 2023 00:49:32 -0800 (PST)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 t1-20020a5d4601000000b002bdfe3aca17sm10668720wrq.51.2023.02.07.00.49.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Feb 2023 00:49:32 -0800 (PST)
Date: Tue, 7 Feb 2023 11:49:29 +0300
From: Dan Carpenter <error27@gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y+IQmSbWR6laNiHd@kadam>
References: <Y+EMbhwPiF6zjBVR@kili>
 <a41f5807-022f-1b4c-3baa-6bc928226853@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a41f5807-022f-1b4c-3baa-6bc928226853@linux.intel.com>
Subject: Re: [Intel-gfx] [bug report] drm/i915: Allow compaction upto
 SWIOTLB max segment size
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 06, 2023 at 04:59:36PM +0000, Tvrtko Ursulin wrote:
> 
> On 06/02/2023 14:19, Dan Carpenter wrote:
> > [ Ancient code but the warning showed up again because the function was
> >    renamed or something? - dan ]
> > 
> > Hello Chris Wilson,
> > 
> > The patch 871dfbd67d4e: "drm/i915: Allow compaction upto SWIOTLB max
> > segment size" from Oct 11, 2016, leads to the following Smatch static
> > checker warning:
> > 
> > 	drivers/gpu/drm/i915/gem/i915_gem_shmem.c:164 shmem_sg_alloc_table()
> > 	warn: variable dereferenced before check 'sg' (see line 155)
> 
> Is smatch getting confused here? Not entirely sure but lets see below..

Reading through your comments, it seems like you're saying the NULL
check should be deleted.  I don't really consider that a "false positive".
Hopefully, we both agree that by the time we get to the check the "sg"
pointer has been dereferenced.

> > 
> > drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> >      58 int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
> >      59                          size_t size, struct intel_memory_region *mr,
> >      60                          struct address_space *mapping,
> >      61                          unsigned int max_segment)
> >      62 {
> >      63         unsigned int page_count; /* restricted by sg_alloc_table */
> >      64         unsigned long i;
> >      65         struct scatterlist *sg;
> >      66         struct page *page;
> >      67         unsigned long last_pfn = 0;        /* suppress gcc warning */
> >      68         gfp_t noreclaim;
> >      69         int ret;
> >      70
> >      71         if (overflows_type(size / PAGE_SIZE, page_count))
> >      72                 return -E2BIG;
> >      73
> >      74         page_count = size / PAGE_SIZE;
> >      75         /*
> >      76          * If there's no chance of allocating enough pages for the whole
> >      77          * object, bail early.
> >      78          */
> >      79         if (size > resource_size(&mr->region))
> >      80                 return -ENOMEM;
> >      81
> >      82         if (sg_alloc_table(st, page_count, GFP_KERNEL | __GFP_NOWARN))
> >      83                 return -ENOMEM;
> >      84
> >      85         /*
> >      86          * Get the list of pages out of our struct file.  They'll be pinned
> >      87          * at this point until we release them.
> >      88          *
> >      89          * Fail silently without starting the shrinker
> >      90          */
> >      91         mapping_set_unevictable(mapping);
> >      92         noreclaim = mapping_gfp_constraint(mapping, ~__GFP_RECLAIM);
> >      93         noreclaim |= __GFP_NORETRY | __GFP_NOWARN;
> >      94
> >      95         sg = st->sgl;
> >                 ^^^^^^^^^^^^
> > "sg" set here.
> 
> It is guaranteed to be non-NULL since sg_alloc_table succeeded.
> 

Yeah.  This doesn't matter.  When I originally wrote this, I thought it
mattered but then I re-read the code but forgot to delete this comment.

In theory Smatch is supposed to be able to be tracking that "If
sg_alloc_table() succeeds, then "st->sgl" is non-NULL," but
__sg_alloc_table() has a do { } while() loop and Smatch is bad at
parsing loops.

However, Smatch does say that if sg_alloc_table() succeeds it means
page_count is non-zero.

> > 
> >      96         st->nents = 0;
> >      97         for (i = 0; i < page_count; i++) {

Since page_count is non-zero we definitely enter this loop.

> >      98                 const unsigned int shrink[] = {
> >      99                         I915_SHRINK_BOUND | I915_SHRINK_UNBOUND,
> >      100                         0,
> >      101                 }, *s = shrink;
> >      102                 gfp_t gfp = noreclaim;
> >      103
> >      104                 do {
> >      105                         cond_resched();
> >      106                         page = shmem_read_mapping_page_gfp(mapping, i, gfp);
> >      107                         if (!IS_ERR(page))
> >      108                                 break;
> > 
> > This should probably break out of the outer loop instead of the inner
> > loop?
> 
> Don't think so, the loop has allocated a page and wants to break out the
> inner loop so the page can be appended to the sg list.
> 
> > 
> >      109
> >      110                         if (!*s) {
> >      111                                 ret = PTR_ERR(page);
> >      112                                 goto err_sg;
> >      113                         }
> >      114
> >      115                         i915_gem_shrink(NULL, i915, 2 * page_count, NULL, *s++);
> >      116
> >      117                         /*
> >      118                          * We've tried hard to allocate the memory by reaping
> >      119                          * our own buffer, now let the real VM do its job and
> >      120                          * go down in flames if truly OOM.
> >      121                          *
> >      122                          * However, since graphics tend to be disposable,
> >      123                          * defer the oom here by reporting the ENOMEM back
> >      124                          * to userspace.
> >      125                          */
> >      126                         if (!*s) {
> >      127                                 /* reclaim and warn, but no oom */
> >      128                                 gfp = mapping_gfp_mask(mapping);
> >      129
> >      130                                 /*
> >      131                                  * Our bo are always dirty and so we require
> >      132                                  * kswapd to reclaim our pages (direct reclaim
> >      133                                  * does not effectively begin pageout of our
> >      134                                  * buffers on its own). However, direct reclaim
> >      135                                  * only waits for kswapd when under allocation
> >      136                                  * congestion. So as a result __GFP_RECLAIM is
> >      137                                  * unreliable and fails to actually reclaim our
> >      138                                  * dirty pages -- unless you try over and over
> >      139                                  * again with !__GFP_NORETRY. However, we still
> >      140                                  * want to fail this allocation rather than
> >      141                                  * trigger the out-of-memory killer and for
> >      142                                  * this we want __GFP_RETRY_MAYFAIL.
> >      143                                  */
> >      144                                 gfp |= __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
> >      145                         }
> >      146                 } while (1);
> >      147
> >      148                 if (!i ||
> >      149                     sg->length >= max_segment ||
> >      150                     page_to_pfn(page) != last_pfn + 1) {
> >      151                         if (i)
> >      152                                 sg = sg_next(sg);
> >      153
> >      154                         st->nents++;
> >      155                         sg_set_page(sg, page, PAGE_SIZE, 0);
> >                                              ^^
> > Dereferenced.
> 
> Does smatch worry about the sg = sg_next(sg) here, or the initially
> highlighted state? Even for the former we know we have allocated enough
> entries (always allocate assuming worst possible fragmentation) so this will
> still be valid whatever happens.

None of that really matters.  What matters is that we dereference "sg"
at the end of every iteration through the loop.

Technically, it does slightly matter.  If Smatch were able to determine
that a dereference is safe, then it doesn't print a warning.  But Smatch
is probably always never going to know that sg_next() can't return NULL
here.

> 
> > 
> >      156                 } else {
> >      157                         sg->length += PAGE_SIZE;
> >                                  ^^
> > Here too.
> > 
> >      158                 }
> >      159                 last_pfn = page_to_pfn(page);
> >      160
> >      161                 /* Check that the i965g/gm workaround works. */
> >      162                 GEM_BUG_ON(gfp & __GFP_DMA32 && last_pfn >= 0x00100000UL);
> >      163         }
> >  --> 164         if (sg) /* loop terminated early; short sg table */
                     ^^^^^^

> >      165                 sg_mark_end(sg);

> > 
> > If "sg" were NULL then we are already toasted.
> 
> AFAICT it can never be since the loop can never try to iterate past the last
> sg entry.

Right.  So this if statement can be deleted?

regards,
dan carpenter

