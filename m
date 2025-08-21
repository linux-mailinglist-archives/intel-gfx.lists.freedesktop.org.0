Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9771AB3038E
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41FA610E9ED;
	Thu, 21 Aug 2025 20:07:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="U3k26lLo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CEC610E9ED
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806872;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MzMWVCGQW0mP4+/ULAfe7CdOmgWkAKLnoxAB4Fy092E=;
 b=U3k26lLojuRdCNgBwR1ZihkwkQjaEy8RQeTcjK1Z/GA3kx55Nm4vezg5ze72xWvFL2/0rS
 /3Lthet/wOUxegobDiOpW9bNNfn6tYj/R/dbQhLBvzN2p+BuvdEPDz+1b7dLs5SI6gUXg1
 G9ZEvz7H8hS51IH1Xw+Og7FGegbk1oA=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-660-wnQQXSI0NwiSWOPxiep5hg-1; Thu, 21 Aug 2025 16:07:50 -0400
X-MC-Unique: wnQQXSI0NwiSWOPxiep5hg-1
X-Mimecast-MFC-AGG-ID: wnQQXSI0NwiSWOPxiep5hg_1755806869
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3b9dc56225aso832660f8f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:07:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806869; x=1756411669;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MzMWVCGQW0mP4+/ULAfe7CdOmgWkAKLnoxAB4Fy092E=;
 b=Vwb0Vt93SGr/NMZuBPQNhZ0mIKkVZiBa2KlyY75Mt1th0a6QJXXxzZ4RNSpVdlyUlQ
 mJB3G9rIZRNtccrzyL4V9IWsXrAkfatR8xPSy2dUr2Di3M6bH22JYLWGpM5tGQaCT/VB
 AARazUcRKJQ79HHbNtlyJckA+nQjJFSTS3r+04dC1j1NlTFLP2s30tb2pEr3sSyVArUL
 fTsQLaC1NUuaauQoLSXUa8xTYMi/aV6tH2mbHKODcLoK3BTiNWXOuButlYaqMNfn8YDO
 VIPhM9dx8dbKN0AYxlWw97UEg5E7uicg8tzbyPLDpMa31RXIsSQxHMPSY0IeoAMMtnrH
 cVJg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW05SVpF2/B7N3S8GagmHa1OuAIZrYuyKWgU5jvepgADmvxiWMCW3iahIGqI2CZtdPXWStoVKWtoIY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyTWfb0fEm00iXC1s9SVRy6PjZbpiQ0eMvT1EVNffx9alChAv1z
 W+tRtdtuf2dd8WQ5c2/PWc7oxb4Uo+CpT3b90qpzQtA046CCdO8tt5Qo209MHv6jzSNoMWtHr47
 G71O3kaUfnIXMUZiXo5GFx6v/PdKef3tL37DIiiydWHj7aR37Gwl1e8pVV9Ot3wmm7PIPMw==
X-Gm-Gg: ASbGnctlSWN06d8MosDOPeG7GOc2nDOeha4vFA2bWequaNfdSwSCAPPdGQWGeSAfYdN
 f7B55+3ba9hcV1cXtMzentXlIBOme+qLywp/tIIGTmsdYSwAarMD0SDj1ErB4YYC41Qy6WtuFPo
 vyTi+7LX/rz6TxFYlt3mrr5rVD2txGeSAreRmAFtRyv2BF5+Xp++yxRJlWVt7KuuL/JP5tcCavv
 BYRf19h7v/QSAKBD6hj58Rg93a6Y0tyobxR8160yelmzmKB5LZY9FcAR1kIZ/kZWnMgiUViafUS
 5UaKXZajEez6YKKDXc8D/3ucPSRSaqbZPf6YMBxeUZgZtgL0x+6fYEXg+BQaEAnwJmPfn1SI6Oa
 1CXbrCZ3KoNbMJ07rJhV+Wg==
X-Received: by 2002:a05:6000:2901:b0:3b7:c703:ce4 with SMTP id
 ffacd0b85a97d-3c5dcff5f3amr167800f8f.59.1755806868896; 
 Thu, 21 Aug 2025 13:07:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHCm64ALptQrKyrLlaLt4xJ2vziBy3gZm4Q1WMVX6wnWhr2W2tRcHnZJHBwxpAOnTfL4mKx+A==
X-Received: by 2002:a05:6000:2901:b0:3b7:c703:ce4 with SMTP id
 ffacd0b85a97d-3c5dcff5f3amr167760f8f.59.1755806868453; 
 Thu, 21 Aug 2025 13:07:48 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3c5826751d5sm1323274f8f.14.2025.08.21.13.07.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:07:47 -0700 (PDT)
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
Subject: [PATCH RFC 15/35] fs: hugetlbfs: remove nth_page() usage within folio
 in adjust_range_hwpoison()
Date: Thu, 21 Aug 2025 22:06:41 +0200
Message-ID: <20250821200701.1329277-16-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: rC_YEwdIs4WEdJKtdOly4IHTValu8hDKah25qd4Xyhs_1755806869
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

The nth_page() is not really required anymore, so let's remove it.
While at it, cleanup and simplify the code a bit.

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 fs/hugetlbfs/inode.c | 25 ++++++++-----------------
 1 file changed, 8 insertions(+), 17 deletions(-)

diff --git a/fs/hugetlbfs/inode.c b/fs/hugetlbfs/inode.c
index 34d496a2b7de6..dc981509a7717 100644
--- a/fs/hugetlbfs/inode.c
+++ b/fs/hugetlbfs/inode.c
@@ -198,31 +198,22 @@ hugetlb_get_unmapped_area(struct file *file, unsigned long addr,
 static size_t adjust_range_hwpoison(struct folio *folio, size_t offset,
 		size_t bytes)
 {
-	struct page *page;
-	size_t n = 0;
-	size_t res = 0;
+	struct page *page = folio_page(folio, offset / PAGE_SIZE);
+	size_t n, safe_bytes;
 
-	/* First page to start the loop. */
-	page = folio_page(folio, offset / PAGE_SIZE);
 	offset %= PAGE_SIZE;
-	while (1) {
+	for (safe_bytes = 0; safe_bytes < bytes; safe_bytes += n) {
+
 		if (is_raw_hwpoison_page_in_hugepage(page))
 			break;
 
 		/* Safe to read n bytes without touching HWPOISON subpage. */
-		n = min(bytes, (size_t)PAGE_SIZE - offset);
-		res += n;
-		bytes -= n;
-		if (!bytes || !n)
-			break;
-		offset += n;
-		if (offset == PAGE_SIZE) {
-			page = nth_page(page, 1);
-			offset = 0;
-		}
+		n = min(bytes - safe_bytes, (size_t)PAGE_SIZE - offset);
+		offset = 0;
+		page++;
 	}
 
-	return res;
+	return safe_bytes;
 }
 
 /*
-- 
2.50.1

