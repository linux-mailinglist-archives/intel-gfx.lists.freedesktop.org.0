Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6E4269204
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 18:47:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 312316E4E3;
	Mon, 14 Sep 2020 16:47:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22E6A6E50D
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 16:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600102052;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=83hSG57S8ARdg4I7deJU3gjqEand93evAvlu89oYvEQ=;
 b=O1fjLnyl4ruthOzN7x2w3OfhbLQgw1/y/QjOJtld2A65s5dE7LvXgtrLbZhgDUI8hpfNY8
 CoNdJj2n3xVJkEgt31lrqyYf9qVfzSzrzYZ4rUZfWIcPx6S5gouVIvbKLyafrEupERQKBK
 RkWRiuXfonRCQxRC43JxvnIpa9zeHZ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-333-ADpwFPEOOFG6k2QZRmEMDw-1; Mon, 14 Sep 2020 12:47:30 -0400
X-MC-Unique: ADpwFPEOOFG6k2QZRmEMDw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6CE8010BBEC2;
 Mon, 14 Sep 2020 16:47:28 +0000 (UTC)
Received: from ovpn-113-249.rdu2.redhat.com (ovpn-113-249.rdu2.redhat.com
 [10.10.113.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DF6DD19C4F;
 Mon, 14 Sep 2020 16:47:26 +0000 (UTC)
Message-ID: <54766b04a5bc21b8573666b0c4b50b3e982ed5e5.camel@redhat.com>
From: Qian Cai <cai@redhat.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>, linux-mm@kvack.org
Date: Mon, 14 Sep 2020 12:47:26 -0400
In-Reply-To: <c48c5eaa09d1ea5b78b12b545c034d1e937c49ba.camel@redhat.com>
References: <20200910183318.20139-1-willy@infradead.org>
 <20200910183318.20139-4-willy@infradead.org>
 <c48c5eaa09d1ea5b78b12b545c034d1e937c49ba.camel@redhat.com>
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
Cc: intel-gfx@lists.freedesktop.org, Johannes Weiner <hannes@cmpxchg.org>,
 Hugh Dickins <hughd@google.com>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 William Kucharski <william.kucharski@oracle.com>,
 Matthew Auld <matthew.auld@intel.com>, Huang Ying <ying.huang@intel.com>,
 cgroups@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2020-09-14 at 12:17 -0400, Qian Cai wrote:
> On Thu, 2020-09-10 at 19:33 +0100, Matthew Wilcox (Oracle) wrote:
> > Instead of calling find_get_entry() for every page index, use an XArray
> > iterator to skip over NULL entries, and avoid calling get_page(),
> > because we only want the swap entries.
> > 
> > Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> > Acked-by: Johannes Weiner <hannes@cmpxchg.org>
> 
> Reverting the "Return head pages from find_*_entry" patchset [1] up to this
> patch fixed the issue that LTP madvise06 test [2] would trigger endless soft-
> lockups below. It does not help after applied patches fixed other separate
> issues in the patchset [3][4].

Forgot to send this piece of RCU stall traces as well which might help
debugging.

00: [ 2852.137748] madvise06 (62712): drop_caches: 3                            
01: [ 2928.208367] rcu: INFO: rcu_sched self-detected stall on CPU              
01: [ 2928.210083] rcu:     1-....: (6499 ticks this GP) idle=036/1/0x4000000000
01: 000002 softirq=1741392/1741392 fqs=3161                                     
01: [ 2928.210610]  (t=6500 jiffies g=610849 q=12529)                           
01: [ 2928.210620] Task dump for CPU 1:                                         
01: [ 2928.210630] task:madvise06       state:R  running task     stack:53320 pi
01: d:62712 ppid: 62711 flags:0x00000004                                        
01: [ 2928.210676] Call Trace:                                                  
01: [ 2928.210693]  [<00000000af57ec88>] show_stack+0x158/0x1f0                 
01: [ 2928.210703]  [<00000000ae55b692>] sched_show_task+0x3d2/0x4c8            
01: [ 2928.210710]  [<00000000af5846aa>] rcu_dump_cpu_stacks+0x26a/0x2a8        
01: [ 2928.210718]  [<00000000ae64fa62>] rcu_sched_clock_irq+0x1c92/0x2188      
01: [ 2928.210726]  [<00000000ae6662ee>] update_process_times+0x4e/0x148        
01: [ 2928.210734]  [<00000000ae690c26>] tick_sched_timer+0x86/0x188            
01: [ 2928.210741]  [<00000000ae66989c>] __hrtimer_run_queues+0x84c/0x10b8      
01: [ 2928.210748]  [<00000000ae66c80a>] hrtimer_interrupt+0x38a/0x860          
01: [ 2928.210758]  [<00000000ae48dbf2>] do_IRQ+0x152/0x1c8                     
01: [ 2928.210767]  [<00000000af5b00ea>] ext_int_handler+0x18e/0x194            
01: [ 2928.210774]  [<00000000ae5e332e>] arch_local_irq_restore+0x86/0xa0       
01: [ 2928.210782]  [<00000000af58da04>] lock_is_held_type+0xe4/0x130           
01: [ 2928.210791]  [<00000000ae63355a>] rcu_read_lock_held+0xba/0xd8           
01: [ 2928.210799]  [<00000000af0125fc>] xas_descend+0x244/0x2c8                
01: [ 2928.210806]  [<00000000af012754>] xas_load+0xd4/0x148                    
01: [ 2928.210812]  [<00000000af014490>] xas_find+0x5d0/0x818                   
01: [ 2928.210822]  [<00000000ae97e644>] do_madvise+0xd5c/0x1600                
01: [ 2928.210828]  [<00000000ae97f2d2>] __s390x_sys_madvise+0x72/0x98          
01: [ 2928.210835]  [<00000000af5af844>] system_call+0xdc/0x278                 
01: [ 2928.210841] 3 locks held by madvise06/62712:                             
01: [ 2928.216406]  #0: 00000001437fca18 (&mm->mmap_lock){++++}-{3:3}, at: do_m 
01: dvise+0x18c/0x1600                                                          
01: [ 2928.216430]  #1: 00000000afbdd3e0 (rcu_read_lock){....}-{1:2}, at: do_mad
01: vise+0xe72/0x1600                                                           
01: [ 2928.216449]  #2: 00000000afbe0818 (rcu_node_1){-.-.}-{2:2}, at: rcu_dump_
01: cpu_stacks+0xb2/0x2a8

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
