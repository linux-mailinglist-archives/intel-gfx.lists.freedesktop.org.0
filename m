Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7B17B1A48
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 13:15:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB98C10E604;
	Thu, 28 Sep 2023 11:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A20110E604
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 11:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695899726; x=1727435726;
 h=message-id:date:mime-version:subject:to:references:from:
 cc:in-reply-to:content-transfer-encoding;
 bh=dLnbxbm1cWXJe6OowYL8OZV0z5YRNfG1Mz4Zjb1wJK0=;
 b=U2IjQyG2cqdZzGoGm9QQB0Dbu6HMTFo0zuFMdQpgHfgmTUxTEwLLnJaN
 XGMjp0q2UPs0EY52taz5vd72cdhgaQHCCmpYMamuxwgZlyBv3F2HwnKZ6
 5DZ+c152iEnSVPciR5jY5vK2bhvMdx/V9YuXk4Aj1Abw6yI9IkxR+UNzN
 SsFX82cc4mXUQVEYj82/4xRcwxrLO5Nl85nXMtB1Z9Vc2xL1Zpt08rVFt
 DMzskkjHLbRsYbWJbd2zO+h31dwZ0PNOLG3+T2jzWNyWwWiWLP4DK0HFR
 STcxtwCJDuObHojAtKIWMWZ+XyaMPx8sqJjgEjWhBRxTWiX6WBnkwN5hZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="361406713"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="361406713"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 04:15:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="784659025"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="784659025"
Received: from nlachman-mobl.ger.corp.intel.com (HELO [10.213.204.130])
 ([10.213.204.130])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 04:15:24 -0700
Message-ID: <d1ebccb4-4eaf-14d0-0f8b-344122c045d5@linux.intel.com>
Date: Thu, 28 Sep 2023 12:15:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Mathias Krause <minipli@grsecurity.net>, intel-gfx@lists.freedesktop.org
References: <20230905113921.14071-1-minipli@grsecurity.net>
 <60b80b2d-b96f-f87c-d96b-31650620b2f9@grsecurity.net>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <60b80b2d-b96f-f87c-d96b-31650620b2f9@grsecurity.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 0/2] drm/i915: fix rb-tree/llist/list
 confusion
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


Hi,

On 21/09/2023 07:24, Mathias Krause wrote:
> On 05.09.23 13:39, Mathias Krause wrote:
>> Commit 1ec23ed7126e ("drm/i915: Use uabi engines for the default engine
>> map") introduced a bug regarding engine iteration in default_engines()
>> as the rb tree isn't set up yet that early during driver initialization.
>> This triggered a sanity check we have in our grsecurity kernels, fixed
>> by reverting the offending commit (patch 1) and giving the
>> type-multiplexed members some more visibility to avoid making a similar
>> mistake again in the future (patch 2).
>>
>> Please apply!
>>
>> Thanks,
>> Mathias
>>
>> Mathias Krause (2):
>>    Revert "drm/i915: Use uabi engines for the default engine map"
>>    drm/i915: Clarify type evolution of uabi_node/uabi_engines
>>
>>   drivers/gpu/drm/i915/gem/i915_gem_context.c  |  9 +++++----
>>   drivers/gpu/drm/i915/gt/intel_engine_types.h | 10 +++++++++-
>>   drivers/gpu/drm/i915/gt/intel_engine_user.c  | 17 +++++++----------
>>   drivers/gpu/drm/i915/i915_drv.h              | 17 ++++++++++++++++-
>>   4 files changed, 37 insertions(+), 16 deletions(-)
>>
> 
> Ping. Any objections to this series?

Apologies for the delay in getting back to you, I was away from work for 
a bit.

Tricky thing you discovered and a great analysis in the commit text.

But we cannot simply revert 1ec23ed7126e since that would miss to 
include the media tile engines on Meteorlake.

What I think should work is to move the call to 
intel_engines_driver_register() from i915_gem_driver_register() to 
i915_gem_init(). I can double-check and send a patch, or you can, 
keeping parts of your great commit message in 1/2?

That would align the expectations of intel_display_driver_probe() which 
expects GEM to be fully initialized by the time it runs.

2/2 looks good and I would be happy to merge it in the interim. Going 
forward I would pencil in looking into removing the rbtree and 
multi-stage complications. Former I think isn't needed, code which needs 
fast random lookup via the tree never materialized, and latter perhaps 
could be sorted in place somehow, that is, without the need for two list 
types externally visible.

Regards,

Tvrtko
