Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6C77844BE
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 16:53:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C38E310E377;
	Tue, 22 Aug 2023 14:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66F0810E377
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 14:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692716010; x=1724252010;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=6R5q5GgTPKPu8UlxgUUpR2ZDFXyzf66St6FXtuWwxWM=;
 b=Gzgq9nSVY+/c58P2lKmZTS6WY10QFZZW33/nDfhHqFGmQg/QKa5Cakci
 y/FyhiRrotczvq/gnMAjQUVZhZYCePCZhCdRfG5p1KvC6iqitiJ5Rwcog
 YE5lkU+1dyfNgECaikV+RsIB8Ll7enXWKwBtDfzctaP8NW6yQeYl+MWi4
 4Du4DgiqsT2b/4fSc2pNt3lUel8T7JBmgvY6gi7WokjMElvJnrZQuHsb3
 nK6UNlO1CUuaPS2GVKNBTUAn7WoztbCV4dA2t8IcckmYW2Xe6qAPLEt3D
 ynvoQFn9crc9D4TVngreGpdf7Tp4bXAiP687rGi3wLt4UcRE97sg1EmNY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="353468508"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="353468508"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 07:53:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="739331268"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="739331268"
Received: from kainaats-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.230])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 07:53:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87ttsr5h4r.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230818111950.128992-1-vinod.govindapillai@intel.com>
 <20230818111950.128992-3-vinod.govindapillai@intel.com>
 <87ttsr5h4r.fsf@intel.com>
Date: Tue, 22 Aug 2023 17:53:26 +0300
Message-ID: <87msyj5dsp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v4 2/4] drm/i915/display: combine DP audio
 compute config steps
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

On Tue, 22 Aug 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> On Fri, 18 Aug 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
>> Combine all DP audio configs into a single function
>>
>> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

And pushed the first two to drm-intel-next.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++------
>>  1 file changed, 5 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 964bf0551bdc..67c06bbc1760 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2240,9 +2240,12 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
>>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>  	struct drm_connector *connector = conn_state->connector;
>>  
>> -	pipe_config->sdp_split_enable =
>> +	pipe_config->has_audio =
>>  		intel_dp_has_audio(encoder, conn_state) &&
>> -		intel_dp_is_uhbr(pipe_config);
>> +		intel_audio_compute_config(encoder, pipe_config, conn_state);
>> +
>> +	pipe_config->sdp_split_enable = pipe_config->has_audio &&
>> +					intel_dp_is_uhbr(pipe_config);
>>  
>>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDP split enable: %s\n",
>>  		    connector->base.id, connector->name,
>> @@ -2264,10 +2267,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>>  	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
>>  		pipe_config->has_pch_encoder = true;
>>  
>> -	pipe_config->has_audio =
>> -		intel_dp_has_audio(encoder, conn_state) &&
>> -		intel_audio_compute_config(encoder, pipe_config, conn_state);
>> -
>>  	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
>>  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>>  		ret = intel_panel_compute_config(connector, adjusted_mode);

-- 
Jani Nikula, Intel Open Source Graphics Center
