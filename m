Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 913C8A9C0A6
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 10:17:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E5B910E8BE;
	Fri, 25 Apr 2025 08:17:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="ZrKMssMv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4BEB10E2E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 08:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745569045;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nRatMFVJgZO6lv6AeD3PmgD6qQLhfd2cdxeF01R18V8=;
 b=ZrKMssMvJjRxwqfO67jlPx7DyfRzLzCTPXQXJ/aubxlnlAS/tZhaDcy6POoxGlyOm9dMef
 5MKacAUL4bxbbbOLTlAAmWwt/trKWTYUD9Y9d9iainRaTeVnPApS1EL+ckAjXl9rRTWh1a
 6zahJZmSFMOk3y15BDF8UapS2Swml0E=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-467-dyftq111Mx-fWsGvSpOJzQ-1; Fri, 25 Apr 2025 04:17:21 -0400
X-MC-Unique: dyftq111Mx-fWsGvSpOJzQ-1
X-Mimecast-MFC-AGG-ID: dyftq111Mx-fWsGvSpOJzQ_1745569041
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-43efa869b19so10864685e9.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 01:17:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745569041; x=1746173841;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nRatMFVJgZO6lv6AeD3PmgD6qQLhfd2cdxeF01R18V8=;
 b=LM2NHRw46JfYIkVXOixDCd7mzbNeiv1m4q0PVMvnNHKpYS93DBSkKrTTKtiPkoK+9j
 wB3lubGypMwvLXOS3prFt6L4Q8mL5c1cLhSlwT+42j/XDAIdFKqRxeri1wqOmsY+u8Nx
 /qlmP5IJgHfXI8AkRc5XuFNl+sH9qMy6E9bVo6CZwm0TuPJSdlwS3ZZyigIGPLYUibaQ
 EfkqSFFXMLZ7WkRea7BmtccYZ6UYLadK2MVU773YJMuHFFzuvavaJ+1wLHOdoNkeBGBa
 mpPIzlT2hY9CU3bn9c/ztmwmcGN4N8J0lZbG/0+maqU81RGfa67LvS5uMYNo1GPcg7Nh
 SwmQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUsgChRAZAma1fHGdG+0GmZaEcUaQrkuPJqPFZqEwkR82TWTMdrtt9+MNjRfxB9MOPxvzKboGHdcDQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwHPA2JWJckBJgXMMTvxqtniUTQ1oyTLt3rotnbULr/9qQzSPeT
 YLd89QsA+bLC/glcJQBoHLarxhxzgZg8MK8ZToeRh0aspRPcsS2G8m43UoIdYI4LTdT8zkb2T5J
 CKise4N6L36JnLSeawh+NPKLCacmSerwV4U1+brP1kXBLlQlkmPkiV6Uox8EZnXzAlQ==
X-Gm-Gg: ASbGncuMCADh5Kr5YWbwg2dcme5pNB7xyPacT1ryTnVw2k/9S5po3wq/BakZWRcRlVI
 E5lRVYvtGGjUK71FW6JaJLFZ02iHeeaUhV9a6HUwhul9A2vBOaHPhaeluNUsehRV3hwGe2XpN/1
 9m76Sxk8Qt6461/Ln1Shcapw+0w/+tfyteMY3S/BAtU+a0eAt0flP5rQ6iDCMucPTtCs5VrBRax
 Ko1mTegSwNWfVaa75vl9/GYL6i1HMtTNFUHCz7GKFvpQAu8cAiPB0GLlZL39MsvX2kakbGc118i
 ZW3stxdMDckXdsFeETQwpIiJ0e24cYKCs/RttNi7ZeXtHe/kVB66widzKeB+i6RA9z57g3g=
X-Received: by 2002:a05:600c:a012:b0:43c:f87c:24ce with SMTP id
 5b1f17b1804b1-440a669d8f0mr10327025e9.21.1745569040759; 
 Fri, 25 Apr 2025 01:17:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVinoHYuKj/8cUgxoKVvs8H4zVeT82NWUNjJq9UBXeWLT5FdTynwvFlGCuxwFT/AVFDXEE8Q==
X-Received: by 2002:a05:600c:a012:b0:43c:f87c:24ce with SMTP id
 5b1f17b1804b1-440a669d8f0mr10326755e9.21.1745569040316; 
 Fri, 25 Apr 2025 01:17:20 -0700 (PDT)
Received: from localhost
 (p200300cbc70f69006c5680f80c146d2a.dip0.t-ipconnect.de.
 [2003:cb:c70f:6900:6c56:80f8:c14:6d2a])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3a073cbedc4sm1583000f8f.47.2025.04.25.01.17.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Apr 2025 01:17:19 -0700 (PDT)
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
Subject: [PATCH v1 01/11] x86/mm/pat: factor out setting cachemode into
 pgprot_set_cachemode()
