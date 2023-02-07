Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A113868D0BA
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 08:41:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0096510E454;
	Tue,  7 Feb 2023 07:41:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2873310E454
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 07:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675755699; x=1707291699;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=RIti6W116giMFdmoujktmdWJYMLXncqQlaQPm6lC2KU=;
 b=XbX9fYBcaUl5a+Gxsl71DxXvIQvxev3KQDyiGLtbXUldV1ktrnuoAkUj
 kNzkoXMXhIPYH2TiAX5+PTj8yZ8MclzZb1E62out4bYz+ofkrBpa27X/B
 xgXaE9+R7ANvXu6rOQLe/h1Jze5Vsd604XJrvv/sYLqQVC841+G4R7TxR
 hRyyQVZbz+J5PPSFJ5eiNMklPJuQsxvedQm0Cg+VNCLge8MWXRg60FyHi
 dViQ+5eQA2rIU2PQNoRuaQBMMhRwYVeF3O9kGfwgHIhH+DMrnKb8eSfIh
 1WAZQ7IWy6J2Dg+Sg34CI0zTNOlnBrwL1Guydk5tWi/aW+zhewFwkYY98 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="328071563"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="328071563"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 23:41:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="699146240"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="699146240"
Received: from swatish2-mobl2.gar.corp.intel.com (HELO [10.215.126.214])
 ([10.215.126.214])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 23:41:36 -0800
Message-ID: <65336d7f-47d3-7231-511f-cabb6a2d18e5@intel.com>
Date: Tue, 7 Feb 2023 13:11:33 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230111053837.1608588-1-suraj.kandpal@intel.com>
 <20230111053837.1608588-9-suraj.kandpal@intel.com> <87zgapgorz.fsf@intel.com>
From: Swati Sharma <swati2.sharma@intel.com>
Organization: Intel
In-Reply-To: <87zgapgorz.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v6 8/9] drm/i915/dsc: Allow DSC only with
 YCbCr420 format when forced from debugfs
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

Hi Jani,

Thanks for the review.
Have floated https://patchwork.freedesktop.org/patch/521301/
addressing your review comments.
Corresponding IGT https://patchwork.freedesktop.org/series/113253/

On 11-Jan-23 7:24 PM, Jani Nikula wrote:
> On Wed, 11 Jan 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> From: Swati Sharma <swati2.sharma@intel.com>
>>
>> If force_dsc_ycbcr420_en is set through debugfs allow DSC iff
>> output_format is INTEL_OUTPUT_FORMAT_YCBCR420.
> 
> Squash this with the previous patch.
> 
>>
>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 2adac42e585d..666ee85dd23a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1528,6 +1528,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>   	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
>>   		return -EINVAL;
>>   
>> +	if (intel_dp->force_dsc_ycbcr420_en &&
>> +	    pipe_config->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>> +		return -EINVAL;
> 
> It would be more generally useful, and perhaps even cleaner to
> implement, to force the output format, as in *any* output format,
> instead of having a specific force_dsc_ycbcr420_en.
> 
> BR,
> Jani.
> 
> 
>> +
>>   	if (compute_pipe_bpp)
>>   		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
>>   	else
> 

-- 
~Swati Sharma
