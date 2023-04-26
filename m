Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 816066EFC8E
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 23:36:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83B1910E335;
	Wed, 26 Apr 2023 21:36:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3BCF10E335
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 21:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682545001; x=1714081001;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=wL8wMUykqXBicX84t13KYsITD+w3aIM/UR1X6YZVjPg=;
 b=iaRzrF8stuxgJ4NkzxU0NX7Od4dCVZG5SaMjHajKqlPBCmV8VmfeZBTC
 i6fpApArzphVJAC8qZmOsZ9y3dAvLIsAqCvLTO7OsT6POkJyUeezTSS/9
 RpBRluFUaeSUeyxJDGnIm3eAD0Q6g9+Jd4yl0JHerRRyeNcsKH5aXjjkY
 D3z1zKDNISQcMMXf99Voci0II18K51HC+vyU7hvQFe9//Iov0V7Sc+x4w
 T7F5hHFUmzJl0s+8COag2kgT0uIXx9TkVE4B4tM/a7NYjt1EUiPfsJnYK
 Z6EhzOKaKL/jjnrMUI2YrTLm7SrAeT7+PfJiJW/nbz62Z0A60TwgOAfR3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="346000687"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200"; d="scan'208";a="346000687"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 14:36:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="724615398"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200"; d="scan'208";a="724615398"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.8.187])
 ([10.213.8.187])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 14:36:38 -0700
Message-ID: <f573abd1-669e-b376-b9da-db62f796887d@intel.com>
Date: Wed, 26 Apr 2023 23:36:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Auld, Matthew" <matthew.auld@intel.com>
References: <20230425-hugepage-migrate-v7-0-fa6605a986c9@intel.com>
 <CH0PR11MB54443013C3378D4D5992033BE5659@CH0PR11MB5444.namprd11.prod.outlook.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <CH0PR11MB54443013C3378D4D5992033BE5659@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v7 0/2] drm/i915: Hugepage manager and test
 for MTL
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 26.04.2023 17:31, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Hajda, Andrzej <andrzej.hajda@intel.com>
> Sent: Wednesday, April 26, 2023 8:14 AM
> To: intel-gfx@lists.freedesktop.org; linux-kernel@vger.kernel.org; Cavitt, Jonathan <jonathan.cavitt@intel.com>; Hajda, Andrzej <andrzej.hajda@intel.com>; Auld, Matthew <matthew.auld@intel.com>
> Subject: [PATCH v7 0/2] drm/i915: Hugepage manager and test for MTL
>> This patchset patches sent by Jonathan and Andi, with
>> addressed CI failures:
>> 1. Fixed checking alignment of 64K pages on both Pre-Gen12 and Gen12.
>> 2. Fixed start alignment of 2M pages.
>>
>> Regards
>> Andrzej
>>
>> Jonathan Cavitt (2):
>>   drm/i915: Migrate platform-dependent mock hugepage selftests to live
>>   drm/i915: Use correct huge page manager for MTL
>>
>> .../gpu/drm/i915/gem/selftests/huge_pages.c   | 88 +++++++++++++++----
>> drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  3 +-
>> 2 files changed, 71 insertions(+), 20 deletions(-)
>>
>> Cc: intel-gfx@lists.freedesktop.org
>> Cc: linux-kernel@vger.kernel.org
>> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> -- 
>> 2.39.2
>>
>> ---
>> Jonathan Cavitt (2):
>>       drm/i915: Migrate platform-dependent mock hugepage selftests to live
>>       drm/i915: Use correct huge page manager for MTL
>>
>> drivers/gpu/drm/i915/gem/selftests/huge_pages.c | 105 ++++++++++++++++++------
>> drivers/gpu/drm/i915/gt/gen8_ppgtt.c            |   3 +-
>> 2 files changed, 82 insertions(+), 26 deletions(-)
>> ---
>> base-commit: 4d0066a1c0763d50b6fb017e27d12b081ce21b57
>> change-id: 20230425-hugepage-migrate-1869aaf31a6d
>>
>> Best regards,
>> -- 
>> Andrzej Hajda <andrzej.hajda@intel.com>
>
> Just reviewed the changes proper.  It's been a while, so I don't remember everything
> about the prior version, but I think I recognized what was changed:
>
> - I wasn't aware a 21 bit alignment was required for 2M page sizes.  I'm glad you caught that.
> - The extra debugging/error information will be helpful in the case of a failure.
> - Grabbing the per-context VM instead of the ppgtt vm sounds good to me.
>
> Everything here looks amenable.
> Acked-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Though, given I'm also one of the signed-off-bys, I don't know if me acking it is exactly above-board.
> -Jonathan Cavitt

Thanks for looking at it. CI spotted another issue: 2M pages are 
preferred over old-64K, if former are available.
Fixed version sent.
Regarding tags, I've kept your authorship, s-o-b, and added my 
Co-developed, if it is OK to you I will keep it this way.
If you prefer otherwise let me know.

Regards
Andrzej

>

