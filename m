Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C42F737F93
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 12:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 440A610E43A;
	Wed, 21 Jun 2023 10:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48BAE10E43A
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 10:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687343420; x=1718879420;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=wy02Xn9prZJ7h3UXpwK0Ne/GlczuNx6OfYUy9/w0/1I=;
 b=lC+d/vaLRTX2reTbXD+QEGGhreBoiGRr+UKU2EVed2lqE9G3hy+B9+o9
 3+4Uja0nhDSxwxXFcORHClj3uZcrcsJxuocmsdQGmLpF53djvr+Kw4yIy
 aF1cm72pxOYfCkmr5mcpZsW9fSyRl8OeUCenqhNvtQjffIsfT2wwzdscn
 HGYCpjc277V8jZGyabaDmoP6PxH2Ky01kUKXck7L14EwP4HPWXziVPyXt
 py6PLLM2LyrOJQ3R5YseXzyTHE3O+bdPpfr+b+1PD/Szz4vceTz94xGNC
 YGG9AccnTVJ0MAO5DYwYMFra3OqTbKdrlrlNgsxnWMsggXPyngPjILud0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="446509652"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="446509652"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 03:30:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="779810331"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="779810331"
Received: from psscully-mobl2.ger.corp.intel.com (HELO [10.213.228.117])
 ([10.213.228.117])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 03:30:17 -0700
Message-ID: <6b22396b-2667-8f69-06db-8ee5a9b775d0@linux.intel.com>
Date: Wed, 21 Jun 2023 11:30:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
 <87y1kef64p.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87y1kef64p.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 00/11] Replace acronym with full platform
 name in defines.
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


On 20/06/2023 17:30, Jani Nikula wrote:
> On Thu, 15 Jun 2023, Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com> wrote:
>> Replace all occurences of ADL with ALDERLAKE, TGL with TIGERLAKE,
>> MTL with METEORLAKE, RKL with ROCKETLAKE, JSL with JASPERLAKE,
>> KBL with KABYLAKE and SKL with SKYLAKE in platform and subplatform
>> defines. This way there is a consistent pattern to how platforms
>> are referred. While the change is minor and could be combined to
>> have lesser patches, splitting to per subpaltform for easier
>> cherrypicks, if needed.
> 
> First of all, I'll note that changes like these need maintainer acks
> before merging. Simple review for correctness is not enough!
> 
> While discussing this, there was perhaps a slight preference for moving
> towards acronyms for brevity instead of expanding all of them to full
> names. It can get a bit unwieldy.
> 
> For background, the reasons for having IS_<TLA>_DISPLAY_STEP() are
> two-fold: the steppings used to be platform specific, so it made sense
> to tie platform and stepping together, and IS_<LONG_NAME>_DISPLAY_STEP()
> was considered too long combined.
> 
> Nowadays, we've abstracted steppings in code to be independent of
> platforms, so we could use IS_<LONG_NAME>() && IS_DISPLAY_STEP(), and
> throw out all the IS_<TLA>_DISPLAY_STEP() macros. They're orthogonal
> things, and it actually bugs me to have so many platform specific
> wrappers for the combos.
> 
> If in addition we moved to acronyms, we could have IS_<TLA>() &&
> IS_DISPLAY_STEP(), and it would be pretty short and nice.
> 
> That said, all of these changes are a lot of churn, so I'd rather not
> make them lightly.

I don't have a strong opinion on whether to churn or not. Or for the TLA vs LONG_NAME. As long as we do not mix the two. I think this translates to "If you do something, make it consistent, make it readable and make it tidy.". :)

Historically we were not avoiding churn if we could sense a real gain. In this case we could drop some combo macros, as Jani points out, gain some consistency, what else?

As minimum compact the numerous pointlessly expanded(*) MTL checks into a single platform check. But that is even orthogonal to the renames. Like:

	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))

Into possibly:

	if (IS_MTL(i915) && IS_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER))

But that could also be:

	if (IS_MTL_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER))

Regards,

Tvrtko
