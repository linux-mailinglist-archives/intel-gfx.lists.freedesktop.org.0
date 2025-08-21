Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C936FB3036C
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:07:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 511C310E3BC;
	Thu, 21 Aug 2025 20:07:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="V+7hqylo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8025C10E3B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806841;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iU84NUWejaBSUFBs/T0/O04YrYLlq1RcxZMywEFGjU0=;
 b=V+7hqylofMCPpK6hKLSxmB0QhBOS5vaH5eyVd+LHxi7tyTNK5eSb1436piel5HQTBIYGSi
 z2kgSxuCLYoqlPpK3tRVPvnRegKJvHT6xZq/tmbCdMWKGgwdmz0kgSJDgir50Nh2wAO7N/
 rXaGbBf/Tj6lEHh3c5kOk90Y0pIGOSI=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-519-zlubmzmpOz-MIwhvyBzrXw-1; Thu, 21 Aug 2025 16:07:20 -0400
X-MC-Unique: zlubmzmpOz-MIwhvyBzrXw-1
X-Mimecast-MFC-AGG-ID: zlubmzmpOz-MIwhvyBzrXw_1755806839
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-45a1b0cb0aaso10734245e9.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:07:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806839; x=1756411639;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=iU84NUWejaBSUFBs/T0/O04YrYLlq1RcxZMywEFGjU0=;
 b=GXmo9ydOKL16eKBX7aq6qaAmbsvzNELZnDbC/wMR2f6FCMuyjcYntinG/isHjYjTn2
 Gjiz6gSQozAl0wjeCnqF5gBtNKG9l7h2aqrpqDixBIGPQF5rBoO6yW68HBKyvmkZfqzr
 zf8G/vBgNnNJyj9vBf1bQN0pSkrR/7awHNLn3i431z60ln3egYTGSultVsYkRJpT8bEA
 f6hjW3AvN5YxAfy9sb/GnMRelak3bCL6Akn0LiXlR+TdKOs5PEPMTwng9bxih4Jkq1/B
 Op+rnFZoZSjtdvIw13H9Tk3Pm4Q0TaljxfDbzZ/BMvWMbmG+24jOGiaJI+SSP1nKqrV6
 HPmQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUHuiINXe/24B3nvCXq9Mcf8doTGFPo9NF8B2out1B+DvH3SqjtUa2+jeKwp3P65W/aWmTmloRb458=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxh6UMmbJCnZgQ8EW0dIiAv07w6vSd5T5EtCnfhfEn4z13NO1k4
 GdTkSRoxja0L4VhWnQaYCeTgfqE9lTajsjve3fXCWa+T+idRcnbN6d3DK3eYVXOwCidRZw8ybz5
 wdjABznRvXK9YAw/lBa7iDgzhKt6sW+s2p6ARQgxCj9IzU8LoqtnzLQgKg+owUx2IJTTxow==
X-Gm-Gg: ASbGncsicfbubntGUGBOWcaalqMRqWCIBw/S6HxNxfkQmSJX89krpJ7ZCSLRqx6fdsC
 nQHG7Z58WgWPVEv2qhFGnlvKWSd8CzTdCMUYceXujd6vhs65FtPQ1u//7lhDTyH0koSrdErUeP8
 pLzdUzoch5YSsstwigQZUUgL3T1i2O2/7j/VtFRitS/uxY1WCVV1Ysxnwg+7jEKYqFVC+OIsk3w
 +otgyIg2pA5SKoiALcq8GWbNd5oRrJgxCtlDbtcwhhqukysZ8Mh2hskBHM6VDxfJ3kQsnL/6zSr
 TsfX9kNdf8+QmqDc+7bORAMVRMbrDfvmDtX1T0UMZw85RRWj9/6ntU/Z2Po7GO2ZBhBevKuEuVW
 SOidlp35cHmT02d16OT+DAg==
X-Received: by 2002:a05:600c:1f95:b0:459:db80:c2ce with SMTP id
 5b1f17b1804b1-45b51799428mr2845735e9.7.1755806838975; 
 Thu, 21 Aug 2025 13:07:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMhnqxttMNkrL8PAxIX9Mfq64uKkvY2MjzJ39LtAH2Yg7PxwVl8kOZ6CXLaaMF5rYTxrWwyA==
X-Received: by 2002:a05:600c:1f95:b0:459:db80:c2ce with SMTP id
 5b1f17b1804b1-45b51799428mr2845125e9.7.1755806838506; 
 Thu, 21 Aug 2025 13:07:18 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-45b50dea2b9sm8988005e9.15.2025.08.21.13.07.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:07:18 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: David Hildenbrand <david@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Dave Hansen <dave.hansen@linux.intel.com>,
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
Subject: [PATCH RFC 04/35] x86/Kconfig: drop superfluous "select
 SPARSEMEM_VMEMMAP"
Date: Thu, 21 Aug 2025 22:06:30 +0200
Message-ID: <20250821200701.1329277-5-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: _SDS3fEqu4SiTOi8i4H4kMS4S2G1N8myXDJVyhN_Usc_1755806839
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

Now handled by the core automatically once SPARSEMEM_VMEMMAP_ENABLE
is selected.

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 arch/x86/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 58d890fe2100e..e431d1c06fecd 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -1552,7 +1552,6 @@ config ARCH_SPARSEMEM_ENABLE
 	def_bool y
 	select SPARSEMEM_STATIC if X86_32
 	select SPARSEMEM_VMEMMAP_ENABLE if X86_64
-	select SPARSEMEM_VMEMMAP if X86_64
 
 config ARCH_SPARSEMEM_DEFAULT
 	def_bool X86_64 || (NUMA && X86_32)
-- 
2.50.1

