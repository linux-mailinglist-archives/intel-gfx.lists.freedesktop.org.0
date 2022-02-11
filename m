Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D66074B276C
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 14:51:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD12910EC35;
	Fri, 11 Feb 2022 13:51:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0457D10EC2B
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644587488; x=1676123488;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=vImEOeHbSp9/e22bv9QdVrvhBw2PGw5RLKnQ+a+NeZw=;
 b=kux3e38Zur/t7DPkzraCOXYOaVw/obDPQKB0QdX/A7SigP2s/S0VDyWB
 4Ar161VsX6fRL379wTDQZcmMrEP0UeXtOThLbTNaaTcf9y3aDE2Ck9TVQ
 bZc12KVal2ycrv+ocoQF2nj/f1vplHA3VlnpzdLMpqGUtmcjK8YN9jrK9
 /rgzidAeMqRQ0/1wvn/LsfOdnU9ivNass09g84W1tHa/QB8v9hvDOKQNz
 /OWwmK+E9lM6qlUs/Su/re9dKiWzkkga/uttI7ecHp6FnO8wQnP7oFfcq
 I50/ncz6tSaX7L468XGa+DvwZ0WHYWHJ4HHlx4VdiT34uT8fy7RZzApGz A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="248565316"
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="248565316"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 05:51:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="483392671"
Received: from phughe1x-mobl2.ger.corp.intel.com (HELO [10.213.201.219])
 ([10.213.201.219])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 05:51:25 -0800
Message-ID: <ee934ff3-c17b-6766-f6ab-d0440080e46e@linux.intel.com>
Date: Fri, 11 Feb 2022 13:51:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>,
 Casey Bowman <casey.g.bowman@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220211021510.202602-1-casey.g.bowman@intel.com>
 <87sfsp7h49.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87sfsp7h49.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC PATCH v2 0/1] Splitting up platform-specific
 calls
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
Cc: lucas.demarchi@intel.com, michael.cheng@intel.com, daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/02/2022 11:55, Jani Nikula wrote:
> On Thu, 10 Feb 2022, Casey Bowman <casey.g.bowman@intel.com> wrote:
>> In this RFC I would like to ask the community their thoughts
>> on how we can best handle splitting architecture-specific
>> calls.
>>
>> I would like to address the following:
>>
>> 1. How do we want to split architecture calls? Different object files
>> per platform? Separate function calls within the same object file?
>>
>> 2. How do we address dummy functions? If we have a function call that is
>> used for one or more platforms, but is not used in another, what should
>> we do for this case?
>>
>> I've given an example of splitting an architecture call
>> in my patch with run_as_guest() being split into different
>> implementations for x86 and arm64 in separate object files, sharing
>> a single header.
>>
>> Another suggestion from Michael (michael.cheng@intel.com) involved
>> using a single object file, a single header, and splitting various
>> functions calls via ifdefs in the header file.
>>
>> I would appreciate any input on how we can avoid scaling issues when
>> including multiple architectures and multiple functions (as the number
>> of function calls will inevitably increase with more architectures).
>>
>> v2: Revised to use kernel's platform-splitting scheme.
> 
> I think this is overengineering.
> 
> Just add different implementations of the functions per architecture
> next to where they are now, like I suggested before.
> 
> If we need to split them better later, it'll be a trivial undertaking,
> and we'll be in a better position to do it because we'll know how many
> functions there'll be and where they are and what they do.
> 
> Adding a bunch of overhead from the start seems like the wrong thing to
> do.

I don't see it adds real complexity, which would normally be associated 
with over-engineering. As a benefit I see it helping with driving the 
clean re-design (during the porting effort) in a way that it will be 
easy to spot is something is overly hacky, split on the wrong level, or 
incorrectly placed.

And it moves run_as_guest outside of intel_vtd.[hc] which IMO shows 
immediate benefit, since it has nothing to do with intel_vtd.

I suggested to add clflush as well, since I think going for 
drm_flush_virt_range everywhere is a bit lazy given how it is a clear 
regression for older platforms.

But after that I indeed don't have a crystal ball to show me how many 
more appropriate low-level primitives would be to use the pattern.

So my vote would be to go with it, although the main thing is probably 
to solve the conflicting asks and let guys focus on the port. Put it to 
voting then? :)

Regards,

Tvrtko
