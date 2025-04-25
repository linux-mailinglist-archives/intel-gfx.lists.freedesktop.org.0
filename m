Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61805A9C0B2
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 10:17:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 436DB10E8C9;
	Fri, 25 Apr 2025 08:17:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="h/JKD8sN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04AD810E8C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 08:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745569059;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LXejfGAknVxklqhHCW/V9liutcQQAQcJcrhEqzVyY78=;
 b=h/JKD8sNeMheMSLSli8r2DtuVz2osJDmqHn4tk0QHZjzo89VqusVQPqDzpLyzSO/whL7yC
 lyFrkJsr0RH6A5/zv3WaimApKLGcHlRcfxRQ9GdMyF+WEiF8V5kVSAETlmtSWsKJa0W0Yt
 yDI61RNXErmv91E2TjCMdwWx1t+BfrA=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-213-YMJ2xWMRPfe-8BX1o6ZjGQ-1; Fri, 25 Apr 2025 04:17:37 -0400
X-MC-Unique: YMJ2xWMRPfe-8BX1o6ZjGQ-1
X-Mimecast-MFC-AGG-ID: YMJ2xWMRPfe-8BX1o6ZjGQ_1745569056
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-39d917b105bso999046f8f.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 01:17:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745569056; x=1746173856;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LXejfGAknVxklqhHCW/V9liutcQQAQcJcrhEqzVyY78=;
 b=aiCccjb4keln4rEBk/LjfSN/wfq6x/DlW8tvuiyx6c/N/zITKLgjd0/q1SpZpHIxPT
 69LYfVryw3vpah/V2Hm0fOQB2ZC9HX/4VkM73dx61ooWB6tlTv2WafUTmzQHsIQta305
 /KLo9eQX3KwKYGpxwCoITa6JXKzgte8Boj+snaCSVXJUgAo/+8IZLEZ//y9JpMa4QFS6
 3ADDcpRBQSywU+iBxvK5mdYXMsqzqWf93kgwLAsDAXPTeuCXObIyKP3vxcx1gCYcwhDw
 HWggBZw6sBfTGr84PF8D3DdLMJW8waKkRkeLoM2wwRjtkhBFnMY80ScGmHwj5HjHPFuc
 wIdA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXZqXwesueyEW3yqfgc3OzKkaow645KaywRqWqG5K4Ln2vUn+CAKWc9jSfX9wx0F1aKmha65PULnGs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz3Q4Ps2QE01bBUsM+nU2suJeJYRNTCPzufM4NWvL0mFiXFJSjV
 EuetkKyNKxM3PfPaPeU380OsLTWA6tDtQ8mQr2lfu6XVBHacx67yfnpfukMf5M7qlXJJomaudWj
 7PVdh3CmXxfLpzxyEPqm5HS2KPoFtcp54HzMg8MRJ2ktl4LNJS7ONbl2amWXpwuEMuw==
X-Gm-Gg: ASbGncumrtDbsOC1nSNZ+zIf1T+h6HCRLn24aE2K66FqcSbIA6nh5aI/QJ+VGpJprh2
 ePw1FIY00uVpMRr2JrY9bswIG3et9RvR1t+Wg6hvkG4W/iWmlGRaHXfNQx5keRncNkLChTWjN5H
 YdTnoI6TLxtlfzEn3w5meClSC7RGu1CeCLeYKY1MOMy5sdbDs4h7T8HWlOBfGrU5S5zh9nKCO6G
 GTL89H4zvGt6m3RyDmBR+qWRyWfQjV6b0ytjoP5MBy/z3bZlfuX4BiySPqjCJ7Sx3KPOK1ygWQx
 JV+xA8M1L//jumhBrnWSkGoUFSrCffeRmiIOA1n2IqB1m7sw42zUjeq7uzhTqdjSc9Qd3Wk=
