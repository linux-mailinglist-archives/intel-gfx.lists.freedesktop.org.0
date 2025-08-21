Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBACB303AC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E6610EA02;
	Thu, 21 Aug 2025 20:08:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="RpPHIlIz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7CFA10EA07
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806897;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qEz5al18caSg7WeU7/xaDhHrA43/vq8xaUIrOF+uMyw=;
 b=RpPHIlIzTn2wy4DImGCL6lMrvKPiPAG8KmWV9t7khMbi/4nUYWvaLrEGXrPwNwJ+42n/uC
 OErGeNh7AqwBjFtTuJHcMlvC/WwdcxMjwcrabUj3JwiQPwlUalSi2xA3/3xdEl5JlXksFy
 YllAkT3ItE+u3VH4kKDNhliOVy9zE1Y=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-604-ZVdda1LQPTif4emTRw7ucg-1; Thu, 21 Aug 2025 16:08:15 -0400
X-MC-Unique: ZVdda1LQPTif4emTRw7ucg-1
X-Mimecast-MFC-AGG-ID: ZVdda1LQPTif4emTRw7ucg_1755806895
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3b9e4117542so631247f8f.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:08:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806894; x=1756411694;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qEz5al18caSg7WeU7/xaDhHrA43/vq8xaUIrOF+uMyw=;
 b=maJYYs6Ju9w374cIm36IcG+DtFx0lwp+gak6+GjDoPrQghLbHRw1Urv9ZedmLUBZVa
 H4TtYqP7247A/Py+WBYr0DFTh5iP8DL4aUSxadsmfd3r6qekTrOzt4b7kbWZLwkKcnWW
 zk3GiV1FXG2RwCY4234eV8WKqrqUxcfQff0Ur+CGHd9NHS4RI4sq3HkSprNNuSBBSh3p
 FWogtB3U7ZcRNDMQcgNeMI6w0iFnwhxveRwBAoULj1r9PJ+HvsjNs3To2plnPTz6f7wO
 h0WVvoBE4LYctx3ASAOB9bAMuzoylBzlVFYjouWGlk8C3as2RsSulcOr95DV71tafQh5
 ETtA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUxpv8X7nH686ZiIStE52CSHUoOjqnRk5e7H02FYj3o4SRvIsERzhVtbDWSyGPrWVH8DrAfp/HeR54=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyJ2Oqj7CQA9m1spy/CLtXtxTWPB+GXXlLqeO0kI3SXeiV5l6WT
 G/XMahZoKtSAXk9WCSYj/+SBPACVX/ObS29Fv9tsE4SuInO7KDMaS4I1y/KZwMa2QqjvzD+3pUM
 FY7p2gG70jae3KiOeg1I2ZgnfPDJFTta5S1msvJUfeVFlFet+HjfLhQ9UhPt5d6awu9qGUw==
X-Gm-Gg: ASbGncvfwfNU1fqPIVHHDQtep7Aq0XQ2xFntRpHGU9RHiDirD6qd4hbDtGZb/mGJgWP
 PYVqyWy63CGac+Pdf7FVyWB4GnY7T0uhXEiwl3sdBYx5VWv6GuXORgKkoNd5Udv+IuNqhzpmzCb
 WhrsLA8dut8lo1BthPeseDwQgjitQiRI0mrzJF+YU2Ksi27Rc7eWpzRaKUJFgeHkRMfhu0QJf3F
 d5o8DpK49/G2WIJVAPYi5cDK3J/YLJhsn0xLogpfNOgy2B7Jg0agMVXjYrVFheCIYfT5i+Cix3Z
 5Stxhd3OrkMm2iyGEw63HcYJHuQoADb0H+MuSHKVmiQSUBeMDXnPOc9ceda02l00O5U55979z2T
 XRr1Ds5K5KkHTlq3qN0apOA==
X-Received: by 2002:a05:6000:18ad:b0:3b7:9c79:32bb with SMTP id
 ffacd0b85a97d-3c5dcdf9bd9mr215842f8f.44.1755806894493; 
 Thu, 21 Aug 2025 13:08:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYrE9N2OTZOZSEOVxEUY9xhX4UsF8UOhI+5wOqBRpd/3VSIxUjVMLdiea20BiXkc+w3FSZ8A==
X-Received: by 2002:a05:6000:18ad:b0:3b7:9c79:32bb with SMTP id
 ffacd0b85a97d-3c5dcdf9bd9mr215789f8f.44.1755806894010; 
 Thu, 21 Aug 2025 13:08:14 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3c074e38d65sm12982954f8f.27.2025.08.21.13.08.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:08:13 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: David Hildenbrand <david@redhat.com>, Damien Le Moal <dlemoal@kernel.org>,
 Niklas Cassel <cassel@kernel.org>, Alexander Potapenko <glider@google.com>,
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
Subject: [PATCH RFC 24/35] ata: libata-eh: drop nth_page() usage within SG
 entry
Date: Thu, 21 Aug 2025 22:06:50 +0200
Message-ID: <20250821200701.1329277-25-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 576SycRAAXhtHjHvJOpCiv6KKLzm9EJhuDNiBJsWJ2g_1755806895
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

Cc: Damien Le Moal <dlemoal@kernel.org>
Cc: Niklas Cassel <cassel@kernel.org>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 drivers/ata/libata-sff.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/ata/libata-sff.c b/drivers/ata/libata-sff.c
index 7fc407255eb46..9f5d0f9f6d686 100644
--- a/drivers/ata/libata-sff.c
+++ b/drivers/ata/libata-sff.c
@@ -614,7 +614,7 @@ static void ata_pio_sector(struct ata_queued_cmd *qc)
 	offset = qc->cursg->offset + qc->cursg_ofs;
 
 	/* get the current page and offset */
-	page = nth_page(page, (offset >> PAGE_SHIFT));
+	page += offset / PAGE_SHIFT;
 	offset %= PAGE_SIZE;
 
 	/* don't overrun current sg */
@@ -631,7 +631,7 @@ static void ata_pio_sector(struct ata_queued_cmd *qc)
 		unsigned int split_len = PAGE_SIZE - offset;
 
 		ata_pio_xfer(qc, page, offset, split_len);
-		ata_pio_xfer(qc, nth_page(page, 1), 0, count - split_len);
+		ata_pio_xfer(qc, page + 1, 0, count - split_len);
 	} else {
 		ata_pio_xfer(qc, page, offset, count);
 	}
@@ -751,7 +751,7 @@ static int __atapi_pio_bytes(struct ata_queued_cmd *qc, unsigned int bytes)
 	offset = sg->offset + qc->cursg_ofs;
 
 	/* get the current page and offset */
-	page = nth_page(page, (offset >> PAGE_SHIFT));
+	page += offset / PAGE_SIZE;
 	offset %= PAGE_SIZE;
 
 	/* don't overrun current sg */
-- 
2.50.1

