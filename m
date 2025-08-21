Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16742B30367
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:07:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6351E10E3B9;
	Thu, 21 Aug 2025 20:07:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="JALVObhu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C79610E3B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806839;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7sWLap5u4LkaWlbSo2T/W3JLtp2tuveUv2Z9sucaeo0=;
 b=JALVObhu7E1r7neufy+gxl02Ez/HazYos5Z2mUgV1eza6Wf9pU8JfOIJOYPeS5h1i2sggG
 HFbLbAiNyhNe1dLjIfCUP25huCW1cnCmeHyHA0aHA6IBpDOminsGig5MCSMcdZSuV0Yooo
 YHB62GWEFwCLXG+3q06jL1nIF6lD0Wo=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-205-y8wKjMszNLeL48zGmoSiIw-1; Thu, 21 Aug 2025 16:07:14 -0400
X-MC-Unique: y8wKjMszNLeL48zGmoSiIw-1
X-Mimecast-MFC-AGG-ID: y8wKjMszNLeL48zGmoSiIw_1755806833
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-45a1b05d251so7730785e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:07:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806833; x=1756411633;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7sWLap5u4LkaWlbSo2T/W3JLtp2tuveUv2Z9sucaeo0=;
 b=T+iUTVv5B14j4RpJtB4Bk7bPKeyMQAglJZBrmx+v0WdVslk5lUUjIRJFkQKotWF9ki
 4sse3u9soVILTQOj4A/cpFwh2tOBHunYl3rLLljVxQDjgL5gbbfHEwfoeLZ1N3fsyC9x
 /VQL+UlHFu6V4URKtCxIBGvVl/C4sodKPnA0qEuilNNOxyQifwh7FHwsTxB0p9Jq0wmt
 ZROfLNPnnOmjgj2Ux3sCwEWgZ5eHssz9CBouqUuE/W4HwojX+BnXEOkRwpbXISmti8bh
 CtWfNU6v3KoWmU3m5WowUDLpnoDtarvbt8SvL0pKVFhTrymjCmEaKxO24Zfx2q1LKoTo
 MugQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0pnRSNQdBVuctV7GX17fAPyaGTTj4VfieRL84ysDhsbcLHjLVLaTfwclbkMJ0xnAeOG5HAgjFWa8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz3AsrBIz3kXj/ZhsVXmkEjhi2E0icQK2lI5a/jEwPdqW/fP1H4
 rx7SlU8D9OudtiThAMYYdG84tjb6/oEgjd/dAN9oBKVg5eKBNUBP1HFCYi4KOoTDiZFHnnIE063
 oq1aNNuY2Oer4pu+44R6PGUxnt+9zC9mbg79ihR0n8U8YGhbJmgxn0C0vIZRofkBmRJsSyQ==
X-Gm-Gg: ASbGncvZJ47PIaJn5lDgjD//bn4+hyHakMIzSeHTZreJEIOG52+AeUDZCP9LBJWOWiN
 cerbJVloF1Z4PnvYx6/MsPpPlL1TUWy8fHa+J4HREo0Es6lZkCEUu8lsObbTTUcjQUtxtgDgISQ
 DNZGS3oPEyL6iEeYnOUOygLobEXK+c7wllqcWRpn01Bs1tCa5pAGuWnKQf6+DHFRsdW1uXtalbC
 4Y0nLbsv06zQhoBIuxiEUFkE0EPdZHtrPAcQE334j1TX+b/qT7t6bCxM+r3eTgxi6+NRoKcr7gq
 XGfcW/6+V4S0R/6fshP67UJiKSCKnroFLOFDfMvVLucgMjBai5/Kvqn0qLeTACSWzckkqqthcYD
 TrapUFTIJmPDbYMxjHUHwpw==
X-Received: by 2002:a05:600c:1d06:b0:455:ed48:144f with SMTP id
 5b1f17b1804b1-45b5179669dmr2598565e9.14.1755806833368; 
 Thu, 21 Aug 2025 13:07:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSutx6qbatKffMJ28UfT2ZDXFlSv+vNq81oYks3KAGI73zxxTWKo8ClwQ/mmPq6W0wDfVQow==
X-Received: by 2002:a05:600c:1d06:b0:455:ed48:144f with SMTP id
 5b1f17b1804b1-45b5179669dmr2597955e9.14.1755806832889; 
 Thu, 21 Aug 2025 13:07:12 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3c0771c166bsm12916801f8f.33.2025.08.21.13.07.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:07:11 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
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
Subject: [PATCH RFC 02/35] arm64: Kconfig: drop superfluous "select
 SPARSEMEM_VMEMMAP"
Date: Thu, 21 Aug 2025 22:06:28 +0200
Message-ID: <20250821200701.1329277-3-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: KBTDQxvJtdMSoxYtOSIaFnDO_ulxY4DbfgnjLV3sGgE_1755806833
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

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 arch/arm64/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index e9bbfacc35a64..b1d1f2ff2493b 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1570,7 +1570,6 @@ source "kernel/Kconfig.hz"
 config ARCH_SPARSEMEM_ENABLE
 	def_bool y
 	select SPARSEMEM_VMEMMAP_ENABLE
-	select SPARSEMEM_VMEMMAP
 
 config HW_PERF_EVENTS
 	def_bool y
-- 
2.50.1

