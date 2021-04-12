Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8A635BBB2
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 10:09:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 529126E1D8;
	Mon, 12 Apr 2021 08:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8AD5899F3
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 08:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:References:
 Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To;
 bh=hnyJIpIgRwAiJphlWTzrQr9Y8jq97hs5NNvLYyocx0A=; b=WuNlZCexSZVXcdYaTJVvOhXT9y
 qzdukRmwjcgFaeguHENlqyTcuk2bJ3MUCGWFlCxuf0f52RWB1pCzoojZuCCdb5XjLonouEScQE4Un
 LAhRDouBPENjjQU5eFcl5UHIAUWJdWmn2jm4OK1sxw8FBoRR65DyvL+vms4hOa8fu2g7oyraEPPTq
 +7uU/o3K5eLwaaI1bVdOEOOOk7PPzPOkEz6CnrW1234yv56YAMOrYAVDLgQBxOr/xOhjd1AbArjjo
 UtD1OTVBuGaEQavMSq1vySIpcQS0I1ULwGRMWLotd3SB0wXe/ZjCGlka96oQi1OAt88cYboBfA2Y3
 t3Yb19hA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by desiato.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lVrcm-0063yS-8C; Mon, 12 Apr 2021 08:08:49 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E5B1C3002C4;
 Mon, 12 Apr 2021 10:08:45 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 0)
 id 5075325F21534; Mon, 12 Apr 2021 10:08:44 +0200 (CEST)
Message-ID: <20210412080611.969415860@infradead.org>
User-Agent: quilt/0.66
Date: Mon, 12 Apr 2021 10:00:19 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: akpm@linux-foundation.org
References: <20210412080012.357146277@infradead.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] mm: Unexport apply_to_page_range()
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

Now that all module users of apply_to_page_range() have been removed,
unexport this function.

This is an unsafe function in that it gives direct access to the
page-tables.

Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 mm/memory.c |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

--- a/mm/memory.c
+++ b/mm/memory.c
@@ -2544,13 +2544,14 @@ static int __apply_to_page_range(struct
 /*
  * Scan a region of virtual memory, filling in page tables as necessary
  * and calling a provided function on each leaf page table.
+ *
+ * DO NOT EXPORT; this hands out our page-tables on a platter.
  */
 int apply_to_page_range(struct mm_struct *mm, unsigned long addr,
 			unsigned long size, pte_fn_t fn, void *data)
 {
 	return __apply_to_page_range(mm, addr, size, fn, data, true);
 }
-EXPORT_SYMBOL_GPL(apply_to_page_range);
 
 /*
  * Scan a region of virtual memory, calling a provided function on
@@ -2558,6 +2559,8 @@ EXPORT_SYMBOL_GPL(apply_to_page_range);
  *
  * Unlike apply_to_page_range, this does _not_ fill in page tables
  * where they are absent.
+ *
+ * DO NOT EXPORT; this hands out our page-tables on a platter.
  */
 int apply_to_existing_page_range(struct mm_struct *mm, unsigned long addr,
 				 unsigned long size, pte_fn_t fn, void *data)


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
