Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E574B30383
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:07:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68FB610E9E7;
	Thu, 21 Aug 2025 20:07:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="gOheJs02";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5464F10E9E4
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806863;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=S+ehuLujhp6/6Ui8/ETipqTmnVB5w2txW2o3jJCUzuY=;
 b=gOheJs02fDqciUYT9xRdPHn4FQhz9D1GLPBC/jCPs+FxVCuj1so1qPt8GKhV/aqc7VNZLn
 42u6asY68i8eUT/2vm8rY+hUeB8ikALDnIPKL94O/M0RI/ReSegS6V/kgQVoqSKujztwID
 ED+bwRBtIJbMefyqXbnyJV3cyyy3uho=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-546-kU-M6wweO3eHht_byG0EUA-1; Thu, 21 Aug 2025 16:07:41 -0400
X-MC-Unique: kU-M6wweO3eHht_byG0EUA-1
X-Mimecast-MFC-AGG-ID: kU-M6wweO3eHht_byG0EUA_1755806861
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-45a1b04f817so6124905e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:07:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806860; x=1756411660;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=S+ehuLujhp6/6Ui8/ETipqTmnVB5w2txW2o3jJCUzuY=;
 b=AvQ3n/Yf1DceaMppUxdio2jZMPK0j7nfVqSwqtH0LgqRXUmObl0IRb9OQKqLH8K8BW
 0PD+i5YDh7lbWQpWigk+4hbG1/zI08g8Ny8hHYmriUwkWNPWlMqTtKi0VyE25wEGHQ7Q
 Ainf/BzZwXZjXxQ0Iab6Ty0N7myRswviJV84oYsgX92KDx1oibNojlSNsW8c9hVQVEWG
 UahhTzA3GdpcmEYKmFIMKe++7m+AuTkgthl3cu3DHDlwtYNrkOdKmp/7Ucj9xnAGcA3H
 VvZc1LvNS4T+7Ywy2HKYI7hUvZkI1J8Mn1EqGH+ztMFkzWxA1iD3e5uPmQLIypzAfEHG
 /6gg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGyFvlYn+onLOgXzxRWQnH4KZKCpj++e72gtNXRlUC9/JCwoPJgLtNbcTOeUYf56BfqMF45Jm5iKQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxYyN7Mg6KLFsLuLnCAqJMMZ1aunBc90KFi5LL5AV0Y0rO7jMRf
 oJnI0vPAF+7kyNIcY7LHLJwrJ3akI76Zv0izIDm1hVKC8VKvxHlR4CCa2uPeICrb1hsA1wki1pI
 KrE7vEDBJGir1CnaxNMGjDUloZ7CHZBuPc2yf/wVelg2wwCW1hkVqEneUEa2tVE1G2X7jow==
X-Gm-Gg: ASbGncsnNEBE3MANUhw8bnvJtm/dfc5wcWFGB/Qv0b7+L+349F8TNUvgPAgYYzGZBsw
 KAMDkC1Pjsn+NxCHfwRarwCnjoXIEQzGkHQ6SBe3zj2zpbrF4MtTjqBU65b1cyQrKQyTNPlX9RV
 7OozrUfWen8Mx5vuqQlXJrAttcatI5KHJ2nNF3lf8frYQGPW/yZHtmpy5NhFaVCpkG75j7tpxOC
 JP2DPyibZCUSiA54Nsmm7ZRHLvKH0kP9ROJ9nNQY8cC6g/MR+A68clEYfdlsJj8DuDRLSkdO5m/
 GudaaORD99lRPwqNFH6l318BRXlneJ2OfEIuTRTm5fF+7wmtGULRMczk6zp4/G3NrgoYQkJf+vc
 6S6rizn6968f23/vy46sDsA==
X-Received: by 2002:a05:600c:19cd:b0:458:be62:dcd3 with SMTP id
 5b1f17b1804b1-45b517c2fc0mr3572905e9.17.1755806860548; 
 Thu, 21 Aug 2025 13:07:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrtwXyk8M0MMGhBsDq6sn2/zjKB5pcui5JGSP2GUX5VAX4EhNVsrp5ZVJRMStvpa9W7AdEeg==
X-Received: by 2002:a05:600c:19cd:b0:458:be62:dcd3 with SMTP id
 5b1f17b1804b1-45b517c2fc0mr3572545e9.17.1755806860106; 
 Thu, 21 Aug 2025 13:07:40 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-45b50e3a52bsm8600375e9.21.2025.08.21.13.07.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:07:39 -0700 (PDT)
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
Subject: [PATCH RFC 12/35] mm: limit folio/compound page sizes in problematic
 kernel configs
Date: Thu, 21 Aug 2025 22:06:38 +0200
Message-ID: <20250821200701.1329277-13-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jSIAGw8u_uxWgABlCWvokLnvkstuvRKQh_dcS8hJPvY_1755806861
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

Let's limit the maximum folio size in problematic kernel config where
the memmap is allocated per memory section (SPARSEMEM without
SPARSEMEM_VMEMMAP) to a single memory section.

Currently, only a single architectures supports ARCH_HAS_GIGANTIC_PAGE
but not SPARSEMEM_VMEMMAP: sh.

Fortunately, the biggest hugetlb size sh supports is 64 MiB
(HUGETLB_PAGE_SIZE_64MB) and the section size is at least 64 MiB
(SECTION_SIZE_BITS == 26), so their use case is not degraded.

As folios and memory sections are naturally aligned to their order-2 size
in memory, consequently a single folio can no longer span multiple memory
sections on these problematic kernel configs.

nth_page() is no longer required when operating within a single compound
page / folio.

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 include/linux/mm.h | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 77737cbf2216a..48a985e17ef4e 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2053,11 +2053,25 @@ static inline long folio_nr_pages(const struct folio *folio)
 	return folio_large_nr_pages(folio);
 }
 
-/* Only hugetlbfs can allocate folios larger than MAX_ORDER */
-#ifdef CONFIG_ARCH_HAS_GIGANTIC_PAGE
-#define MAX_FOLIO_ORDER		PUD_ORDER
-#else
+#if !defined(CONFIG_ARCH_HAS_GIGANTIC_PAGE)
+/*
+ * We don't expect any folios that exceed buddy sizes (and consequently
+ * memory sections).
+ */
 #define MAX_FOLIO_ORDER		MAX_PAGE_ORDER
+#elif defined(CONFIG_SPARSEMEM) && !defined(CONFIG_SPARSEMEM_VMEMMAP)
+/*
+ * Only pages within a single memory section are guaranteed to be
+ * contiguous. By limiting folios to a single memory section, all folio
+ * pages are guaranteed to be contiguous.
+ */
+#define MAX_FOLIO_ORDER		PFN_SECTION_SHIFT
+#else
+/*
+ * There is no real limit on the folio size. We limit them to the maximum we
+ * currently expect.
+ */
+#define MAX_FOLIO_ORDER		PUD_ORDER
 #endif
 
 #define MAX_FOLIO_NR_PAGES	(1UL << MAX_FOLIO_ORDER)
-- 
2.50.1

