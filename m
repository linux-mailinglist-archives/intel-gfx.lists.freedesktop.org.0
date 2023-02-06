Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF6068BFE5
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 15:19:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C57010E030;
	Mon,  6 Feb 2023 14:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 077F110E06B
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 14:19:33 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 j29-20020a05600c1c1d00b003dc52fed235so8942244wms.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Feb 2023 06:19:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5KfmyPDXX2ChbSaZJFhKyLvpzg6Gm0qUJmAwanE0QWc=;
 b=dnMp9xIjS9X7XnF+ToU7uKUit3yridCt/f/vw4LiBrkiYryNK48GVNzcs13VpPbBCv
 FcnklU3wfwOEdAxvuapRatH0i/7A3DBBYwy1CH80bxO/E3iPYC/56O0WtZtJ2ZNDhGjd
 wZXBcVsuLa7t5npHmYZUOgmMGZRfrYzf1hi85ixE0aQF6rDTTMi5N4q3w2fi0OCkcjyS
 1AmaILNsBRxXhkXD32iNDE/XJ4Kgo8wbhog2jumVhk0Od9r8kv4YNtl3/+WJ6h4nJWPX
 ajxOq0pXGNCK4KR2fqUuUM3KB/ErKhJf6RsV+d841Z6/u9zMapAWKXWGV4OxhTC4UQx2
 zNvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5KfmyPDXX2ChbSaZJFhKyLvpzg6Gm0qUJmAwanE0QWc=;
 b=CFhhUmrO/C+LMWD2SnrLtn7JN1vrFoZuyo4AYSAmCTcz7MPGNYiDGdXt2pZoOXZ8fm
 hDwSXTCcId/fkwu9dbcHVEC2EFeNYU64ASTmu8X7tl9JsZjA/gkOEJ2xPLNWqZW4o7em
 4wdaZA23ZtkT9zAzzYhQ56xaB+EGKyWldS0ULWPtjb6zb3KikdI1XTu/NLABDoqpn5w0
 FTjABvI2KYdQ6GwFCMiecOHDPohmmX5dgSPbReo1frWJRwIOlu8P9Goo5F7fQgZi0N/p
 UDiz3acXNUIEB407PETVwdurG2eBmWhAQCMjfnEyeKLjGLw2FCdqWYm14K6o76siqtMZ
 SPGA==
X-Gm-Message-State: AO0yUKUjs2w15BBgOzqfF4guqgXwwSPW7Dlb0rcpDo2Wd+iCvURZ67NM
 +PKR/MNXfWRCiaFviBwdVBHWKtMGnOs=
X-Google-Smtp-Source: AK7set+wpp1YwetYw1Fk+iQelbXH8XNLWFMxZheT/vbEjhkEe3wprm4WekjgKUZBMcA/2kAkBXXwPA==
X-Received: by 2002:a05:600c:1e8d:b0:3df:7948:886b with SMTP id
 be13-20020a05600c1e8d00b003df7948886bmr16674882wmb.31.1675693171507; 
 Mon, 06 Feb 2023 06:19:31 -0800 (PST)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 c7-20020a05600c0ac700b003d1d5a83b2esm15848943wmr.35.2023.02.06.06.19.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Feb 2023 06:19:31 -0800 (PST)
Date: Mon, 6 Feb 2023 17:19:26 +0300
From: Dan Carpenter <error27@gmail.com>
To: chris@chris-wilson.co.uk
Message-ID: <Y+EMbhwPiF6zjBVR@kili>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [bug report] drm/i915: Allow compaction upto SWIOTLB
 max segment size
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[ Ancient code but the warning showed up again because the function was
  renamed or something? - dan ]

Hello Chris Wilson,

The patch 871dfbd67d4e: "drm/i915: Allow compaction upto SWIOTLB max
segment size" from Oct 11, 2016, leads to the following Smatch static
checker warning:

	drivers/gpu/drm/i915/gem/i915_gem_shmem.c:164 shmem_sg_alloc_table()
	warn: variable dereferenced before check 'sg' (see line 155)

