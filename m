Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42338B30381
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:07:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A9D910E9E4;
	Thu, 21 Aug 2025 20:07:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="e9xXcRIA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3AD510E9DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806860;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QQ4Uu4zoWyKmYQrq0i4l3HgKr6VpAHaNUVdQgPTsBAE=;
 b=e9xXcRIAYwhSGs1JA+qKbx7lSD6GgGofF8d4PIU00Et9Aqu50Ag20HYpeE8ret2AcJP5SN
 n0gsnZzZJsYbOoxobXeuG4aAf2YAqJj9rMFJ8m+BQPZ+C2DEKlkmv6HZkPiBbRrSs8pNq5
 3fruU1+uaLB1iPOL0TqujwdbiPOYpyA=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-275-JBjQ39L_MgqHc9PnetEjtA-1; Thu, 21 Aug 2025 16:07:39 -0400
X-MC-Unique: JBjQ39L_MgqHc9PnetEjtA-1
X-Mimecast-MFC-AGG-ID: JBjQ39L_MgqHc9PnetEjtA_1755806858
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-45b51411839so821395e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:07:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806858; x=1756411658;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QQ4Uu4zoWyKmYQrq0i4l3HgKr6VpAHaNUVdQgPTsBAE=;
 b=XOr5Fk8FctwC6ik6NBYMXcp7cekA0cTlk4zBZ/I/UUm3/rGmToK27SkeZINq+2XIE6
 Li73UaW1JEzQgQGtjXJ+Cq5B45ZxYC8kT1u8vdbs2xhuP1YOQxnBM6x7TfX+LOJ0SFmb
 DCGUvv9tCHJTpJguGgunmF3Z7ec3bvyUG4VMV0vB/AfJOE+1ATmebLeL8KElsxWTf/y0
 DQFgeReTRT7z0eGQsplj3gonN+0cUurbw6uRhxbDT5mOuLxBQ1tY1tkV/FSltPEwBW8K
 GuvtztAGAiFBo6zCRkqaz3Ctqa9mvE6onbPPIRqnu22NHVegg4rkxU5pNfe7ysaCi18i
 FHYQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXHRE1iy2DwmG0FS5qOpshm4RnOwyk+aTwO6Ys8dC0153EKh/otxVyRVcqImmW4dJs0Cp6Z2oq75Vo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzypZx0IgtDjygevQT0V/qSGi9K+TzlIrv0iQ06mStL2S48S2cZ
 /R427ugnCtcusvGfDXdUpf+YKcwg763ZWFfC2Zr1cxHKlNhSONpGtoRkOM/1InPkwYS/bFcdQ+n
 +Nl6tnI4r14XdQuw/vMlUU+kG2LK7pztIaFF37PR5KzuQ6X7I9swamOBA6KDu5bhjgCUuWg==
X-Gm-Gg: ASbGnctLja1mWulZ/R6g3JEnRQd4HcYeRTQkNNee1o+TgTSffjKBpfM5EoSC6eFEXVG
 L07+dxgnV1S1FayJLP5Y2/tXcbcN6dk52XFVi/faqRnS5fzj0DPnocbbTx9sWdp4+M/7LshuwqW
 o4q1TwtWWE6R5BYmya4QB7kqvxObQQG8Xa1/OmOODKOwqQjlextDdVjjRGfmuE9waCsvvBjcHij
 s2fK2W+oR/msw3BFskYwULVHCvKqNlegyU2PfLEsI09pV1Q5Wr82xLfeJ0Mgi3DIR6hgdOAENOW
 j6YD10An7wFpYyHlmYN2dJDDnvyo+COgvi9SIm7V6WsQAfiMmviKyZMYSIBU+GUDvrvzZUroCSN
 zlurOrZWQgNuOoJuLVQaytQ==
X-Received: by 2002:a05:600c:5251:b0:455:f380:32e2 with SMTP id
 5b1f17b1804b1-45b517ca54cmr2646705e9.18.1755806857898; 
 Thu, 21 Aug 2025 13:07:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlSU80KqPPviGOLp6CI40u/NjPujjG4FLCG6NoakJIlvY80lRDOTTm20w50mEKFuk0YjVSLQ==
X-Received: by 2002:a05:600c:5251:b0:455:f380:32e2 with SMTP id
 5b1f17b1804b1-45b517ca54cmr2646245e9.18.1755806857378; 
 Thu, 21 Aug 2025 13:07:37 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-45b4e87858asm18672185e9.3.2025.08.21.13.07.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:07:36 -0700 (PDT)
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
Subject: [PATCH RFC 11/35] mm: sanity-check maximum folio size in
 folio_set_order()
Date: Thu, 21 Aug 2025 22:06:37 +0200
Message-ID: <20250821200701.1329277-12-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: kbC1t-9B84EH93aESzBiAPq4R3LbmkUSsj2nmBm49HA_1755806858
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

Let's sanity-check in folio_set_order() whether we would be trying to
create a folio with an order that would make it exceed MAX_FOLIO_ORDER.

This will enable the check whenever a folio/compound page is initialized
through prepare_compound_head() / prepare_compound_page().

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/internal.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/mm/internal.h b/mm/internal.h
index 45b725c3dc030..946ce97036d67 100644
--- a/mm/internal.h
+++ b/mm/internal.h
@@ -755,6 +755,7 @@ static inline void folio_set_order(struct folio *folio, unsigned int order)
 {
 	if (WARN_ON_ONCE(!order || !folio_test_large(folio)))
 		return;
+	VM_WARN_ON_ONCE(order > MAX_FOLIO_ORDER);
 
 	folio->_flags_1 = (folio->_flags_1 & ~0xffUL) | order;
 #ifdef NR_PAGES_IN_LARGE_FOLIO
-- 
2.50.1

