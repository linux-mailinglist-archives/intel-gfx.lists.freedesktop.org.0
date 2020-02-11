Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8233C159A19
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 20:57:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D47C6F436;
	Tue, 11 Feb 2020 19:57:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B29F6F436
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 19:57:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 11:57:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="233562410"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 11 Feb 2020 11:57:33 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.252.50.192])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 01BJvP9e011997; Tue, 11 Feb 2020 19:57:25 GMT
To: "Ye, Tony" <tony.ye@intel.com>, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>, intel-gfx@lists.freedesktop.org, "Chris
 Wilson" <chris@chris-wilson.co.uk>, "Fosha, Robert M"
 <robert.m.fosha@intel.com>
References: <20200122194825.101240-1-michal.wajdeczko@intel.com>
 <67edac14-e319-a1b2-76a1-1404ca5836e2@intel.com>
 <157979173710.19995.3438477214193047615@skylake-alporthouse-com>
 <op.0euq22k9xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <157979471850.19995.901739010740499969@skylake-alporthouse-com>
 <op.0e0gqwtixaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <ab0ca807-0e3b-172a-dbd6-6777f5881be1@intel.com>
 <3d4f28e6-c87b-0278-ba3a-64d95d550efd@intel.com>
Date: Tue, 11 Feb 2020 20:57:25 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0ft9pzk8xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <3d4f28e6-c87b-0278-ba3a-64d95d550efd@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Fix error reported by
 I915_PARAM_HUC_STATUS
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Feb 2020 18:53:05 +0100, Fosha, Robert M  
<robert.m.fosha@intel.com> wrote:

