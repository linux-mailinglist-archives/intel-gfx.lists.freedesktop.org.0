Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA0259BD49
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 12:03:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6359810EDB7;
	Mon, 22 Aug 2022 10:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7659410ED79
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 10:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661162562; x=1692698562;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=CmP7PcBf7wbxU7Q73brLzZNzvxxet4WEBK4UH7/mRc4=;
 b=LhtH4Y4QYnEY2HJarZecVDWkLZoIVI23VKzWlt+1IsRwfHmVd2mfEpgB
 X/sLxXTaHsJygRB/xrguTlNPthd+vHgSDS+PprtOAedLDHHIIHdDm3f4J
 rfNaju1yVcGeRQnW5ggpTU3v5Gbp6LkaYHF4OzbAUeypclz7ZN8gwELIR
 DypzVfz/MFusZJUWRLMkHKVJGMb1E+E8jRf6njrPQEpsJ5ACAW/XZzdrh
 CAEJmcyNAC2FD/Yawpp+Q1jC3s3L1QdWLhl9vd9IvJH/C2uUkjeYACVyZ
 D4Yd/t0oZU9o3TLSP5TOaKJYswNegd154jbGmcSxWMCJpNz/gTe8K7841 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="379665065"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="379665065"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:02:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="669465562"
Received: from trangnek-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.50.159])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:02:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <d33e683d-3ce7-b449-6998-1b72b8fa3629@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220817124516.284456-1-jani.nikula@intel.com>
 <d33e683d-3ce7-b449-6998-1b72b8fa3629@intel.com>
Date: Mon, 22 Aug 2022 13:02:38 +0300
Message-ID: <87wnb0mw8x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dsc/mtl: Update the DSC minor
 version
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

On Mon, 22 Aug 2022, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> LGTM.
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Thanks; does this apply to both patches?

BR,
Jani.


>
> On 8/17/2022 6:15 PM, Jani Nikula wrote:
>> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
>>
>>  From MTL onwards we support DSC1.2, since there is hardcoding
>> to minor version 1, update it.
>>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 18 ++++++++++++++----
>>   1 file changed, 14 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 32292c0be2bd..db5f536bde05 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1377,7 +1377,18 @@ static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
>>   	return 0;
>>   }
>>   
>> -#define DSC_SUPPORTED_VERSION_MIN		1
>> +static int intel_dp_source_dsc_version_minor(struct intel_dp *intel_dp)
>> +{
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +
>> +	return DISPLAY_VER(i915) >= 14 ? 2 : 1;
>> +}
>> +
>> +static int intel_dp_sink_dsc_version_minor(struct intel_dp *intel_dp)
>> +{
>> +	return (intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] & DP_DSC_MINOR_MASK) >>
>> +		DP_DSC_MINOR_SHIFT;
>> +}
>>   
>>   static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>>   				       struct intel_crtc_state *crtc_state)
>> @@ -1416,9 +1427,8 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>>   		(intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] &
>>   		 DP_DSC_MAJOR_MASK) >> DP_DSC_MAJOR_SHIFT;
>>   	vdsc_cfg->dsc_version_minor =
>> -		min(DSC_SUPPORTED_VERSION_MIN,
>> -		    (intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] &
>> -		     DP_DSC_MINOR_MASK) >> DP_DSC_MINOR_SHIFT);
>> +		min(intel_dp_source_dsc_version_minor(intel_dp),
>> +		    intel_dp_sink_dsc_version_minor(intel_dp));
>>   
>>   	vdsc_cfg->convert_rgb = intel_dp->dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
>>   		DP_DSC_RGB;

-- 
Jani Nikula, Intel Open Source Graphics Center
