Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D266E2F4AAC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 12:53:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C896E7D4;
	Wed, 13 Jan 2021 11:53:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0C096E7D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 11:52:58 +0000 (UTC)
IronPort-SDR: BAbtZWRvMFWow9A4Eypx5iXcSKk/A4vROj7nyHax0LapHhRU5TK3vs2+PQfB7ML7OXK24iom3J
 ZLlVjeSZC/PA==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="239731638"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="239731638"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 03:52:58 -0800
IronPort-SDR: Np0+9mjgupxnPtr+WMPLdWM09Yjr/k4mhU8IsBaKzsSYl0IIxtoYjxwsqdnpbpRNzITYa+TNBR
 QAa/5CthDcvA==
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="381817499"
Received: from iklein-mobl.ger.corp.intel.com (HELO localhost) ([10.249.40.83])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 03:52:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Nautiyal\, Ankit K" <ankit.k.nautiyal@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87wnwny3hb.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201223103917.14687-1-chris@chris-wilson.co.uk>
 <87a6u4okvl.fsf@intel.com> <f6daaf1e-beab-4b9c-c6de-5e0fabe5e16e@intel.com>
 <87wnwny3hb.fsf@intel.com>
Date: Wed, 13 Jan 2021 13:52:53 +0200
Message-ID: <87zh1drr3e.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Bitwise or the conversion
 colour specifier together
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 08 Jan 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 24 Dec 2020, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> Thanks Chris to catch this.
>>
>> This definitely should be bitwise Operator, as mentioned by Jani is 
>> right thing to do.
>>
>> The PCON which I had access to, had the F/W which was using 303Ch 
>> (previously proposed) for color conversion capability, instead of what 
>> is latest mentioned in the spec ie. 83h.
>>
>> While testing, I had to skip this line of code, and hardcoded to older 
>> register ie. 303Ch.
>>
>> I Will get this patch tested and update.
>
> In the mean time, the topic/dp-hdmi-2.1-pcon branch has been merged to
> drm-next and backmerged to drm-intel-next. So drm-intel-next is where
> the fixes should now land.

Ankit, where are we with this? I'm anxious to merge this.

BR,
Jani.



>
> BR,
> Jani.
>
>
>>
>>
>> Thanks & Regards,
>>
>> Ankit
>>
>>
>> On 12/23/2020 4:21 PM, Jani Nikula wrote:
>>> On Wed, 23 Dec 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>>>> drivers/gpu/drm/i915/display/intel_dp.c:6922 intel_dp_update_420() warn: should this be a bitwise op?
>>>> drivers/gpu/drm/i915/display/intel_dp.c:6922 intel_dp_update_420() warn: should this be a bitwise op?
>>>> drivers/gpu/drm/i915/display/intel_dp.c:6923 intel_dp_update_420() warn: should this be a bitwise op?
>>>>
>>>> Inside drm_dp_downstream_rgb_to_ycbcr_conversion(), that paramter
>>>> 'color_spc' is used as return port_cap[3] & color_spc, implying that it
>>>> is indeed a mask and not a boolean value.
>>> So this one belongs in topic/dp-hdmi-2.1-pcon branch.
>>>
>>> Purely based on the context this is the right thing to do, so:
>>>
>>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>>
>>> Ankit, please test the patch in case it uncovers some other
>>> issues. It'll impact the RGB to YCbCr conversion.
>>>
>>> BR,
>>> Jani.
>>>
>>>
>>>> Fixes: 522508b665df ("drm/i915/display: Let PCON convert from RGB to YCbCr if it can")
>>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>>> Cc: Uma Shankar <uma.shankar@intel.com>
>>>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 8b4b2ea52859..157a850a83a7 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -6918,8 +6918,8 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>>>>   							intel_dp->downstream_ports);
>>>>   	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>>>>   								 intel_dp->downstream_ports,
>>>> -								 DP_DS_HDMI_BT601_RGB_YCBCR_CONV ||
>>>> -								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV ||
>>>> +								 DP_DS_HDMI_BT601_RGB_YCBCR_CONV |
>>>> +								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV |
>>>>   								 DP_DS_HDMI_BT2020_RGB_YCBCR_CONV);
>>>>   
>>>>   	if (INTEL_GEN(i915) >= 11) {
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
