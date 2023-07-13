Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A54A75213A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 14:25:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 666DC10E681;
	Thu, 13 Jul 2023 12:25:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E17D810E681
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 12:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689251098; x=1720787098;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=O745PXuaa7YZPmbm3BOPrtG5X/mlSMeJbX9tSXwtSWs=;
 b=DyL5eKes9YNoR1yIyrPqK/9lL+PMS0Tm0GOeATUpsd4+d/jZGEekaGyq
 3e7/r63oIFplj3KQphU6hDF+mfHgfKh8QDs8xbN8LRZ9soO4BC5P0u86d
 +gvEHIUjWal/Z/MrfXXFaFegfWc4XxaVvao1H/7jmzItL+elIUvn7SiV4
 PhuKvlwps3v5dYWr5Ak0hJJq4hz01TkF9ePa0WLH8lO4l73CHRHnNr9ph
 mQA3ghFYEcrH3b3IBWcF17KkEul3XXiWPIrbz9sYn2Q+vu0YRJhyvK4Or
 wEvVdmEc6w2gSqSmfFSzU50lI4oz9iuAFuaZmIHB91Msk/I6uanTeD1YM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="355084348"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="355084348"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 05:24:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="721899130"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="721899130"
Received: from apaulaux-mobl.ger.corp.intel.com (HELO [10.213.206.56])
 ([10.213.206.56])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 05:24:55 -0700
Message-ID: <6e6ba3ec-5051-400c-b05d-98ced1ffb8f7@linux.intel.com>
Date: Thu, 13 Jul 2023 13:24:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>
References: <20230616114200.3228284-12-dnyaneshwar.bhadane@intel.com>
 <20230710105815.2056018-1-dnyaneshwar.bhadane@intel.com>
 <IA1PR11MB62660C3B6D48EA16DF2E7AFFE230A@IA1PR11MB6266.namprd11.prod.outlook.com>
 <de17473e-09fa-9346-daf4-96bf12fa580c@linux.intel.com>
 <871qhcgng8.fsf@intel.com>
 <14a0d370-150b-f311-2a66-b8400163dd61@linux.intel.com>
 <IA1PR11MB6266A7A8009AC987E421EBBCE237A@IA1PR11MB6266.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <IA1PR11MB6266A7A8009AC987E421EBBCE237A@IA1PR11MB6266.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [v3] drm/i915/mtl: s/MTL/METEORLAKE for
 platform/subplatform defines
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


On 13/07/2023 13:12, Bhadane, Dnyaneshwar wrote:
> 
> 
>> -----Original Message-----
>> From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Sent: Thursday, July 13, 2023 5:26 PM
>> To: Jani Nikula <jani.nikula@linux.intel.com>; Bhadane, Dnyaneshwar
>> <dnyaneshwar.bhadane@intel.com>; intel-gfx@lists.freedesktop.org;
>> Ursulin, Tvrtko <tvrtko.ursulin@intel.com>
>> Subject: Re: [Intel-gfx] [v3] drm/i915/mtl: s/MTL/METEORLAKE for
>> platform/subplatform defines
>>
>>
>> On 13/07/2023 10:39, Jani Nikula wrote:
>>> On Thu, 13 Jul 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>>>> On 10/07/2023 14:44, Bhadane, Dnyaneshwar wrote:
>>>>>> -----Original Message-----
>>>>>> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
>>>>>> Sent: Monday, July 10, 2023 4:28 PM
>>>>>> To: intel-gfx@lists.freedesktop.org
>>>>>> Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>;
>>>>>> jani.nikula@linux.intel.com; Srivatsa, Anusha
>>>>>> <anusha.srivatsa@intel.com>; Bhadane, Dnyaneshwar
>>>>>> <dnyaneshwar.bhadane@intel.com>
>>>>>> Subject: [v3] drm/i915/mtl: s/MTL/METEORLAKE for
>>>>>> platform/subplatform defines
>>>>>>
>>>>>> Follow consistent naming convention. Replace MTL with METEORLAKE.
>>>>>> Added defines that are replacing IS_MTL_GRAPHICS_STEP with
>>>>>> IS_METEORLAKE_P_GRAPHICS_STEP and
>> IS_METEORLAKE_M_GRAPHICS_STEP.
>>>>>> Also replaced IS_METEORLAKE_MEDIA_STEP instead of
>> IS_MTL_MEDIA_STEP
>>>>>> and IS_METEORLAKE_DISPLAY_STEP instead of IS_MTL_DISPLAY_STEP.
>>>>>>
>>>>> Hi Tvrtko,
>>>>> Could you please give the feedback on this ? or suggestion regarding the
>> approach.
>>>>
>>>> It's a step in the right direction I just wish we could do all
>>>> churning in one go.
>>>>
>>>> Have you captured IS_CFL and IS_CML in the series? ICL? HSW? Any
>>>> other I am missing?
>>>>
>>>> What have we concluded on Jani's suggestion to split it all to
>>>> IS_<platform> && IS_<subsys>?
>>>
>>> IS_<platform> && IS_<step> is what I was after.
>>
>> Yeah I mistyped. I liked that to so would get my ack.
>>
>>>> If you have a) captured all IS_<tla> and b) Jani acks the series too,
>>>> I guess go ahead.
>>>>
>>>> Hm.. what have we concluded to do with IS_JASPERLAKE_EHL?
>>>
>>> For sure it can't be *that*. It's JSL *or* EHL. Not subplatform.
>>
>> IS_ELKHARTLAKE would indeed work and platform/subplatform can be
>> hidden implementation detail.
>>
>>>> P.S.
>>>> I still think these suck though:
>>>>
>>>> 	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>>> 	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>>>
>>> I still find it appealing to a) go towards shorter acronyms instead of
>>> long names, and b) to separate platform and stepping checks because
>>> they're orthogonal. They're only bundled together for historical
>>> reasons, and to keep the conditions shorter.
>>>
>>> The above could be:
>>>
>>> 	if (IS_MTL(i915) && IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>>
>> I'd be super pleased with that.
> 
> Could we use the above suggestion for MTL variants for P/M? also replacing MTL with METEORLAKE.
> 
> Using the format:  IS_FULL_PLATFORM_NAME && IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0).
> 
> It will change to :
> 	For M:	IS_METEORLAKE_M(i915) && IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)
> 	For P:	IS_METEORLAKE_P(i915) && IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)

You could, but you'd only get a meh from me. :) Why you'd insist to keep 
the two checks? Are we expecting IS_METEROLAKE_<X> at some point?

Regards,

Tvrtko
