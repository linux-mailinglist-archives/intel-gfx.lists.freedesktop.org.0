Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFFB35BF42
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 11:04:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1431689B3C;
	Mon, 12 Apr 2021 09:04:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DB1089B3C
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 09:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=6g0DaWseFgockDKrCtuXPfAoZ1Ief9G/pC6oIUd+GKc=; b=tq8xayhWK/YAKa33COZCV97WFb
 jW8R4qQnCxMRanhJJBy+8VaR2H20wQrqNiFhimLxm9QcD9glNTYt+KvSxnduflYtB1RbCFKATsRJp
 hrjrxBgQ+NiwUOthKF1K5L0D8i9D8dRHipRlMOs6dcm+TbcOqAEH+k7XQ57EZyc7SgmkPeXm54cRG
 fRWasA8mpeoQA9iauG6E+4s//KrMkalfKJHTUoMa3Aq2kBEYwUZC3BGnCmSqkZpXmXgbUQZXXrKbX
 TZtcFubXVKp36Y+6THgXP7hdD9xZc6KjryU/IAUOoAG55Dkow1qi0W2NZOlRSOXiJugU7DjN0YKgg
 y+bAFqNw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lVsSq-00435H-6m; Mon, 12 Apr 2021 09:02:51 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 4DC76300036;
 Mon, 12 Apr 2021 11:02:35 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id E61752022420C; Mon, 12 Apr 2021 11:02:34 +0200 (CEST)
Date: Mon, 12 Apr 2021 11:02:34 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <YHQMqsyXXHwIx7w1@hirez.programming.kicks-ass.net>
References: <20210412080012.357146277@infradead.org>
 <20210412080611.702979288@infradead.org>
 <20210412082721.GC4372@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412082721.GC4372@lst.de>
Subject: Re: [Intel-gfx] [PATCH 3/7] xen/gntdev: Remove
 apply_to_page_range() use from module
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
 intel-gfx@lists.freedesktop.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 chris@chris-wilson.co.uk, linux-mm@kvack.org, boris.ostrovsky@oracle.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 12, 2021 at 10:27:21AM +0200, Christoph Hellwig wrote:
> On Mon, Apr 12, 2021 at 10:00:15AM +0200, Peter Zijlstra wrote:
> > --- a/drivers/xen/grant-table.c
> > +++ b/drivers/xen/grant-table.c
> > @@ -1591,6 +1591,43 @@ int gnttab_init(void)
> >  }
> >  EXPORT_SYMBOL_GPL(gnttab_init);
> >  
> > +#include <xen/gntdev.h>
> > +#include "gntdev-common.h"
> 
> Can't we keep the includes at the top of the file?

Probably could, lemme move them.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
