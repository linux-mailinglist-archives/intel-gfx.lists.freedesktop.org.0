Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 693C22695D0
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 21:44:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69F0F6E566;
	Mon, 14 Sep 2020 19:44:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73B076E566
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 19:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600112688;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=A/DjrjveF5/2wA8RTl0T9a0Cox1J1OLY+rMuhaYpfao=;
 b=a0GZ9W9D3oFXeXyHPUCNVgXrvPu/YxXS0Ear2g1PWJjTKmdrVhVhauntWelzWi8Wj4I3R5
 oUyl03UlbEE2giyk67lqGTqflxPUfWjIOnDJ6D4JxHUbc9DYu2uTWU2LYPYOuJRW+EzmOF
 KgYgFgoZfInJFQ1BbN3Nb/kAUD09DQc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-210-JgGmMpLmOG2xlwIrBHTevw-1; Mon, 14 Sep 2020 15:44:43 -0400
X-MC-Unique: JgGmMpLmOG2xlwIrBHTevw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 773238015AA;
 Mon, 14 Sep 2020 19:44:41 +0000 (UTC)
Received: from ovpn-113-249.rdu2.redhat.com (ovpn-113-249.rdu2.redhat.com
 [10.10.113.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ACF737513E;
 Mon, 14 Sep 2020 19:44:39 +0000 (UTC)
Message-ID: <05803c18b64db8a811c692bcbdc03172935ea483.camel@redhat.com>
From: Qian Cai <cai@redhat.com>
To: Matthew Wilcox <willy@infradead.org>
Date: Mon, 14 Sep 2020 15:44:39 -0400
In-Reply-To: <20200914165032.GS6583@casper.infradead.org>
References: <20200910183318.20139-1-willy@infradead.org>
 <20200910183318.20139-4-willy@infradead.org>
 <c48c5eaa09d1ea5b78b12b545c034d1e937c49ba.camel@redhat.com>
 <20200914165032.GS6583@casper.infradead.org>
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: Re: [Intel-gfx] [PATCH v2 3/8] mm: Optimise madvise WILLNEED
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
Cc: William Kucharski <william.kucharski@oracle.com>,
 intel-gfx@lists.freedesktop.org, Johannes Weiner <hannes@cmpxchg.org>,
 Hugh Dickins <hughd@google.com>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 Matthew Auld <matthew.auld@intel.com>, Huang Ying <ying.huang@intel.com>,
 cgroups@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2020-09-14 at 17:50 +0100, Matthew Wilcox wrote:
> On Mon, Sep 14, 2020 at 12:17:07PM -0400, Qian Cai wrote:
> > Reverting the "Return head pages from find_*_entry" patchset [1] up to this
> > patch fixed the issue that LTP madvise06 test [2] would trigger endless
> > soft-
> > lockups below. It does not help after applied patches fixed other separate
> > issues in the patchset [3][4].
> 
> Thanks for the report.  Could you try this?

It works fine.

> 
> diff --git a/mm/madvise.c b/mm/madvise.c
> index 96189acd6969..2d9ceccb338d 100644
> --- a/mm/madvise.c
> +++ b/mm/madvise.c
> @@ -234,6 +234,7 @@ static void force_shm_swapin_readahead(struct
> vm_area_struct *vma,
>  
>  		if (!xa_is_value(page))
>  			continue;
> +		xas_pause(&xas);
>  		rcu_read_unlock();
>  
>  		swap = radix_to_swp_entry(page);
> @@ -243,7 +244,6 @@ static void force_shm_swapin_readahead(struct
> vm_area_struct *vma,
>  			put_page(page);
>  
>  		rcu_read_lock();
> -		xas_reset(&xas);
>  	}
>  	rcu_read_unlock();
>  
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