>
>
> On 2/4/20 4:43 PM, Ye, Tony wrote:
>>
>>
>> On 1/27/2020 1:41 AM, Michal Wajdeczko wrote:
>>> On Thu, 23 Jan 2020 16:51:58 +0100, Chris Wilson  
>>> <chris@chris-wilson.co.uk> wrote:
>>>
>>>> Quoting Michal Wajdeczko (2020-01-23 15:38:52)
>>>>> On Thu, 23 Jan 2020 16:02:17 +0100, Chris Wilson
>>>>> <chris@chris-wilson.co.uk> wrote:
>>>>>
>>>>> > Quoting Daniele Ceraolo Spurio (2020-01-22 23:52:33)
>>>>> >>
>>>>> >>
>>>>> >> On 1/22/20 11:48 AM, Michal Wajdeczko wrote:
>>>>> >> >  From commit 84b1ca2f0e68 ("drm/i915/uc: prefer intel_gt over  
>>>>> i915
>>>>> >> > in GuC/HuC paths") we stopped using HUC_STATUS error -ENODEV  
>>>>> only
>>>>> >> > to indicate lack of HuC hardware and we started to use this  
>>>>> error
>>>>> >> > also for all other cases when HuC was not in use or supported.
>>>>> >> >
>>>>> >> > Fix that by relying again on HAS_GT_UC macro, since currently
>>>>> >> > used function intel_huc_is_supported() is based on HuC firmware
>>>>> >> > support which could be unsupported also due to force disabled
>>>>> >> > GuC firmware.
>>>>> >> >
>>>>> >> > Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>>>> >> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>>>> >> > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>>>> >> > Cc: Tony Ye <tony.ye@intel.com>
>>>>> >>
>>>>> >> Reviewed-by: Daniele Ceraolo Spurio  
>>>>> <daniele.ceraolospurio@intel.com>
>>>>> >
>>>>> > Once upon a time did you (Michal) not argue we should indicate the  
>>>>> lack
>>>>> > of firmware in the error code? Something like
>>>>> >
>>>>> > if (!HAS_GT_UC(gt->i915))
>>>>> >       return -ENODEV;
>>>>> >
>>>>> > if (!intel_huc_is_supported(huc))
>>>>> >       return -ENOEXEC;
>>>>>
>>>>> Yes, we discussed this here [1] together with [2] but we didn't
>>>>> conclude our discussion due to different opinions on how represent
>>>>> some states, in particular "manually disabled" state.
>>>>>
>>>>> In this patch I just wanted to restore old notation.
>>>>>
>>>>> But we can start new discussion, here is summary:
>>>>>
>>>>> ------------------+----------+----------+----------
>>>>>   HuC state        | today*   | option A | option B
>>>>> ------------------+----------+----------+----------
>>>>> no HuC hardware   | -ENODEV  | -ENODEV  | -ENODEV
>>>>> GuC fw disabled   |   0      |     0    | -EOPNOTSUPP
>>>>> HuC fw disabled   |   0      |     0    | -EOPNOTSUPP
>>>>> HuC fw missing    |   0      | -ENOPKG  | -ENOEXEC
>>>>> HuC fw error      |   0      | -ENOEXEC | -ENOEXEC
>>>>> HuC fw fail       |   0      | -EACCES  |    0
>>>>> HuC authenticated |   1      |     1    |    1
>>>>> ------------------+----------+----------+----------
>>>>
>>>> By fw fail, you mean we loaded the firmware (to our knowledge)
>>>> correctly, but HUC_STATUS is not reported as valid?
>>>>
>>>> If so, I support option B. I like the idea of saying
>>>> "no HuC" (machine too old)
>>>> "no firmware" (user action, or lack thereof)
>>>> 0 (fw unhappy)
>>>> 1 (fw reports success)
>>>>
>>>> In between states for failures in fw loading? Not so sure. But I can  
>>>> see
>>>> the nicety in distinguishing between lack of firmware and some random
>>>> failure in loading the firmware (the former being user action required
>>>> to rectify, command line parameter whatever and the latter being the
>>>> firmware file is either invalid or a stray neutrino prevented  
>>>> loading).
>>>>
>>>> Imo the error messages should be about why we cannot probe/trust the
>>>> HUC_STATUS register. If everything is setup correctly then the  
>>>> returned
>>>> value should be from reading the register. I dislike only returning 1  
>>>> if
>>>> supported, and converting a valid read of 0 into another error.
>>>>
>>>> So Option B :)
>>>
>>> But I'm not sure that option B is consistent in error reporting, as
>>> "fw unhappy" is definitely an serious error but is represented as plain
>>> non-error "0" status, while "fw disabled" (user action) is treated as  
>>> error
>>>
>>> ------------------+----------
>>>    HuC state       | option B
>>> ------------------+----------
>>> no HuC hardware   | -ENODEV
>>> GuC fw disabled   | -EOPNOTSUPP -> user decision, why error?
>>> HuC fw disabled   | -EOPNOTSUPP -> user decision, why error?
>>> HuC fw missing    | -ENOEXEC
>>> HuC fw error      | -ENOEXEC
>>> HuC fw fail       |    0        -> unlikely, but still fw/hw error
>>> HuC authenticated |    1
>>> ------------------+----------
>>>
>>> On other hand, option A treats all error conditions as errors, leaving
>>> status codes only for normal operations: disabled(0)/authenticated(1):
>>>
>>> ------------------+----------
>>>    HuC state       | option A
>>> ------------------+----------
>>> no HuC hardware   | -ENODEV  -> you shouldn't ask
>>> GuC fw disabled   |     0    -> user decision, not an error
>>> HuC fw disabled   |     0    -> user decision, not an error
>>> HuC fw missing    | -ENOPKG  -> fw not installed correctly
>>> HuC fw error      | -ENOEXEC -> bad/wrong fw
>>> HuC fw fail       | -EACCES  -> fw/hw error
>>> HuC authenticated |     1
>>> ------------------+----------
>>
>> Vote for Option A.
>>
>> Regards,
>> Tony
>>
>
> Are we ok to move forward on this? Michal, are you working on updating  
> the patch?

I can update the patch, but I don't know which option to implement:
Tony votes for Option A, Chris for Option B, what's your choice?

Michal

>
> -Rob
>
>>>
>>> But since I'm not an active HuC user, will leave final decision to  
>>> others.
>>>
>>> /Michal
>>>
>>>
>>>>
>>>>> Note that all above should be compatible with media driver,
>>>>> which explicitly looks for no error and value 1
>>>>
>>>> Cool.
>>>> -Chris
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
