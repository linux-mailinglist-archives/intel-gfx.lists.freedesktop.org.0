Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 142CBB30D5D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Aug 2025 06:09:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 064A710E315;
	Fri, 22 Aug 2025 04:09:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="ekVL8Jce";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3241410E08A
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Aug 2025 04:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755835765;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wD6Kie9NmTYlBWSYITqg8VmPWCkzgpHh3Jn6J+e3AEM=;
 b=ekVL8Jcem6q4cF0HM2y6xOx21D/FJFLgh+Adi11GsoKh93+dTphRUEqvPEAbV1jsnGf0+j
 76vWlhnV/nsaTW5nDgWVAmPnyWUl0TtjWGi7aVu71PRBgkpV7KBux/J7eN3g1ihAEe3TSt
 6lo4Vg1aDMs7A8C7PTZdjARZhrto0Jk=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-680-6ZCqzG7INHufarg1nNS9yg-1; Fri, 22 Aug 2025 00:09:23 -0400
X-MC-Unique: 6ZCqzG7INHufarg1nNS9yg-1
X-Mimecast-MFC-AGG-ID: 6ZCqzG7INHufarg1nNS9yg_1755835762
Received: by mail-lj1-f200.google.com with SMTP id
 38308e7fff4ca-333f92b401bso6907841fa.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 21:09:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755835762; x=1756440562;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wD6Kie9NmTYlBWSYITqg8VmPWCkzgpHh3Jn6J+e3AEM=;
 b=BFAIMnZrfyJEjwVXEWLT/sPW7S3OMVzn1+rS6wsGHzvuwWmphiEMXvaUrmmD8SHhiR
 g/1XrogzfaRKqx5SKVQmWoizAreAsSsQihFxkVsGGE92/z0LsCvh7v7z2NJdylTHSQjz
 e0bC296l+MuX47Ra6XE8YQWq0RVqEQa97lcVrBKCClnFzY4crepvfYVYSMrQQBe2ZYQX
 7pJpjgMdwv7FgKE/lnAfsa5PDNyCvQ4mtEIbFtyH3Ng5IZKw3JCelkGDSvL/3U6nFiCd
 OF0FCJOI2DWVw5m3Lj30H8/WksfpLQUAoFM0usewnUolsw5mCTyDMKhAPMJ6scTnOdGB
 X7NA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVzslaiCmwNSMjUMx/DgOb4uaoUVViGwcmt8Nh/SVkUPDzlTg4rAYmKu4fV4SL2r2VUlE8b3apJCgM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz4TtPYX9NyolZ1XuosKZUSr6ttPPoDVn4F21hr3A8rZQ7F2tfZ
 wMyMk44/EOH2HMKNnCUJ94OUp2WXW13sdH/nJUftgZ6b3pQOs1kodQPkfTtxgu9YlxaJOaHsVt2
 JXxm9PglRJYSIYnEJaFXHd9kAudEslvfDnjHs9e9iC1s8dVgQKTjjipXhKF56TgrA7zqj
X-Gm-Gg: ASbGncvSMjQN2JOm0EqoLQYZTdmvcA8YVfovTT5nu+PxBCiE1ZJr6cV9B0q4d1t4tVk
 HVjYySS0PIl3xGMrhwlskVaC4+HtG1SibQzzVt7dWjdjYCJ3TgMExEo/oHTGB+92DsAYIcjoRRn
 H88Y7nrwZX6mHQQBcyCY6xzuC73mNUCSMoSurZJxC6aYQ5txi5gNXWktC8SQnXZXv8APsMmByDU
 zMUUKXd6s879x+JyauQ9NHeKZfqaqc3MXaJSQe0OXqiEpSlIZd25+zqjEJDuGAvTMVndBxQnYPO
 mN0WARbX3/Ltr1P+jgCnBo6ULStLkCy9ox2rOB1HZd4VXAGtcSAbyBi2ag9/mySNlQ==
X-Received: by 2002:a2e:be0c:0:b0:333:b6b0:e665 with SMTP id
 38308e7fff4ca-33650fa8605mr4319601fa.30.1755835762127; 
 Thu, 21 Aug 2025 21:09:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIfwy5viYQG7CiACnNo0XJ1QLrkAQo6vQi0t/AKYxGuojOFc+bxzH8Oeop0sL+wr/cDEqByA==
X-Received: by 2002:a2e:be0c:0:b0:333:b6b0:e665 with SMTP id
 38308e7fff4ca-33650fa8605mr4319091fa.30.1755835761548; 
 Thu, 21 Aug 2025 21:09:21 -0700 (PDT)
Received: from [192.168.1.86] (85-23-48-6.bb.dnainternet.fi. [85.23.48.6])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-3340a41e3cfsm35236551fa.6.2025.08.21.21.09.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 21:09:19 -0700 (PDT)
Message-ID: <9156d191-9ec4-4422-bae9-2e8ce66f9d5e@redhat.com>
Date: Fri, 22 Aug 2025 07:09:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 10/35] mm/hugetlb: cleanup
 hugetlb_folio_init_tail_vmemmap()
