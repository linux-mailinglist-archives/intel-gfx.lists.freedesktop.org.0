Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9F9AB3706
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 14:34:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 267DA10E3E0;
	Mon, 12 May 2025 12:34:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="NHUhaLLy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A418F10E3DF
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 12:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1747053280;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NYDrLvG5XDZK2S7Vzjb3pmEnm43v74kkrfTla5+cPZI=;
 b=NHUhaLLyzpyRRsQrpd3sK+uwdDu5BdmEDqMUS36GRK/4GmXd+1epxUdddNsoApW45cSeD6
 2utAwyhdP7ouZbQvWgrPzCmOYfE+hvz6S/TSbKYZVH3xw+vHYTvLkNAaGlIduFHpK8aY0m
 4Y/Z7vWu4fKfzW4LZL9WRqnvpMqllHw=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-115-WWTptRQHPJKmpbj6idv6wA-1; Mon, 12 May 2025 08:34:39 -0400
X-MC-Unique: WWTptRQHPJKmpbj6idv6wA-1
X-Mimecast-MFC-AGG-ID: WWTptRQHPJKmpbj6idv6wA_1747053278
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3a0bd786a53so1767576f8f.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 05:34:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747053278; x=1747658078;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NYDrLvG5XDZK2S7Vzjb3pmEnm43v74kkrfTla5+cPZI=;
 b=QZGmj6/oVEUiYdHBgq7VCPelnb34oalBi8I+Qrh8ecHNsXcM52LrTOyfC0SyUZgp1t
 +zN3fwBcOzDt+RPrWPvcolABGGvl+u2HP6BR1LaG1/FLckA1dE60fe8zgRMBKJxYl2qa
 rwPLtmnGZSRjZvizlBAT8eP48LtkwZGM6exgmkM9PATi6cUJlucuefTTnUu4FjhJFhnB
 pV8z8P81C0Q/5/t/wJSQNT13gJM8vacK1ChlWyPIQ34w0M4vWOKK2zVvqZXdjeSCY8ev
 Y5U6WXGmbCBj36cmivIqJDmLfLyhg7o/kuoGz2rigHsRuL1VTuwKffXnX/YrHYFi6HeB
 577g==
X-Forwarded-Encrypted: i=1;
 AJvYcCX4wmoXeDOpdtFukFwwLz22sbOMAnCQarYqksdiSlXdzmLsKnf+D+v18Ch0HIEjDXJfdHzGaJrfuWo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyW3pG5+3QFVbIW5soqfS2Izcf9h8NhwqohhXL8NmGkEFkLqmPo
 kI+Z4R3cmmUV0fN4h+umBE4/9Lj4F+0x23FL46ck3HFJHNuweFXvEoIA+qEkWz5HEP512RQXp0+
 xMUxFbVCCjkMQrm+pn3QxjG0DhrBjYaKX4CdUDH9LYOQ16QOcOFB5QpyK9t/BlXkGbA==
X-Gm-Gg: ASbGncsPQA6/A4jUNaQkMTUmwpIdBTlTogJzWazVDBfpgJp8cUUZhYkZ8kcSz6EseJH
 wmGladoUgeL8345JgZ2LxbA3wlMgmJB2MxWldVphpjHCfY+m3m3wMprGJSnqO7urEKNx+HLBX1p
 dNgjoQXLnG4cih+s22RcO/wiLfQEq2srGNdfcfSuOss+i/26mpe5zTWSgLj/8beFxD4X+KVTT7g
 QMnhPrKVwoK0tbTT+vk6T38IEO2flB3uP1+DwEH/SOgIhoBhkNwn4slwKB/c3zAFmHy6vNE+Ycl
 8o/HuhBzzuywG0b1/N0jSsmKG7sQyR7MrNOTBEPcVk4zq5lr/aSdyuZW7ZW+x+YigT5KTNqM
X-Received: by 2002:a05:6000:430d:b0:3a0:b9a9:2fd9 with SMTP id
 ffacd0b85a97d-3a1f64a34c6mr10772102f8f.51.1747053278090; 
 Mon, 12 May 2025 05:34:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhxNuxHtjAVwepTb/c5WYjIAvKZdsEfHNK/tmk5VSXnQqEoBOKdiBfd2UyPw5vI1dksu9fng==
X-Received: by 2002:a05:6000:430d:b0:3a0:b9a9:2fd9 with SMTP id
 ffacd0b85a97d-3a1f64a34c6mr10772084f8f.51.1747053277633; 
 Mon, 12 May 2025 05:34:37 -0700 (PDT)
