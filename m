Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E365131312B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 12:44:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F34756E8B0;
	Mon,  8 Feb 2021 11:44:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FD3F6E8A5;
 Mon,  8 Feb 2021 11:44:17 +0000 (UTC)
IronPort-SDR: 15gqx5dg7Hv5Iq3+6Eez2U5DM98JVr2h005bdD3uH2MsW8riU5d7g6mfHNqt1v9L6FcmPjIsrh
 9FvfIThg7oiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9888"; a="181844236"
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="181844236"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 03:44:14 -0800
IronPort-SDR: zFbPBwX9l7Kq0OA2FaDpm8zxNarF9RsBs9UVUIsdCWuTaPW3+klDzINKPdhtPaNgz5rWCw+ABw
 a0e5N1brPncg==
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="395353876"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.213.70.150])
 ([10.213.70.150])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 03:44:12 -0800
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20210204064842.11595-1-ankit.k.nautiyal@intel.com>
 <20210204064842.11595-2-ankit.k.nautiyal@intel.com>
 <87blcueroq.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <82d5cf44-4618-6d1d-2219-a5ac80d00d7a@intel.com>
Date: Mon, 8 Feb 2021 17:14:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <87blcueroq.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] i915/display/intel_dp: Read PCON DSC
 ENC caps only for DPCD rev >= 1.4
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
Cc: dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2/8/2021 4:45 PM, Jani Nikula wrote:
> On Thu, 04 Feb 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> DP-HDMI2.1 PCON has DSC encoder caps defined in registers 0x92-0x9E.
>> Do not read the registers if DPCD rev < 1.4.
>>
>> Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/2868
> Please use Fixes: to reference commits that this patch fixes.
>
> Please use Closes: to reference issues that this patch fixes.
>
> No need to resend for this, can be fixed while applying, but please tell
> me the commit that introduced the problem.
>
> BR,
> Jani.
>
Alright will take care. Please find below the commit that introduced this:

b9d96dacdc3d983eae234b52401edb56dbceb764

Patch : drm/i915: Read DSC capabilities of the HDMI2.1 PCON encoder 
https://patchwork.freedesktop.org/patch/408779/


Thanks & Regards,

Ankit

>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 8c12d5375607..2b83f0f433a2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2489,9 +2489,11 @@ static void intel_dp_get_pcon_dsc_cap(struct intel_dp *intel_dp)
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>   
>>   	/* Clear the cached register set to avoid using stale values */
>> -
>>   	memset(intel_dp->pcon_dsc_dpcd, 0, sizeof(intel_dp->pcon_dsc_dpcd));
>>   
>> +	if (intel_dp->dpcd[DP_DPCD_REV] < 0x14)
>> +		return;
>> +
>>   	if (drm_dp_dpcd_read(&intel_dp->aux, DP_PCON_DSC_ENCODER,
>>   			     intel_dp->pcon_dsc_dpcd,
>>   			     sizeof(intel_dp->pcon_dsc_dpcd)) < 0)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
