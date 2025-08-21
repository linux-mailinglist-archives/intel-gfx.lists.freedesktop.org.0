Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D20B303D6
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85D4110EA1E;
	Thu, 21 Aug 2025 20:08:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="N3GKuT+u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13C8410EA1F
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806926;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Z7iPpUiW3LrFM0W3XrB+Z82uodwKTsefoCzXwhLbLUo=;
 b=N3GKuT+u+DvWAvpzT2+mvlAtduXZobTWJI+3sLR4n+mBp55UgBmZqrwcbah/wnQnuNvIpR
 nWpNVe5FqYr5gneMGqTlrYfsxr8VObYpfaB6lwP/3SfYXYILP+0irgqowy1Vk+Wvjvhkmw
 yHGVkgAZZBwaMGshQcCZhzTVuOoI4Tk=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-157-7lb3ITpoP8Sci4i5b48BfA-1; Thu, 21 Aug 2025 16:08:44 -0400
X-MC-Unique: 7lb3ITpoP8Sci4i5b48BfA-1
X-Mimecast-MFC-AGG-ID: 7lb3ITpoP8Sci4i5b48BfA_1755806923
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3b9e41037e6so864607f8f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:08:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806923; x=1756411723;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Z7iPpUiW3LrFM0W3XrB+Z82uodwKTsefoCzXwhLbLUo=;
 b=amBocK9dJEPUJxzyeoFUZHo3OhfX/SaIjL8DIHl1gfI+vhMfskwva2ItVln/pXqlxA
 JE8h0ohZlXXBylG/1aIkm3leDhOpuTVS0UGaO3V2gix32vJQ0G/zLt1JN86LH4V3v/y+
 f0Q9Is0mdj4Y0YitBBjZ9MaYA81pfL+Z0u5Ak3cuA4Yyim7SSaRpt8U28/5lrPZrd8AH
 uEMo81LAwqLiev6sBc/fpax/BvfOTfn/oCYHRguTM2im5d9XLGS6TYPLT+SzfSMV1KQJ
 A+YNTvx8tcps9Wvts5YelIw/YA3QcZLAPPZ6FxEYJB9K7SDjdPZJ2KPwkLGi4E0xEC3M
 hMOw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVGk7/NVY5nY0crNtAbr1ZzsYCBLNVcm18PQPOx6mlhkCiPM7rD4UYudzdjM22RNpmzMbTo1tn5s80=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwO6aa82VMc8UDtgPwnMrB7RQmnIJTjirmzTMJwQdBcfzXmRdsl
 X1XgO0lX8zbUseyGvWC3VMCHVXQs0kFGGOuiAJ0WXn8PVHVec/rpQyPJrp0voWMLafZ2r8wwZ3F
 S82QUgr07onhgAHsKOGxCczoSK8os1A+psGXql50F6aWwoC7G3WgHbwBEJNtI121yVyGMJQ==
X-Gm-Gg: ASbGncvRfoyHnSBJIYkznfBV2mAqKfLgigUkA5IsU9U+GK0FADkEcTzVlaEGer1bBEH
 hZcpNCBAIGXy7ebjX9Ta1FUD63Wby30WxbDiaUg7C/qzVVWfNzcHww7PhZz1H0r10M+N+kC24FA
 wvqH+OMOKYjiYyVBltYDH4bw994OYEUiwiNIrmk7t0/XfPvjrBkv4dsnCokeAApjP69fX6spiBP
 KHokuCl6BwE9bdprok8mKmK5AXkqtwRlGSSdknXHzPiNiJc6q3y2xSpNOIrE1nag6Qh2Fl3Xowp
 dH0AU9T1IyPz90aO4hL3OdZO4cpIZQhsIqne+FerXnVStsIq58KYW05pYf/3Xn1QN/RVTe1sjsK
 0MN6Uuek5NdWNvwfCi06wlg==
X-Received: by 2002:a5d:64ed:0:b0:3b5:dafc:1525 with SMTP id
 ffacd0b85a97d-3c5dc7313famr204667f8f.33.1755806922944; 
 Thu, 21 Aug 2025 13:08:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnHzRKC08dohUKQD/XdldMc6IWYVddiLtTh8Yidep5vx+5++gzVG23SiimMwYZ+HldR36Zkg==
X-Received: by 2002:a5d:64ed:0:b0:3b5:dafc:1525 with SMTP id
 ffacd0b85a97d-3c5dc7313famr204645f8f.33.1755806922505; 
 Thu, 21 Aug 2025 13:08:42 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-45b50e3a587sm10028205e9.18.2025.08.21.13.08.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:08:42 -0700 (PDT)
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
Subject: [PATCH RFC 34/35] block: update comment of "struct bio_vec" regarding
 nth_page()
Date: Thu, 21 Aug 2025 22:07:00 +0200
Message-ID: <20250821200701.1329277-35-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: skta401qF7P9spdHJtCZqWovBMcGgf0D5OeyP84bUBY_1755806923
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

Ever since commit 858c708d9efb ("block: move the bi_size update out of
__bio_try_merge_page"), page_is_mergeable() no longer exists, and the
logic in bvec_try_merge_page() is now a simple page pointer
comparison.

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 include/linux/bvec.h | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/include/linux/bvec.h b/include/linux/bvec.h
index 0a80e1f9aa201..3fc0efa0825b1 100644
--- a/include/linux/bvec.h
+++ b/include/linux/bvec.h
@@ -22,11 +22,8 @@ struct page;
  * @bv_len:    Number of bytes in the address range.
  * @bv_offset: Start of the address range relative to the start of @bv_page.
  *
- * The following holds for a bvec if n * PAGE_SIZE < bv_offset + bv_len:
- *
- *   nth_page(@bv_page, n) == @bv_page + n
- *
- * This holds because page_is_mergeable() checks the above property.
+ * All pages within a bio_vec starting from @bv_page are contiguous and
+ * can simply be iterated (see bvec_advance()).
  */
 struct bio_vec {
 	struct page	*bv_page;
-- 
2.50.1

