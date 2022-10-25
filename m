Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8828A60D0DC
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 17:40:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E3A10E3C7;
	Tue, 25 Oct 2022 15:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF67C10E3C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 15:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666712427; x=1698248427;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1ZNYt1tYEmy3q5mg+kgu9d6eRrl7iUyZTVeHG2xwN7k=;
 b=fIUE8ilYhsTP6A+9fg3zSG2ohyZtuH2raDoALit8M+iYJPtJD/lUZbq8
 SQhWjx0nofqFb8CAEcmj5tEkAxT8DssrmILencQM/Ul5gi8t6I8Ok14iQ
 H1QB2oM7LeYEqXdwugqarbjTi+AU/1uI0mM4N0N90Q7+cTRORjcVFtYqL
 m1d2AjayHsG4IJFB99VZ+0rp3V6NYcGhsAfgBW43WS86XS6d2Ud1Uidk6
 q9DImlBs/RsHTXx4ZkyeqqVNOvDhZtzjiKVwZVjV/8fkci3bbcGt/neK3
 aCtTJa3VfMqfHheLWh2eROJVo0KfPAbLyB50wTfC6APRxlhtB21lF9szM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="334313495"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="334313495"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 08:40:26 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="582818878"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="582818878"
Received: from anagimen-mobl1.ger.corp.intel.com (HELO [10.213.203.143])
 ([10.213.203.143])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 08:40:25 -0700
Message-ID: <992f7687-f56a-e174-9369-b7216d7d6fca@linux.intel.com>
Date: Tue, 25 Oct 2022 16:40:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221024172139.80435-1-matthew.auld@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221024172139.80435-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/userptr: restore probe_range
 behaviour
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
Cc: kernel test robot <oliver.sang@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Matthew Wilcox <willy@infradead.org>, Yu Zhao <yuzhao@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 24/10/2022 18:21, Matthew Auld wrote:
> The conversion looks harmless, however the addr value is updated inside
> the loop with the previous vm_end, which then incorrectly leads to
> for_each_vma_range() iterating over stuff outside the range we care
> about. Fix this by storing the end value separately.
> 
> Testcase: igt@gem_userptr_blits@probe
> Fixes: f683b9d61319 ("i915: use the VMA iterator")
> Reported-by: kernel test robot <oliver.sang@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Yu Zhao <yuzhao@google.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> index b7e24476a0fd..dadb3e3fa9c8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> @@ -427,9 +427,10 @@ probe_range(struct mm_struct *mm, unsigned long addr, unsigned long len)
>   {
>   	VMA_ITERATOR(vmi, mm, addr);
>   	struct vm_area_struct *vma;
> +	unsigned long end = addr + len;
>   
>   	mmap_read_lock(mm);
> -	for_each_vma_range(vmi, vma, addr + len) {
> +	for_each_vma_range(vmi, vma, end) {
>   		/* Check for holes, note that we also update the addr below */
>   		if (vma->vm_start > addr)
>   			break;

I am unsure of the for_each_vma_range() behaviour regarding holes. If it 
just skips overs them and continues to next VMA in the range then patch 
looks good to me. Could someone confirm?

Regards,

Tvrtko
