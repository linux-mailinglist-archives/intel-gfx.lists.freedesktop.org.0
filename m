Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D5135EDFA
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 09:00:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17C716E8ED;
	Wed, 14 Apr 2021 07:00:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11ABF6E8ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 07:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Cwzxp8DD6+B81/zZ+mGgix3pYwvDbFzL7mvBDlLchy0=; b=XC1IY8PL2HL0UHwv8RqzQLbIEQ
 5CJTe8bJ4KGzeYZhutB7Mtcga2UCz2F3S2qDOeiEX1ck0oXaLmnUG82qkxJdbQ4YyRXtgcC2BTc+b
 pj5SykdD3YHEqRyrFxWbPM7F7GwEC93kfObRtqAGfl5bPqQRxaVF0qiAmhln56ZRGDI7NdgRg7zFA
 gtKKV2FjdEtkU7N1+QfVe2NoNI5xW7mGcL9Ct0fe6qG8KiJeIkv70c5sEvaDD4YthfbnfMsbQ6x4X
 fGzMm+lUDs9R9g4P9TQseT7J5GaS6eNMA9CNyxFDfZxjpWDmbNAlxzhodDatINAmP2U8rteNofce0
 f3roFwgQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZVV-006mAb-Q4; Wed, 14 Apr 2021 07:00:14 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 73C4E30015A;
 Wed, 14 Apr 2021 09:00:11 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 2B268203D392D; Wed, 14 Apr 2021 09:00:11 +0200 (CEST)
Date: Wed, 14 Apr 2021 09:00:11 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <YHaS+4eV7ATwAAWz@hirez.programming.kicks-ass.net>
References: <20210412080012.357146277@infradead.org>
 <20210412080611.769864829@infradead.org>
 <202104121302.57D7EF8@keescook>
 <YHVKACnVLAhbnt4j@hirez.programming.kicks-ass.net>
 <202104131935.B5EBDAE@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202104131935.B5EBDAE@keescook>
Subject: Re: [Intel-gfx] [PATCH 4/7] mm: Introduce verify_page_range()
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
Cc: jgross@suse.com, sstabellini@kernel.org, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, linux-kernel@vger.kernel.org, chris@chris-wilson.co.uk,
 linux-mm@kvack.org, boris.ostrovsky@oracle.com, hch@lst.de,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 13, 2021 at 08:01:08PM -0700, Kees Cook wrote:
> So the addr can just be encoded in "int", and no structure is needed at:
> 
> typedef bool (*vpr_fn_t)(pte_t pte);
> 
> static int vpr_fn(pte_t *pte, unsigned long addr, void *data)
> {
> 	vpr_fn_t callback = data;
> 
> 	if (!callback(*pte))
> 		return addr >> PAGE_SIZE;
> 	return 0;
> }
> 
> unsigned long verify_page_range(struct mm_struct *mm,
> 				unsigned long addr, unsigned long size,
> 				vpr_fn_t callback)
> {
> 	return apply_to_page_range(mm, addr, size, vpr_fn, callback) << PAGE_SIZE;
> }
> 
> But maybe I'm missing something?

That covers only (32+12) bits of address space and will mostly work, but
we definitely support architectures (very much including x86_64) with
larger address spaces than that.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
