Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2639AB3702
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 14:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49DA10E3DA;
	Mon, 12 May 2025 12:34:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="NKuLvVQc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1D4D10E3CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 12:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1747053274;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6nHoWozKkbl8Jpefo8Zb0yf0bGe9671cYhr6GgVPgWI=;
 b=NKuLvVQcFCbfva4+Dq2Zyj+Jjfifl/4jbur4aORBavSd5zzika/TVLai+HIQofLsmrc7Co
 WLUrrtlOYzVcT3OF2CF4FAatSU0W3lw8OkXvoynRX6kmVJIRoQDENtSaRQHSmcQkGoY8RQ
 zgum4fpqNWjmhIipqBZGIuvhP2EkCBY=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-642-Kgm7BmO9MViu-9taxGGaMQ-1; Mon, 12 May 2025 08:34:33 -0400
X-MC-Unique: Kgm7BmO9MViu-9taxGGaMQ-1
X-Mimecast-MFC-AGG-ID: Kgm7BmO9MViu-9taxGGaMQ_1747053272
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-43eed325461so23224965e9.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 05:34:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747053272; x=1747658072;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6nHoWozKkbl8Jpefo8Zb0yf0bGe9671cYhr6GgVPgWI=;
 b=UG2PdGrEsuyl4c/i7cv6XZTh1ZZG2qHW/ZQ9NzM999tpUTFNdqTfyxf6Bdj623w4N8
 XAlzhpz59EHBdszyJEw51TmqsNSQGMqekSWLseNWnC+b6VpBjlb5GRDRIgy8NfHscFN0
 KBomCqDOjakkSy12vryoyPBF7J2VSPAY2cvtrs/PLEb9ryVgUmpILTwDnvTVUyZEPqdv
 HO6YYdljt8gJ8whVNXmUPhnBr/EbZuYQgvYpgBljDoEMkt+B/z4mIcqG40XQOMA1D9Jn
 fpHkSXyPMKE8sLLFQJLzx1QsX8Z3nvuh69NnsB4IqannRxTFji3x0JuYpx9tpSXm15Hr
 YyLA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXHiaZNrUVViXtePLWQuciSqcSa2MtxLziyecD6uElhuSEoDxA1AKrlRGVZqhNTzHmNmfhGvm2ckVk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxm0cZZo0DKbaVWhOuqYHzOAAokTMB7Oo5WUcRQYy7uBm/WyRjr
 Fpz86urbekjRwJyF6xKn4RcjpaOnQVNA/ZhiRw0rbr2HL3U9cqxyX4aWvZexDo7W76S+dTJ4yxr
 05rOyBn5pWnRIoj7TZpr4hGWBokUwxQ6kQoV+sJpeYlew5v5QdzrPEdiPRbJ6j6ZLMw==
X-Gm-Gg: ASbGnctHw+tVIbPX1zZFWdeBLGxo6IAKShbdmPOjhTdgS4NFnfFqCxM4LZpuiVJOwTI
 MNVhSkZu5Vwtx2gqLLENGiWathfcGaeF7E+TmlPDrRoiY1kd2OqCH2tm05qYiW/HO/rPcGg3dlt
 U1prZH3J2uVyygCcWK6iT3DbNgEVgJTmY3eSLuqut4fFaH3EHC0/lR5W2m0LnNZtTpGwRC0Sy/m
 F5hSgYZQ5SuwK/jwIjYu6KC1V5+6JL4yPYFq4Eblk1w1bgwae9hVhLYDQQGPduiO251+S/uWdqY
 FI0D+Keu5Da+vGEvVuEhfzzH6KTI0VBzpxGPLpSftsSEIQxrmIb5SUPjdo50/8pbnHl9KGVi
X-Received: by 2002:a05:600c:3490:b0:441:d4e8:76cd with SMTP id
 5b1f17b1804b1-442d6ddec00mr105442455e9.29.1747053272051; 
 Mon, 12 May 2025 05:34:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAkmJW1RYt0shbyVSJYG/Cde8Y5kgDkvTgdUylwEM8H1PlNDd2NNsMG+k4pYVsizSZx0oo/Q==
X-Received: by 2002:a05:600c:3490:b0:441:d4e8:76cd with SMTP id
 5b1f17b1804b1-442d6ddec00mr105442015e9.29.1747053271651; 
 Mon, 12 May 2025 05:34:31 -0700 (PDT)
Received: from localhost
 (p200300d82f4a5800f1ae8e20d7f451b0.dip0.t-ipconnect.de.
 [2003:d8:2f4a:5800:f1ae:8e20:d7f4:51b0])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-442cd32f331sm168479925e9.13.2025.05.12.05.34.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 May 2025 05:34:31 -0700 (PDT)
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
 Pedro Falcato <pfalcato@suse.de>, Peter Xu <peterx@redhat.com>,
 Ingo Molnar <mingo@kernel.org>
