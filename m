Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1E5297124
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 16:16:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B10D06F894;
	Fri, 23 Oct 2020 14:16:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B5286F893;
 Fri, 23 Oct 2020 14:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=GVPYMjFqChMjoGfaKLO2uGqLmrcgLH9W7OOdDABUMfg=; b=WDuQx2OmH186JLLCT/V49+cHuG
 mvx3za9SySicasNgXKx5tLAGyLzzjMdStqRY5+gjhxGKEuIITG+UZILbK9cBxat+a10uw+lowMHgU
 A4XPvkubtIHPHZyepjYJtQzcRv+/NgS84fDmbjT3ffVSakzeJL/2clY9r2Aw1R+GJNBloYvsS8VlH
 rS3VhA77U5Ki78fsi0dokXGR1DF0mXSHs1jeElg3ld72bwPIscdEHnUWgCc6qd//dojfah5sbnF4f
 FA32w4nZVYBUke2t5rabYYM/cRMBDRJV6qjDaaaWY1XXsyx96exYVzQxYNvAH/xg57vNzc1lLniXd
 zPwjKFvQ==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kVxrf-0000gL-Pn; Fri, 23 Oct 2020 14:16:19 +0000
Date: Fri, 23 Oct 2020 15:16:19 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20201023141619.GC20115@casper.infradead.org>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-4-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023122216.2373294-4-daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 04/65] mm: Extract might_alloc() debug check
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Dave Chinner <david@fromorbit.com>,
 DRI Development <dri-devel@lists.freedesktop.org>, linux-mm@kvack.org,
 Daniel Vetter <daniel.vetter@intel.com>, Christoph Lameter <cl@linux.com>,
 Michel Lespinasse <walken@google.com>, Ingo Molnar <mingo@kernel.org>,
 Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>,
 Waiman Long <longman@redhat.com>, "Paul E . McKenney" <paulmck@kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Qian Cai <cai@lca.pw>, Thomas Gleixner <tglx@linutronix.de>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Vlastimil Babka <vbabka@suse.cz>,
 Randy Dunlap <rdunlap@infradead.org>, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 23, 2020 at 02:21:15PM +0200, Daniel Vetter wrote:
> Note that unlike fs_reclaim_acquire/release gfpflags_allow_blocking
> does not consult the PF_MEMALLOC flags. But there is no flag
> equivalent for GFP_NOWAIT, hence this check can't go wrong due to
> memalloc_no*_save/restore contexts.

I have a patch series that adds memalloc_nowait_save/restore.

https://lore.kernel.org/linux-mm/20200625113122.7540-7-willy@infradead.org/
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
