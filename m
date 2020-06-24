Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 649CC20CEB6
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 15:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8691E89F27;
	Mon, 29 Jun 2020 13:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from hqnvemgate26.nvidia.com (hqnvemgate26.nvidia.com
 [216.228.121.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A94EA6E876
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 20:47:26 +0000 (UTC)
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ef3bbd10000>; Wed, 24 Jun 2020 13:47:13 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Wed, 24 Jun 2020 13:47:26 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Wed, 24 Jun 2020 13:47:26 -0700
Received: from [10.2.59.206] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 24 Jun
 2020 20:47:24 +0000
To: Jason Gunthorpe <jgg@ziepe.ca>, Chris Wilson <chris@chris-wilson.co.uk>
References: <20200624191417.16735-1-chris@chris-wilson.co.uk>
 <20200624192116.GO6578@ziepe.ca>
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <44708b2e-479f-7d58-fe01-29cfd6c70bdb@nvidia.com>
Date: Wed, 24 Jun 2020 13:47:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200624192116.GO6578@ziepe.ca>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1593031633; bh=2lne34Bgsltqu3lapK9YX7sbymR3G2JcYO7zm77mdNE=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=nHbvHZHIjUANZly99KWpI0RSdeNad4AK7nIXU5pCxrbQ5vWImuiYwSjbdJoCOXR08
 IdrDGS/BHFsg0UX2z3Pzd0rnDwisWyZp9RUN6N8lUHHZtMQmzYj8ryw7VGqnos1xWz
 /PJBzVgEP16oGD6Jhptv7NtjKJQoWrqGTz4l68UmxP2JQZhZDH5PF986iJQz0XiSkE
 Ghw1gl1yBLHuE5BDJPtDcNRizNB/blV6dUTzudJqHMJplitxETQg24AjXsYG8fGstc
 22evbs+ZsahLfC8gaXvPNambISBtM6BQLhP5vScPMbb/e7g1fzUr2UtTTUAfRh2HoK
 9fUDzyn6K/GBA==
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
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>, "Kirill A .
 Shutemov" <kirill.shutemov@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-06-24 12:21, Jason Gunthorpe wrote:
> On Wed, Jun 24, 2020 at 08:14:17PM +0100, Chris Wilson wrote:
>> A general rule of thumb is that shrinkers should be fast and effective.
>> They are called from direct reclaim at the most incovenient of times when
>> the caller is waiting for a page. If we attempt to reclaim a page being
>> pinned for active dma [pin_user_pages()], we will incur far greater
>> latency than a normal anonymous page mapped multiple times. Worse the
>> page may be in use indefinitely by the HW and unable to be reclaimed
>> in a timely manner.
> 
> A pinned page can't be migrated, discarded or swapped by definition -
> it would cause data corruption.
> 
> So, how do things even get here and/or work today at all? I think the
> explanation is missing something important.
> 

Well, those activities generally try to unmap the page, and
have to be prepared to deal with failure to unmap. From my reading,
it seemed very clear.

What's less clear is why the comment and the commit description
only talk about reclaim, when there are additional things that call
try_to_unmap(), including:

     migrate_vma_unmap()
     split_huge_page_to_list() --> unmap_page()

I do like this code change, though. And I *think* it's actually safe to
do this, as it stays away from writeback or other filesystem activity.
But let me double check that, in case I'm forgetting something.

thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
