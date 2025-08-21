Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C5DB303D8
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 569BD10EA27;
	Thu, 21 Aug 2025 20:08:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="E+EKZVNo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A27E10EA24
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806928;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8aQmj/0+AYT4mPx/DatgQPPbmq0Lkvm9KCqKkKCdC9Q=;
 b=E+EKZVNoIN341jMTTRkCIXdmOqy0S50EZmPngqAufEwPbx8Oovknj/Of1Vh+DK6sLftdgY
 L++eBcRmIkt7n+h5FO9EfzS43bnLz3RahmZyzXuxYejpK2VM4NKGP871WLsIEKMqLyzFZW
 j9CGwzD4GF76CZDfMH8D9xnFLWmSOgg=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-347-BUi-W6BZMgOdL7ldz4kp1A-1; Thu, 21 Aug 2025 16:08:46 -0400
X-MC-Unique: BUi-W6BZMgOdL7ldz4kp1A-1
X-Mimecast-MFC-AGG-ID: BUi-W6BZMgOdL7ldz4kp1A_1755806926
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-45a1b0bd6a9so6980045e9.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:08:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806925; x=1756411725;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8aQmj/0+AYT4mPx/DatgQPPbmq0Lkvm9KCqKkKCdC9Q=;
 b=Ktqt5Q0Dpo/os/CX4llxgOMhzNIBOMvi8k9MG7+/q5eWRw+dBE1doTUDbiO7y+vFcU
 fxFKbjBnEsixZqBTRZwGP1hyDzjnewmXjRIIR1Ix+ii1bvSr3u23iz+Z2JlSaosnQiwi
 lNzVO4B2gIbtHlDpr4PHO3yuA2HzqNJZtUWRYklW5UnQ/g3R5JQR+NyUiFcQYlr8FIWv
 OUFqbhyIWX3L7lkFux+l4vZVHr3jLy99Zk9/dyxfrF83UHCemQLzhR3q+CmeWMEl8srV
 B2O0QMhAs18YG5+l/Gbzq8v4A6xdNc3nyOhTrNT48am4JADtyxodv989fB2VXMVX6Sf1
 Sj/Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCX42Xrqywi2PGy7hzNUV+Zo5UaTd0hK9F80PUoSMiimX7j+UQNTDyPBtuUl4HfhupR+t+/SUp02bxM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyCTR9c8RF5nH8rPAzjpZsbZ9vP4hVramq82h5owyaFlB0/sZq5
 1n4oeFA7zuAmaKQJoAJAOvPpuTGaY87Ppzn9o/tL4Dtlukkk+NlTUmW/O64CAGzb230gkXcpoch
 sBDDqf7Ss8mAEqZnejUDAnauaJYrscvkpuTizYszVljFV/ZwCIjy5QQw52wQCCFB93yHw+w==
X-Gm-Gg: ASbGncvkctvq4XSIRcD579hXicaZi9nGptzP6Jt4q6V2Ebx2g0x3lKHi7rcOknmByMg
 nC1cUlvMRh08TkjsJxsyZwy3IpYCa9hKhYHh0Rxej1izyzKbUje0RJTQudigiPkL3rz+wxPPTDb
 aSrtxd1dE6UGBMlCA+BHQkl3/sAr2NraMep0IkvStXdbMtrOtb3v4Rc60qnge3daMrM2tRkGv/2
 QzJI+6CtDIOF06GLY0LD71VdVO0FuUAPrgZi1xbrahNMsD8RCbhkxNxvyCDTD7QGcPYXww/M7u0
 erjIETykWpDEDyMmNHdhEaUxrQON/koF6didqbdd2nXRz3cgmutwez3mg8/euHTOttZKbeax4qn
 aR+EqG5T5cEv8JUVORcqxpg==
X-Received: by 2002:a05:600c:3b25:b0:459:da89:b06 with SMTP id
 5b1f17b1804b1-45b517b008dmr3774245e9.16.1755806925524; 
 Thu, 21 Aug 2025 13:08:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHDDv+I9AWZPVyKVFD2prHDmQqsK3mzEWwP5yNf0oRJXtHjmqgi3hMC3hwAmszm5rTAtK85Rg==
X-Received: by 2002:a05:600c:3b25:b0:459:da89:b06 with SMTP id
 5b1f17b1804b1-45b517b008dmr3774035e9.16.1755806925116; 
 Thu, 21 Aug 2025 13:08:45 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-45b50e0a479sm8895255e9.21.2025.08.21.13.08.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:08:44 -0700 (PDT)
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
Subject: [PATCH RFC 35/35] mm: remove nth_page()
Date: Thu, 21 Aug 2025 22:07:01 +0200
Message-ID: <20250821200701.1329277-36-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: W0Bgb08i6gC07nlTg6T7lRGP4CtU2ugDaYCwgqp3-mY_1755806926
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

Now that all users are gone, let's remove it.

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 include/linux/mm.h                   | 2 --
 tools/testing/scatterlist/linux/mm.h | 1 -
 2 files changed, 3 deletions(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index f59ad1f9fc792..3ded0db8322f7 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -210,9 +210,7 @@ extern unsigned long sysctl_admin_reserve_kbytes;
 
 #if defined(CONFIG_SPARSEMEM) && !defined(CONFIG_SPARSEMEM_VMEMMAP)
 bool page_range_contiguous(const struct page *page, unsigned long nr_pages);
-#define nth_page(page,n) pfn_to_page(page_to_pfn((page)) + (n))
 #else
-#define nth_page(page,n) ((page) + (n))
 static inline bool page_range_contiguous(const struct page *page,
 		unsigned long nr_pages)
 {
diff --git a/tools/testing/scatterlist/linux/mm.h b/tools/testing/scatterlist/linux/mm.h
index 5bd9e6e806254..121ae78d6e885 100644
--- a/tools/testing/scatterlist/linux/mm.h
+++ b/tools/testing/scatterlist/linux/mm.h
@@ -51,7 +51,6 @@ static inline unsigned long page_to_phys(struct page *page)
 
 #define page_to_pfn(page) ((unsigned long)(page) / PAGE_SIZE)
 #define pfn_to_page(pfn) (void *)((pfn) * PAGE_SIZE)
-#define nth_page(page,n) pfn_to_page(page_to_pfn((page)) + (n))
 
 #define __min(t1, t2, min1, min2, x, y) ({              \
 	t1 min1 = (x);                                  \
-- 
2.50.1

