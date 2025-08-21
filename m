Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B499EB30398
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA4E410E9F5;
	Thu, 21 Aug 2025 20:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="fZ5Ty5sW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30F910E9F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NPs2EdTZ9fd3MpWdb0ATDCa6nUqfGtFMv2uyZP7L+uU=;
 b=fZ5Ty5sW0qYz/PmHJwB7r+5zVnYtzRpVlLaUlzm3PSHu5K6hamNED5c6VRFgrH71JEg4Z/
 wWDBbUjKT1SY/c9ehqhg/OoH672bAuvfrs1c1EfDAO5Hd6Amygv0bVitRC+qOAkKHCn1j6
 GpFL7RYOiyBMHmebo8RJtNauZ0sANPg=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-61-q3opz3L9Oda9_YMpD7iRLg-1; Thu, 21 Aug 2025 16:07:55 -0400
X-MC-Unique: q3opz3L9Oda9_YMpD7iRLg-1
X-Mimecast-MFC-AGG-ID: q3opz3L9Oda9_YMpD7iRLg_1755806874
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-45a1b00352eso7028875e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:07:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806874; x=1756411674;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NPs2EdTZ9fd3MpWdb0ATDCa6nUqfGtFMv2uyZP7L+uU=;
 b=NTKFzYcmQ/7gCJOMWCkEMxJ1vUX7MMiANTQgeIReavxlPSQwYIA9H71XgDnJ18UzfV
 yLP6LD7yjNWMCW4oHZbr/6jLHHRG4LeBg/b9fTUrnPjQqz+tfwr7FaNF0vzIXhYwbIfK
 NuMV2hHMgYifut/QKVs3tpa1zj+mS6Qt0dhBw5zp2s75RGNT6FNMmEkmVuOtzT0G9Wqh
 xL+Foc7P1J/vOJ9O8HiZM9ZGCGjhG0nO0opKcWzdbc+AN+H7/fDmd8eI3bgK9B1I3qg9
 xy1AflxSwthiZgJHuIvGjbCimje+XJcpZ10HH/gPcXM0A7XbhzzQEuRtcSTiXd91kwvI
 NEYQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWwh/+hYmYyQwYAXCI2g1R3pUPuPna1lcHKfD1FPDXY7dp2XDtwAs/wOZIqdtg3roo/pSrIWLLHlWc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzpZ7A+lwV03QyyQOCRbwbMpGClb5Dk1Hbbojos4vu0mrpddVEn
 oVrs6Fs5SZFP4JS1F3q2106qT0wFMxhA+r25wOAy+NWXwlh9McM/OAq8hEutz8Uh+AKMLFPBuFv
 oEu+nJCKl6f5Ww/3kffD4t/S+WJIi10xc56CIOYUT+/HWfuBfaEf+N19pffXcnli7A9qvTA==
X-Gm-Gg: ASbGncslGW0ud5zgFQZ2IvkJ5BRcC62fddnNWzDRDPBDP6lbqUXX3oVtF8FdfjFWpip
 fEQonTaqEOlHFEWuFF+x3vNEzZjurfglAU3xWtAWNOmYDFQn4kIa52iMDpgyS7DGmN1Me/WhXT9
 BjrLT4rCXGl1+ZPV4oqOh+b/BDXHeMahQ/SPN9A+ZldRPare+ys9k6GK7IIN7UeQWrxQwiox6UZ
 XNyADN9erjY+yNUElpahG8m0MlYDEEBPxI+8Uvcl9b8gQV2NXfpl7ZeDkXNmACTLocCSXu7kRH0
 pFhvoPCZVxBC/4PUZdUX4aUOusrhww9ZgZ36Pfj2SgoZtjYiSTJvzF8E4hNCj83gJwb1ua9F0RX
 qASCC4Wsz7W+zqWxErF0Llg==
X-Received: by 2002:a05:600c:1388:b0:459:d451:3364 with SMTP id
 5b1f17b1804b1-45b517d40f2mr2554285e9.24.1755806874315; 
 Thu, 21 Aug 2025 13:07:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFo8ikhW4DoWVw60oDeAXqMRvn4UERlcVawLCjGel2pacwRc1R1ONhYVQm5EzuW0YIJQT4FDg==
X-Received: by 2002:a05:600c:1388:b0:459:d451:3364 with SMTP id
 5b1f17b1804b1-45b517d40f2mr2553905e9.24.1755806873856; 
 Thu, 21 Aug 2025 13:07:53 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3c07487a009sm12690403f8f.11.2025.08.21.13.07.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:07:53 -0700 (PDT)
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
Subject: [PATCH RFC 17/35] mm/gup: drop nth_page() usage within folio when
 recording subpages
Date: Thu, 21 Aug 2025 22:06:43 +0200
Message-ID: <20250821200701.1329277-18-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ypF3VWWPe6fFzT7wbwaM3x7uNGvJTt0gmoXv3CLf2xA_1755806874
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

nth_page() is no longer required when iterating over pages within a
single folio, so let's just drop it when recording subpages.

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/gup.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/mm/gup.c b/mm/gup.c
index b2a78f0291273..f017ff6d7d61a 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -491,9 +491,9 @@ static int record_subpages(struct page *page, unsigned long sz,
 	struct page *start_page;
 	int nr;
 
-	start_page = nth_page(page, (addr & (sz - 1)) >> PAGE_SHIFT);
+	start_page = page + ((addr & (sz - 1)) >> PAGE_SHIFT);
 	for (nr = 0; addr != end; nr++, addr += PAGE_SIZE)
-		pages[nr] = nth_page(start_page, nr);
+		pages[nr] = start_page + nr;
 
 	return nr;
 }
@@ -1512,7 +1512,7 @@ static long __get_user_pages(struct mm_struct *mm,
 			}
 
 			for (j = 0; j < page_increm; j++) {
-				subpage = nth_page(page, j);
+				subpage = page + j;
 				pages[i + j] = subpage;
 				flush_anon_page(vma, subpage, start + j * PAGE_SIZE);
 				flush_dcache_page(subpage);
-- 
2.50.1

