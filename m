Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C24BDB3039B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EFE710E9F0;
	Thu, 21 Aug 2025 20:07:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="G+CZgNUE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD79210E9EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806875;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QCvnB/7xI7T/4p4mwWx/D4+W6s//h9G2+oSyfbDOFZs=;
 b=G+CZgNUEzSQLJQwIThKqzOElNl60IpSHI0G8WEH1Kb07Xpe7Qthvh4flAOa7Lk/pCP40GN
 oz6Ib2b1vdKYzzWOQvSUymmnlsQDaunkPY01qS6f6PgTmAJZyLv49ifoOCxUzPp3v6/WQd
 DpmsAWewxFzq6Wfg1vHOCkCFLY2rpgM=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-665-7bP4rrikM-W34tLCEujCtQ-1; Thu, 21 Aug 2025 16:07:52 -0400
X-MC-Unique: 7bP4rrikM-W34tLCEujCtQ-1
X-Mimecast-MFC-AGG-ID: 7bP4rrikM-W34tLCEujCtQ_1755806872
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-45b4d6f3ab0so8379575e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:07:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806872; x=1756411672;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QCvnB/7xI7T/4p4mwWx/D4+W6s//h9G2+oSyfbDOFZs=;
 b=LeU19Tnftp27G5EIuPhe8gcxizT1xweNlsGjNBiUaie8lvNF7qaHUvX/2VGwbHs3bd
 hA2YjvTHClWguz6poDGJepn6yBeEkVtZL/Z2ahsCADPzFj9NHJQtzMbSERG51AYpogMG
 6L+rBRrWcWmPXfViCX94K4AwZA+0PGtPPGC8Ii0Ldqn3ROQIbBlH05v4In6e5rNtDRN/
 LGetZFzoV9jbUhTi7ypNjxnt1k7SFPgvTr1n5KxCA4DPUzHf1GBeVoqFtkphRs84d5lO
 OvLw0NXPHlZ3pJSIgNL3VopusFVqWz6ibnESgBXGTWWUnMJ/CMZIsOz8pW8HioZjFdIc
 zzYw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWVrVuMFWLTHLLI6MdrRGHvlP26Uq7rdo4tJ+kaq4zDFLo+bGj/OrZkTIEn8PgqgbL0JIJdP7XxW5o=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwuB2XOS4MntUGcR6E/7dmBTbA8roZqB5Iwfp/vaYiAIuNqt3LJ
 blTveP37QjY0X3feOqGaKKZj5gB+CGa1wWwIMDEqqYlFuLz16Wo0pHft3Wf0Ea/htf6fFTYkjdR
 2eILHN9QD6OhTbKtPRGDszwQtYyvetSlRHxldJ6sJ9nhs7DDxHxRPrIB97G5grYLxRtimcQ==
X-Gm-Gg: ASbGncvWe03NGSTik9xrgqNyOqCZgWmCDr2EPzLybSsFaJMXf/y4+C4Qrfuu+qbAyj8
 B8Cq6WB8yTQhI2Oqp1kt4/cAZusxGJ6GD4lTPVO0HybUIez9Zd7jas7UCmlFkJeHGFtVczO95AX
 5pYDNv4LCv7dRUkip59uOHaANe3mGVUK3tL0d4ko0PFiYF9nm5dPvq3AoQt/i9CMkNmMqUJs4qJ
 ZNtWskjXf6ADbV3rAyQ1l3KPnyRxVcxn4mHEceK95atuiTrBkUe2ogTmlnOLM0KfLVArq86sD9u
 KewLTD1RjqQfpPtQYPRUPbjnZnYkbDkRdO2N/y0sexb2/HpVqCALkh/buY48d5tw7ikaXgoLDhZ
 qCGim7r8z0XyMrfRdYGiTiw==
X-Received: by 2002:a05:600c:1d07:b0:459:e025:8c40 with SMTP id
 5b1f17b1804b1-45b5179e897mr2278895e9.10.1755806871589; 
 Thu, 21 Aug 2025 13:07:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQe1GSIQC6LfutgynQLrqB1o4Jo0GTrBjlhxRWjM7nqTD8l8oEo1HOcPxtIuVQVn3tsHm8QA==
X-Received: by 2002:a05:600c:1d07:b0:459:e025:8c40 with SMTP id
 5b1f17b1804b1-45b5179e897mr2278575e9.10.1755806871147; 
 Thu, 21 Aug 2025 13:07:51 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-45b4e1d77e0sm22159155e9.0.2025.08.21.13.07.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:07:50 -0700 (PDT)
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
Subject: [PATCH RFC 16/35] mm/pagewalk: drop nth_page() usage within folio in
 folio_walk_start()
Date: Thu, 21 Aug 2025 22:06:42 +0200
Message-ID: <20250821200701.1329277-17-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 02axNAwO4OfpBOMQKpogUo_1wl6WK4lbphhJOaVlKmY_1755806872
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

It's no longer required to use nth_page() within a folio, so let's just
drop the nth_page() in folio_walk_start().

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/pagewalk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/pagewalk.c b/mm/pagewalk.c
index c6753d370ff4e..9e4225e5fcf5c 100644
--- a/mm/pagewalk.c
+++ b/mm/pagewalk.c
@@ -1004,7 +1004,7 @@ struct folio *folio_walk_start(struct folio_walk *fw,
 found:
 	if (expose_page)
 		/* Note: Offset from the mapped page, not the folio start. */
-		fw->page = nth_page(page, (addr & (entry_size - 1)) >> PAGE_SHIFT);
+		fw->page = page + ((addr & (entry_size - 1)) >> PAGE_SHIFT);
 	else
 		fw->page = NULL;
 	fw->ptl = ptl;
-- 
2.50.1

