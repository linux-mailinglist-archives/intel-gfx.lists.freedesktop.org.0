Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B0D2EF2E7
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 14:15:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EECB76E48D;
	Fri,  8 Jan 2021 13:15:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA73A6E32A
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 13:15:17 +0000 (UTC)
IronPort-SDR: 7LlbwrSRf/5JveoY2WaGUt4tQSJmJw5/AuRfKWLFy9AHDZJ4aL+mHqf09fFgimIJwWjtwNoP8R
 uodNliHmLkEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="177691016"
X-IronPort-AV: E=Sophos;i="5.79,331,1602572400"; d="scan'208";a="177691016"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 05:15:17 -0800
IronPort-SDR: 1SaHjesLBWGeBpjY92wdZttqeq0XLCTXAX8wAyWIjCLp2gifUd+chPqW7Z4UMIJaULhgnRQLgo
 0VVqOh28wh0A==
X-IronPort-AV: E=Sophos;i="5.79,331,1602572400"; d="scan'208";a="380120904"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 05:15:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Nautiyal\, Ankit K" <ankit.k.nautiyal@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <f6daaf1e-beab-4b9c-c6de-5e0fabe5e16e@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201223103917.14687-1-chris@chris-wilson.co.uk>
 <87a6u4okvl.fsf@intel.com> <f6daaf1e-beab-4b9c-c6de-5e0fabe5e16e@intel.com>
Date: Fri, 08 Jan 2021 15:15:12 +0200
Message-ID: <87wnwny3hb.fsf@intel.com>
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

On Thu, 24 Dec 2020, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> Thanks Chris to catch this.
>
> This definitely should be bitwise Operator, as mentioned by Jani is 
> right thing to do.
>
> The PCON which I had access to, had the F/W which was using 303Ch 
> (previously proposed) for color conversion capability, instead of what 
> is latest mentioned in the spec ie. 83h.
>
> While testing, I had to skip this line of code, and hardcoded to older 
> register ie. 303Ch.
>
> I Will get this patch tested and update.

In the mean time, the topic/dp-hdmi-2.1-pcon branch has been merged to
drm-next and backmerged to drm-intel-next. So drm-intel-next is where
the fixes should now land.

BR,
Jani.


>
>
> Thanks & Regards,
>
> Ankit
>
>
> On 12/23/2020 4:21 PM, Jani Nikula wrote:
>> On Wed, 23 Dec 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>>> drivers/gpu/drm/i915/display/intel_dp.c:6922 intel_dp_update_420() warn: should this be a bitwise op?
>>> drivers/gpu/drm/i915/display/intel_dp.c:6922 intel_dp_update_420() warn: should this be a bitwise op?
>>> drivers/gpu/drm/i915/display/intel_dp.c:6923 intel_dp_update_420() warn: should this be a bitwise op?
>>>
>>> Inside drm_dp_downstream_rgb_to_ycbcr_conversion(), that paramter
>>> 'color_spc' is used as return port_cap[3] & color_spc, implying that it
>>> is indeed a mask and not a boolean value.
>> So this one belongs in topic/dp-hdmi-2.1-pcon branch.
>>
>> Purely based on the context this is the right thing to do, so:
>>
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>
>> Ankit, please test the patch in case it uncovers some other
>> issues. It'll impact the RGB to YCbCr conversion.
>>
>> BR,
>> Jani.
>>
>>
>>> Fixes: 522508b665df ("drm/i915/display: Let PCON convert from RGB to YCbCr if it can")
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Uma Shankar <uma.shankar@intel.com>
>>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 8b4b2ea52859..157a850a83a7 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -6918,8 +6918,8 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>>>   							intel_dp->downstream_ports);
>>>   	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>>>   								 intel_dp->downstream_ports,
>>> -								 DP_DS_HDMI_BT601_RGB_YCBCR_CONV ||
>>> -								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV ||
>>> +								 DP_DS_HDMI_BT601_RGB_YCBCR_CONV |
>>> +								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV |
>>>   								 DP_DS_HDMI_BT2020_RGB_YCBCR_CONV);
>>>   
>>>   	if (INTEL_GEN(i915) >= 11) {
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