Received: from localhost
 (p200300d82f4a5800f1ae8e20d7f451b0.dip0.t-ipconnect.de.
 [2003:d8:2f4a:5800:f1ae:8e20:d7f4:51b0])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-442d687ae10sm123566305e9.37.2025.05.12.05.34.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 May 2025 05:34:36 -0700 (PDT)
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
Subject: [PATCH v2 04/11] mm: convert VM_PFNMAP tracking to pfnmap_track() +
 pfnmap_untrack()
Date: Mon, 12 May 2025 14:34:17 +0200
Message-ID: <20250512123424.637989-5-david@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512123424.637989-1-david@redhat.com>
References: <20250512123424.637989-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: RW6THhkL3K7SYY5nDggXU2CizRbNl-efLvStP0D0POg_1747053278
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

Let's use our new interface. In remap_pfn_range(), we'll now decide
whether we have to track (full VMA covered) or only lookup the
cachemode (partial VMA covered).

Remember what we have to untrack by linking it from the VMA. When
duplicating VMAs (e.g., splitting, mremap, fork), we'll handle it similar
to anon VMA names, and use a kref to share the tracking.

Once the last VMA un-refs our tracking data, we'll do the untracking,
which simplifies things a lot and should sort our various issues we saw
recently, for example, when partially unmapping/zapping a tracked VMA.

This change implies that we'll keep tracking the original PFN range even
after splitting + partially unmapping it: not too bad, because it was
not working reliably before. The only thing that kind-of worked before
was shrinking such a mapping using mremap(): we managed to adjust the
reservation in a hacky way, now we won't adjust the reservation but
leave it around until all involved VMAs are gone.

If that ever turns out to be an issue, we could hook into VM splitting
code and split the tracking; however, that adds complexity that might
not be required, so we'll keep it simple for now.

Acked-by: Ingo Molnar <mingo@kernel.org> # x86 bits
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 include/linux/mm_inline.h |  2 +
 include/linux/mm_types.h  | 11 ++++++
 mm/memory.c               | 82 +++++++++++++++++++++++++++++++--------
 mm/mmap.c                 |  5 ---
 mm/mremap.c               |  4 --
 mm/vma_init.c             | 50 ++++++++++++++++++++++++
 6 files changed, 129 insertions(+), 25 deletions(-)