Date: Fri, 25 Apr 2025 10:17:05 +0200
Message-ID: <20250425081715.1341199-2-david@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250425081715.1341199-1-david@redhat.com>
References: <20250425081715.1341199-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: uvIOZ_orAJF5d2_LIZdxM_mnBFwPmInh81p59328bO4_1745569041
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

Let's factor it out to make the code easier to grasp.

Use it also in pgprot_writecombine()/pgprot_writethrough() where
clearing the old cachemode might not be required, but given that we are
already doing a function call, no need to care about this
micro-optimization.

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 arch/x86/mm/pat/memtype.c | 33 +++++++++++++++------------------
 1 file changed, 15 insertions(+), 18 deletions(-)

diff --git a/arch/x86/mm/pat/memtype.c b/arch/x86/mm/pat/memtype.c
index 72d8cbc611583..edec5859651d6 100644
--- a/arch/x86/mm/pat/memtype.c
+++ b/arch/x86/mm/pat/memtype.c
@@ -800,6 +800,12 @@ static inline int range_is_allowed(unsigned long pfn, unsigned long size)
 }
 #endif /* CONFIG_STRICT_DEVMEM */
 
+static inline void pgprot_set_cachemode(pgprot_t *prot, enum page_cache_mode pcm)
+{
+	*prot = __pgprot((pgprot_val(*prot) & ~_PAGE_CACHE_MASK) |
+			 cachemode2protval(pcm));
+}
+
 int phys_mem_access_prot_allowed(struct file *file, unsigned long pfn,
 				unsigned long size, pgprot_t *vma_prot)
 {
@@ -811,8 +817,7 @@ int phys_mem_access_prot_allowed(struct file *file, unsigned long pfn,
 	if (file->f_flags & O_DSYNC)
 		pcm = _PAGE_CACHE_MODE_UC_MINUS;
 
-	*vma_prot = __pgprot((pgprot_val(*vma_prot) & ~_PAGE_CACHE_MASK) |
-			     cachemode2protval(pcm));
+	pgprot_set_cachemode(vma_prot, pcm);
 	return 1;
 }
 
@@ -880,9 +885,7 @@ static int reserve_pfn_range(u64 paddr, unsigned long size, pgprot_t *vma_prot,
 				(unsigned long long)paddr,
 				(unsigned long long)(paddr + size - 1),
 				cattr_name(pcm));
-			*vma_prot = __pgprot((pgprot_val(*vma_prot) &
-					     (~_PAGE_CACHE_MASK)) |
-					     cachemode2protval(pcm));
+			pgprot_set_cachemode(vma_prot, pcm);
 		}
 		return 0;
 	}
@@ -907,9 +910,7 @@ static int reserve_pfn_range(u64 paddr, unsigned long size, pgprot_t *vma_prot,
 		 * We allow returning different type than the one requested in
 		 * non strict case.
 		 */
-		*vma_prot = __pgprot((pgprot_val(*vma_prot) &
-				      (~_PAGE_CACHE_MASK)) |
-				     cachemode2protval(pcm));
+		pgprot_set_cachemode(vma_prot, pcm);
 	}
 
 	if (memtype_kernel_map_sync(paddr, size, pcm) < 0) {
@@ -1060,9 +1061,7 @@ int track_pfn_remap(struct vm_area_struct *vma, pgprot_t *prot,
 			return -EINVAL;
 	}
 
-	*prot = __pgprot((pgprot_val(*prot) & (~_PAGE_CACHE_MASK)) |
-			 cachemode2protval(pcm));
-
+	pgprot_set_cachemode(prot, pcm);
 	return 0;
 }
 
@@ -1073,10 +1072,8 @@ void track_pfn_insert(struct vm_area_struct *vma, pgprot_t *prot, pfn_t pfn)
 	if (!pat_enabled())
 		return;
 
-	/* Set prot based on lookup */
 	pcm = lookup_memtype(pfn_t_to_phys(pfn));
-	*prot = __pgprot((pgprot_val(*prot) & (~_PAGE_CACHE_MASK)) |
-			 cachemode2protval(pcm));
+	pgprot_set_cachemode(prot, pcm);
 }
 
 /*
@@ -1115,15 +1112,15 @@ void untrack_pfn_clear(struct vm_area_struct *vma)
 
 pgprot_t pgprot_writecombine(pgprot_t prot)
 {
-	return __pgprot(pgprot_val(prot) |
-				cachemode2protval(_PAGE_CACHE_MODE_WC));
+	pgprot_set_cachemode(&prot, _PAGE_CACHE_MODE_WC);
+	return prot;
 }
 EXPORT_SYMBOL_GPL(pgprot_writecombine);
 
 pgprot_t pgprot_writethrough(pgprot_t prot)
 {
-	return __pgprot(pgprot_val(prot) |
-				cachemode2protval(_PAGE_CACHE_MODE_WT));
+	pgprot_set_cachemode(&prot, _PAGE_CACHE_MODE_WT);
+	return prot;
 }
 EXPORT_SYMBOL_GPL(pgprot_writethrough);
 
-- 
2.49.0

