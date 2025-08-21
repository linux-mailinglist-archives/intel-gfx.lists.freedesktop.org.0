Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B77FB30397
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E9AF10E9FA;
	Thu, 21 Aug 2025 20:08:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="d50BOTRb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AB5210E9F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806880;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hICKs+PYshPEfoclHwqOXtWPheskj6p8LyRcJkrFnX4=;
 b=d50BOTRb+SEcMJs+gPi21vd4ycSzxd+Hq6bmtV+XrL44+R89DB6hvtzUQNgULdNUcDSJVS
 0goysmH283RP0xKSkgdmsR0QkSU5sOzbbYg3LDOKmhcFFui3QjMGy0RNsIGRAnFZWlO5Zp
 t1fmTshP+97z+qpiYMKOo/BrfLJTrNc=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-99-XuSIIyyrO1u9Px8DOJkbtg-1; Thu, 21 Aug 2025 16:07:58 -0400
X-MC-Unique: XuSIIyyrO1u9Px8DOJkbtg-1
X-Mimecast-MFC-AGG-ID: XuSIIyyrO1u9Px8DOJkbtg_1755806877
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3b9edf34ad0so613140f8f.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:07:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806877; x=1756411677;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hICKs+PYshPEfoclHwqOXtWPheskj6p8LyRcJkrFnX4=;
 b=UMB+NLVGH24X9ZJPCDa50pRAdWYyWBhdFMNoxHO0FZHukGJe6YguAF4TdDsQDMU7Rl
 mn4zSI6GNwwlWo3ZLVV0qjJKWaKBEH3Pq3JBxIjfHaZiRDk8i62i1Cu8F+WgPCKIwgsO
 TuoIheZwMGJ5IAhesUXTXlT83tijV0P/nEtkjsEFlrFHM69UKh9kGHz2v74hXKi5wr2g
 mp0Q9GjPwxVtFg/z+aaLwvGaQQNmn166bJ/FBfijmzDhwwFIOAwH7xpfDgdIT006T25v
 k8askpJjprDYDlVm8sEQCOgsZXDGdPsJEgPCMr6vlI/3BT+jwXXrkxpzRYJQ+FYVcD1k
 92ew==
X-Forwarded-Encrypted: i=1;
 AJvYcCWIlLvyI6NfiZImFaNGkGzYCIWYpjcIkE4JGqcgfcK0sINwMYPh4ytCuZ2eP+RM3P07wCa6sBNjb8Y=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxBj0KU/B9NiJ8wWBmQyTgB1b9cJ7leH6RjHvgb2nW9kBVm7cCy
 EpuQU5BQKxMrjG+fYmTm3nTmAcdiWJI1xs6ntZEd65SORgDhBwmkwJnT/s3VfZk+lEXbJ5C/vEr
 OkN8KErlSRz8C37/ZUobJmj+1+6FEr4jjAQa0+JSmDQyLuDsCL65G7Y1fYiIbd0gFKLjAoA==
X-Gm-Gg: ASbGncsnZIU7Lqou4PGYMmUlHNL3HTfJygSzqZzRUtyQ672QgI1mMl948HHhraTAqrG
 LraOejkQpnola4P+H75I0xkqPCFRYFJALja7pV+f11+1DaaJXgeI3Xakx5RXIlp1GMzJqUT7HJy
 xWDLkK+5gFxqKmpjxlk2R7faJ1bVW+KYZthkXhy5xKErH3mRpKEOXe7FyCK2qYuBfCztxV5za2U
 e2wi4gEgTmLyESFDSaRcZYO9uAR0PRLEX/1NrXa0Cv/zJO6KrXnZR+yHKSIeXLDx1c+sKKnGe4U
 XyJD+mStz0tQh4JR86q43wxtUpAOjpD655yCmjb0bRFbaAdHqB3rEubYa7ljPUuucIHDZwkWBGs
 3mPp2aFomK5j9V9Rt1RIbEQ==
X-Received: by 2002:a05:6000:1789:b0:3b4:9721:2b2b with SMTP id
 ffacd0b85a97d-3c5dac17062mr195827f8f.12.1755806877254; 
 Thu, 21 Aug 2025 13:07:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgVLjhFaRrDh3LOBLGV7UmH7wFAxvy1IR++ErfO8cOP/XFU/ikMyZpM3bVU7Jjqctj1mhmFQ==
