Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAB860D13D
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 18:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A721F10E177;
	Tue, 25 Oct 2022 16:03:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B563B10E177
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 16:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666713820; x=1698249820;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=S91DM3fI2Ji/8ifUcATBo+r7lFeLEwtN+MxkQ+9ry5U=;
 b=niqZpU0kdvypm7LmOkhnASVCBKCiOZArDSlPn7/kaSWzy55B7X3LIEVI
 pSBTh8ybtxp+Xd7yQeH5Sdzz200JV4pe0m+5CiD69Zc95K3+XGVjB3Zko
 ziFcqwDrnx5pkBmmhEIEuuHDFompSV9bnkdOeIMJg9oQ7NFwjeLCcnA2O
 C4E05MAzFC8VH5YMyoFswGZq2ql3DwhOl6mjDAtNyrOh4qYabk0otfxSX
 Ixrlg+LcqtKplG9wiUf9ZYQdBiAoS8cI0diRmOPJQQs6rxv6VBz+YAQko
 BMQaU3FlyllsDJhK4CTNPr6SMz+mINTpIXOeZUKi7Hlt9hwL69rPe4yXw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="305332330"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="305332330"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 09:01:27 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="631679458"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="631679458"
Received: from anagimen-mobl1.ger.corp.intel.com (HELO [10.213.203.143])
 ([10.213.203.143])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 09:01:25 -0700
Message-ID: <6650b41a-1d71-6cbc-6b67-a5b44029ba2c@linux.intel.com>
Date: Tue, 25 Oct 2022 17:01:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: Matthew Wilcox <willy@infradead.org>
References: <20221024172139.80435-1-matthew.auld@intel.com>
 <992f7687-f56a-e174-9369-b7216d7d6fca@linux.intel.com>
 <Y1gGz9TlvgqqK4dx@casper.infradead.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <Y1gGz9TlvgqqK4dx@casper.infradead.org>
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
Cc: intel-gfx@lists.freedesktop.org, kernel test robot <oliver.sang@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Yu Zhao <yuzhao@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/10/2022 16:54, Matthew Wilcox wrote:
> On Tue, Oct 25, 2022 at 04:40:23PM +0100, Tvrtko Ursulin wrote:
>>
>> On 24/10/2022 18:21, Matthew Auld wrote:
>>> The conversion looks harmless, however the addr value is updated inside
>>> the loop with the previous vm_end, which then incorrectly leads to
>>> for_each_vma_range() iterating over stuff outside the range we care
>>> about. Fix this by storing the end value separately.
>>>
>>> Testcase: igt@gem_userptr_blits@probe
>>> Fixes: f683b9d61319 ("i915: use the VMA iterator")
>>> Reported-by: kernel test robot <oliver.sang@intel.com>
>>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>> Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
>>> Cc: Vlastimil Babka <vbabka@suse.cz>
>>> Cc: Yu Zhao <yuzhao@google.com>
>>> ---
>>>    drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 3 ++-
>>>    1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>>> index b7e24476a0fd..dadb3e3fa9c8 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>>> @@ -427,9 +427,10 @@ probe_range(struct mm_struct *mm, unsigned long addr, unsigned long len)
>>>    {
>>>    	VMA_ITERATOR(vmi, mm, addr);
>>>    	struct vm_area_struct *vma;
>>> +	unsigned long end = addr + len;
>>>    	mmap_read_lock(mm);
>>> -	for_each_vma_range(vmi, vma, addr + len) {
>>> +	for_each_vma_range(vmi, vma, end) {
>>>    		/* Check for holes, note that we also update the addr below */
>>>    		if (vma->vm_start > addr)
>>>    			break;
>>
>> I am unsure of the for_each_vma_range() behaviour regarding holes. If it
>> just skips overs them and continues to next VMA in the range then patch
>> looks good to me. Could someone confirm?
> 
> It's "For each VMA in this range".  It doesn't iterate over non-VMAs
> within that range ;-)  Nor does a gap between VMAs stop the iteration.

Thank you Matthew - I ventured briefly into the maple leaf world but 
quickly decided it would be much easier to ask. :)

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
