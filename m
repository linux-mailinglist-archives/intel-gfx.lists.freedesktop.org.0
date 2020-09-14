Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D3C269216
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 18:50:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E8956E2F2;
	Mon, 14 Sep 2020 16:50:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B0596E2F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 16:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ONEBRln/W01sImpX9+NYKevjldL0jmS6ROdAPg7RGBo=; b=d20rYKoM3MFFGhKV+vJP3AYgTj
 mwiFsplmERWLiFhdGa/edRGM+Qj9ahLzBKxByDwrrNrodrlLBFd+1uxwJNSncFSR/DD/F8eYJ5rpd
 EWsrP4oBnQqVW69V09WhLgJDPlKrXa8ft32xDOYXKu7Bgk67FVD/8Jbrd6iHTXw2MTrw/1EsWJ3ne
 U0zv3kyDd+IGx1DtSu4NHxadm7YDbRJCUD6CifAvTitUWGFAaXv+75kmqz8whwirQbRHFU2JP0SQa
 20qFkwfkN4dRDAt7KOAwTrSVq9FT/o5iGlEJyqm8QeKBfLHUzYc5Q4s1ILBQr52OTeC3zWItAqCYw
 TLiYM1yg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kHrgX-0001cn-28; Mon, 14 Sep 2020 16:50:33 +0000
Date: Mon, 14 Sep 2020 17:50:32 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Qian Cai <cai@redhat.com>
Message-ID: <20200914165032.GS6583@casper.infradead.org>
References: <20200910183318.20139-1-willy@infradead.org>
 <20200910183318.20139-4-willy@infradead.org>
 <c48c5eaa09d1ea5b78b12b545c034d1e937c49ba.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c48c5eaa09d1ea5b78b12b545c034d1e937c49ba.camel@redhat.com>
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

On Mon, Sep 14, 2020 at 12:17:07PM -0400, Qian Cai wrote:
> Reverting the "Return head pages from find_*_entry" patchset [1] up to this
> patch fixed the issue that LTP madvise06 test [2] would trigger endless soft-
> lockups below. It does not help after applied patches fixed other separate
> issues in the patchset [3][4].

Thanks for the report.  Could you try this?

diff --git a/mm/madvise.c b/mm/madvise.c
index 96189acd6969..2d9ceccb338d 100644
--- a/mm/madvise.c
+++ b/mm/madvise.c
@@ -234,6 +234,7 @@ static void force_shm_swapin_readahead(struct vm_area_struct *vma,
 
 		if (!xa_is_value(page))
 			continue;
+		xas_pause(&xas);
 		rcu_read_unlock();
 
 		swap = radix_to_swp_entry(page);
@@ -243,7 +244,6 @@ static void force_shm_swapin_readahead(struct vm_area_struct *vma,
 			put_page(page);
 
 		rcu_read_lock();
-		xas_reset(&xas);
 	}
 	rcu_read_unlock();
 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
