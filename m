Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EE726A06A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 10:10:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF4689359;
	Tue, 15 Sep 2020 08:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com
 [IPv6:2607:f8b0:4864:20::741])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42FD89359
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 08:10:12 +0000 (UTC)
Received: by mail-qk1-x741.google.com with SMTP id o16so3347064qkj.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 01:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=+JVatOz5/Dh/xyAg85UUTlc2Kova9GVo8Ydw6vbee8g=;
 b=nIyTzeIBrWUervNx+ZYSIQs3H/l6i7vwus2Ha3I8FVsJWME+6Q6zBuLHukcO1Xcij/
 j5R4e/ZCmOxtNw9oAWHeZq7ZmEeuOE1wVGnjbF/JEFb/h3Gpyr0zY82TI5IU8HJa3iwt
 wI+5RRixk+oQKYUF3g9xUmcY8v+Lbh/cTzjxMNENwyG+h/fSBMLQK4/VS47P+Igi7oZ1
 9UckvC1TShzWV6/MknJfpHzSm2rh16Zq6E3B4Oi9mvYBkd/oM5Ats+6fyFmiLQab2Du2
 7pn/Dd1cLCSugZFKNESH19JPHq/CXBJqNAhX10PcHYs8QaZCnL/QDibmKOhKsKMRnISA
 U9IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=+JVatOz5/Dh/xyAg85UUTlc2Kova9GVo8Ydw6vbee8g=;
 b=ekp1RGxzwiTajBS5qdGpNJg/pO1Ds6aFI4hGX8UFrXfkCwBRQJRZjhLeRmdAicqtsQ
 6xm6HvNGEdsiASodTKl21j8nv2LlU8zC/N1j2H3tthPR04UF+bm6n6N82CDosGpSflrn
 uwhIpjmnNXmtHgVA0ESFEf3qd0if6LKebEheyPjY1j4GsZQqeyDwbTPl3zqff3aivXgl
 nojT47H7gxyquCpr6rOTWeAt7t/jMMvs5XNjBwo4GH9JsGSbnoPvNq9kXbdRtJtsothT
 vfPQEK6d02Q9jEVIVeQ64JthfL5JJao0BqPoc4KfrT5XIGIRsfzvcX45nVE+f4QSf0Fb
 csng==
X-Gm-Message-State: AOAM532MMN0O+h+AsQG+9/RFdfZdN7WQ6AwoOi+K+FGWllb8YSAk5Cqm
 VNLSN76GI1DGOPl0S9pUFHE8WQ==
X-Google-Smtp-Source: ABdhPJyS7xJTZfyWz8c4kNJtOicW4XfjWeOIR89eyPboMltYWj+TUMAFVzJOuE70LfMxUb5VQs5eUg==
X-Received: by 2002:a37:a602:: with SMTP id p2mr16652323qke.254.1600157410569; 
 Tue, 15 Sep 2020 01:10:10 -0700 (PDT)
Received: from eggly.attlocal.net
 (172-10-233-147.lightspeed.sntcca.sbcglobal.net. [172.10.233.147])
 by smtp.gmail.com with ESMTPSA id u4sm15673927qkk.68.2020.09.15.01.10.06
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Tue, 15 Sep 2020 01:10:08 -0700 (PDT)
Date: Tue, 15 Sep 2020 01:10:05 -0700 (PDT)
From: Hugh Dickins <hughd@google.com>
X-X-Sender: hugh@eggly.anvils
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
In-Reply-To: <20200910183318.20139-1-willy@infradead.org>
Message-ID: <alpine.LSU.2.11.2009150059310.1550@eggly.anvils>
References: <20200910183318.20139-1-willy@infradead.org>
User-Agent: Alpine 2.11 (LSU 23 2013-08-11)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 0/8] Return head pages from find_*_entry
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
 intel-gfx@lists.freedesktop.org, Huang Ying <ying.huang@intel.com>,
 Hugh Dickins <hughd@google.com>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 Matthew Auld <matthew.auld@intel.com>, Johannes Weiner <hannes@cmpxchg.org>,
 cgroups@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 10 Sep 2020, Matthew Wilcox (Oracle) wrote:

> This patch series started out as part of the THP patch set, but it has
> some nice effects along the way and it seems worth splitting it out and
> submitting separately.
> 
> Currently find_get_entry() and find_lock_entry() return the page
> corresponding to the requested index, but the first thing most callers do
> is find the head page, which we just threw away.  As part of auditing
> all the callers, I found some misuses of the APIs and some plain
> inefficiencies that I've fixed.
> 
> The diffstat is unflattering, but I added more kernel-doc and a new wrapper.
> 
> v2:
>  - Rework how shmem_getpage_gfp() handles getting a head page back from
>    find_lock_entry()
>  - Renamed find_get_swap_page() to find_get_incore_page()
>  - Make sure find_get_incore_page() doesn't return a head page
>  - Fix the missing include of linux/shmem_fs.h
>  - Move find_get_entry and find_lock_entry prototypes to mm/internal.h
>  - Rename thp_valid_index() to thp_contains()
>  - Fix thp_contains() for hugetlbfs and swapcache
>  - Add find_lock_head() wrapper around pagecache_get_page()
> 
> Matthew Wilcox (Oracle) (8):
>   mm: Factor find_get_incore_page out of mincore_page
>   mm: Use find_get_incore_page in memcontrol
>   mm: Optimise madvise WILLNEED
>   proc: Optimise smaps for shmem entries
>   i915: Use find_lock_page instead of find_lock_entry
>   mm: Convert find_get_entry to return the head page
>   mm/shmem: Return head page from find_lock_entry
>   mm: Add find_lock_head
> 
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c |  4 +--
>  fs/proc/task_mmu.c                        |  8 +----
>  include/linux/pagemap.h                   | 43 +++++++++++++++++-----
>  include/linux/swap.h                      |  7 ++++
>  mm/filemap.c                              | 44 +++++++++++------------
>  mm/internal.h                             |  3 ++
>  mm/madvise.c                              | 21 ++++++-----
>  mm/memcontrol.c                           | 24 ++-----------
>  mm/mincore.c                              | 28 ++-------------
>  mm/shmem.c                                | 20 +++++------
>  mm/swap_state.c                           | 32 +++++++++++++++++
>  11 files changed, 127 insertions(+), 107 deletions(-)
> 
> -- 
> 2.28.0

I was testing mmotm today (plus the shmem.c and swap_state.c
fixes that you posted, but I did not try the madvise.c one) -
my usual tmpfs swapping loads (plus hyperactive khugepaged to
maximize the THPs).  It behaved well, no problems found.

But I probably won't get to try your series of 12 for a few days.

Hugh
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
