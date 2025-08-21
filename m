Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6F9B3039D
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B82BC10E9EB;
	Thu, 21 Aug 2025 20:07:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Op8uFe6f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C07D410E9EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806871;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TaqjYk7qiFpFT4dP16wKMuC8fiQfbkUwRRgQVKGzHC8=;
 b=Op8uFe6fbQz66cPqpSGeBKIt4Fxe2uD2Tfq0kQhmS49NQ1KgQKbcrnDow9W3tLwIOvGFnK
 svMZVqlKHgS/TE4U3eu5+0mIO3zFU+h8q7+RyaoeS/j3EdWBUrySW5HGKysuyccswgd4ih
 vdY9TRImjht21qHvKGRq6X5BoPlijBU=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-640-9pAznWOsOvG87iQlRX3GGg-1; Thu, 21 Aug 2025 16:07:47 -0400
X-MC-Unique: 9pAznWOsOvG87iQlRX3GGg-1
X-Mimecast-MFC-AGG-ID: 9pAznWOsOvG87iQlRX3GGg_1755806866
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-45a1b0d221aso6547715e9.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:07:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806866; x=1756411666;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TaqjYk7qiFpFT4dP16wKMuC8fiQfbkUwRRgQVKGzHC8=;
 b=weQ5JCpdsZ0YvzLbzzYLUCGdmi5OoM9oN5q37E8TXWbZBMYihs+lAVkEumblI7/2W+
 mdH2YVtK5NJ+46qQHKT+NyGtBFLqzy/AAxC9ic5YQSi5DI1jXwsu+K9XwOktVAh71S9P
 CSIeLboparX2AAh4BFo2glTIWBGJfgk2fVmdRNRslrQZ3p0iKoJOJebRV+I/1Cx/KlT/
 oQVYqKwUrRRSyM8ePDdSROaioRYe8el5QtZo/nVpw0BvvK6PaVii/XWCEyWJZ934t3Ca
 SQ86sfLsVYuC5T9kIfPe/FkXuGOSbb3LjluvEyvLa+9+8xftLmV2t/pSoq3897uExJUC
 Daow==
X-Forwarded-Encrypted: i=1;
 AJvYcCWUlwuhFzhzQ1haOEE792kXrbrioqTJViTcTmzuyvWEZbgk+XMMUjvzuvxDM0aWhAUFgYLtAWLLhKE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzZqgH5xqXUCfKpFyxSmi/jE32m2WiN6TQ69xHhWy1WO0un8+7T
 HEdcikWZFPAJNGpUOveFFuCtnyHXAQA5gomaSvL2VuyHbc2spTaGu3DCH4vrCPXwWENCxV89mdO
 gtd4lFBjVo9mrdv6nT517Hqvdijz+er65+0bSyHJTdq1pa2Xk520OEQxxHjJBjYiBs5BY1w==
X-Gm-Gg: ASbGncvGUNfUSJ3MpnuYFWRcK0dPUjJTH68zvAxVfCGoWQ6zuP54yCqnpZdxvzDR35F
 u9ktCsaCTsAwPioECwXm+llvx4TFvS5gm/RhUbOhZkM11UcJoz6ICRXjcGClLwyogkN0Q8PLPY3
 m6/Mti+N3BlwhVqDe9OOBznhmnhcPn+apSz6QKl8sIQrwqWUvX6+UB8zZbYJeJ9AzJB7Uj/KSYC
 gHH2XwWsHYgPhMJKrubaTofBRBYxlRGxr30nKipHAQqYceWEBkzVixVQcorNzYT+ckYZYoJemFp
 ++yhjESsIXdwJxjoRHDEoWdPSPaeTdkEIsFTAe4E4ad5O8F9OJbHg+c1gkHwFHNUhmN5pGZIi1u
 E7KyQIQtuIKM9dfaINDY7cg==
X-Received: by 2002:a05:600c:1392:b0:453:5a04:b60e with SMTP id
 5b1f17b1804b1-45b517d4e23mr2819645e9.26.1755806866202; 
 Thu, 21 Aug 2025 13:07:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUtzGc4rPv18tjnV22wd1xjfGI25AJiVbHUBF3o7jj7YvZLrrv8XzLc39l/Z4dCqHj4yY2QA==
X-Received: by 2002:a05:600c:1392:b0:453:5a04:b60e with SMTP id
 5b1f17b1804b1-45b517d4e23mr2819075e9.26.1755806865726; 
 Thu, 21 Aug 2025 13:07:45 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-45b50dd0380sm8632985e9.10.2025.08.21.13.07.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:07:45 -0700 (PDT)
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
Subject: [PATCH RFC 14/35] mm/mm/percpu-km: drop nth_page() usage within
 single allocation
Date: Thu, 21 Aug 2025 22:06:40 +0200
Message-ID: <20250821200701.1329277-15-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Yyf12O93W55iW2XjGFou23F53imIiWweTmghIYFevxg_1755806866
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

We're allocating a higher-order page from the buddy. For these pages
(that are guaranteed to not exceed a single memory section) there is no
need to use nth_page().

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/percpu-km.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/percpu-km.c b/mm/percpu-km.c
index fe31aa19db81a..4efa74a495cb6 100644
--- a/mm/percpu-km.c
+++ b/mm/percpu-km.c
@@ -69,7 +69,7 @@ static struct pcpu_chunk *pcpu_create_chunk(gfp_t gfp)
 	}
 
 	for (i = 0; i < nr_pages; i++)
-		pcpu_set_page_chunk(nth_page(pages, i), chunk);
+		pcpu_set_page_chunk(pages + i, chunk);
 
 	chunk->data = pages;
 	chunk->base_addr = page_address(pages);
-- 
2.50.1

