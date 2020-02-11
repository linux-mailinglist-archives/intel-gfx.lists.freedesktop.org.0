Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD50E15978C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 19:01:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B107B6F406;
	Tue, 11 Feb 2020 18:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B5D26F406
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 18:01:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 10:01:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="222010708"
Received: from rmfosha-dev-1.fm.intel.com (HELO [10.19.83.123])
 ([10.19.83.123])
 by orsmga007.jf.intel.com with ESMTP; 11 Feb 2020 10:01:19 -0800
To: "Ye, Tony" <tony.ye@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
References: <20200122194825.101240-1-michal.wajdeczko@intel.com>
 <67edac14-e319-a1b2-76a1-1404ca5836e2@intel.com>
 <157979173710.19995.3438477214193047615@skylake-alporthouse-com>
 <op.0euq22k9xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <157979471850.19995.901739010740499969@skylake-alporthouse-com>
 <op.0e0gqwtixaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <ab0ca807-0e3b-172a-dbd6-6777f5881be1@intel.com>
From: "Fosha, Robert M" <robert.m.fosha@intel.com>
Message-ID: <3d4f28e6-c87b-0278-ba3a-64d95d550efd@intel.com>
Date: Tue, 11 Feb 2020 09:53:05 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <ab0ca807-0e3b-172a-dbd6-6777f5881be1@intel.com>
Content-Language: en-US
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2/4/20 4:43 PM, Ye, Tony wrote:
>
>
> On 1/27/2020 1:41 AM, Michal Wajdeczko wrote:
>> On Thu, 23 Jan 2020 16:51:58 +0100, Chris Wilson =

>> <chris@chris-wilson.co.uk> wrote:
>>
>>> Quoting Michal Wajdeczko (2020-01-23 15:38:52)
>>>> On Thu, 23 Jan 2020 16:02:17 +0100, Chris Wilson
>>>> <chris@chris-wilson.co.uk> wrote:
>>>>
>>>> > Quoting Daniele Ceraolo Spurio (2020-01-22 23:52:33)
>>>> >>
>>>> >>
>>>> >> On 1/22/20 11:48 AM, Michal Wajdeczko wrote:
>>>> >> >=A0 From commit 84b1ca2f0e68 ("drm/i915/uc: prefer intel_gt over =

>>>> i915
>>>> >> > in GuC/HuC paths") we stopped using HUC_STATUS error -ENODEV only
>>>> >> > to indicate lack of HuC hardware and we started to use this error
>>>> >> > also for all other cases when HuC was not in use or supported.
>>>> >> >
>>>> >> > Fix that by relying again on HAS_GT_UC macro, since currently
>>>> >> > used function intel_huc_is_supported() is based on HuC firmware
>>>> >> > support which could be unsupported also due to force disabled
>>>> >> > GuC firmware.
>>>> >> >
>>>> >> > Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>>> >> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>>> >> > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>>> >> > Cc: Tony Ye <tony.ye@intel.com>
>>>> >>
>>>> >> Reviewed-by: Daniele Ceraolo Spurio =

>>>> <daniele.ceraolospurio@intel.com>
>>>> >
>>>> > Once upon a time did you (Michal) not argue we should indicate =

>>>> the lack
>>>> > of firmware in the error code? Something like
>>>> >
>>>> > if (!HAS_GT_UC(gt->i915))
>>>> >=A0=A0=A0=A0=A0=A0 return -ENODEV;
>>>> >
>>>> > if (!intel_huc_is_supported(huc))
>>>> >=A0=A0=A0=A0=A0=A0 return -ENOEXEC;
>>>>
>>>> Yes, we discussed this here [1] together with [2] but we didn't
>>>> conclude our discussion due to different opinions on how represent
>>>> some states, in particular "manually disabled" state.
>>>>
>>>> In this patch I just wanted to restore old notation.
>>>>
>>>> But we can start new discussion, here is summary:
>>>>
>>>> ------------------+----------+----------+----------
>>>> =A0 HuC state=A0=A0=A0=A0=A0=A0=A0 | today*=A0=A0 | option A | option B
>>>> ------------------+----------+----------+----------
>>>> no HuC hardware=A0=A0 | -ENODEV=A0 | -ENODEV=A0 | -ENODEV
>>>> GuC fw disabled=A0=A0 |=A0=A0 0=A0=A0=A0=A0=A0 |=A0=A0=A0=A0 0=A0=A0=
=A0 | -EOPNOTSUPP
>>>> HuC fw disabled=A0=A0 |=A0=A0 0=A0=A0=A0=A0=A0 |=A0=A0=A0=A0 0=A0=A0=
=A0 | -EOPNOTSUPP
>>>> HuC fw missing=A0=A0=A0 |=A0=A0 0=A0=A0=A0=A0=A0 | -ENOPKG=A0 | -ENOEX=
EC
>>>> HuC fw error=A0=A0=A0=A0=A0 |=A0=A0 0=A0=A0=A0=A0=A0 | -ENOEXEC | -ENO=
EXEC
>>>> HuC fw fail=A0=A0=A0=A0=A0=A0 |=A0=A0 0=A0=A0=A0=A0=A0 | -EACCES=A0 |=
=A0=A0=A0 0
>>>> HuC authenticated |=A0=A0 1=A0=A0=A0=A0=A0 |=A0=A0=A0=A0 1=A0=A0=A0 |=
=A0=A0=A0 1
>>>> ------------------+----------+----------+----------
>>>
>>> By fw fail, you mean we loaded the firmware (to our knowledge)
>>> correctly, but HUC_STATUS is not reported as valid?
>>>
>>> If so, I support option B. I like the idea of saying
>>> "no HuC" (machine too old)
>>> "no firmware" (user action, or lack thereof)
>>> 0 (fw unhappy)
>>> 1 (fw reports success)
>>>
>>> In between states for failures in fw loading? Not so sure. But I can =

>>> see
>>> the nicety in distinguishing between lack of firmware and some random
>>> failure in loading the firmware (the former being user action required
>>> to rectify, command line parameter whatever and the latter being the
>>> firmware file is either invalid or a stray neutrino prevented loading).
>>>
>>> Imo the error messages should be about why we cannot probe/trust the
>>> HUC_STATUS register. If everything is setup correctly then the returned
>>> value should be from reading the register. I dislike only returning =

>>> 1 if
>>> supported, and converting a valid read of 0 into another error.
>>>
>>> So Option B :)
>>
>> But I'm not sure that option B is consistent in error reporting, as
>> "fw unhappy" is definitely an serious error but is represented as plain
>> non-error "0" status, while "fw disabled" (user action) is treated as =

