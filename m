Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AEAB30890
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 23:45:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E67B10EA2A;
	Thu, 21 Aug 2025 21:45:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="dRqQIkhv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8D0910EA2A
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 21:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755812724;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=xgU+Z5k4KPqEraeKDWCOzJcpc8HGVmW4oZxLQRmx6Ws=;
 b=dRqQIkhvznsxHhME/+IsWavrsBXHmsqA0USw2cVx2/8Cna6y7TDXT7A4V4YY0RH+Vyq445
 cqT9YJffSaWiz53FMiq5lWOj7T5uEy3nhzvy3Lhlxxc+eG9yvep4UwD5yR53gAaUEx77Qt
 8YtGULrUxS3zsblyXIHRYH0/wkdNEZw=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-670-3vhjP44uMjGAKV6T1LkWlw-1; Thu, 21 Aug 2025 17:45:23 -0400
X-MC-Unique: 3vhjP44uMjGAKV6T1LkWlw-1
X-Mimecast-MFC-AGG-ID: 3vhjP44uMjGAKV6T1LkWlw_1755812722
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3c380aa1ad1so542120f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 14:45:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755812722; x=1756417522;
 h=content-transfer-encoding:in-reply-to:autocrypt:content-language
 :references:cc:to:from:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xgU+Z5k4KPqEraeKDWCOzJcpc8HGVmW4oZxLQRmx6Ws=;
 b=uHscP3FJ6AWfUXOSRpaay/WisqfXJx3Ek5eVArtxr5Fgws+8t6RJgN6bbsxMl+X5uA
 5+Uf2s0S5L8fAHwTdfK98I3Fsw9OceLEAZiQ1Dy+a8I/RXDN4QVzo+/xvH/SXJOJE2I1
 +MTEbGsvsfcKBKDnmCQcZgkyJvuyLpyAWmBuaEkIkElh3e+UvggPALjSei3WQsusELn2
 dSiuBy8LoEr6kluF6g80S9NlH5W+H7cQirlpVYCXqj5f8uRmPgC3TE8wZuYZ7wi4SiOI
 f+3bfkA+MFl+wAtrOR+xPL8kY4XG6ZsTxj4QHl4zJbHSZghvHmDvMokLodyz1gVTUWQC
 9sQw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXpAJQljYCQTWVyGcHWgysIIysnV38qvHbP40KAv/73fzoFYW3RUERbfGEK7BF9JLGKViWdslft7vI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxDZc4EtrHhnxlnNQmrkxDqGg57U2AolfK7GgFdQngv2s175spk
 h4ewOaFbuQQLC+HF/O1KNB6u2tBHhN8mU540yu8E2jnNjhxC8c7G1wLylabv/1zTS65HYPxS+K5
 9WN+4N9nuxAxFp5KYFnThE6gfZ7CONtl6EUkaIBu+30rTES6fQK+YPrUJ25drblb9P9yChA==
X-Gm-Gg: ASbGnctcjcRne5pQhLqCdOn1naFEu4tM8sjtHI1RiS99cg/8aNjGwUbKeJ3iURvTMZB
 +BPgBIvu1FQfTw9sLxxykIfi3478wX4QEfpC0+Z/BCCaPv1wa2PJLuW4PeXU5XR4VMU/Hy0e6KR
 cXJt0BCqCuTb0Bax7SUkZCMBNp4uPvJ2DQUVVhIxOWqwVaXgZ/v5Hif1N/aqwKpCtMMaqtSU10Q
 qCBeA27z7P3WKWcAUzB+o7ZbSIpnjIeALAQWQz4veBx/evz9okp53rb/x8h4Ev9XryV7aYuX1kD
 rSDvewWmYokCEmb4Yin2Z5aj68axgZKG7uWmFIdlM4VxbxImRZKFCs96tMuPIDr513/N+vzUxgJ
 9xLE9HEuirJuQRn7nN6ThRXl6zXaM8DPna0IcR0PeMrVgtK2GO7Ap88U598G16A==
X-Received: by 2002:a05:6000:2902:b0:3b8:f925:8d4 with SMTP id
 ffacd0b85a97d-3c5db2da00amr300059f8f.26.1755812721878; 
 Thu, 21 Aug 2025 14:45:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfnhl0R8ZwVLuxUZYmGD7nMrbthuKRx51tD/iqNpCQL5sxy24UygUdE3xc6j7fC/B+t7+yTQ==
X-Received: by 2002:a05:6000:2902:b0:3b8:f925:8d4 with SMTP id
 ffacd0b85a97d-3c5db2da00amr300045f8f.26.1755812721421; 
 Thu, 21 Aug 2025 14:45:21 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f26:ba00:803:6ec5:9918:6fd?
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-45b4e25da97sm22067085e9.1.2025.08.21.14.45.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 14:45:20 -0700 (PDT)
Message-ID: <b09b7ef4-5b06-4bb8-9be3-1194e3904c92@redhat.com>
Date: Thu, 21 Aug 2025 23:45:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 33/35] kfence: drop nth_page() usage
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>,
 Dmitry Vyukov <dvyukov@google.com>, Andrew Morton
 <akpm@linux-foundation.org>, Brendan Jackman <jackmanb@google.com>,
 Christoph Lameter <cl@gentwo.org>, Dennis Zhou <dennis@kernel.org>,
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
 Marek Szyprowski <m.szyprowski@samsung.com>, Michal Hocko <mhocko@suse.com>,
 Mike Rapoport <rppt@kernel.org>, Muchun Song <muchun.song@linux.dev>,
 netdev@vger.kernel.org, Oscar Salvador <osalvador@suse.de>,
 Peter Xu <peterx@redhat.com>, Robin Murphy <robin.murphy@arm.com>,
 Suren Baghdasaryan <surenb@google.com>, Tejun Heo <tj@kernel.org>,
 virtualization@lists.linux.dev, Vlastimil Babka <vbabka@suse.cz>,
 wireguard@lists.zx2c4.com, x86@kernel.org, Zi Yan <ziy@nvidia.com>
References: <20250821200701.1329277-1-david@redhat.com>
 <20250821200701.1329277-34-david@redhat.com>
 <1a13a5cb-4312-4c01-827b-fa8a029df0f1@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 qIws/H2t
In-Reply-To: <1a13a5cb-4312-4c01-827b-fa8a029df0f1@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 1UiDwJeVvhwezjcDNAa_sDptWKEjrIMcPrqfpVxyMzk_1755812722
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 21.08.25 22:32, David Hildenbrand wrote:
> On 21.08.25 22:06, David Hildenbrand wrote:
>> We want to get rid of nth_page(), and kfence init code is the last user.
>>
>> Unfortunately, we might actually walk a PFN range where the pages are
>> not contiguous, because we might be allocating an area from memblock
>> that could span memory sections in problematic kernel configs (SPARSEMEM
>> without SPARSEMEM_VMEMMAP).
>>
>> We could check whether the page range is contiguous
>> using page_range_contiguous() and failing kfence init, or making kfence
>> incompatible these problemtic kernel configs.
>>
>> Let's keep it simple and simply use pfn_to_page() by iterating PFNs.
>>
> 
> Fortunately this series is RFC due to lack of detailed testing :P
> 
> Something gives me a NULL-pointer pointer here (maybe the virt_to_phys()).
> 
> Will look into that tomorrow.

Okay, easy: relying on i but not updating it /me facepalm

-- 
Cheers

David / dhildenb