To: David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org
Cc: Alexander Potapenko <glider@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Brendan Jackman <jackmanb@google.com>, Christoph Lameter <cl@gentwo.org>,
 Dennis Zhou <dennis@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 iommu@lists.linux.dev, io-uring@vger.kernel.org,
 Jason Gunthorpe <jgg@nvidia.com>, Jens Axboe <axboe@kernel.dk>,
 Johannes Weiner <hannes@cmpxchg.org>, John Hubbard <jhubbard@nvidia.com>,
 kasan-dev@googlegroups.com, kvm@vger.kernel.org,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-arm-kernel@axis.com,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-kselftest@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mmc@vger.kernel.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Marco Elver <elver@google.com>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Michal Hocko <mhocko@suse.com>, Mike Rapoport <rppt@kernel.org>,
 Muchun Song <muchun.song@linux.dev>, netdev@vger.kernel.org,
 Oscar Salvador <osalvador@suse.de>, Peter Xu <peterx@redhat.com>,
 Robin Murphy <robin.murphy@arm.com>, Suren Baghdasaryan <surenb@google.com>,
 Tejun Heo <tj@kernel.org>, virtualization@lists.linux.dev,
 Vlastimil Babka <vbabka@suse.cz>, wireguard@lists.zx2c4.com, x86@kernel.org,
 Zi Yan <ziy@nvidia.com>
References: <20250821200701.1329277-1-david@redhat.com>
 <20250821200701.1329277-11-david@redhat.com>
From: =?UTF-8?Q?Mika_Penttil=C3=A4?= <mpenttil@redhat.com>
In-Reply-To: <20250821200701.1329277-11-david@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: kKIw5aGKSxpvYoEJPiDOu0R_KVqKDCp0txS9JX2NIyw_1755835762
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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


On 8/21/25 23:06, David Hildenbrand wrote:

> All pages were already initialized and set to PageReserved() with a
> refcount of 1 by MM init code.

Just to be sure, how is this working with MEMBLOCK_RSRV_NOINIT, where MM is supposed not to
initialize struct pages?

> In fact, by using __init_single_page(), we will be setting the refcount to
> 1 just to freeze it again immediately afterwards.
>
> So drop the __init_single_page() and use __ClearPageReserved() instead.
> Adjust the comments to highlight that we are dealing with an open-coded
> prep_compound_page() variant.
>
> Further, as we can now safely iterate over all pages in a folio, let's
> avoid the page-pfn dance and just iterate the pages directly.
>
> Note that the current code was likely problematic, but we never ran into
> it: prep_compound_tail() would have been called with an offset that might
> exceed a memory section, and prep_compound_tail() would have simply
> added that offset to the page pointer -- which would not have done the
> right thing on sparsemem without vmemmap.
>
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>  mm/hugetlb.c | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
>
> diff --git a/mm/hugetlb.c b/mm/hugetlb.c
> index d12a9d5146af4..ae82a845b14ad 100644
> --- a/mm/hugetlb.c
> +++ b/mm/hugetlb.c
> @@ -3235,17 +3235,14 @@ static void __init hugetlb_folio_init_tail_vmemmap(struct folio *folio,
>  					unsigned long start_page_number,
>  					unsigned long end_page_number)
>  {
> -	enum zone_type zone = zone_idx(folio_zone(folio));
> -	int nid = folio_nid(folio);
> -	unsigned long head_pfn = folio_pfn(folio);
> -	unsigned long pfn, end_pfn = head_pfn + end_page_number;
> +	struct page *head_page = folio_page(folio, 0);
> +	struct page *page = folio_page(folio, start_page_number);
> +	unsigned long i;
>  	int ret;
>  
> -	for (pfn = head_pfn + start_page_number; pfn < end_pfn; pfn++) {
> -		struct page *page = pfn_to_page(pfn);
> -
> -		__init_single_page(page, pfn, zone, nid);
> -		prep_compound_tail((struct page *)folio, pfn - head_pfn);
> +	for (i = start_page_number; i < end_page_number; i++, page++) {
> +		__ClearPageReserved(page);
> +		prep_compound_tail(head_page, i);
>  		ret = page_ref_freeze(page, 1);
>  		VM_BUG_ON(!ret);
>  	}
> @@ -3257,12 +3254,14 @@ static void __init hugetlb_folio_init_vmemmap(struct folio *folio,
>  {
>  	int ret;
>  
> -	/* Prepare folio head */
> +	/*
> +	 * This is an open-coded prep_compound_page() whereby we avoid
> +	 * walking pages twice by preparing+freezing them in the same go.
> +	 */
>  	__folio_clear_reserved(folio);
>  	__folio_set_head(folio);
>  	ret = folio_ref_freeze(folio, 1);
>  	VM_BUG_ON(!ret);
> -	/* Initialize the necessary tail struct pages */
>  	hugetlb_folio_init_tail_vmemmap(folio, 1, nr_pages);
>  	prep_compound_head((struct page *)folio, huge_page_order(h));
>  }

--Mika

