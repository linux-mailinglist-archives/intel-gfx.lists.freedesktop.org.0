Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3F5831297
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 07:02:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B217610E07D;
	Thu, 18 Jan 2024 06:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFCD710E07D
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jan 2024 06:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705557700; x=1737093700;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=av0KNezrrbfkUelKVRU3BAZuVOWYdYD33khoAdtvCfU=;
 b=BXFffxqZCRgcCKXRVlfpiFhYo+LgAe7f6Z9W+U3mP2or8UsZIIeeP5BY
 c6+WCOYL7FepcPkJvHK4lLnwSLEeHDN9pM1nOY/zo7Tzx4tBvk5P1//ZO
 vAFH2IRsLvp43Am1x7OB7PTrMJ8aCsTtuDuKuTxRbD6byBXmvH665l58u
 589Ol4P0N/DDPUdKPjWNaZs8EhuJXaq+UBv0qFEt7cyD1nYMeOLryEjXM
 fAJTBenuw+T6S7Zjfz5XiKu2mJYlY/c8I4XfbmvXQDjXxWA6vftmbGsgP
 luHNj92CSjswSTfmXY8Gr4kqhveqBb08zFyZL+O9rim0QH5zpo2sGoqRK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="431509588"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="431509588"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 22:01:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; 
   d="scan'208";a="235157"
Received: from swatish2-mobl2.gar.corp.intel.com (HELO [10.213.81.131])
 ([10.213.81.131])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 22:01:38 -0800
Message-ID: <373d7bc4-4f69-450c-b92f-5df1282f06c9@intel.com>
Date: Thu, 18 Jan 2024 11:31:35 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add bigjoiner force enable option
 to debugfs
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
References: <20231018132400.1446-1-stanislav.lisovskiy@intel.com>
 <ZTkRRRf2lTksA_a2@intel.com> <94796951-a166-43fa-b476-a8522c8a272d@intel.com>
 <87y1cnq1ob.fsf@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
In-Reply-To: <87y1cnq1ob.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

On 17-Jan-24 11:31 PM, Jani Nikula wrote:
> On Wed, 17 Jan 2024, "Sharma, Swati2" <swati2.sharma@intel.com> wrote:
>> Hi Ville,
>>
>> On 25-Oct-23 6:29 PM, Ville Syrjälä wrote:
>>> On Wed, Oct 18, 2023 at 04:24:00PM +0300, Stanislav Lisovskiy wrote:
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 4f6835a7578e..6a9148232a9c 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -1153,7 +1153,11 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
>>>>    	if (!intel_dp_can_bigjoiner(intel_dp))
>>>>    		return false;
>>>>    
>>>> -	return clock > i915->max_dotclk_freq || hdisplay > 5120;
>>>> +	if (intel_dp->force_bigjoiner_enable)
>>>> +		drm_dbg_kms(&i915->drm, "Forcing bigjoiner mode\n");
>>>
>>> That's going to cause excessive dmesg spam.
>>
>> Then how from dmesg we will get to know, big joiner was forced?
>> Shouldn't we have atleast one debug print to know this?
> 
> Yeah. But this gets called for every single display mode via
> intel_dp_mode_valid().

ohh okay, can we add dbg print in intel_dp_compute_link_config()
from where intel_dp_need_bigjoiner() is called?

> 
> BR,
> Jani.
> 
> 
