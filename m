Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C6935D844
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 08:54:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E37089D5B;
	Tue, 13 Apr 2021 06:54:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E39C89D5B
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 06:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=rl7Av8z9Mb3AhGc2I2b/HfzYNKQlfkZtLSkmthxZ3Cs=; b=oXena5QrQsAuq/lXovE/vdznzG
 Zbnw2r9xxmldDA6+M9jB/+SFl853WgrhtbLlh7a+sWTsFgAEDytibwY8ygQJwRnj44+OSwPpQlAhB
 wLRDFznR8fpfuV7KYpgr20R93SPHj7ah/oFpN2O8fWd8+1X/hZLFDqIeNR6S1wQ1+//pSsxqJHO2C
 /+gfU1cAMp8iuXFAPdisVwcT0QDxckiECBBoWtjD94zP99pTR2jiaQ/lYsHrb20tTQAjHatpWRBIv
 xBgjcCOkLTBJf8PSKJz8TiitpXrQuOEwgajMbT2zHmaZZfcRqAhkJXL+cqsZRJoZv3X9nSV+A9o1R
 eVq7xOXg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by desiato.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lWCwU-008RVy-9U; Tue, 13 Apr 2021 06:54:40 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E7E2C300036;
 Tue, 13 Apr 2021 08:54:33 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id D8DCC2C4B2093; Tue, 13 Apr 2021 08:54:33 +0200 (CEST)
Date: Tue, 13 Apr 2021 08:54:33 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <YHVAKeYh04y5w7ia@hirez.programming.kicks-ass.net>
References: <20210412080012.357146277@infradead.org>
 <20210412080611.902470568@infradead.org>
 <202104121306.3A73BEB0A5@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202104121306.3A73BEB0A5@keescook>
Subject: Re: [Intel-gfx] [PATCH 6/7] i915: Convert to verify_page_range()
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

On Mon, Apr 12, 2021 at 01:08:38PM -0700, Kees Cook wrote:
> On Mon, Apr 12, 2021 at 10:00:18AM +0200, Peter Zijlstra wrote:
> > @@ -1249,14 +1249,14 @@ static int check_absent_pte(pte_t *pte,
> >  
> >  static int check_present(unsigned long addr, unsigned long len)
> >  {
> > -	return apply_to_page_range(current->mm, addr, len,
> > -				   check_present_pte, (void *)addr);
> > +	return verify_page_range(current->mm, addr, len,
> > +				 check_present_pte, (void *)addr);
> 
> For example, switch to returning bad addr through verify_page_range(),
> or have a by-reference value, etc:
> 
> 	unsigned long failed;
> 
> 	failed = verify_page_range(current->mm< addr, len, check_present_pte);
> 	if (failed) {
>   		pr_err("missing PTE:%lx\n",
>   		       (addr - failed) >> PAGE_SHIFT);

OK, lemme try that.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