>> error
>>
>> ------------------+----------
>> =A0=A0 HuC state=A0=A0=A0=A0=A0=A0 | option B
>> ------------------+----------
>> no HuC hardware=A0=A0 | -ENODEV
>> GuC fw disabled=A0=A0 | -EOPNOTSUPP -> user decision, why error?
>> HuC fw disabled=A0=A0 | -EOPNOTSUPP -> user decision, why error?
>> HuC fw missing=A0=A0=A0 | -ENOEXEC
>> HuC fw error=A0=A0=A0=A0=A0 | -ENOEXEC
>> HuC fw fail=A0=A0=A0=A0=A0=A0 |=A0=A0=A0 0=A0=A0=A0=A0=A0=A0=A0 -> unlik=
ely, but still fw/hw error
>> HuC authenticated |=A0=A0=A0 1
>> ------------------+----------
>>
>> On other hand, option A treats all error conditions as errors, leaving
>> status codes only for normal operations: disabled(0)/authenticated(1):
>>
>> ------------------+----------
>> =A0=A0 HuC state=A0=A0=A0=A0=A0=A0 | option A
>> ------------------+----------
>> no HuC hardware=A0=A0 | -ENODEV=A0 -> you shouldn't ask
>> GuC fw disabled=A0=A0 |=A0=A0=A0=A0 0=A0=A0=A0 -> user decision, not an =
error
>> HuC fw disabled=A0=A0 |=A0=A0=A0=A0 0=A0=A0=A0 -> user decision, not an =
error
>> HuC fw missing=A0=A0=A0 | -ENOPKG=A0 -> fw not installed correctly
>> HuC fw error=A0=A0=A0=A0=A0 | -ENOEXEC -> bad/wrong fw
>> HuC fw fail=A0=A0=A0=A0=A0=A0 | -EACCES=A0 -> fw/hw error
>> HuC authenticated |=A0=A0=A0=A0 1
>> ------------------+----------
>
> Vote for Option A.
>
> Regards,
> Tony
>

Are we ok to move forward on this? Michal, are you working on updating =

the patch?

-Rob

>>
>> But since I'm not an active HuC user, will leave final decision to =

>> others.
>>
>> /Michal
>>
>>
>>>
>>>> Note that all above should be compatible with media driver,
>>>> which explicitly looks for no error and value 1
>>>
>>> Cool.
>>> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
