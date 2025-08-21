Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7FEB303BE
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 919D810EA10;
	Thu, 21 Aug 2025 20:08:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Ak/W30zp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28FBE10EA12
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806911;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yR/3u5W37RASrGsn/s3pQVQ78UUgH4ByCavV3b4UG3M=;
 b=Ak/W30zpEZnckF6IJ6Qu0OnuUQYJK3z2KIUBTh7HpHX46vyKIHuxpdLZoeIIyDlkhLTz61
 O9uKl0pYReaVzrQ7nl40ISeqe9DFFEDPHy4l6JK6QAIJrAepNdN9ih3n/EISeDuwe12Ahb
 5YBdfKZm0kFpTfuitPnbuIRLbLY6004=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-374-zZ28hCZgM42vNZ1onzn5Ng-1; Thu, 21 Aug 2025 16:08:25 -0400
X-MC-Unique: zZ28hCZgM42vNZ1onzn5Ng-1
X-Mimecast-MFC-AGG-ID: zZ28hCZgM42vNZ1onzn5Ng_1755806904
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3b9a3471121so763864f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:08:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806903; x=1756411703;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=yR/3u5W37RASrGsn/s3pQVQ78UUgH4ByCavV3b4UG3M=;
 b=kZw3tW1iVTpWdM5QEz9wVCTSR2qZHFygxIbtyWmwP8h3DIsiq4Niq8fKMROgb4//Ah
 gY3x/zW0hm/YTrg7vigslYvPBM+ZNBm0mL6zSDNOmrramagrgP4R2NRw5exehKotzOe1
 RnXX5hyjsmoBzmUDRfwyegau/qtZezjtuNJi07feiMP/2Cp9jmBA9qWeQZ+n5fx795Of
 GdRpQScNvrMHSW7mJKtLtYSWwfU9g13xouguElENTIwRSLKYQQOD70GzPaC9tx+dmk9o
 614Zvmg5wFjq1x8iFZdwtBFIIlS/gry/RjvtM1mPkONnl5egE/dYsqvbosBn8ZO5+SrP
 6gCw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVpRk0LqAKmS0hBU33Am+tqlL8w1UxR7zAOwCx1C/z6OsN8kuJJVvI3h47R81LNzXxre53B8w/5H7E=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxFGxvvSnWaeycjSt5UeueIVVWddSsOkwm1vLfGQWPR44R1itTR
 udtCha1ekbo/Mb8kJ0zTjxzriKwn8ZJIoU1r6kb3zlD23B5he+EKtlrMfhcew6TgIYLSzy8HIlp
 LGOWKPvLCvdRc6lngNSm7BS/xHMX907zNgVH4y+3PjuTcFsGnFlsEtxRwFs4mub99Y6oEvA==
X-Gm-Gg: ASbGncvg9O+R2V+VmKZkXJTf/AljKPYjABU+UPzYlkOlZtNnjdNP5SUAufwJOf8D4LJ
 V/kmX6OJvzOHj3jcMe6kKoxUYFkZ+HkcS6mXYN8GdliCC39lj3micOR1VfUtZQfVnf7qHNy/9jm
 VqEkz5M508/4gEL+QWg2i8uAQ8NGO258snawp5KA5pu1nYxmZIOkG+axn/fccxpK/64gU47lemm
 1TlA3sfV+p7FLzomicOcImpDVX67s9NQ/C5YTYGsRyvsJkdB6hs6j25RkjfgSeRCz1JnYzxJGNs
 cjpvQcH3e7VO02y7469R7wqWi6i/lLJtNi4LAVp1SPH/vNjotxgPjP/n0yb/b4AVbTkX6CX5a1U
 6eM0HEl8QECY3Rfqx59SPaw==
X-Received: by 2002:a05:6000:310e:b0:3c3:5406:12b0 with SMTP id
 ffacd0b85a97d-3c5d53b40abmr247266f8f.30.1755806903612; 
 Thu, 21 Aug 2025 13:08:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+53ePp4gOBoZK5+aLlST4uu6G3xHtHBUa0vmdrbtPfJ4bf44S3Zn2IpCr0m84pAneAOD81g==
X-Received: by 2002:a05:6000:310e:b0:3c3:5406:12b0 with SMTP id
 ffacd0b85a97d-3c5d53b40abmr247245f8f.30.1755806903113; 
 Thu, 21 Aug 2025 13:08:23 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3c0771c1708sm13032145f8f.38.2025.08.21.13.08.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:08:22 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: David Hildenbrand <david@redhat.com>,
 Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov <oakad@yahoo.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
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
Subject: [PATCH RFC 27/35] memstick: drop nth_page() usage within SG entry
Date: Thu, 21 Aug 2025 22:06:53 +0200
Message-ID: <20250821200701.1329277-28-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 8peREtPB6tVrrSN75FJdmBZRe9yjpKkWkCAVEuMcr4M_1755806904
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

Cc: Maxim Levitsky <maximlevitsky@gmail.com>
Cc: Alex Dubov <oakad@yahoo.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 drivers/memstick/host/jmb38x_ms.c | 3 +--
 drivers/memstick/host/tifm_ms.c   | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/memstick/host/jmb38x_ms.c b/drivers/memstick/host/jmb38x_ms.c
index cddddb3a5a27f..c5e71d39ffd51 100644
--- a/drivers/memstick/host/jmb38x_ms.c
+++ b/drivers/memstick/host/jmb38x_ms.c
@@ -317,8 +317,7 @@ static int jmb38x_ms_transfer_data(struct jmb38x_ms_host *host)
 		unsigned int p_off;
 
 		if (host->req->long_data) {
-			pg = nth_page(sg_page(&host->req->sg),
-				      off >> PAGE_SHIFT);
+			pg = sg_page(&host->req->sg) + off / PAGE_SIZE;
 			p_off = offset_in_page(off);
 			p_cnt = PAGE_SIZE - p_off;
 			p_cnt = min(p_cnt, length);
diff --git a/drivers/memstick/host/tifm_ms.c b/drivers/memstick/host/tifm_ms.c
index db7f3a088fb09..0d64184ca10a9 100644
--- a/drivers/memstick/host/tifm_ms.c
+++ b/drivers/memstick/host/tifm_ms.c
@@ -201,8 +201,7 @@ static unsigned int tifm_ms_transfer_data(struct tifm_ms *host)
 		unsigned int p_off;
 
 		if (host->req->long_data) {
-			pg = nth_page(sg_page(&host->req->sg),
-				      off >> PAGE_SHIFT);
+			pg = sg_page(&host->req->sg) + off / PAGE_SIZE;
 			p_off = offset_in_page(off);
 			p_cnt = PAGE_SIZE - p_off;
 			p_cnt = min(p_cnt, length);
-- 
2.50.1

