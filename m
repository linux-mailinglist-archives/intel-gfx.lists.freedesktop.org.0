Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC842E2487
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 07:05:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBFDE897BB;
	Thu, 24 Dec 2020 06:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A66897BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 06:05:08 +0000 (UTC)
IronPort-SDR: /+bgHrNpj3SYfAroH9+hxYQBkgsw8J3sP9ihbE0/Ci4HMSEyC30tGJS/sCRnUBjzgzk1PN2YiR
 xL3lVZDV55kw==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="240198340"
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="240198340"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 22:05:07 -0800
IronPort-SDR: pbVZsuIyMuGRpStuinM1fNozWQWhfMvcZocackA6m92JQ9ZKLgatdAoCLVO0J7hYV1kPB5NqwG
 /ngV/WjHsyUg==
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="458291373"
Received: from nesarwar-mobl1.amr.corp.intel.com (HELO [10.213.126.121])
 ([10.213.126.121])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 22:05:02 -0800
To: Jani Nikula <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201223103917.14687-1-chris@chris-wilson.co.uk>
 <87a6u4okvl.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <f6daaf1e-beab-4b9c-c6de-5e0fabe5e16e@intel.com>
Date: Thu, 24 Dec 2020 11:34:59 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <87a6u4okvl.fsf@intel.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks Chris to catch this.

This definitely should be bitwise Operator, as mentioned by Jani is 
right thing to do.

The PCON which I had access to, had the F/W which was using 303Ch 
(previously proposed) for color conversion capability, instead of what 
is latest mentioned in the spec ie. 83h.

While testing, I had to skip this line of code, and hardcoded to older 
register ie. 303Ch.

I Will get this patch tested and update.


Thanks & Regards,

Ankit


On 12/23/2020 4:21 PM, Jani Nikula wrote:
> On Wed, 23 Dec 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>> drivers/gpu/drm/i915/display/intel_dp.c:6922 intel_dp_update_420() warn: should this be a bitwise op?
>> drivers/gpu/drm/i915/display/intel_dp.c:6922 intel_dp_update_420() warn: should this be a bitwise op?
>> drivers/gpu/drm/i915/display/intel_dp.c:6923 intel_dp_update_420() warn: should this be a bitwise op?
>>
>> Inside drm_dp_downstream_rgb_to_ycbcr_conversion(), that paramter
>> 'color_spc' is used as return port_cap[3] & color_spc, implying that it
>> is indeed a mask and not a boolean value.
> So this one belongs in topic/dp-hdmi-2.1-pcon branch.
>
> Purely based on the context this is the right thing to do, so:
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>
> Ankit, please test the patch in case it uncovers some other
> issues. It'll impact the RGB to YCbCr conversion.
>
> BR,
> Jani.
>
>
>> Fixes: 522508b665df ("drm/i915/display: Let PCON convert from RGB to YCbCr if it can")
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 8b4b2ea52859..157a850a83a7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -6918,8 +6918,8 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>>   							intel_dp->downstream_ports);
>>   	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>>   								 intel_dp->downstream_ports,
>> -								 DP_DS_HDMI_BT601_RGB_YCBCR_CONV ||
>> -								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV ||
>> +								 DP_DS_HDMI_BT601_RGB_YCBCR_CONV |
>> +								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV |
>>   								 DP_DS_HDMI_BT2020_RGB_YCBCR_CONV);
>>   
>>   	if (INTEL_GEN(i915) >= 11) {
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