X-Received: by 2002:a05:6000:4028:b0:391:2c0c:1247 with SMTP id
 ffacd0b85a97d-3a074e0e4d1mr832134f8f.1.1745569056470; 
 Fri, 25 Apr 2025 01:17:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEU1X+NuNfEcvtfeCEnq/l8/EdxH0+aUnwVbo8Kq4KyW0RucKtS6876psW/EjwOajf1KdVRgA==
X-Received: by 2002:a05:6000:4028:b0:391:2c0c:1247 with SMTP id
 ffacd0b85a97d-3a074e0e4d1mr832108f8f.1.1745569056044; 
 Fri, 25 Apr 2025 01:17:36 -0700 (PDT)
Received: from localhost
 (p200300cbc70f69006c5680f80c146d2a.dip0.t-ipconnect.de.
 [2003:cb:c70f:6900:6c56:80f8:c14:6d2a])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3a073ca52e5sm1657353f8f.36.2025.04.25.01.17.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Apr 2025 01:17:35 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: linux-mm@kvack.org, x86@kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-trace-kernel@vger.kernel.org,
 David Hildenbrand <david@redhat.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Andrew Morton <akpm@linux-foundation.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
 Pedro Falcato <pfalcato@suse.de>, Peter Xu <peterx@redhat.com>
Subject: [PATCH v1 08/11] x86/mm/pat: remove strict_prot parameter from
 reserve_pfn_range()
Date: Fri, 25 Apr 2025 10:17:12 +0200
Message-ID: <20250425081715.1341199-9-david@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250425081715.1341199-1-david@redhat.com>
References: <20250425081715.1341199-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: xmdJv2UwvtBKYo_mrkT8MOeB9xZCjOwqE3uOP4WKZHY_1745569056
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

Always set to 0, so let's remove it.

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 arch/x86/mm/pat/memtype.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/x86/mm/pat/memtype.c b/arch/x86/mm/pat/memtype.c
index 668ebf0065157..57e3ced4c28cb 100644
--- a/arch/x86/mm/pat/memtype.c
+++ b/arch/x86/mm/pat/memtype.c
@@ -858,8 +858,7 @@ int memtype_kernel_map_sync(u64 base, unsigned long size,
  * Reserved non RAM regions only and after successful memtype_reserve,
  * this func also keeps identity mapping (if any) in sync with this new prot.
  */
-static int reserve_pfn_range(u64 paddr, unsigned long size, pgprot_t *vma_prot,
-				int strict_prot)
+static int reserve_pfn_range(u64 paddr, unsigned long size, pgprot_t *vma_prot)
 {
 	int is_ram = 0;
 	int ret;
@@ -895,8 +894,7 @@ static int reserve_pfn_range(u64 paddr, unsigned long size, pgprot_t *vma_prot,
 		return ret;
 
 	if (pcm != want_pcm) {
-		if (strict_prot ||
-		    !is_new_memtype_allowed(paddr, size, want_pcm, pcm)) {
+		if (!is_new_memtype_allowed(paddr, size, want_pcm, pcm)) {
 			memtype_free(paddr, paddr + size);
 			pr_err("x86/PAT: %s:%d map pfn expected mapping type %s for [mem %#010Lx-%#010Lx], got %s\n",
 			       current->comm, current->pid,
@@ -906,10 +904,6 @@ static int reserve_pfn_range(u64 paddr, unsigned long size, pgprot_t *vma_prot,
 			       cattr_name(pcm));
 			return -EINVAL;
 		}
-		/*
-		 * We allow returning different type than the one requested in
-		 * non strict case.
-		 */
 		pgprot_set_cachemode(vma_prot, pcm);
 	}
 
@@ -959,7 +953,7 @@ int pfnmap_track(unsigned long pfn, unsigned long size, pgprot_t *prot)
 {
 	const resource_size_t paddr = (resource_size_t)pfn << PAGE_SHIFT;
 
-	return reserve_pfn_range(paddr, size, prot, 0);
+	return reserve_pfn_range(paddr, size, prot);
 }
 
 void pfnmap_untrack(unsigned long pfn, unsigned long size)
-- 
2.49.0

