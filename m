Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2276213797
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 11:24:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5941C6E1E0;
	Fri,  3 Jul 2020 09:24:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71A286E1E0
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 09:24:32 +0000 (UTC)
IronPort-SDR: ssy5TRBpMye0yKC0KKkiyVTF76QJmG+a5PdEqHTzUcYbfSilHPGP2v0mEKoGkXgj6mWEU5M0Fs
 l2U2eQ1KgOqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="165187695"
X-IronPort-AV: E=Sophos;i="5.75,307,1589266800"; d="scan'208";a="165187695"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 02:24:32 -0700
IronPort-SDR: fDkbY2DznO4ozNIqMawGelUklP6kN3zriRp9wMeSKq0rnAi4Wr8a+9TN693PowKbUPzh3h4O7+
 7sAWM7etdWqQ==
X-IronPort-AV: E=Sophos;i="5.75,307,1589266800"; d="scan'208";a="455840573"
Received: from rbendor-mobl1.ger.corp.intel.com (HELO [10.214.211.147])
 ([10.214.211.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 02:24:30 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-7-chris@chris-wilson.co.uk>
 <aae73a4b-c942-53ae-9127-6160bd6b614a@linux.intel.com>
 <159376683236.12771.16953737584055290689@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3593fac6-f178-14d1-6948-ee3bcf65e74c@linux.intel.com>
Date: Fri, 3 Jul 2020 10:24:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159376683236.12771.16953737584055290689@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/23] drm/i915: Switch to object
 allocations for page directories
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/07/2020 10:00, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-07-03 09:44:52)
>>
>> On 02/07/2020 09:32, Chris Wilson wrote:
>>> The GEM object is grossly overweight for the practicality of tracking
>>> large numbers of individual pages, yet it is currently our only
>>> abstraction for tracking DMA allocations. Since those allocations need
>>> to be reserved upfront before an operation, and that we need to break
>>> away from simple system memory, we need to ditch using plain struct page
>>> wrappers.
>>
>> [Calling all page table experts...] :)
>>
>> So.. mostly 4k allocations via GEM objects? Sounds not ideal on first.

What is the relationship between object size and number of 4k objects 
needed for page tables?

>> Reminder on why we need to break away from simple system memory?
> 
> The page tables are stored in device memory, which at the moment are
> plain pages with dma mappings.
> 
>> Need to
>> have a list of GEM objects which can be locked in the ww locking phase?
> 
> Yes, since we will need to be able to reserve all the device memory we
> need for execution.
> 
>> But how do you allocate these objects up front, when allocation needs to
>> be under the ww lock in case evictions need to be triggered.
> 
> By preeallocating enough objects to cover the page directories during
> the reservation phase. The previous patch moved the allocations from the
> point-of-use to before we insert the vma. Having made it the onus of the
> caller to provide the page directories allocations, we can then do it
> early on during the memory reservations.

Okay I missed the importance of the previous patch.

But preallocations have to be able to trigger evictions. Is the 
preallocating objects split then into creating objects and obtaining 
backing store? I do not see this in this patch, alloc_pt_dma both 
creates the object and pins the pages.

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