Subject: [PATCH v2 02/11] mm: convert track_pfn_insert() to
 pfnmap_setup_cachemode*()
Date: Mon, 12 May 2025 14:34:15 +0200
Message-ID: <20250512123424.637989-3-david@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512123424.637989-1-david@redhat.com>
References: <20250512123424.637989-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: tn72tfQNoPPuW6iVjmZiwgyfOyocqSn9dfKQ0aodWco_1747053272
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

... by factoring it out from track_pfn_remap() into
pfnmap_setup_cachemode() and provide pfnmap_setup_cachemode_pfn() as
a replacement for track_pfn_insert().

For PMDs/PUDs, we keep checking a single pfn only. Add some documentation,
and also document why it is valid to not check the whole pfn range.

We'll reuse pfnmap_setup_cachemode() from core MM next.

Acked-by: Ingo Molnar <mingo@kernel.org> # x86 bits
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 arch/x86/mm/pat/memtype.c | 24 ++++++------------
 include/linux/pgtable.h   | 52 +++++++++++++++++++++++++++++++++------
 mm/huge_memory.c          |  5 ++--
 mm/memory.c               |  4 +--
 4 files changed, 57 insertions(+), 28 deletions(-)

diff --git a/arch/x86/mm/pat/memtype.c b/arch/x86/mm/pat/memtype.c
index edec5859651d6..fa78facc6f633 100644
--- a/arch/x86/mm/pat/memtype.c
+++ b/arch/x86/mm/pat/memtype.c
@@ -1031,7 +1031,6 @@ int track_pfn_remap(struct vm_area_struct *vma, pgprot_t *prot,
 		    unsigned long pfn, unsigned long addr, unsigned long size)
 {
 	resource_size_t paddr = (resource_size_t)pfn << PAGE_SHIFT;
-	enum page_cache_mode pcm;
 
 	/* reserve the whole chunk starting from paddr */
 	if (!vma || (addr == vma->vm_start
@@ -1044,13 +1043,17 @@ int track_pfn_remap(struct vm_area_struct *vma, pgprot_t *prot,
 		return ret;
 	}
 
+	return pfnmap_setup_cachemode(pfn, size, prot);
+}
+
+int pfnmap_setup_cachemode(unsigned long pfn, unsigned long size, pgprot_t *prot)
+{
+	resource_size_t paddr = (resource_size_t)pfn << PAGE_SHIFT;
+	enum page_cache_mode pcm;
+
 	if (!pat_enabled())
 		return 0;
 
-	/*
-	 * For anything smaller than the vma size we set prot based on the
-	 * lookup.
-	 */
 	pcm = lookup_memtype(paddr);
 
 	/* Check memtype for the remaining pages */
@@ -1065,17 +1068,6 @@ int track_pfn_remap(struct vm_area_struct *vma, pgprot_t *prot,
 	return 0;
 }
 
-void track_pfn_insert(struct vm_area_struct *vma, pgprot_t *prot, pfn_t pfn)
-{
-	enum page_cache_mode pcm;
-
-	if (!pat_enabled())
-		return;
-
-	pcm = lookup_memtype(pfn_t_to_phys(pfn));
-	pgprot_set_cachemode(prot, pcm);
-}
-
 /*
  * untrack_pfn is called while unmapping a pfnmap for a region.
  * untrack can be called for a specific region indicated by pfn and size or
diff --git a/include/linux/pgtable.h b/include/linux/pgtable.h
index f1e890b604609..be1745839871c 100644
--- a/include/linux/pgtable.h
+++ b/include/linux/pgtable.h
@@ -1496,13 +1496,10 @@ static inline int track_pfn_remap(struct vm_area_struct *vma, pgprot_t *prot,
 	return 0;
 }
 
-/*
- * track_pfn_insert is called when a _new_ single pfn is established
- * by vmf_insert_pfn().
- */
-static inline void track_pfn_insert(struct vm_area_struct *vma, pgprot_t *prot,
-				    pfn_t pfn)
+static inline int pfnmap_setup_cachemode(unsigned long pfn, unsigned long size,
+		pgprot_t *prot)
 {
+	return 0;
 }
 
 /*
@@ -1552,8 +1549,32 @@ static inline void untrack_pfn_clear(struct vm_area_struct *vma)
 extern int track_pfn_remap(struct vm_area_struct *vma, pgprot_t *prot,
 			   unsigned long pfn, unsigned long addr,
 			   unsigned long size);
-extern void track_pfn_insert(struct vm_area_struct *vma, pgprot_t *prot,
-			     pfn_t pfn);
+
+/**
+ * pfnmap_setup_cachemode - setup the cachemode in the pgprot for a pfn range
+ * @pfn: the start of the pfn range
+ * @size: the size of the pfn range in bytes
+ * @prot: the pgprot to modify
+ *
+ * Lookup the cachemode for the pfn range starting at @pfn with the size
+ * @size and store it in @prot, leaving other data in @prot unchanged.
+ *
+ * This allows for a hardware implementation to have fine-grained control of
+ * memory cache behavior at page level granularity. Without a hardware
+ * implementation, this function does nothing.
+ *
+ * Currently there is only one implementation for this - x86 Page Attribute
+ * Table (PAT). See Documentation/arch/x86/pat.rst for more details.
+ *
+ * This function can fail if the pfn range spans pfns that require differing
+ * cachemodes. If the pfn range was previously verified to have a single
+ * cachemode, it is sufficient to query only a single pfn. The assumption is
+ * that this is the case for drivers using the vmf_insert_pfn*() interface.
+ *
+ * Returns 0 on success and -EINVAL on error.
+ */
+int pfnmap_setup_cachemode(unsigned long pfn, unsigned long size,
+		pgprot_t *prot);
 extern int track_pfn_copy(struct vm_area_struct *dst_vma,
 		struct vm_area_struct *src_vma, unsigned long *pfn);
 extern void untrack_pfn_copy(struct vm_area_struct *dst_vma,
@@ -1563,6 +1584,21 @@ extern void untrack_pfn(struct vm_area_struct *vma, unsigned long pfn,
 extern void untrack_pfn_clear(struct vm_area_struct *vma);
 #endif
 
+/**
+ * pfnmap_setup_cachemode_pfn - setup the cachemode in the pgprot for a pfn
+ * @pfn: the pfn
+ * @prot: the pgprot to modify
+ *
+ * Lookup the cachemode for @pfn and store it in @prot, leaving other
+ * data in @prot unchanged.
+ *
+ * See pfnmap_setup_cachemode() for details.
+ */
+static inline void pfnmap_setup_cachemode_pfn(unsigned long pfn, pgprot_t *prot)
+{
+	pfnmap_setup_cachemode(pfn, PAGE_SIZE, prot);
+}
+
 #ifdef CONFIG_MMU
 #ifdef __HAVE_COLOR_ZERO_PAGE
 static inline int is_zero_pfn(unsigned long pfn)
diff --git a/mm/huge_memory.c b/mm/huge_memory.c
index 2780a12b25f01..d3e66136e41a3 100644
--- a/mm/huge_memory.c
+++ b/mm/huge_memory.c
@@ -1455,7 +1455,8 @@ vm_fault_t vmf_insert_pfn_pmd(struct vm_fault *vmf, pfn_t pfn, bool write)
 			return VM_FAULT_OOM;
 	}
 
-	track_pfn_insert(vma, &pgprot, pfn);
+	pfnmap_setup_cachemode_pfn(pfn_t_to_pfn(pfn), &pgprot);
+
 	ptl = pmd_lock(vma->vm_mm, vmf->pmd);
 	error = insert_pfn_pmd(vma, addr, vmf->pmd, pfn, pgprot, write,
 			pgtable);
@@ -1577,7 +1578,7 @@ vm_fault_t vmf_insert_pfn_pud(struct vm_fault *vmf, pfn_t pfn, bool write)
 	if (addr < vma->vm_start || addr >= vma->vm_end)
 		return VM_FAULT_SIGBUS;
 
-	track_pfn_insert(vma, &pgprot, pfn);
+	pfnmap_setup_cachemode_pfn(pfn_t_to_pfn(pfn), &pgprot);
 
 	ptl = pud_lock(vma->vm_mm, vmf->pud);
 	insert_pfn_pud(vma, addr, vmf->pud, pfn, write);
diff --git a/mm/memory.c b/mm/memory.c
index 99af83434e7c5..064fc55d8eab9 100644
--- a/mm/memory.c
+++ b/mm/memory.c
@@ -2564,7 +2564,7 @@ vm_fault_t vmf_insert_pfn_prot(struct vm_area_struct *vma, unsigned long addr,
 	if (!pfn_modify_allowed(pfn, pgprot))
 		return VM_FAULT_SIGBUS;
 
-	track_pfn_insert(vma, &pgprot, __pfn_to_pfn_t(pfn, PFN_DEV));
+	pfnmap_setup_cachemode_pfn(pfn, &pgprot);
 
 	return insert_pfn(vma, addr, __pfn_to_pfn_t(pfn, PFN_DEV), pgprot,
 			false);
@@ -2627,7 +2627,7 @@ static vm_fault_t __vm_insert_mixed(struct vm_area_struct *vma,
 	if (addr < vma->vm_start || addr >= vma->vm_end)
 		return VM_FAULT_SIGBUS;
 
-	track_pfn_insert(vma, &pgprot, pfn);
+	pfnmap_setup_cachemode_pfn(pfn_t_to_pfn(pfn), &pgprot);
 
 	if (!pfn_modify_allowed(pfn_t_to_pfn(pfn), pgprot))
 		return VM_FAULT_SIGBUS;
-- 
2.49.0

