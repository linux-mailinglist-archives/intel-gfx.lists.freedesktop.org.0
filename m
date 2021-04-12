Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6046A35BBB6
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 10:09:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 283D86E21D;
	Mon, 12 Apr 2021 08:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A47D16E1D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 08:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To;
 bh=di4C6bbSl7iLJMkDo7XO8ZICGg5xRWGqLb1m8Rukv20=; b=YbnF5/GCNEslzNuBs5qK0QChkY
 4uR2tlI+pJM2mlI4nY0EYfLtOv2DaYf8ETEJq1eLyxCAxq9TGczM8rCp5BGd+Pp07cRAxuXEjm3MH
 d511RbZdsZe/RF4L6N3ZM5JcGlgKNmsxldb1Ha6aZQlpgGBPRANGEpj5sE2FBpCGyvwTtpMzZqkAu
 TtunDAx5SH1+UnF7hGsF/IcAodYOGskfZE8U6c2QauhaJGYKoIil9rdGy+alOdxpfNZvDuVLiCUkw
 kAxBpkAmmy3G1hS15fLPpSpz9pVJj0TFx1VACeorabu44in+T0zAp4K5PJOEAV7dZYkdWPeoJ/9DV
 FT+b42rw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lVrcl-003yd5-5N; Mon, 12 Apr 2021 08:08:49 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 7766E3001FF;
 Mon, 12 Apr 2021 10:08:44 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 0)
 id 3F6B025F21531; Mon, 12 Apr 2021 10:08:44 +0200 (CEST)
Message-ID: <20210412080611.769864829@infradead.org>
User-Agent: quilt/0.66
Date: Mon, 12 Apr 2021 10:00:16 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: akpm@linux-foundation.org
References: <20210412080012.357146277@infradead.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] mm: Introduce verify_page_range()
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
Cc: jgross@suse.com, sstabellini@kernel.org, keescook@chromium.org,
 peterz@infradead.org, intel-gfx@lists.freedesktop.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, chris@chris-wilson.co.uk, linux-mm@kvack.org,
 boris.ostrovsky@oracle.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Introduce and EXPORT a read-only counterpart to apply_to_page_range().

It only exposes the PTE value, not a pointer to the pagetables itself
and is thus quite a bit safer to export. A number of
apply_to_page_range() users can be converted to this primitive.

Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 include/linux/mm.h |    4 ++++
 mm/memory.c        |   24 ++++++++++++++++++++++++
 2 files changed, 28 insertions(+)

--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2876,6 +2876,10 @@ extern int apply_to_page_range(struct mm
 extern int apply_to_existing_page_range(struct mm_struct *mm,
 				   unsigned long address, unsigned long size,
 				   pte_fn_t fn, void *data);
+extern int verify_page_range(struct mm_struct *mm,
+			     unsigned long addr, unsigned long size,
+			     int (*fn)(pte_t pte, unsigned long addr, void *data),
+			     void *data);
 
 extern void init_mem_debugging_and_hardening(void);
 #ifdef CONFIG_PAGE_POISONING
--- a/mm/memory.c
+++ b/mm/memory.c
@@ -2559,6 +2559,30 @@ int apply_to_existing_page_range(struct
 	return __apply_to_page_range(mm, addr, size, fn, data, false);
 }
 
+struct vpr_data {
+	int (*fn)(pte_t pte, unsigned long addr, void *data);
+	void *data;
+};
+
+static int vpr_fn(pte_t *pte, unsigned long addr, void *data)
+{
+	struct vpr_data *vpr = data;
+	return vpr->fn(*pte, addr, vpr->data);
+}
+
+int verify_page_range(struct mm_struct *mm,
+		      unsigned long addr, unsigned long size,
+		      int (*fn)(pte_t pte, unsigned long addr, void *data),
+		      void *data)
+{
+	struct vpr_data vpr = {
+		.fn = fn,
+		.data = data,
+	};
+	return apply_to_page_range(mm, addr, size, vpr_fn, &vpr);
+}
+EXPORT_SYMBOL_GPL(verify_page_range);
+
 /*
  * handle_pte_fault chooses page fault handler according to an entry which was
  * read non-atomically.  Before making any commitment, on those architectures


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
