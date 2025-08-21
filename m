Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C835B3035E
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:07:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C83910E3B8;
	Thu, 21 Aug 2025 20:07:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="LhULf3nJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D52610E3B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806833;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XmvTcrL5C0dM7rPtm73IEcsYc8PUVzmaMdzwCc2EnvI=;
 b=LhULf3nJV9rrOVMbbfb2/HuVTqykxxOL7IRjx4q4sjzQikAAHGf5wMJyE4+aeJAfmfuWS1
 050QsiU/XagnzF0Ho/aAtGe2dm0TCz3oOi0WtLipvweHcERfhzkr5dREVks12NzCoEvt5v
 lh3O/D6Qa76U6GtqhOKjZ8gO5g2j2w0=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-159-vHU2RAvUO9CYsV72WfhDTg-1; Thu, 21 Aug 2025 16:07:10 -0400
X-MC-Unique: vHU2RAvUO9CYsV72WfhDTg-1
X-Mimecast-MFC-AGG-ID: vHU2RAvUO9CYsV72WfhDTg_1755806829
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-45a1b05d8d0so8767075e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:07:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806829; x=1756411629;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XmvTcrL5C0dM7rPtm73IEcsYc8PUVzmaMdzwCc2EnvI=;
 b=ZHxqLkRtwU9YuQrYchvXjUgvWRAS0bEp3V2C5HLo5wzk7Z48ytwSILzwXiaaN2/ruC
 qFenR9y9qKSmgl2DLL+2TZaiFxhK3xHr0/l3OYaIJdLMjyPNu/4CavzAg+iZC7HJqtOz
 K5CTOR0Yz6ULtJm4XgLabsbI3mK0yGOIpddEkfWDlQgCyl6MzNmXpwtsVokyoPC7FmkV
 PeZLZHinSjr2ywgGv+tykPs7sVp4FMlBNl+GYHp6rcu0xPNsIdLVu9EYSkeohs+6rm76
 kn9MKxtQA49DbDoiuPVncGWPWbjoJUfWFgyOmwPctCEHX6OQbTg66grI6H0BKXIKZs0L
 a4tQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWtkxX4bq6uqKIiy8RnVhChu6Wuto7/hrSLqxiYveUQSBw09wC50um2UYDii4iRjkYeqWK+ycW65+E=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxZ3J9gRZZP8z4oH5sZQ4iN6nKbw9aZao+0XBMYqI+75YyuIrsc
 YcAkeDy2pYeylifsItkMPTIa7GetJ0h13plI7j0SIuU0/HABY9KU35AC4AUabr97wih5vRPJ0j/
 tUf9GNWkzGskS07UGdHGphhsDpLO4yaNEicfyDxT2IBRF1JaDPyazicteSAT6tRdVLmuTOw==
X-Gm-Gg: ASbGncuDjWInKmAUAPXbH82YaOGuHPGHNTKTQowgxV738DCOBfgPac6UTsjkAXaSn8W
 7mIuQyNaCA0PP5J2O9YzQFSAT9MM2R4Qr4SCZatEOlNe4H4nkyeDfr5O9U0Nh7L0In8kvocXP/N
 Vhu3Oq40KbWkufMT4Z8RCTfub1F79RQyy7ibbtBLdYo48IfC3pPswRJnkwd8YYmL5aPHFSn3Ic9
 2zt7UPkR47jiXorbTN4RNCFmcFeEWLi1kgD2nL+qMLjZpbIeQDaDVZkCgQgdeN5WKaP3me/X26H
 aDniB4UY+4ypzaiCo/MDvROcOFdd3Wlhw9UOCGiwWkjsSGT/ANdvG8Caj60NMn7R/J+pdNxLlEt
 psz7AKYeDG4QNRMt++NG7Sw==
X-Received: by 2002:a05:600c:4506:b0:456:eab:633e with SMTP id
 5b1f17b1804b1-45b517c5f34mr3673595e9.17.1755806829487; 
 Thu, 21 Aug 2025 13:07:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvYkVaGxfZdplMxnR9eu9+L8mDJqjqWM2enq3Cze2cE8zEp05huuco+bDpuuERUQ/1xaOAqQ==
X-Received: by 2002:a05:600c:4506:b0:456:eab:633e with SMTP id
 5b1f17b1804b1-45b517c5f34mr3673145e9.17.1755806828996; 
 Thu, 21 Aug 2025 13:07:08 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-45b50e1852asm8722665e9.25.2025.08.21.13.07.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:07:08 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: David Hildenbrand <david@redhat.com>, Huacai Chen <chenhuacai@kernel.org>,
 WANG Xuerui <kernel@xen0n.name>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, "David S. Miller" <davem@davemloft.net>,
 Andreas Larsson <andreas@gaisler.com>,
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
Subject: [PATCH RFC 01/35] mm: stop making SPARSEMEM_VMEMMAP user-selectable
Date: Thu, 21 Aug 2025 22:06:27 +0200
Message-ID: <20250821200701.1329277-2-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: glCr1W4U6Kmj9wHHqQ_HOKCx_xeGzU1y741J3j-rsvM_1755806829
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

In an ideal world, we wouldn't have to deal with SPARSEMEM without
SPARSEMEM_VMEMMAP, but in particular for 32bit SPARSEMEM_VMEMMAP is
considered too costly and consequently not supported.

However, if an architecture does support SPARSEMEM with
SPARSEMEM_VMEMMAP, let's forbid the user to disable VMEMMAP: just
like we already do for arm64, s390 and x86.

So if SPARSEMEM_VMEMMAP is supported, don't allow to use SPARSEMEM without
SPARSEMEM_VMEMMAP.

This implies that the option to not use SPARSEMEM_VMEMMAP will now be
gone for loongarch, powerpc, riscv and sparc. All architectures only
enable SPARSEMEM_VMEMMAP with 64bit support, so there should not really
be a big downside to using the VMEMMAP (quite the contrary).

This is a preparation for not supporting

(1) folio sizes that exceed a single memory section
(2) CMA allocations of non-contiguous page ranges

in SPARSEMEM without SPARSEMEM_VMEMMAP configs, whereby we
want to limit possible impact as much as possible (e.g., gigantic hugetlb
page allocations suddenly fails).

Cc: Huacai Chen <chenhuacai@kernel.org>
Cc: WANG Xuerui <kernel@xen0n.name>
Cc: Madhavan Srinivasan <maddy@linux.ibm.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nicholas Piggin <npiggin@gmail.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Alexandre Ghiti <alex@ghiti.fr>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Andreas Larsson <andreas@gaisler.com>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/Kconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/mm/Kconfig b/mm/Kconfig
index 4108bcd967848..330d0e698ef96 100644
--- a/mm/Kconfig
+++ b/mm/Kconfig
@@ -439,9 +439,8 @@ config SPARSEMEM_VMEMMAP_ENABLE
 	bool
 
 config SPARSEMEM_VMEMMAP
-	bool "Sparse Memory virtual memmap"
+	def_bool y
 	depends on SPARSEMEM && SPARSEMEM_VMEMMAP_ENABLE
-	default y
 	help
 	  SPARSEMEM_VMEMMAP uses a virtually mapped memmap to optimise
 	  pfn_to_page and page_to_pfn operations.  This is the most
-- 
2.50.1

