Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C64B30395
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 610FB10E9F8;
	Thu, 21 Aug 2025 20:08:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="jDPfnpv3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A03110E9F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806882;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=w6VkvDa+3msZeC5nA9B9+aDln+Mg2ABReefULBX94/4=;
 b=jDPfnpv3+N2oUxzL5Ms/5QeVqCMWtriLWVMs1G7Kk3oF7j6obMtvwE4/l4Rl3RVImRwBMJ
 tYlwCX+2//9mdOdWxx7BRMqQeSIGCfrjNDue+zl1985K4KJuXla1qfTmWwK0XOlsaknX3K
 estHeUaIsFKzD8WJkn1aT3SLSx0o5BE=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-306-Aokg9ED2Oe-9cgobDHNHvA-1; Thu, 21 Aug 2025 16:08:01 -0400
X-MC-Unique: Aokg9ED2Oe-9cgobDHNHvA-1
X-Mimecast-MFC-AGG-ID: Aokg9ED2Oe-9cgobDHNHvA_1755806880
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-45a15fd6b45so10808175e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:08:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806880; x=1756411680;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=w6VkvDa+3msZeC5nA9B9+aDln+Mg2ABReefULBX94/4=;
 b=ABf/aNTNAZEWQaqpO6dZLBKqiHTgyQSooriK/mAWRsggmB0WicyBIkp0NeC0uA7k+T
 E+dC2Kk6YsA0Nc5yRXmoqSyZYh8Aghwsl8p3vaWUKzi953/BpqAcfe0Xg49Q2aKbVW2n
 yUuKmon0v9WqhK+G8qiOYXhujh3TUZR28h7Nw0v0tXW4PC8FbQ/LWhjEHd1K9UaG6rur
 JFDDJnSoe6GtgZu7jNt8d03p5ZrbSWjZFyMLUbeusmqqYSui4m1ArHDQbCB8ZJ6rKarP
 /O9PjOw3PO7Ea7QGCV7/GP1LFxpQRWrXA0cwqcirPyx18rwRzvgMSKBmJ8WCbpconKYB
 sZNg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUKjhwmeRbhav8F7q8cC+rlOwA86vskZ0IuCFgIcgHTmskquB1r50PQmjc/Dx8+58Fy6GlyY7nsiWE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy65J+SaEWN3Bhcg7enR3OLX0oY5IJFDFZqkHN78/8T3V3HhFO/
 V90SaSHpeoS0wnUhWtG0gYYpC2lag2Kol+8W7dflvUo/dirGnmeRMHYlPSwpEvQU7I22e0BOJwx
 6huzVwYwIgDcPx/peqwFF0NoLKFUrgdOlxQ1CQvPv6mUCIbk6yyTffPUSpuk4G9jgpgSTvQ==
X-Gm-Gg: ASbGncvHdYLSUFhNZUauWEat6I3IejTj8TMDah2IGp+GKOxU5Shm/iowax9cVcA801J
 dAmqf5tTlDlYu7sLIjQL0vwpuS0WvvMDwDJV8LtZG5qVEE2XAjfxCf5Ps5bq+LHMcnKy0K0mHoa
 TdyvI78oVMOp3vX/YEB733cJmwbTdIQtpMedzOmpHwZfs5jJgLEoKQmv4zhEDyJIu44xRcdm5gg
 ISaWwuxjbNfJcxfyqYz51mwyX2meKqFORQ/RUfU5L+vXRyrv4QBUIEE+Hr1TpDviuaJWCxcg1Ua
 jwHvwDFtuLy1vkWy3vVxduq9cF31ZxMeidY+MKfvH0p5xli3MdkdEnCU1OX43NcEIsNJW0+EXfr
 7SOJw6CW6WI0Y2POC+0jZ6w==
X-Received: by 2002:a05:600c:1c87:b0:456:942:b162 with SMTP id
 5b1f17b1804b1-45b51792539mr3328615e9.11.1755806880042; 
 Thu, 21 Aug 2025 13:08:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9ciI0WdoI3CxhUtu7m/cESVsdReJmvmXFWCMaWsO+hhXySreox2GeOL2sJ8kVyLPwCYhbEA==
X-Received: by 2002:a05:600c:1c87:b0:456:942:b162 with SMTP id
 5b1f17b1804b1-45b51792539mr3328365e9.11.1755806879543; 
 Thu, 21 Aug 2025 13:07:59 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3c07778939bsm12219075f8f.46.2025.08.21.13.07.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:07:59 -0700 (PDT)
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
Subject: [PATCH RFC 19/35] io_uring/zcrx: remove nth_page() usage within folio
Date: Thu, 21 Aug 2025 22:06:45 +0200
Message-ID: <20250821200701.1329277-20-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 3ev5VNzK2_RHiS9FUbu3I4uZT-q7WOkFyAVtswAeUZc_1755806880
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

Within a folio/compound page, nth_page() is no longer required.
Given that we call folio_test_partial_kmap()+kmap_local_page(), the code
would already be problematic if the src_pages would span multiple folios.

So let's just assume that all src pages belong to a single
folio/compound page and can be iterated ordinarily.

Cc: Jens Axboe <axboe@kernel.dk>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 io_uring/zcrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/io_uring/zcrx.c b/io_uring/zcrx.c
index f29b2a4867516..107b2a1b31c1c 100644
--- a/io_uring/zcrx.c
+++ b/io_uring/zcrx.c
@@ -966,7 +966,7 @@ static ssize_t io_copy_page(struct page *dst_page, struct page *src_page,
 		size_t n = len;
 
 		if (folio_test_partial_kmap(page_folio(src_page))) {
-			src_page = nth_page(src_page, src_offset / PAGE_SIZE);
+			src_page += src_offset / PAGE_SIZE;
 			src_offset = offset_in_page(src_offset);
 			n = min(PAGE_SIZE - src_offset, PAGE_SIZE - dst_offset);
 			n = min(n, len);
-- 
2.50.1

