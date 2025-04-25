Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D99A9D28F
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 22:00:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2053410E9C0;
	Fri, 25 Apr 2025 20:00:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="iXtT7s57";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C8F710E9C0
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 20:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745611250;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=T8/4HYJEyKL0BmypDXzpIvuA602T0FZNtumDp2Gucts=;
 b=iXtT7s577mkzm/URNdmNBL3vPvvqSA2o0lwXIl+Ay6hJJSYCzLC+ZDR4iHAm6gFUiZA9P0
 ertYWBnw4P1I67vi7tx78bf7nNqEGhsbEv38GRuojkgAp3PaFzhbROlKCj3k7E9zXCSrsx
 2sBIAg/7QPyrKfTfQ/hPBFIsWOamvyI=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-12-steQO3eUNhSfbjyK9GDugA-1; Fri, 25 Apr 2025 16:00:47 -0400
X-MC-Unique: steQO3eUNhSfbjyK9GDugA-1
X-Mimecast-MFC-AGG-ID: steQO3eUNhSfbjyK9GDugA_1745611247
Received: by mail-qk1-f200.google.com with SMTP id
 af79cd13be357-7c5f3b8b1a1so435440685a.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 13:00:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745611247; x=1746216047;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=T8/4HYJEyKL0BmypDXzpIvuA602T0FZNtumDp2Gucts=;
 b=P8DVoRyNQeTnUzPkbwSzzBzG3Yd4phlqKTL0g5It1/9gIs+mVA2VUAxwbVI3/1/fry
 gCFSG7HQI92Ahw+FFtDdkae97kdJEGjqs5RN+OWugaa7dr58WDEQpLXdgF+OO3L68XSQ
 dtVyuyNtwmpCAcSxEGbwVkSh7l8GLkyQDzCZUCaUoK1/qMvSoPuNRuT9D87zD5iNyVXd
 jbExzaP54JdNT7Cqb4Y74kqYBBepcnLbdOkM1dhOgI7sGZtkVs+2fUqp6taaDyITnb2v
 hUIsCpgQZDO8kRaVDHuIvLO5LIbFbLppZbJLk6niNuxLlCTucnrchU86a7PzFB2zCpW0
 ydnQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUHz66nLMOLr9HBdkUravkRzS65DwBVA7F3IMfGs94aorSJBi645HJbA30WUF8uOKYomKcPQD6UNIo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyWUWpLzuIgrkmCHmSsNuP6p5yy4JXt2/bCAVBepnsKMA1TGrMV
 +DshGai9HonWOLFu9uQAU3B464vHj4OiTUFObbfqaWU4n/c6j174mrSK3OyD90unfVdQ/X+Fn77
 Re9G02zNBWpncQnEErREU7OT5OYAAMmviex6rRioQGcHM7Inhghxx25hy3KGDWJFx2Q==
X-Gm-Gg: ASbGnct64wS0Bnbct6p8zaiT1ZjWJ5297XdwAwVv16zZtbc8Eow64x/fbROf3rWkoxb
 kCQ29C2AhDxx9zpN1m6ZmRtizKssIWqvTnB1WO2w1m3Ccaq38tXzMgzUbiy+8ks1Ual96/1TGHy
 4OLRDIIhmSADBvc+hamV8i67tcx1qBsJPh9wLKic/BIHjIILRsAytVtyy/dEtB847DX/kQ64xDR
 YmS1FUdOuhw2/bhQZeKVVqiCeIcOTf9r82jh3nWVRYFMDgXzbXDkYqHVzTRHB6E7SYzHFIWeTQs
 Xdc=
X-Received: by 2002:a05:620a:24ca:b0:7c5:dfe6:222a with SMTP id
 af79cd13be357-7c960793e41mr556092785a.42.1745611246990; 
 Fri, 25 Apr 2025 13:00:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHp9AqScyuP//w2WTf2DZKa+eTenWSA/B8rLTtbznOGZp/n+4SX/uHlViZL3kDCGa1T/CH6wQ==
X-Received: by 2002:a05:620a:24ca:b0:7c5:dfe6:222a with SMTP id
 af79cd13be357-7c960793e41mr556088285a.42.1745611246549; 
 Fri, 25 Apr 2025 13:00:46 -0700 (PDT)
Received: from x1.local ([85.131.185.92]) by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7c958cbe651sm258957185a.47.2025.04.25.13.00.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Apr 2025 13:00:45 -0700 (PDT)
Date: Fri, 25 Apr 2025 16:00:42 -0400
From: Peter Xu <peterx@redhat.com>
To: David Hildenbrand <david@redhat.com>
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org, x86@kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-trace-kernel@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andrew Morton <akpm@linux-foundation.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
 Pedro Falcato <pfalcato@suse.de>
Subject: Re: [PATCH v1 04/11] mm/memremap: convert to pfnmap_track() +
 pfnmap_untrack()
Message-ID: <aAvp6umyw1AF2DbN@x1.local>
References: <20250425081715.1341199-1-david@redhat.com>
 <20250425081715.1341199-5-david@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250425081715.1341199-5-david@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Jbf2ktTj2bHlumuHzR7Q2jkFcnHEkEl8iyD5EmIRb7o_1745611247
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
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

On Fri, Apr 25, 2025 at 10:17:08AM +0200, David Hildenbrand wrote:
> Let's use the new, cleaner interface.
> 
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>  mm/memremap.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/mm/memremap.c b/mm/memremap.c
> index 2aebc1b192da9..c417c843e9b1f 100644
> --- a/mm/memremap.c
> +++ b/mm/memremap.c
> @@ -130,7 +130,7 @@ static void pageunmap_range(struct dev_pagemap *pgmap, int range_id)
>  	}
>  	mem_hotplug_done();
>  
> -	untrack_pfn(NULL, PHYS_PFN(range->start), range_len(range), true);
> +	pfnmap_untrack(PHYS_PFN(range->start), range_len(range));
>  	pgmap_array_delete(range);
>  }
>  
> @@ -211,8 +211,8 @@ static int pagemap_range(struct dev_pagemap *pgmap, struct mhp_params *params,
>  	if (nid < 0)
>  		nid = numa_mem_id();
>  
> -	error = track_pfn_remap(NULL, &params->pgprot, PHYS_PFN(range->start), 0,
> -			range_len(range));
> +	error = pfnmap_track(PHYS_PFN(range->start), range_len(range),
> +			     &params->pgprot);
>  	if (error)
>  		goto err_pfn_remap;
>  
> @@ -277,7 +277,7 @@ static int pagemap_range(struct dev_pagemap *pgmap, struct mhp_params *params,
>  	if (!is_private)
>  		kasan_remove_zero_shadow(__va(range->start), range_len(range));
>  err_kasan:
> -	untrack_pfn(NULL, PHYS_PFN(range->start), range_len(range), true);
> +	pfnmap_untrack(PHYS_PFN(range->start), range_len(range));

Not a huge deal, but maybe we could merge this and previous patch?  It
might be easier to reference the impl when reading the call site changes.

>  err_pfn_remap:
>  	pgmap_array_delete(range);
>  	return error;
> -- 
> 2.49.0
> 

-- 
Peter Xu

