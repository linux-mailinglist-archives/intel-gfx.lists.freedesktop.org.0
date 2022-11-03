Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA11061768D
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 07:05:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8B6A10E238;
	Thu,  3 Nov 2022 06:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6491810E238
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 06:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667455525; x=1698991525;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=LuBExieu3WXpknI4Fco6RSHoTQYiWYFbfz4qcythgnU=;
 b=PvMaZ2Yt+GDlvlLB1WvJQ4EccJA3lnWhHJfHpzZuA36NdRAJptbimgvb
 c3DfVg8l6eVleclXwCkUqd5qTpSksBzffxTC/x3z4rHWXJAGjLiv0hEmA
 itt8QV0mqTElnMdZ+669QwCISo7THrLjhtsTPedYjfEfE2f2Sws8hDzvz
 VZssPUrpIS4GRBIG/kxER5nC+1FDmtknjGozYEfVbn0/igjrHEec20UWj
 L6IhiR6O8H/Ry9tNpp5AmoOkjOOHxtnFesG+WPoOYoBTRZ+wrw9SNe2mK
 ReST/9eCxgYg6eZqx8/bn8E0NVnfz7FbCMo5aWIKHKbOk0uU1QLzPuSuP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="289308021"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="289308021"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 23:05:24 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="777177930"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="777177930"
Received: from kanuppra-mobl.gar.corp.intel.com (HELO [10.213.99.132])
 ([10.213.99.132])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 23:05:22 -0700
Message-ID: <36d02e8e-a961-5241-c6dd-f4d045dcf7cb@intel.com>
Date: Thu, 3 Nov 2022 11:35:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
References: <20221101075927.15146-1-swati2.sharma@intel.com>
 <Y2GNrfJJ/ryBY0+9@mdroper-desk1.amr.corp.intel.com>
 <27ad74e3-d436-6f74-e3bb-599f960de195@intel.com> <87v8nx7lbt.fsf@intel.com>
From: Swati Sharma <swati2.sharma@intel.com>
Organization: Intel
In-Reply-To: <87v8nx7lbt.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Source supports DSC from
 DISPLAY_VER >= 11
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



On 02-Nov-22 3:02 PM, Jani Nikula wrote:
> On Wed, 02 Nov 2022, Swati Sharma <swati2.sharma@intel.com> wrote:
>> Hi Matt,
>>
>> Yes. Though h/w supports DSC from gen10, DSC is enabled from gen11+ from
>> driver.
>> We can see "has_dsc" flag enabled in gen11+.
>> #define GEN11_FEATURES \
>>   >-------.__runtime.has_dsc = 1, \
>>
>> Also, in the driver intel_dsc_source_support(), it is
>> if (DISPLAY_VER(i915) >= 11 && cpu_transcoder != TRANSCODER_A)
>>                   return true;
>> So, we should align DISPLAY_VER check according to DSC enablement
>> from driver.
> 
> The real fix would be to use intel_dsc_source_support() as the single
> point of truth instead of sprinkled all over the place. Especially since
> that also takes fusing into account.
> 
> BR,
> Jani.
intel_dsc_source_support() can't be used directly since it requires 
crtc_state which is not available in intel_dp_mode_valid().
Introduced is_dsc_supported() to get this info from RUNTIME_INFO()
https://patchwork.freedesktop.org/patch/509761/

Please review if this approach is okay.
> 
> 
> 
>>
>> On 02-Nov-22 2:50 AM, Matt Roper wrote:
>>> On Tue, Nov 01, 2022 at 01:29:27PM +0530, Swati Sharma wrote:
>>>> i915 driver supports DSC from DISPLAY_VER >= 11. Fix it.
>>>
>>> Bspec 19713 indicates that GLK (i.e., our only display version 10
>>> platform) does support DSC.  Are you saying that there's other GLK
>>> enablement missing in the driver right now that prevents DSC from
>>> working?
>>>
>>>
>>> Matt
>>>
>>>>
>>>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>>>>    1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 7400d6b4c587..02e64f0284d8 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -1012,7 +1012,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>>>    	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>>>>    	 * integer value since we support only integer values of bpp.
>>>>    	 */
>>>> -	if (DISPLAY_VER(dev_priv) >= 10 &&
>>>> +	if (DISPLAY_VER(dev_priv) >= 11 &&
>>>>    	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
>>>>    		/*
>>>>    		 * TBD pass the connector BPC,
>>>> @@ -2906,7 +2906,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
>>>>    	intel_dp_set_max_sink_lane_count(intel_dp);
>>>>    
>>>>    	/* Read the eDP DSC DPCD registers */
>>>> -	if (DISPLAY_VER(dev_priv) >= 10)
>>>> +	if (DISPLAY_VER(dev_priv) >= 11)
>>>>    		intel_dp_get_dsc_sink_cap(intel_dp);
>>>>    
>>>>    	/*
>>>> -- 
>>>> 2.25.1
>>>>
>>>
> 

-- 
~Swati Sharma
