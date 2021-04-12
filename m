Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0492835BBB1
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 10:09:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 246CA89CB2;
	Mon, 12 Apr 2021 08:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0FA89C1A
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 08:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:References:
 Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To;
 bh=DVIe+4d9I+G/am9Q3PISMJopYc/lkfgh9KdMieTh7Y0=; b=m6p33ZtUeh8y5beGxwx6STY+bL
 nMh8lFYg+sp9LP+GWzHHPhf+kjX0C9yaDplOYNSWj2fT1R51JhCnkXrA5tuwVtwpHAuUeDGHzkiMY
 xtg897nAI0LowhlXyL1NUeztXMipuT/XDBLLayK7Y+FiyAGLUQJWaGqP+oAwH34DgAQKva1Wc9aTG
 5DLJ70goPvpnRkUYERmAtO8lNrO+umO1D+TlV4mLSC76p8CH/ZSuO+6g7h0yqKACDo17PP0ZDN7CU
 yx+3YC/1Hmcu5ObrWma/HrptEIu3LQERKl7yQxuJhkVA+NTwfgnHTQnGYpF5cHRHRcVKde0T/X5JU
 yYwP99kw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by desiato.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lVrck-0063yC-Oe; Mon, 12 Apr 2021 08:08:46 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 7BD63300222;
 Mon, 12 Apr 2021 10:08:44 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 0)
 id 3262620224231; Mon, 12 Apr 2021 10:08:44 +0200 (CEST)
Message-ID: <20210412080611.568192782@infradead.org>
User-Agent: quilt/0.66
Date: Mon, 12 Apr 2021 10:00:13 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: akpm@linux-foundation.org
References: <20210412080012.357146277@infradead.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] mm: Unexport apply_to_existing_page_range()
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

There are no modular in-tree users, remove the EXPORT.

This is an unsafe function in that it gives direct access to the
page-tables.

Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 mm/memory.c |    1 -
 1 file changed, 1 deletion(-)

--- a/mm/memory.c
+++ b/mm/memory.c
@@ -2558,7 +2558,6 @@ int apply_to_existing_page_range(struct
 {
 	return __apply_to_page_range(mm, addr, size, fn, data, false);
 }
-EXPORT_SYMBOL_GPL(apply_to_existing_page_range);
 
 /*
  * handle_pte_fault chooses page fault handler according to an entry which was


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