X-Received: by 2002:a05:6000:1789:b0:3b4:9721:2b2b with SMTP id
 ffacd0b85a97d-3c5dac17062mr195797f8f.12.1755806876810; 
 Thu, 21 Aug 2025 13:07:56 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3c4f77e968esm2903478f8f.21.2025.08.21.13.07.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:07:56 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: David Hildenbrand <david@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 Alexander Potapenko <glider@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Brendan Jackman <jackmanb@google.com>, Christoph Lameter <cl@gentwo.org>,
 Dennis Zhou <dennis@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 iommu@lists.linux.dev, io-uring@vger.kernel.org,
 Jason Gunthorpe <jgg@nvidia.com>, Johannes Weiner <hannes@cmpxchg.org>,
 John Hubbard <jhubbard@nvidia.com>, kasan-dev@googlegroups.com,
 kvm@vger.kernel.org, "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-arm-kernel@axis.com,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-kselftest@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mmc@vger.kernel.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Marco Elver <elver@google.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Michal Hocko <mhocko@suse.com>, Mike Rapoport <rppt@kernel.org>,
 Muchun Song <muchun.song@linux.dev>, netdev@vger.kernel.org,
 Oscar Salvador <osalvador@suse.de>, Peter Xu <peterx@redhat.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Suren Baghdasaryan <surenb@google.com>, Tejun Heo <tj@kernel.org>,
 virtualization@lists.linux.dev, Vlastimil Babka <vbabka@suse.cz>,
 wireguard@lists.zx2c4.com, x86@kernel.org, Zi Yan <ziy@nvidia.com>
Subject: [PATCH RFC 18/35] io_uring/zcrx: remove "struct io_copy_cache" and
 one nth_page() usage
Date: Thu, 21 Aug 2025 22:06:44 +0200
Message-ID: <20250821200701.1329277-19-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: bD5YVmpaN5MDzECHb30Goy3bGPhwzRr7gq50MwFJ3d8_1755806877
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

We always provide a single dst page, it's unclear why the io_copy_cache
complexity is required.

So let's simplify and get rid of "struct io_copy_cache", simply working on
the single page.

... which immediately allows us for dropping one "nth_page" usage,
because it's really just a single page.

Cc: Jens Axboe <axboe@kernel.dk>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 io_uring/zcrx.c | 32 +++++++-------------------------
 1 file changed, 7 insertions(+), 25 deletions(-)

diff --git a/io_uring/zcrx.c b/io_uring/zcrx.c
index e5ff49f3425e0..f29b2a4867516 100644
--- a/io_uring/zcrx.c
+++ b/io_uring/zcrx.c
@@ -954,29 +954,18 @@ static struct net_iov *io_zcrx_alloc_fallback(struct io_zcrx_area *area)
 	return niov;
 }
 
-struct io_copy_cache {
-	struct page		*page;
-	unsigned long		offset;
-	size_t			size;
-};
-
-static ssize_t io_copy_page(struct io_copy_cache *cc, struct page *src_page,
+static ssize_t io_copy_page(struct page *dst_page, struct page *src_page,
 			    unsigned int src_offset, size_t len)
 {
-	size_t copied = 0;
+	size_t dst_offset = 0;
 
-	len = min(len, cc->size);
+	len = min(len, PAGE_SIZE);
 
 	while (len) {
 		void *src_addr, *dst_addr;
-		struct page *dst_page = cc->page;
-		unsigned dst_offset = cc->offset;
 		size_t n = len;
 
-		if (folio_test_partial_kmap(page_folio(dst_page)) ||
-		    folio_test_partial_kmap(page_folio(src_page))) {
-			dst_page = nth_page(dst_page, dst_offset / PAGE_SIZE);
-			dst_offset = offset_in_page(dst_offset);
+		if (folio_test_partial_kmap(page_folio(src_page))) {
 			src_page = nth_page(src_page, src_offset / PAGE_SIZE);
 			src_offset = offset_in_page(src_offset);
 			n = min(PAGE_SIZE - src_offset, PAGE_SIZE - dst_offset);
@@ -991,12 +980,10 @@ static ssize_t io_copy_page(struct io_copy_cache *cc, struct page *src_page,
 		kunmap_local(src_addr);
 		kunmap_local(dst_addr);
 
-		cc->size -= n;
-		cc->offset += n;
+		dst_offset += n;
 		len -= n;
-		copied += n;
 	}
-	return copied;
+	return dst_offset;
 }
 
 static ssize_t io_zcrx_copy_chunk(struct io_kiocb *req, struct io_zcrx_ifq *ifq,
@@ -1011,7 +998,6 @@ static ssize_t io_zcrx_copy_chunk(struct io_kiocb *req, struct io_zcrx_ifq *ifq,
 		return -EFAULT;
 
 	while (len) {
-		struct io_copy_cache cc;
 		struct net_iov *niov;
 		size_t n;
 
@@ -1021,11 +1007,7 @@ static ssize_t io_zcrx_copy_chunk(struct io_kiocb *req, struct io_zcrx_ifq *ifq,
 			break;
 		}
 
-		cc.page = io_zcrx_iov_page(niov);
-		cc.offset = 0;
-		cc.size = PAGE_SIZE;
-
-		n = io_copy_page(&cc, src_page, src_offset, len);
+		n = io_copy_page(io_zcrx_iov_page(niov), src_page, src_offset, len);
 
 		if (!io_zcrx_queue_cqe(req, niov, ifq, 0, n)) {
 			io_zcrx_return_niov(niov);
-- 
2.50.1