drivers/gpu/drm/i915/gem/i915_gem_shmem.c
    58 int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
    59                          size_t size, struct intel_memory_region *mr,
    60                          struct address_space *mapping,
    61                          unsigned int max_segment)
    62 {
    63         unsigned int page_count; /* restricted by sg_alloc_table */
    64         unsigned long i;
    65         struct scatterlist *sg;
    66         struct page *page;
    67         unsigned long last_pfn = 0;        /* suppress gcc warning */
    68         gfp_t noreclaim;
    69         int ret;
    70 
    71         if (overflows_type(size / PAGE_SIZE, page_count))
    72                 return -E2BIG;
    73 
    74         page_count = size / PAGE_SIZE;
    75         /*
    76          * If there's no chance of allocating enough pages for the whole
    77          * object, bail early.
    78          */
    79         if (size > resource_size(&mr->region))
    80                 return -ENOMEM;
    81 
    82         if (sg_alloc_table(st, page_count, GFP_KERNEL | __GFP_NOWARN))
    83                 return -ENOMEM;
    84 
    85         /*
    86          * Get the list of pages out of our struct file.  They'll be pinned
    87          * at this point until we release them.
    88          *
    89          * Fail silently without starting the shrinker
    90          */
    91         mapping_set_unevictable(mapping);
    92         noreclaim = mapping_gfp_constraint(mapping, ~__GFP_RECLAIM);
    93         noreclaim |= __GFP_NORETRY | __GFP_NOWARN;
    94 
    95         sg = st->sgl;
               ^^^^^^^^^^^^
"sg" set here.

    96         st->nents = 0;
    97         for (i = 0; i < page_count; i++) {
    98                 const unsigned int shrink[] = {
    99                         I915_SHRINK_BOUND | I915_SHRINK_UNBOUND,
    100                         0,
    101                 }, *s = shrink;
    102                 gfp_t gfp = noreclaim;
    103 
    104                 do {
    105                         cond_resched();
    106                         page = shmem_read_mapping_page_gfp(mapping, i, gfp);
    107                         if (!IS_ERR(page))
    108                                 break;

This should probably break out of the outer loop instead of the inner
loop?

    109 
    110                         if (!*s) {
    111                                 ret = PTR_ERR(page);
    112                                 goto err_sg;
    113                         }
    114 
    115                         i915_gem_shrink(NULL, i915, 2 * page_count, NULL, *s++);
    116 
    117                         /*
    118                          * We've tried hard to allocate the memory by reaping
    119                          * our own buffer, now let the real VM do its job and
    120                          * go down in flames if truly OOM.
    121                          *
    122                          * However, since graphics tend to be disposable,
    123                          * defer the oom here by reporting the ENOMEM back
    124                          * to userspace.
    125                          */
    126                         if (!*s) {
    127                                 /* reclaim and warn, but no oom */
    128                                 gfp = mapping_gfp_mask(mapping);
    129 
    130                                 /*
    131                                  * Our bo are always dirty and so we require
    132                                  * kswapd to reclaim our pages (direct reclaim
    133                                  * does not effectively begin pageout of our
    134                                  * buffers on its own). However, direct reclaim
    135                                  * only waits for kswapd when under allocation
    136                                  * congestion. So as a result __GFP_RECLAIM is
    137                                  * unreliable and fails to actually reclaim our
    138                                  * dirty pages -- unless you try over and over
    139                                  * again with !__GFP_NORETRY. However, we still
    140                                  * want to fail this allocation rather than
    141                                  * trigger the out-of-memory killer and for
    142                                  * this we want __GFP_RETRY_MAYFAIL.
    143                                  */
    144                                 gfp |= __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
    145                         }
    146                 } while (1);
    147 
    148                 if (!i ||
    149                     sg->length >= max_segment ||
    150                     page_to_pfn(page) != last_pfn + 1) {
    151                         if (i)
    152                                 sg = sg_next(sg);
    153 
    154                         st->nents++;
    155                         sg_set_page(sg, page, PAGE_SIZE, 0);
                                            ^^
Dereferenced.

    156                 } else {
    157                         sg->length += PAGE_SIZE;
                                ^^
Here too.

    158                 }
    159                 last_pfn = page_to_pfn(page);
    160 
    161                 /* Check that the i965g/gm workaround works. */
    162                 GEM_BUG_ON(gfp & __GFP_DMA32 && last_pfn >= 0x00100000UL);
    163         }
--> 164         if (sg) /* loop terminated early; short sg table */

If "sg" were NULL then we are already toasted.

    165                 sg_mark_end(sg);
    166 
    167         /* Trim unused sg entries to avoid wasting memory. */
    168         i915_sg_trim(st);
    169 
    170         return 0;
    171 err_sg:
    172         sg_mark_end(sg);
    173         if (sg != st->sgl) {
    174                 shmem_sg_free_table(st, mapping, false, false);
    175         } else {
    176                 mapping_clear_unevictable(mapping);
    177                 sg_free_table(st);
    178         }
    179 
    180         /*
    181          * shmemfs first checks if there is enough memory to allocate the page
    182          * and reports ENOSPC should there be insufficient, along with the usual
    183          * ENOMEM for a genuine allocation failure.
    184          *
    185          * We use ENOSPC in our driver to mean that we have run out of aperture
    186          * space and so want to translate the error from shmemfs back to our
    187          * usual understanding of ENOMEM.
    188          */
    189         if (ret == -ENOSPC)
    190                 ret = -ENOMEM;
    191 
    192         return ret;
    193 }

regards,
dan carpenter
