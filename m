Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13364615EBC
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 10:03:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D0F710E127;
	Wed,  2 Nov 2022 09:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB64310E127
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 09:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667379781; x=1698915781;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=bCTOefP1YW1DQProCaHqipNfllvt0Y6/UH9lwE//gdE=;
 b=H99Ta18CJ0GKrjNPE8DoRVzGFVcKGBQh5fLWc+1oIxIRJchtXYWjRdKk
 Cmbq875cUXKD2Ru8opnPTGdFoSYzaWXfFBsvZA3QWsKfrKexYw3qq+kAK
 USEk9cLXTFMrMKHpjVV11y8E9VyAiFPT1VhybknNnR7Kryz5PCo61y6Gw
 bnwUckKLmJy5wkrfY2q7EnTr6+pFf8rtjzIDQgSPVVaC+6hC0VEX9Ih6u
 5Ore3kmZjVUtMq1IjQU5n7tWEiFrZ5u+Halu5d5kVHNvKZFRiNWxNOJ+i
 Hhg0J++JSU2xP+PMyGWb5nYqh/Al+vhi+ugZSeP1eZgEBgojVEWX8D2R9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="311071044"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="311071044"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 02:02:59 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="612163208"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="612163208"
Received: from swatish2-mobl2.gar.corp.intel.com (HELO [10.213.116.107])
 ([10.213.116.107])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 02:02:56 -0700
Message-ID: <27ad74e3-d436-6f74-e3bb-599f960de195@intel.com>
Date: Wed, 2 Nov 2022 14:32:53 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: Matt Roper <matthew.d.roper@intel.com>
References: <20221101075927.15146-1-swati2.sharma@intel.com>
 <Y2GNrfJJ/ryBY0+9@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
From: Swati Sharma <swati2.sharma@intel.com>
Organization: Intel
In-Reply-To: <Y2GNrfJJ/ryBY0+9@mdroper-desk1.amr.corp.intel.com>
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

Hi Matt,

Yes. Though h/w supports DSC from gen10, DSC is enabled from gen11+ from 
driver.
We can see "has_dsc" flag enabled in gen11+.
#define GEN11_FEATURES \
 >-------.__runtime.has_dsc = 1, \

Also, in the driver intel_dsc_source_support(), it is
if (DISPLAY_VER(i915) >= 11 && cpu_transcoder != TRANSCODER_A)
                 return true;
So, we should align DISPLAY_VER check according to DSC enablement
from driver.

On 02-Nov-22 2:50 AM, Matt Roper wrote:
> On Tue, Nov 01, 2022 at 01:29:27PM +0530, Swati Sharma wrote:
>> i915 driver supports DSC from DISPLAY_VER >= 11. Fix it.
> 
> Bspec 19713 indicates that GLK (i.e., our only display version 10
> platform) does support DSC.  Are you saying that there's other GLK
> enablement missing in the driver right now that prevents DSC from
> working?
> 
> 
> Matt
> 
>>
>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 7400d6b4c587..02e64f0284d8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1012,7 +1012,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>>   	 * integer value since we support only integer values of bpp.
>>   	 */
>> -	if (DISPLAY_VER(dev_priv) >= 10 &&
>> +	if (DISPLAY_VER(dev_priv) >= 11 &&
>>   	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
>>   		/*
>>   		 * TBD pass the connector BPC,
>> @@ -2906,7 +2906,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
>>   	intel_dp_set_max_sink_lane_count(intel_dp);
>>   
>>   	/* Read the eDP DSC DPCD registers */
>> -	if (DISPLAY_VER(dev_priv) >= 10)
>> +	if (DISPLAY_VER(dev_priv) >= 11)
>>   		intel_dp_get_dsc_sink_cap(intel_dp);
>>   
>>   	/*
>> -- 
>> 2.25.1
>>
> 

-- 
~Swati Sharma
