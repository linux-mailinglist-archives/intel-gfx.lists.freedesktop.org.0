Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AF5B303A4
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E267610E9FB;
	Thu, 21 Aug 2025 20:08:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="LAuI4ObQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AC0610E9FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806891;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Pq6EMCEhMXNA7HGNe/O1qYHWHhWZrBzRdRZ7YmKumJw=;
 b=LAuI4ObQ8SK/1nK29SQ4IEJeO17n4p53HUvNerNItBLRh4TlQsyAA9PyGpyeoH4NcTxHAC
 K9wlfm/6fKZWSTr5BDOHiWmzKPrxGtCJGsVIzgrSK99KJpkRgbq1zSw17F/AJhaUnXB3gq
 wsmylcATFHCNgNF9PJ5A09LoNOxU+2g=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-543-QVLh24CDMNmgdKUfw09-Xw-1; Thu, 21 Aug 2025 16:08:10 -0400
X-MC-Unique: QVLh24CDMNmgdKUfw09-Xw-1
X-Mimecast-MFC-AGG-ID: QVLh24CDMNmgdKUfw09-Xw_1755806889
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3b9edf332faso441204f8f.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:08:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806889; x=1756411689;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Pq6EMCEhMXNA7HGNe/O1qYHWHhWZrBzRdRZ7YmKumJw=;
 b=g13SiPwxYKiF0YoEvWXiLLA7IxBJCdGBAzjVrRAxHweWYySFSIiAc7sjMuVqUV2L/U
 JnaL9Y/yXPT1vBsYL0QACuIkx2Mu9rtkve90DkX1KcbovJu9ZTvodeSpU8US6IEZKi12
 k3eLnY4FqCBZo4r8Qo9klt1RmPQyFRsOIlq7mme1KZD8q0GBUe+F+ZZNUsRZNG91APIF
 H0o0bxruUynR/HfTiXnxYRxKODkLQhmAlIo798nt5ftZc7Co++DlEU2Nq8P6P4TSdAIf
 205qRAPaCudSYT/ECmaEpjYacaEB6Abaj+qjT4p318dGD3+lqYE5kHbD5H8TrQHyhBNN
 545w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUS3UWVxT/tHZYEk4CMN1nCXjTaQsO4HBMkq4S8hxTR4x3vvEseXN9x/neHOo5W+LKwEUoWmgCuroc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz3PzY2eqYVuLF6dKTbaxkdln6/ZbRJNeZciGox4IRlIeSEGzi5
 vsIBgA9eUwZWV5bXbDuq1TA7XFSqDqVfbUgAU5YaBUdeRkqnU6DIN0lUxJkNew/HFVItWtFtH+W
 fJmLc4Lc3rDuTwDyX6+WXe4gNzSNBqf8Pmz9O8kjB/rGOYwEZ0lTJr5lg4lGkWVK3qQ+Hyw==
X-Gm-Gg: ASbGncvAgLfek43tnMWe9qq7TxdJr9AH9uTMJg3oEsyzdceYvmsykruqookuztqHVkK
 BvWadA4ju/wqbaVqbOEiPackPK+xN3jRdt2a8SvKBFwE6d0sOUcX6qVV5kcWmGDXBsdhpgy4Xrl
 e+VaLdNRR0QRLnlrpYZgMIJoGL83qJSkcgClBkhooxFpb8OE1m1gzrcMKtaji9H4tfG6y7vWU/y
 oDGh01aofOh/s0AQbpWRRvd+6wWJ5q+qmFYzVUk1rg6Jw/Cm1Tlcx3Tfqo3kG8JRcgpIHl1OveW
 S8orMkRvEMbX4aca86l6QMSaulwycfFJlSu4lXoSVAHzOgEYYU+cVqxgfMgK0gX9NFZsgdB5znO
 5ZI2S5DeHFZiS8/rjqqLxTQ==
X-Received: by 2002:a05:6000:40c9:b0:3b7:911c:83f with SMTP id
 ffacd0b85a97d-3c5da83bf5bmr151967f8f.9.1755806888908; 
 Thu, 21 Aug 2025 13:08:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeHEkncn914iQLB6IDJFbFllUgyuseH1VcCPvg+Bdgchh7CcvmYDhAXktPsYS0hqHcr6hQuQ==
X-Received: by 2002:a05:6000:40c9:b0:3b7:911c:83f with SMTP id
 ffacd0b85a97d-3c5da83bf5bmr151916f8f.9.1755806888456; 
 Thu, 21 Aug 2025 13:08:08 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-45b4e2790a8sm21120815e9.1.2025.08.21.13.08.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:08:07 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: David Hildenbrand <david@redhat.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Alexander Potapenko <glider@google.com>,
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
 Marco Elver <elver@google.com>, Michal Hocko <mhocko@suse.com>,
 Mike Rapoport <rppt@kernel.org>, Muchun Song <muchun.song@linux.dev>,
 netdev@vger.kernel.org, Oscar Salvador <osalvador@suse.de>,
 Peter Xu <peterx@redhat.com>, Suren Baghdasaryan <surenb@google.com>,
 Tejun Heo <tj@kernel.org>, virtualization@lists.linux.dev,
 Vlastimil Babka <vbabka@suse.cz>, wireguard@lists.zx2c4.com,
 x86@kernel.org, Zi Yan <ziy@nvidia.com>
Subject: [PATCH RFC 22/35] dma-remap: drop nth_page() in
 dma_common_contiguous_remap()
Date: Thu, 21 Aug 2025 22:06:48 +0200
Message-ID: <20250821200701.1329277-23-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: GaQUyAQjyt9wEoAhEW8stYYf62a5sGA6x80LdmRiwqo_1755806889
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
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

dma_common_contiguous_remap() is used to remap an "allocated contiguous
region". Within a single allocation, there is no need to use nth_page()
anymore.

Neither the buddy, nor hugetlb, nor CMA will hand out problematic page
ranges.

Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 kernel/dma/remap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/dma/remap.c b/kernel/dma/remap.c
index 9e2afad1c6152..b7c1c0c92d0c8 100644
--- a/kernel/dma/remap.c
+++ b/kernel/dma/remap.c
@@ -49,7 +49,7 @@ void *dma_common_contiguous_remap(struct page *page, size_t size,
 	if (!pages)
 		return NULL;
 	for (i = 0; i < count; i++)
-		pages[i] = nth_page(page, i);
+		pages[i] = page++;
 	vaddr = vmap(pages, count, VM_DMA_COHERENT, prot);
 	kvfree(pages);
 
-- 
2.50.1

