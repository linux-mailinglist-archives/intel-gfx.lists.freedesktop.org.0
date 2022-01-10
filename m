Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D15F9489D32
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 17:11:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E664611B192;
	Mon, 10 Jan 2022 16:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 753B911B152
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 16:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641831086; x=1673367086;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=r1mJyBEYxw/ZXlo0dHDQNCF7OiAmWEBe3YkW4SEWJ3M=;
 b=Dxa3zAncdSJDNAmclEUYEd1DyzQ1eIOgGIw2tEmMu/Ce1f9h0wnxuWrB
 ShJkMgIMXlOoq4qaAVw1NKrjvJqD6dyA5v+wzZFKhZJD7NjtL7oGb40kd
 0co0tK8XvmG2IFOl8ZOmMqj1re9NkKJ1qFANYueu3DSxPWJUz95ekHI6J
 Sq2MrHM8lg+WtYSTR/7ygEKxLQ+o9vrqd+cIvHxT7eVfOe7AwaRNBsQJp
 +ZinvNsSvgHU5agz7pltU8Kd+E6wx+fZMV7JLLr3l61/0QuD1BlcWvP4Y
 IknJcdfnGg4aiXVbwCnOkAt4qpdeTVWjdLol5o62uZLbyCwfzroqJ03xX w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="243455922"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="243455922"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 08:11:16 -0800
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="612892950"
Received: from vaulib1x-mobl2.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.75.163])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 08:11:15 -0800
Date: Mon, 10 Jan 2022 08:11:14 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220110161114.rofxst46tzxd74du@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220106230823.2791203-1-matthew.d.roper@intel.com>
 <20220106230823.2791203-2-matthew.d.roper@intel.com>
 <874k6fn7qf.fsf@intel.com>
 <20220107164605.bd5t6a2doe227mse@ldmartin-desk2>
 <871r1fc11z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <871r1fc11z.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Drop unused register
 definitions
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 10, 2022 at 12:55:36PM +0200, Jani Nikula wrote:
>On Fri, 07 Jan 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Fri, Jan 07, 2022 at 12:46:48PM +0200, Jani Nikula wrote:
>>>I still tell people to 1) split out register definitions to separate
>>>patches, and 2) add macros for the entire feature and full contents for
>>>each register, even if they remain unused.
>>>
>>>One of the main reasons is review economics. It's pretty easy to look at
>>>a patch adding register contents, review it against the bspec and be
>>>done with it. And while you have the right bspec page open, it only
>>>takes a very short time to add and review the entire register, instead
>>>of having to return to it later. A patch adding just the registers could
>>>get reviewed and merged at v1. It's one less patch the developer has to
>>>keep carrying and rebasing, and it's one less portion the reviewer has
>>>to worry about.
>>
>> this failed multiple times though, so I'm on the other side of the fence
>> and think this actually makes things worse. Main reasons is because we
>> have several registers doing things like:
>>
>> 	#define BLA(idx)	REG_BIT(idx * 2 + 1)
>>
>> And it's easy to get this wrong when it was not tested. It may be for
>> example that one phy or port doesn't follow the same logic.
>> When I review code I prefer reviewing code people actually tested.
>>
>> It's less of an issue when it's a 1:1 map from bspec, but for a lot of
>> registers we need just 1 or 2 bits, e.g. for workarounds. Being able to
>> filter out workarounds we don't need because we don't even define the
>> register/bit is also another con to defining the complete register in a
>> separate patch.
>>
>>
>> So from my POV, the cons outweigtht the pros.
>
>Okay, let's not forget this part of the conversation, but let's also not
>let this block the cleanup. We don't have to do a blanket removal of
>unused stuff before splitting the file up, and we don't have to decide
>how we how we approach this in the future before that either, i.e. let's
>get the uncontroversial stuff merged.

agreed,

Lucas De Marchi

>
>>
>>>
>>>Overall it's about getting the easy stuff done and behind you first. And
>>>that's a huge part of my whole approach to kernel development, and what
>>>I try to tell others to follow.
>>>
>>>I also think the documentation aspect is still valid, and especially so
>>>for older hardware. It may be fine to remove some of the accumulated
>>>cruft, *after* the register macros have been split up to smaller files
>>>by functionality. But I don't think it should be an indiscriminate mass
>>>removal of macros. For example, I don't think I want any of the sideband
>>>or VGA or PCI register macros removed.
>>>
>>>Bottom line, I don't mind adding or having unused register macros at
>>>all. Heck, I'd be on board for switching to auto-generated register
>>>macros with absolutely everything.
>>
>> if it can be generated.... Then we'd have some additional headers for
>> the accessor functions that deal with index math to the to the right
>> bits or the  right register instance.
>
>Yeah, it's somewhat of an unicorn I guess.
>
>BR,
>Jani.
>
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
