Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5ADB303D1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A947A10EA21;
	Thu, 21 Aug 2025 20:08:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="fOD49HRF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4286110EA1C
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806920;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wK69Pd9CHZjKZhmlaft7kkJNdToX7IH/S9WvVIRScQg=;
 b=fOD49HRFKqBx+Jh+YkATToKV9bMInucg7AS0hzHpNKARRp1dprl6+iaqjuE27C/lFKIN6W
 dmqPhLKblNQy1oZ5uTWhnn1afLrnKSRxlIaV/6hNuVFw4Q3qkFR1TKK+XMEsQS1s8l22rO
 gWSSaO3J2B4md5pg/bQzbWez8iOVZjY=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-550-_7WSqEpONn-jbUv29kQclQ-1; Thu, 21 Aug 2025 16:08:39 -0400
X-MC-Unique: _7WSqEpONn-jbUv29kQclQ-1
X-Mimecast-MFC-AGG-ID: _7WSqEpONn-jbUv29kQclQ_1755806918
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3b9e4f039ecso760148f8f.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:08:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806918; x=1756411718;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wK69Pd9CHZjKZhmlaft7kkJNdToX7IH/S9WvVIRScQg=;
 b=PsePbUpGX+XqnEOLMOs1aprNODpAOcAQJltSOOX5xEKu2yTdhY1+ZdfMH7YoLzlcrR
 Iq3b+1iTNOZPwnMseTmS0M1ot5szH3J/ASUAT3PCXBwwmYsNTmWZFyVgJb3VHfd5tuat
 JER1K6Uy5IAbSP3YdLpI7CYrR74ft4NGsnkRo8O20EBRU2j6Jyfg8IWlcqeC3Slxrm6j
 d6FbIGFzoW4pktYJkO1EGuQfqdPmxsK8yKO4M1P+uoG9ORnhzmpjqtNOuDR2MQ2XbPut
 FkI2AFizuN1dcYtZ5eGaQqE5+ke5oHMROlchkuWw5aqmmQJY6x7InGh9hnaqFynSzjYK
 l+OQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3e1nP5ABmI09I4BY5UsPiFozxNjqiYzHZRAhEp3K+mS7dqjhkxyE4+c8XVyVFabTO4R5WaNq+vIg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwAC8x0dRr9+CT8STvJ6b437/VXSLqJEk8rXW6tADXtQiIQxasv
 Me4dfLsuZYbffTX3vsV7U9TzHq4fWVXfxRWxUc0eDwr+kwuL49O8ez5JsTiQkamq/UNmM/AZ1nW
 HFILtHkZkqlLAL4V55IJJlzGTGSPS23U5CJS33vL4EL60kb6lzxd2l4gt+IiJHTXFWYpusw==
X-Gm-Gg: ASbGncuUqKOFtvaAcfDKooFGeCQyTtNl5kN71OvXkiYJTiE6Kpy37asIa5/jm7Icp5I
 ZvLxg+mtbSO/L8+JKMZXYRwZMh2YZlLyMmPOSzGLzo31i4sLH/4vm7lvwgGKywvyXmEu7IM9gjh
 coamb2dxS2BxtzG+tHMLk6EjPcoMbCgIVVlxTncOWJP+wArCRIRdoBP5j3Usk1DpXWYj5zx+yP+
 RO5XTjsgPSQVatQnV6oE39NyJC0x49CRQb1nWEXywLDyZW18uYfpXZGTIMB45MrLLvLDRKjGpt/
 w/SkgGlTJv4WSF29Rmp0zcEI8YSSVRtYP/p1jLgD4v+S+c6XKBgWMyphkcCJCkKqP5igl5hIuV7
 JBoP8BUt1IOfCJf2KMJCkDA==
X-Received: by 2002:a5d:64e9:0:b0:3b8:d7c7:62d7 with SMTP id
 ffacd0b85a97d-3c5daefc298mr218314f8f.16.1755806917857; 
 Thu, 21 Aug 2025 13:08:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETBfJ8klmP3LMs+G3FmlUfLKA9Qlb/rzelQ5gyETYamNwKefh2PCq6Da3p1XS4Ia+K1NPGrw==
X-Received: by 2002:a5d:64e9:0:b0:3b8:d7c7:62d7 with SMTP id
 ffacd0b85a97d-3c5daefc298mr218279f8f.16.1755806917364; 
 Thu, 21 Aug 2025 13:08:37 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3c4ccbf04fasm3355197f8f.7.2025.08.21.13.08.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:08:36 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: David Hildenbrand <david@redhat.com>,
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
 Marco Elver <elver@google.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Michal Hocko <mhocko@suse.com>, Mike Rapoport <rppt@kernel.org>,
 Muchun Song <muchun.song@linux.dev>, netdev@vger.kernel.org,
 Oscar Salvador <osalvador@suse.de>, Peter Xu <peterx@redhat.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Suren Baghdasaryan <surenb@google.com>, Tejun Heo <tj@kernel.org>,
 virtualization@lists.linux.dev, Vlastimil Babka <vbabka@suse.cz>,
 wireguard@lists.zx2c4.com, x86@kernel.org, Zi Yan <ziy@nvidia.com>
Subject: [PATCH RFC 32/35] mm/gup: drop nth_page() usage in
 unpin_user_page_range_dirty_lock()
Date: Thu, 21 Aug 2025 22:06:58 +0200
Message-ID: <20250821200701.1329277-33-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: nS5EB655XCI85pSLug9mHcw2LhS_xmS-OjSleVeHhis_1755806918
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

There is the concern that unpin_user_page_range_dirty_lock() might do
some weird merging of PFN ranges -- either now or in the future -- such
that PFN range is contiguous but the page range might not be.

Let's sanity-check for that and drop the nth_page() usage.

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/gup.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/mm/gup.c b/mm/gup.c
index f017ff6d7d61a..0a669a766204b 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -237,7 +237,7 @@ void folio_add_pin(struct folio *folio)
 static inline struct folio *gup_folio_range_next(struct page *start,
 		unsigned long npages, unsigned long i, unsigned int *ntails)
 {
-	struct page *next = nth_page(start, i);
+	struct page *next = start + i;
 	struct folio *folio = page_folio(next);
 	unsigned int nr = 1;
 
@@ -342,6 +342,9 @@ EXPORT_SYMBOL(unpin_user_pages_dirty_lock);
  * "gup-pinned page range" refers to a range of pages that has had one of the
  * pin_user_pages() variants called on that page.
  *
+ * The page range must be truly contiguous: the page range corresponds
+ * to a contiguous PFN range and all pages can be iterated naturally.
+ *
  * For the page ranges defined by [page .. page+npages], make that range (or
  * its head pages, if a compound page) dirty, if @make_dirty is true, and if the
  * page range was previously listed as clean.
@@ -359,6 +362,8 @@ void unpin_user_page_range_dirty_lock(struct page *page, unsigned long npages,
 	struct folio *folio;
 	unsigned int nr;
 
+	VM_WARN_ON_ONCE(!page_range_contiguous(page, npages));
+
 	for (i = 0; i < npages; i += nr) {
 		folio = gup_folio_range_next(page, npages, i, &nr);
 		if (make_dirty && !folio_test_dirty(folio)) {
-- 
2.50.1