diff --git a/include/linux/mm_inline.h b/include/linux/mm_inline.h
index f9157a0c42a5c..89b518ff097e6 100644
--- a/include/linux/mm_inline.h
+++ b/include/linux/mm_inline.h
@@ -447,6 +447,8 @@ static inline bool anon_vma_name_eq(struct anon_vma_name *anon_name1,
 
 #endif  /* CONFIG_ANON_VMA_NAME */
 
+void pfnmap_track_ctx_release(struct kref *ref);
+
 static inline void init_tlb_flush_pending(struct mm_struct *mm)
 {
 	atomic_set(&mm->tlb_flush_pending, 0);
diff --git a/include/linux/mm_types.h b/include/linux/mm_types.h
index 15808cad2bc1a..3e934dc6057c4 100644
--- a/include/linux/mm_types.h
+++ b/include/linux/mm_types.h
@@ -763,6 +763,14 @@ struct vma_numab_state {
 	int prev_scan_seq;
 };
 
+#ifdef __HAVE_PFNMAP_TRACKING
+struct pfnmap_track_ctx {
+	struct kref kref;
+	unsigned long pfn;
+	unsigned long size;	/* in bytes */
+};
+#endif
+
 /*
  * Describes a VMA that is about to be mmap()'ed. Drivers may choose to
  * manipulate mutable fields which will cause those fields to be updated in the
@@ -900,6 +908,9 @@ struct vm_area_struct {
 	struct anon_vma_name *anon_name;
 #endif
 	struct vm_userfaultfd_ctx vm_userfaultfd_ctx;
+#ifdef __HAVE_PFNMAP_TRACKING
+	struct pfnmap_track_ctx *pfnmap_track_ctx;
+#endif
 } __randomize_layout;
 
 #ifdef CONFIG_NUMA
diff --git a/mm/memory.c b/mm/memory.c
index 064fc55d8eab9..4cf4adb0de266 100644
--- a/mm/memory.c
+++ b/mm/memory.c
@@ -1371,7 +1371,7 @@ copy_page_range(struct vm_area_struct *dst_vma, struct vm_area_struct *src_vma)
 	struct mm_struct *dst_mm = dst_vma->vm_mm;
 	struct mm_struct *src_mm = src_vma->vm_mm;
 	struct mmu_notifier_range range;
-	unsigned long next, pfn = 0;
+	unsigned long next;
 	bool is_cow;
 	int ret;
 
@@ -1381,12 +1381,6 @@ copy_page_range(struct vm_area_struct *dst_vma, struct vm_area_struct *src_vma)
 	if (is_vm_hugetlb_page(src_vma))
 		return copy_hugetlb_page_range(dst_mm, src_mm, dst_vma, src_vma);
 
-	if (unlikely(src_vma->vm_flags & VM_PFNMAP)) {
-		ret = track_pfn_copy(dst_vma, src_vma, &pfn);
-		if (ret)
-			return ret;
-	}
-
 	/*
 	 * We need to invalidate the secondary MMU mappings only when
 	 * there could be a permission downgrade on the ptes of the
@@ -1428,8 +1422,6 @@ copy_page_range(struct vm_area_struct *dst_vma, struct vm_area_struct *src_vma)
 		raw_write_seqcount_end(&src_mm->write_protect_seq);
 		mmu_notifier_invalidate_range_end(&range);
 	}
-	if (ret && unlikely(src_vma->vm_flags & VM_PFNMAP))
-		untrack_pfn_copy(dst_vma, pfn);
 	return ret;
 }
 
@@ -1924,9 +1916,6 @@ static void unmap_single_vma(struct mmu_gather *tlb,
 	if (vma->vm_file)
 		uprobe_munmap(vma, start, end);
 
-	if (unlikely(vma->vm_flags & VM_PFNMAP))
-		untrack_pfn(vma, 0, 0, mm_wr_locked);
-
 	if (start != end) {
 		if (unlikely(is_vm_hugetlb_page(vma))) {
 			/*
@@ -2872,6 +2861,36 @@ int remap_pfn_range_notrack(struct vm_area_struct *vma, unsigned long addr,
 	return error;
 }
 
+#ifdef __HAVE_PFNMAP_TRACKING
+static inline struct pfnmap_track_ctx *pfnmap_track_ctx_alloc(unsigned long pfn,
+		unsigned long size, pgprot_t *prot)
+{
+	struct pfnmap_track_ctx *ctx;
+
+	if (pfnmap_track(pfn, size, prot))
+		return ERR_PTR(-EINVAL);
+
+	ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
+	if (unlikely(!ctx)) {
+		pfnmap_untrack(pfn, size);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	ctx->pfn = pfn;
+	ctx->size = size;
+	kref_init(&ctx->kref);
+	return ctx;
+}
+
+void pfnmap_track_ctx_release(struct kref *ref)
+{
+	struct pfnmap_track_ctx *ctx = container_of(ref, struct pfnmap_track_ctx, kref);
+
+	pfnmap_untrack(ctx->pfn, ctx->size);
+	kfree(ctx);
+}
+#endif /* __HAVE_PFNMAP_TRACKING */
+
 /**
  * remap_pfn_range - remap kernel memory to userspace
  * @vma: user vma to map to
@@ -2884,20 +2903,51 @@ int remap_pfn_range_notrack(struct vm_area_struct *vma, unsigned long addr,
  *
  * Return: %0 on success, negative error code otherwise.
  */
+#ifdef __HAVE_PFNMAP_TRACKING
 int remap_pfn_range(struct vm_area_struct *vma, unsigned long addr,
 		    unsigned long pfn, unsigned long size, pgprot_t prot)
 {
+	struct pfnmap_track_ctx *ctx = NULL;
 	int err;
 
-	err = track_pfn_remap(vma, &prot, pfn, addr, PAGE_ALIGN(size));
-	if (err)
+	size = PAGE_ALIGN(size);
+
+	/*
+	 * If we cover the full VMA, we'll perform actual tracking, and
+	 * remember to untrack when the last reference to our tracking
+	 * context from a VMA goes away. We'll keep tracking the whole pfn
+	 * range even during VMA splits and partial unmapping.
+	 *
+	 * If we only cover parts of the VMA, we'll only setup the cachemode
+	 * in the pgprot for the pfn range.
+	 */
+	if (addr == vma->vm_start && addr + size == vma->vm_end) {
+		if (vma->pfnmap_track_ctx)
+			return -EINVAL;
+		ctx = pfnmap_track_ctx_alloc(pfn, size, &prot);
+		if (IS_ERR(ctx))
+			return PTR_ERR(ctx);
+	} else if (pfnmap_setup_cachemode(pfn, size, &prot)) {
 		return -EINVAL;
+	}
 
 	err = remap_pfn_range_notrack(vma, addr, pfn, size, prot);
-	if (err)
-		untrack_pfn(vma, pfn, PAGE_ALIGN(size), true);
+	if (ctx) {
+		if (err)
+			kref_put(&ctx->kref, pfnmap_track_ctx_release);
+		else
+			vma->pfnmap_track_ctx = ctx;
+	}
 	return err;
 }
+
+#else
+int remap_pfn_range(struct vm_area_struct *vma, unsigned long addr,
+		    unsigned long pfn, unsigned long size, pgprot_t prot)
+{
+	return remap_pfn_range_notrack(vma, addr, pfn, size, prot);
+}
+#endif
 EXPORT_SYMBOL(remap_pfn_range);
 
 /**
diff --git a/mm/mmap.c b/mm/mmap.c
index 50f902c08341a..09c563c951123 100644
--- a/mm/mmap.c
+++ b/mm/mmap.c
@@ -1784,11 +1784,6 @@ __latent_entropy int dup_mmap(struct mm_struct *mm, struct mm_struct *oldmm)
 		tmp = vm_area_dup(mpnt);
 		if (!tmp)
 			goto fail_nomem;
-
-		/* track_pfn_copy() will later take care of copying internal state. */
-		if (unlikely(tmp->vm_flags & VM_PFNMAP))
-			untrack_pfn_clear(tmp);
-
 		retval = vma_dup_policy(mpnt, tmp);
 		if (retval)
 			goto fail_nomem_policy;
diff --git a/mm/mremap.c b/mm/mremap.c
index 7db9da609c84f..6e78e02f74bd3 100644
--- a/mm/mremap.c
+++ b/mm/mremap.c
@@ -1191,10 +1191,6 @@ static int copy_vma_and_data(struct vma_remap_struct *vrm,
 	if (is_vm_hugetlb_page(vma))
 		clear_vma_resv_huge_pages(vma);
 
-	/* Tell pfnmap has moved from this vma */
-	if (unlikely(vma->vm_flags & VM_PFNMAP))
-		untrack_pfn_clear(vma);
-
 	*new_vma_ptr = new_vma;
 	return err;
 }
diff --git a/mm/vma_init.c b/mm/vma_init.c
index 967ca85179864..8e53c7943561e 100644
--- a/mm/vma_init.c
+++ b/mm/vma_init.c
@@ -71,7 +71,51 @@ static void vm_area_init_from(const struct vm_area_struct *src,
 #ifdef CONFIG_NUMA
 	dest->vm_policy = src->vm_policy;
 #endif
+#ifdef __HAVE_PFNMAP_TRACKING
+	dest->pfnmap_track_ctx = NULL;
+#endif
+}
+
+#ifdef __HAVE_PFNMAP_TRACKING
+static inline int vma_pfnmap_track_ctx_dup(struct vm_area_struct *orig,
+		struct vm_area_struct *new)
+{
+	struct pfnmap_track_ctx *ctx = orig->pfnmap_track_ctx;
+
+	if (likely(!ctx))
+		return 0;
+
+	/*
+	 * We don't expect to ever hit this. If ever required, we would have
+	 * to duplicate the tracking.
+	 */
+	if (unlikely(kref_read(&ctx->kref) >= REFCOUNT_MAX))
+		return -ENOMEM;
+	kref_get(&ctx->kref);
+	new->pfnmap_track_ctx = ctx;
+	return 0;
+}
+
+static inline void vma_pfnmap_track_ctx_release(struct vm_area_struct *vma)
+{
+	struct pfnmap_track_ctx *ctx = vma->pfnmap_track_ctx;
+
+	if (likely(!ctx))
+		return;
+
+	kref_put(&ctx->kref, pfnmap_track_ctx_release);
+	vma->pfnmap_track_ctx = NULL;
+}
+#else
+static inline int vma_pfnmap_track_ctx_dup(struct vm_area_struct *orig,
+		struct vm_area_struct *new)
+{
+	return 0;
 }
+static inline void vma_pfnmap_track_ctx_release(struct vm_area_struct *vma)
+{
+}
+#endif
 
 struct vm_area_struct *vm_area_dup(struct vm_area_struct *orig)
 {
@@ -83,6 +127,11 @@ struct vm_area_struct *vm_area_dup(struct vm_area_struct *orig)
 	ASSERT_EXCLUSIVE_WRITER(orig->vm_flags);
 	ASSERT_EXCLUSIVE_WRITER(orig->vm_file);
 	vm_area_init_from(orig, new);
+
+	if (vma_pfnmap_track_ctx_dup(orig, new)) {
+		kmem_cache_free(vm_area_cachep, new);
+		return NULL;
+	}
 	vma_lock_init(new, true);
 	INIT_LIST_HEAD(&new->anon_vma_chain);
 	vma_numab_state_init(new);
@@ -97,5 +146,6 @@ void vm_area_free(struct vm_area_struct *vma)
 	vma_assert_detached(vma);
 	vma_numab_state_free(vma);
 	free_anon_vma_name(vma);
+	vma_pfnmap_track_ctx_release(vma);
 	kmem_cache_free(vm_area_cachep, vma);
 }
-- 
2.49.0

