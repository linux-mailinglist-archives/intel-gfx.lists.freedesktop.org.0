Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BCB20CEBA
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 15:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D826E03F;
	Mon, 29 Jun 2020 13:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from hqnvemgate26.nvidia.com (hqnvemgate26.nvidia.com
 [216.228.121.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E78AC6E895
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 00:11:34 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ef3eba90000>; Wed, 24 Jun 2020 17:11:21 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 24 Jun 2020 17:11:34 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 24 Jun 2020 17:11:34 -0700
Received: from [10.2.59.206] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 25 Jun
 2020 00:11:30 +0000
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20200624191417.16735-1-chris@chris-wilson.co.uk>
 <20200624192116.GO6578@ziepe.ca>
 <44708b2e-479f-7d58-fe01-29cfd6c70bdb@nvidia.com>
 <20200624232047.GP6578@ziepe.ca>
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <887ac706-65f0-3089-b51b-47aabf7d3847@nvidia.com>
Date: Wed, 24 Jun 2020 17:11:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200624232047.GP6578@ziepe.ca>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1593043882; bh=HgfzVvVqN21hLMs0lCHOTEd/EC0i4XdyaUbWxeMoOfA=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=BzwIdhXhJaR4a1GFOREXvpV6vUVM0xoljaj4gyGV2TZqstSNPlA0ceFN6s9KnFBdE
 iH/boJYVyAOCocaXJ1GaY8MFDkY3XmDaWzguouPg/G5bCA7EMIsi76lhhdcj7zWsy1
 XxFw8VvTeWEvK8lVKxA3Rmxa7MWeAdYQZPwvUgg86Kf8VWTQ72tk4LhlnTWgJAFMke
 G56/gtNQ+7U9O3rOBvgPxoAsdVr8oAzhJXMTS/KO9TdyvLTuXwR6BUlUvdAYg/Xorh
 UNuwyyk6SdwNfzBalWj6udbUWgd/aDchn8JWAgxcaCAuAaKmQbGuu3R6Te/OBRqkQ8
 shubp1yPfhMOA==
X-Mailman-Approved-At: Mon, 29 Jun 2020 13:14:32 +0000
Subject: Re: [Intel-gfx] [PATCH] mm: Skip opportunistic reclaim for dma
 pinned pages
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
Cc: Jan Kara <jack@suse.cz>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org, =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Andrew
 Morton <akpm@linux-foundation.org>, Claudio Imbrenda <imbrenda@linux.ibm.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-06-24 16:20, Jason Gunthorpe wrote:
...
> I think Yang explained it - the page is removed from the mappings but
> freeing it does not happen because page_ref_freeze() does not succeed
> due to the pin.
> 
> Presumably the mappings can reconnect to the same physical page if
> it is re-faulted to avoid any data corruption.
> 
> So, the issue here is the mappings are trashed while the page remains
> - and trashing the mapping triggers a mmu notifier which upsets i915.
> 
>> What's less clear is why the comment and the commit description
>> only talk about reclaim, when there are additional things that call
>> try_to_unmap(), including:
>>
>>      migrate_vma_unmap()
>>      split_huge_page_to_list() --> unmap_page()
> 
> It looks like the same unmap first then abort if the refcount is still
> elevated design as shrink_page_list() ?


Yes. I was just wondering why the documentation here seems to ignore the
other, non-reclaim cases. Anyway, though...


> 
>> I do like this code change, though. And I *think* it's actually safe to
>> do this, as it stays away from writeback or other filesystem activity.
>> But let me double check that, in case I'm forgetting something.

...OK, I've checked, and I like it a little bit less now. Mainly for
structural reasons, though. I think it would work correctly. But
here's a concern: try_to_unmap() should only fail to unmap if there is a
reason to not unmap. Having a page be pinned for dma is a reason to not
*free* a page, and it's also a reason to be careful about writeback and
page buffers for writeback and such. But I'm not sure that it's a reason
to fail to remove mappings.

True, most (all?) of the reasons that we remove mappings, generally are
for things that are not allowed while a page is dma-pinned...at least,
today. But still, there's nothing fundamental about a mapping that
should prevent it from coming or going while a page is undergoing
dma.

So, it's merely a convenient, now-misnamed location in the call stack
to fail out. That's not great. It might be better, as Jason hints at
below, to fail out a little earlier, instead. That would lead to a more
places to call page_maybe_dma_pinned(), but that's not a real problem,
because it's still a small number of places.

After writing all of that...I don't feel strongly about it, because
TTU is kind of synonymous with "I'm about to do a dma-pin-unfriendly
operation".

Maybe some of the more experienced fs or mm people have strong opinions
one way or the other?


> 
> It would be nice to have an explanation why it is OK now to change
> it..

Yes. Definitely good to explain that in the commit log. I think
it's triggered by the existence of page_maybe_dma_pinned(). Until
that was added, figuring out if dma was involved required basically
just guesswork. Now we have a way to guess much more accurately. :)

> 
> I don't know, but could it be that try_to_unmap() has to be done
> before checking the refcount as each mapping is included in the
> refcount? ie we couldn't know a DMA pin was active in advance?
> 
> Now that we have your pin stuff we can detect a DMA pin without doing
> all the unmaps?
> 

Once something calls pin_user_page*(), then the pages will be marked
as dma-pinned, yes. So no, there is no need to wait until try_to_unmap()
to find out.

A final note: depending on where page_maybe_dma_pinned() ends up
getting called, this might prevent a fair number of the problems that
Jan originally reported [1], and that I also reported separately!

Well, not all of the problems, and only after the filesystems get
converted to call pin_user_pages() (working on that next), but...I think
it would actually avoid the crash our customer reported back in early
2018. Even though we don't have the full file lease + pin_user_pages()
solution in place.

That's because reclaim is what triggers the problems that we saw. And
with this patch, we bail out of reclaim early.


[1] https://www.spinics.net/lists/linux-mm/msg142700.html


thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
