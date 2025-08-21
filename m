Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 870A4B30377
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:07:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3A7F10E9E2;
	Thu, 21 Aug 2025 20:07:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="E5sl1wE1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 135FA10E9D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806855;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=r/kmddABpvZJu5K+QD662cz6jOGE1r8xokeQdlRgepQ=;
 b=E5sl1wE1CIsFxUa+wftRZxms6HR2vxmvN9JdZjJYNl0uTyOJx5CZ0nCloW0VrKdexTfYgZ
 N3+MiM0LTD0pGSt+G0DAUw0xS5VRBIWbGUtIJRjsSdrsQzmH7qeH3FwG7wtuUKGm6qW68O
 nSiCz60weTDbWZ1Z4QK1GAoMaZsCJY0=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-422-fm2bUo53PCCsRf4PmPK8xg-1; Thu, 21 Aug 2025 16:07:34 -0400
X-MC-Unique: fm2bUo53PCCsRf4PmPK8xg-1
X-Mimecast-MFC-AGG-ID: fm2bUo53PCCsRf4PmPK8xg_1755806853
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3b9edf41d07so651776f8f.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:07:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806852; x=1756411652;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=r/kmddABpvZJu5K+QD662cz6jOGE1r8xokeQdlRgepQ=;
 b=MauAta0UFX0yVqbRQ/Go2DtrcIw07bf9GPNvFxNmmB9kGoXNAR0raff/RdotDAo289
 IXZbbxBpdtkaFzJ9ZNEehtxaeKd/7vY33oLYX2TZ6RHMBEOp8tZNDI59f5i0502wNtx4
 ZQGfKDZs5wRMqTI+C1KfL/rw+5xZG3E+9FsA5bIDcohhntAwtCCL3zfXiXRTFpTUXEjj
 QvhVYhhF4kfdOZ3QjscSdrHLskncdk6Rbk2tJWqplsEagUpsoxjvv2gRP2PbLIVr+mjV
 CSAr5Cn3sfHMQzMKPXGokgVl9sCRimkM4VL8nLQbmXie5V8ypmDMFRBwUk5Wcx2g+qvG
 rzXA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWprkWTjE+nZif0V/fphU7QqYJpevM3BTp+6kT54+gqcqv5TietthQbJGVmJ7BoApOkHN6ueOavDjs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyWN2qcGJqeraKpCxzOeqC0Axi8J8TyuUnY4kjUNxLpQfHQRfPv
 gvai2sWiFxTqaZaKI6utozkIWGbqTPzK1zoIQLgsxppaeAy7CTxODdXRTxnzgeB4FiKDDTnl80v
 ymf3d/FtBNGfaxLY8MKE0KS47aMNvkHkF2NLHhzWBbG7FeE4qlYgEKuCAFoX8YgQ6hRwuPg==
X-Gm-Gg: ASbGncuZ6mo3iV9YhbEJ4U0ARU84PD5hH2iaXIiXOtDbazO4g/EbKQ7e5xnaYfIs5Ye
 +NbtlAOsB5AWSY4iQlqdcFIYyorlsqsTVm8qH8tGdPC6TXsz9bEcnb55euMefm6rTsYnMR8x/G/
 5zSjZ9WWCon0aQ9cB/moFbki01vayOCEd9vNU/pA3D8Q2khOMiVbfh+2skg488alskLgNgfABsL
 gBjhkn6+yEHfXHjwub+DH24oeqarsvr3iC7B65Z+yofJ0snmHsSxR5EjBXid8pRhI6EDfASP1Q6
 BtPm6RXIDMQxag++qeivKHMMm2Efi7EruqRF0roXZ633CxjyvYz7OBcK37VEHsnKMbbCEATQOib
 XlDqUq+FZEg/xUkUdMoVMtA==
X-Received: by 2002:a05:6000:2dc7:b0:3b9:15eb:6464 with SMTP id
 ffacd0b85a97d-3c5daefa9e0mr244699f8f.15.1755806852609; 
 Thu, 21 Aug 2025 13:07:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHbqF8V2lF/CygktHxSJZNB7+pmyneW6nxhnLwTxWefpTwvecQ9FG1LkYH8lxi0WUYYPrMQFQ==
X-Received: by 2002:a05:6000:2dc7:b0:3b9:15eb:6464 with SMTP id
 ffacd0b85a97d-3c5daefa9e0mr244660f8f.15.1755806852102; 
 Thu, 21 Aug 2025 13:07:32 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3c077789c92sm12629958f8f.52.2025.08.21.13.07.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:07:31 -0700 (PDT)
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
Subject: [PATCH RFC 09/35] mm/mm_init: make memmap_init_compound() look more
 like prep_compound_page()
Date: Thu, 21 Aug 2025 22:06:35 +0200
Message-ID: <20250821200701.1329277-10-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0Wf9htgiIRCLI9lEfRrDxuKSs8JTiagNMI-9N-HeTYU_1755806853
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

Grepping for "prep_compound_page" leaves on clueless how devdax gets its
compound pages initialized.

Let's add a comment that might help finding this open-coded
prep_compound_page() initialization more easily.

Further, let's be less smart about the ordering of initialization and just
perform the prep_compound_head() call after all tail pages were
initialized: just like prep_compound_page() does.

No need for a lengthy comment then: again, just like prep_compound_page().

Note that prep_compound_head() already does initialize stuff in page[2]
through prep_compound_head() that successive tail page initialization
will overwrite: _deferred_list, and on 32bit _entire_mapcount and
_pincount. Very likely 32bit does not apply, and likely nobody ever ends
up testing whether the _deferred_list is empty.

So it shouldn't be a fix at this point, but certainly something to clean
up.

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/mm_init.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/mm/mm_init.c b/mm/mm_init.c
index 5c21b3af216b2..708466c5b2cc9 100644
--- a/mm/mm_init.c
+++ b/mm/mm_init.c
@@ -1091,6 +1091,10 @@ static void __ref memmap_init_compound(struct page *head,
 	unsigned long pfn, end_pfn = head_pfn + nr_pages;
 	unsigned int order = pgmap->vmemmap_shift;
 
+	/*
+	 * This is an open-coded prep_compound_page() whereby we avoid
+	 * walking pages twice by initializing them in the same go.
+	 */
 	__SetPageHead(head);
 	for (pfn = head_pfn + 1; pfn < end_pfn; pfn++) {
 		struct page *page = pfn_to_page(pfn);
@@ -1098,15 +1102,8 @@ static void __ref memmap_init_compound(struct page *head,
 		__init_zone_device_page(page, pfn, zone_idx, nid, pgmap);
 		prep_compound_tail(head, pfn - head_pfn);
 		set_page_count(page, 0);
-
-		/*
-		 * The first tail page stores important compound page info.
-		 * Call prep_compound_head() after the first tail page has
-		 * been initialized, to not have the data overwritten.
-		 */
-		if (pfn == head_pfn + 1)
-			prep_compound_head(head, order);
 	}
+	prep_compound_head(head, order);
 }
 
 void __ref memmap_init_zone_device(struct zone *zone,
-- 
2.50.1

