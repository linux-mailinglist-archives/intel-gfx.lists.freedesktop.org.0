Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B36BB303C6
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9675610EA16;
	Thu, 21 Aug 2025 20:08:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="E/KO9xJP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7F1210EA12
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806913;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6kuJ+10C4pYxyWPcGDJkWqMBAcRGmXje5KFYns7NWu0=;
 b=E/KO9xJP0YDwduCbaEPPq7YLrvtQCc3Z8TyPZBcXsz00h6654GmKf/8pfObbdClc/wpHwJ
 HDLphXChXhi+4noPGDW1BT5q6aNE2Q59BSKnGxl4WOmkzBU5AAnwYCAxXDMLPotve6sDRU
 0DWtDpFJqjGtxHYv2hJLbjqkgotpSKk=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-484-ttimvQbdOnS7P8xB0v2EAA-1; Thu, 21 Aug 2025 16:08:30 -0400
X-MC-Unique: ttimvQbdOnS7P8xB0v2EAA-1
X-Mimecast-MFC-AGG-ID: ttimvQbdOnS7P8xB0v2EAA_1755806910
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-3b9d41bda7bso1054442f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:08:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806909; x=1756411709;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6kuJ+10C4pYxyWPcGDJkWqMBAcRGmXje5KFYns7NWu0=;
 b=UPrt9/RCwEBZuTuTTGeevE0T925NeIsxmuTqmA1ibLlSyRZ0Sgidf2/3Jmbe1C8E06
 +ObZZ2OivEtbAl7Z4P8rSYPIYTYBhoXGr5oCacy1IbOcsOAqzGZMnLnkb4gqyR00XDaE
 oVtnYAIJUNd8Ln5K4Krfa5aOIqzUB3fnTt9lE21g217eveRiVucEkzzKu/Ot2A4eV87X
 a9KTNnU9x1lKwuW/JKjL7iJHAFtV3Mbr52OXmR1RNjG0oY1EzugAUsOUuEa7svE74HNZ
 LxxKokAeedjDd6Z8pIVaDhmVNe44e3KoupKsPcsNT7l3RyuWxyFKIqKGKATmeEqnwEFe
 pLGA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWtueie9kLzqVbPRx3B4ZxKfz+bN7wlSp9hfQ6d40Ss3KPBiDcJPenEr5G2+V91Iw7AFG+XhjND0EQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz65MHq/0xETU3Yh5ZIn4GG0sPQExDwz1cWlszTajH9wAp8c7s1
 B5Z0Cjx6qOH9XSfcZUn7gOyGFzu2ZQR6V+M2Ita1NLz7CH1OQpfDdZ/lUwWKGt/hxtXNkfwp8xJ
 Z9Sx1zViLNFpVLhD2sFnHhHwiIWSepVOm7z2joa+3d5rndpJEITSsDfqmxezGIj8v25ZphA==
X-Gm-Gg: ASbGncuJ4AA8HNH3bD99m3GYw5unLkynxHxDgWpgCd/BtqKguDQm7vlPtLZx5c9hr+f
 b/jbkbH8VqFq74rBHipzEBfFNq6Rd4RCS8mHp4YaeYSV94rrsTmrIUcT4X6qzXFXmVIjYkZJhiW
 TAp2fYV6UUXC2jOhYPYCxNWVbXS1I1UEQNfJIqi1mH32QtfbrOsEZfkg0pkn/cAUX/BaSOw/7wl
 t0O4PldVty/N++/OZY7i1uNcs/2R0jl3L8zIyQCJlK4AOx6dyWJOnhGfgMnUffJV5Om+u+au0u0
 53dB4q2sY/iIGiK/zNH9V+yrO6OHJ8/cmAbgck2EevIMmjth7ufg4LrtRYgqU2KTyPDTyn5m9nJ
 97yXnMyqMxcQNz+HmzGJJ/g==
X-Received: by 2002:a05:6000:18a6:b0:3b9:48f:4967 with SMTP id
 ffacd0b85a97d-3c5dd6bbb33mr155529f8f.56.1755806909478; 
 Thu, 21 Aug 2025 13:08:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRykwWh31JVJGBkobbD9YNZEskJV981iF0h0FASAg1XfgxaqZA4MQnDyPntA4/emfIOpWurA==
X-Received: by 2002:a05:6000:18a6:b0:3b9:48f:4967 with SMTP id
 ffacd0b85a97d-3c5dd6bbb33mr155476f8f.56.1755806908930; 
 Thu, 21 Aug 2025 13:08:28 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3c5317abe83sm2432791f8f.40.2025.08.21.13.08.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:08:28 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: David Hildenbrand <david@redhat.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Doug Gilbert <dgilbert@interlog.com>,
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
Subject: [PATCH RFC 29/35] scsi: core: drop nth_page() usage within SG entry
Date: Thu, 21 Aug 2025 22:06:55 +0200
Message-ID: <20250821200701.1329277-30-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: zk8zj4zrLCs8rq3adlR8ngpByTt9CuUYQzsNJbAtnAs_1755806910
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

It's no longer required to use nth_page() when iterating pages within a
single SG entry, so let's drop the nth_page() usage.

Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Doug Gilbert <dgilbert@interlog.com>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 drivers/scsi/scsi_lib.c | 3 +--
 drivers/scsi/sg.c       | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index 0c65ecfedfbd6..f523f85828b89 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -3148,8 +3148,7 @@ void *scsi_kmap_atomic_sg(struct scatterlist *sgl, int sg_count,
 	/* Offset starting from the beginning of first page in this sg-entry */
 	*offset = *offset - len_complete + sg->offset;
 
-	/* Assumption: contiguous pages can be accessed as "page + i" */
-	page = nth_page(sg_page(sg), (*offset >> PAGE_SHIFT));
+	page = sg_page(sg) + *offset / PAGE_SIZE;
 	*offset &= ~PAGE_MASK;
 
 	/* Bytes in this sg-entry from *offset to the end of the page */
diff --git a/drivers/scsi/sg.c b/drivers/scsi/sg.c
index 3c02a5f7b5f39..2c653f2b21133 100644
--- a/drivers/scsi/sg.c
+++ b/drivers/scsi/sg.c
@@ -1235,8 +1235,7 @@ sg_vma_fault(struct vm_fault *vmf)
 		len = vma->vm_end - sa;
 		len = (len < length) ? len : length;
 		if (offset < len) {
-			struct page *page = nth_page(rsv_schp->pages[k],
-						     offset >> PAGE_SHIFT);
+			struct page *page = rsv_schp->pages[k] + offset / PAGE_SIZE;
 			get_page(page);	/* increment page count */
 			vmf->page = page;
 			return 0; /* success */
-- 
2.50.1

