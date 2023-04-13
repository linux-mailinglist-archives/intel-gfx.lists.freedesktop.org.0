Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A576E0D95
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 14:42:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8793010E29F;
	Thu, 13 Apr 2023 12:42:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BADA910E233
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 12:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681389751; x=1712925751;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=2t4awi4VH/zwRu5R1pawAPUERgSKA3U63o21fRUHwMI=;
 b=bEap2OS/zaUGrhg7HJluqz08nEOmUkPxCvbHQl9NkaZBYwrW+fsCjx54
 796ZmgD4zp8qWvRHbOtLtSrdvy3qgSRErEwu0+CMjBXJ714EabPSQ6EqS
 XAvg43hX90TA3DgvKrlyrHmBVS85O81VgIsHwW8f01dIzD5H0QUKosfvC
 cC1qlAQ3mRKS3nMeG6l6GI05RaNtCeFP7bmx51ka+4Z5Hn82h8YqGkLl0
 SVn5OSf60UGunYG2wOOkA4jWDkV1ikJj5+tbvSw6seMSoVdLfmU6cNx5P
 Q8B5KQnB6sfXPa/+yDbv8WYfylCd5EvPhkR8+wC6FQBk/uBlK2CDPKjc2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="342916845"
X-IronPort-AV: E=Sophos;i="5.99,193,1677571200"; d="scan'208";a="342916845"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 05:42:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="863759869"
X-IronPort-AV: E=Sophos;i="5.99,193,1677571200"; d="scan'208";a="863759869"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 05:42:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <168138851791.4412.18050063545378346839@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230413121113.1141052-1-jani.nikula@intel.com>
 <168138851791.4412.18050063545378346839@gjsousa-mobl2>
Date: Thu, 13 Apr 2023 15:42:27 +0300
Message-ID: <875ya0ar7w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/aux: clean up aux name
 initialization
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

On Thu, 13 Apr 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2023-04-13 09:11:13)
>> Split intel_dp_aux_name() to a separate function to declutter
>> intel_dp_aux_init(), and only have the if ladder to pick the one
>> character instead of duplicating the whole kasprintf() call.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 32 ++++++++++++---------
>>  1 file changed, 18 insertions(+), 14 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> index 705915d50565..2fee5b79c0b7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> @@ -718,12 +718,27 @@ void intel_dp_aux_fini(struct intel_dp *intel_dp)
>>         kfree(intel_dp->aux.name);
>>  }
>>  
>> -void intel_dp_aux_init(struct intel_dp *intel_dp)
>> +static const char *intel_dp_aux_name(struct intel_dp *intel_dp)
>>  {
>> -  struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>> +  struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>         struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>         struct intel_encoder *encoder = &dig_port->base;
>>         enum aux_ch aux_ch = dig_port->aux_ch;
>> +  char aux_char;
>> +
>> +  if (DISPLAY_VER(i915) >= 13 && aux_ch >= AUX_CH_D_XELPD)
>> +          aux_char = aux_ch_name(aux_ch - AUX_CH_D_XELPD + AUX_CH_D);
>> +  else if (DISPLAY_VER(i915) >= 12 && aux_ch >= AUX_CH_USBC1)
>> +          aux_char = aux_ch - AUX_CH_USBC1 + '1';
>> +  else
>> +          aux_char = aux_ch_name(aux_ch);
>> +
>> +  return kasprintf(GFP_KERNEL, "AUX %c/%s", aux_char, encoder->base.name);
>
> Is the drop of " USBC" in the format string for the second case in the ladder
> intentional?

No. Either I goofed it up originally or during a rebase. :/

Thanks for spotting it,
Jani.

>
>> +}
>> +
>> +void intel_dp_aux_init(struct intel_dp *intel_dp)
>> +{
>> +  struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>  
>>         if (DISPLAY_VER(dev_priv) >= 14) {
>>                 intel_dp->aux_ch_ctl_reg = xelpdp_aux_ctl_reg;
>> @@ -760,18 +775,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>>         drm_dp_aux_init(&intel_dp->aux);
>>  
>>         /* Failure to allocate our preferred name is not critical */
>> -  if (DISPLAY_VER(dev_priv) >= 13 && aux_ch >= AUX_CH_D_XELPD)
>> -          intel_dp->aux.name = kasprintf(GFP_KERNEL, "AUX %c/%s",
>> -                                         aux_ch_name(aux_ch - AUX_CH_D_XELPD + AUX_CH_D),
>> -                                         encoder->base.name);
>> -  else if (DISPLAY_VER(dev_priv) >= 12 && aux_ch >= AUX_CH_USBC1)
>> -          intel_dp->aux.name = kasprintf(GFP_KERNEL, "AUX USBC%c/%s",
>> -                                         aux_ch - AUX_CH_USBC1 + '1',
>> -                                         encoder->base.name);
>> -  else
>> -          intel_dp->aux.name = kasprintf(GFP_KERNEL, "AUX %c/%s",
>> -                                         aux_ch_name(aux_ch),
>> -                                         encoder->base.name);
>> +  intel_dp->aux.name = intel_dp_aux_name(intel_dp);
>>  
>>         intel_dp->aux.transfer = intel_dp_aux_transfer;
>>         cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
>> -- 
>> 2.39.2
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
