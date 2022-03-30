Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E34054EC8C7
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 17:50:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B9B410E3BB;
	Wed, 30 Mar 2022 15:50:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A98810E3BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 15:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648655422; x=1680191422;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=oaGRu+0R4MxtFQVvrCTDEfRI3wTvBtR8EVz8GlQWRSc=;
 b=lMlSlPRxD0BmgaShptuRXlEaAIplUWTBc4IaiF6WFxVGgW1SuAub7TX8
 mQY6wsFoYBxKUWckFsFSWH5Zss7ws8k7I8lj/UVyRsc8+Kw4RLN73Isw9
 dIO0JCUB3/S6D1NhC5WEL220Vvr0yP6obeADOmMJTpfnPrd/EHZtrSU8S
 Y0gkoldncnwFAk0QOaD2R6E6bnSQgDUOT+GFTRPQb1OZPueYD+g7vdc2p
 oNX+G0gUMnlMo8fazDMV1ichCuExdbaXbMhxemWog4vbatVrVl5YoW3aN
 +1YtfTJSXGJo7nwLKZ2TIiVOep8Wl+jMqs4tW+E4BlalqQzD/f9waxpmt w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259548211"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="259548211"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 08:50:21 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="653892592"
Received: from kryan2-mobl5.ger.corp.intel.com (HELO [10.213.207.30])
 ([10.213.207.30])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 08:50:20 -0700
Message-ID: <d97e2c13-d1e9-4314-0af6-316c667cbf1b@linux.intel.com>
Date: Wed, 30 Mar 2022 16:50:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: "Yang, Fei" <fei.yang@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20220328171650.1900674-1-fei.yang@intel.com>
 <164852101313.5798.13575790930450522054@emeril.freedesktop.org>
 <10e046ca-6da2-8a2c-96e3-d5edf4267da7@linux.intel.com>
 <BYAPR11MB2567D70146A33C6FD4D6BCB59A1E9@BYAPR11MB2567.namprd11.prod.outlook.com>
 <74aeae6c-6834-f34f-cdfc-54ee72b1e2f2@linux.intel.com>
 <BYAPR11MB256776655353672056FB64009A1F9@BYAPR11MB2567.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <BYAPR11MB256776655353672056FB64009A1F9@BYAPR11MB2567.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_avoid_concurrent_writes_to_aux=5Finv_=28rev10=29?=
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


On 30/03/2022 16:37, Yang, Fei wrote:
>>>>> *Patch Details*
>>>>> *Series:*	drm/i915: avoid concurrent writes to aux_inv (rev10)
>>>>> *URL:*	https://patchwork.freedesktop.org/series/100772/
>>>>> <https://patchwork.freedesktop.org/series/100772/>
>>>>> *State:*	success
>>>>> *Details:*
>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/index.html
>>>>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/index.html
>>>>>>
>>>>>
>>>>>
>>>>>     CI Bug Log - changes from CI_DRM_11415_full ->
>>>>> Patchwork_22704_full
>>>>>
>>>>>
>>>>>       Summary
>>>>>
>>>>> *SUCCESS*
>>>>>
>>>>> No regressions found.
>>>>
>>>> And pushed.
>>> Thank you so much.
>>>
>>>>
>>>> Does this have any chance of fixing hangs in multiple simultaneous media workloads?
>>> I hope so. The hang fixed by this patch is pretty easy to reproduce on TGL with two parallel video decoding processes.
>>
>> Great!
>>
>> Do you want to send it to stable in this case? Would need to look how far back it would be easy to backport.
> 
> How far back? The change is only applicable for GEN12, so I believe this won't go farther than 5.4?

No need to go beyond 5.9 AFAICT since that is when d248b371f747 
("drm/i915/gen12: Invalidate aux table entries forcibly") was added. 
That would mean 5.10, 5.15, 5.16 and 5.17 are potential candidates.

We recently had https://gitlab.freedesktop.org/drm/intel/-/issues/5271 
and there is also https://gitlab.freedesktop.org/drm/intel/-/issues/5025 
so it is probably worth propagating the fix to distros via stable since 
people are hitting it.

Regards,

Tvrtko
