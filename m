Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A3A24A6C6
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 21:21:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1968A6E7DA;
	Wed, 19 Aug 2020 19:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 584196E7DA
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=KY/ct6DqDgE0xj6ePem8K1ZoSkwZfEz10n8fdqExt64=; b=ZjgtOAiMlD359oZ7PFqMt7m/N/
 HsV4xtxiFIMnMzoxngiRO9ToNhKnv+UqlargZIB9w8jJqXk/dqR9dfqj4tNwNFP5CTQkepb8vQLYd
 N6edGz+ukH9jxmgqOu+htrf4lkXBUtKapGiqzye8JfwY6EW+FDYiOi0ZBCowk7p28IJHqU2YdYM9Z
 N8xN1Pxiw6OAKzEqtWpYx9FTR1tDWShrK0WIO7VUupr7ifwcRs75x6fTzuXimm3s/Gh+R3mKKNZwL
 JXxo/oXSSodiI2qvrWAzPpqT89upwfqcvAYv1QajyLDfP9rE7MFO+DAyBvBsaEz4zb53yYXFjw6z3
 V7MxvCGw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1k8Te1-0000um-Sd; Wed, 19 Aug 2020 19:21:09 +0000
Date: Wed, 19 Aug 2020 20:21:09 +0100
From: Matthew Wilcox <willy@infradead.org>
To: linux-mm@kvack.org
Message-ID: <20200819192109.GI17456@casper.infradead.org>
References: <20200819184850.24779-1-willy@infradead.org>
 <20200819184850.24779-2-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819184850.24779-2-willy@infradead.org>
Subject: Re: [Intel-gfx] [PATCH 1/8] mm: Factor find_get_swap_page out of
 mincore_page
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
Cc: intel-gfx@lists.freedesktop.org, Huang Ying <ying.huang@intel.com>,
 Hugh Dickins <hughd@google.com>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 William Kucharski <william.kucharski@oracle.com>,
 Matthew Auld <matthew.auld@intel.com>, Johannes Weiner <hannes@cmpxchg.org>,
 cgroups@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 19, 2020 at 07:48:43PM +0100, Matthew Wilcox (Oracle) wrote:
> Provide this functionality from the swap cache.  It's useful for
> more than just mincore().

The build bot showed I was missing this for some configs:

diff --git a/mm/swap_state.c b/mm/swap_state.c
index 986b4e3d3bad..92a1f40be589 100644
--- a/mm/swap_state.c
+++ b/mm/swap_state.c
@@ -21,6 +21,7 @@
 #include <linux/vmalloc.h>
 #include <linux/swap_slots.h>
 #include <linux/huge_mm.h>
+#include <linux/shmem_fs.h>
 #include "internal.h"
 
 /*

I'll wait for more feedback before reposting the series in ~24 hours.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
