Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 333B9AB3701
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 14:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC9510E3D9;
	Mon, 12 May 2025 12:34:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="CeOHKZfa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B9CA10E3D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 12:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1747053271;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hrbmXyUL7HXGUWgagRU2heQ2lgkOZ/iJWMnvv1t5buw=;
 b=CeOHKZfa0hn7VSlP6wyt0A299q5VS5e1IjDcTFzS9jVTuquC8EAPywQJ8hTYFYztCVW+GS
 A2rqKnZIsSumRWX9zX06PnfXn7/AaAZtxqE5r6JOiNspZIAv5Eg2VNZHFy9otqRmXsaj47
 7ltvxP++3llDUGIS1zGb1TTX82j0epU=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-220-HRNr1YzDOy2IkKu_uK898w-1; Mon, 12 May 2025 08:34:30 -0400
X-MC-Unique: HRNr1YzDOy2IkKu_uK898w-1
X-Mimecast-MFC-AGG-ID: HRNr1YzDOy2IkKu_uK898w_1747053269
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-43cf44b66f7so24844785e9.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 05:34:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747053269; x=1747658069;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hrbmXyUL7HXGUWgagRU2heQ2lgkOZ/iJWMnvv1t5buw=;
 b=DpoBzN+zy+mFVYwbKbJPlcf7ValsAWF/Z+ZwCKZUTo3WzpjrgVijkCVqpgbMMhFDUI
 6Xe8ddFNSpJbJQzp3/EQ2Yxm7nj64WLT9kjwDVxjWNc24Rt9YQksEDrU2f7KtyEMt37I
 vAhbtu81Nj5p11aWXdt9qBIvRg70N/PAPsy7kksYajnpnWNpbQT7Gx305Ctn/dtsRkrT
 tzPAAqu0aTbwZIBz+iUG6zDZSG3UrhfGu1d5fXZH3CU+Egk/HMg1dTJTF9cjhbugyciO
 GyypUJwE6Yv5p8uuu6GdItLc836a0K35l15SadCCHgKJlIWcwBiKF1CoiMMfweJ9p+zT
 Oujw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWOs5bzh3+PX40mRVHKTIXMjnPDmV1iHgpZJDW9wslsgnuRv5loGyBH9nZJlTrRqDggipfIN2TfCi8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyRhgPtKvN0GKEcKv50Si2tusVdw56yvQDAvPuqKDjCFo+tI7OK
 U++6u3X88yNrhSl0lSNF3oETl60OoNXqIBoDbFzg7OnHCLv/N2co41zmvtPP0bAtxa7+KaUDM0B
 chkzKLszzBLPqaJiZRhx6qCfVnwzlFg+j+DD8ceTBUKKZeXplFgQkclxJLBh2lx0TTA==
X-Gm-Gg: ASbGncudu6oOYYh2VuX/7fJpQ0EULCb+C9bN0jixHSl6sEy2Hz8gR2/ie1d265AIrUV
 DD841jirOhlOBz+XCGxEpYYJUOUg1V1ziM/WdoHDZVDGxot2erQJitu2YCHiIFpvZv4WmSZ0GCV
 efaYMLSRBrjRBeqMme7xoFVAhJgqzDtwsjgBql+TQMIDsVRqnHPkI6N2sJnwxuQ9s5gtgZk2UTb
 dHJ4Pf3CKXNql9YvcnmnzrZYEvbL5LmNJrKOM6INmHKdtZmyYmsL8cGfuG9/QEO3BN3ufkhZbOq
 QEn9FUPHNDdvTlcioWFgj7/3kZ50MCsM+/iqeVANL1ecf8rmWPpr9WTeI75SOo5R1WoaWWNw
X-Received: by 2002:a05:600c:444c:b0:43d:5ec:b2f4 with SMTP id
 5b1f17b1804b1-442d6d3dcc8mr126250055e9.10.1747053269229; 
 Mon, 12 May 2025 05:34:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7YFyagUZ9y+fevUV3BzP4ffMO+2lnku0MMlhrkvHNYDdbfZ5KLiwSKLyxUHWcSulKlrGmcw==
X-Received: by 2002:a05:600c:444c:b0:43d:5ec:b2f4 with SMTP id
 5b1f17b1804b1-442d6d3dcc8mr126249585e9.10.1747053268821; 
 Mon, 12 May 2025 05:34:28 -0700 (PDT)
Received: from localhost
 (p200300d82f4a5800f1ae8e20d7f451b0.dip0.t-ipconnect.de.
 [2003:d8:2f4a:5800:f1ae:8e20:d7f4:51b0])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-442d687adc0sm123327975e9.35.2025.05.12.05.34.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 May 2025 05:34:28 -0700 (PDT)
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
Subject: [PATCH v2 01/11] x86/mm/pat: factor out setting cachemode into
 pgprot_set_cachemode()
Date: Mon, 12 May 2025 14:34:14 +0200
Message-ID: <20250512123424.637989-2-david@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512123424.637989-1-david@redhat.com>
References: <20250512123424.637989-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: kijUDMv5z_SZqF4S_RZNV0WSyttQZbf2yNWsniJC8jg_1747053269
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

Let's factor it out to make the code easier to grasp. Drop one comment
where it is now rather obvious what is happening.

Use it also in pgprot_writecombine()/pgprot_writethrough() where
clearing the old cachemode might not be required, but given that we are
already doing a function call, no need to care about this
micro-optimization.

Reviewed-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Acked-by: Ingo Molnar <mingo@kernel.org> # x86 bits
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

