Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3454EDA51
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 15:15:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8255010E9B9;
	Thu, 31 Mar 2022 13:15:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CE7210E9B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 13:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648732509; x=1680268509;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=iHl1l3EHJfkqMCCnG8DUvU42hZSfOMpWdSd6ujbECh0=;
 b=QHUbh24muVZtUlyW6m/6Exl7EnmklOpzVbIsMGJ08rD4Ep//Eyn0dnsQ
 8yXboPZyLdgdMfx2tvEkBu72O9e1LQmwcBxYQyuljL6qAlI+6/+p81XNv
 0iB1tBDR6k+IfyDtUwQvlib3fQVizkOndGaVp/0TwYlrmYp7FAauN5o5W
 6XF1zEWfYgTQv2OBql2dwCPUkVWzTlgjY6OFl6z5R3cHk+iMTtVr6UVqP
 RN/k5Iws85kn8Npb++zymFRPE36BZ9apNZ9qOqYKfX/iQ9jn7bcI0hmfK
 qJ5LzIPnvECs66izSMnBNqj9ZZRcQT6l2e8HPfhPT4i8ui+yGEpEq5/D5 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259545580"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="259545580"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:15:08 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="566474298"
Received: from gluca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:15:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87lewq9ssm.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-3-ville.syrjala@linux.intel.com>
 <87lewq9ssm.fsf@intel.com>
Date: Thu, 31 Mar 2022 16:15:04 +0300
Message-ID: <87h77e9sbr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 02/11] drm/i915: Put fixed modes directly
 onto the panel's fixed_modes list
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

On Thu, 31 Mar 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Thu, 31 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
>> index 1448c3029b8e..8fd280c7c83f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
>> @@ -358,7 +358,6 @@ void intel_crtc_drrs_init(struct intel_crtc *crtc)
>>  /**
>>   * intel_drrs_init - Init DRRS for eDP connector
>>   * @connector: eDP connector
>> - * @fixed_mode: preferred mode of panel
>>   *
>>   * This function is called only once at driver load to initialize
>>   * DRRS support for the connector.
>> @@ -368,25 +367,14 @@ void intel_crtc_drrs_init(struct intel_crtc *crtc)
>>   * DRRS support is determined by the presence of downclock mode (apart
>>   * from VBT setting).
>>   */
>> -struct drm_display_mode *
>> -intel_drrs_init(struct intel_connector *connector,
>> -		const struct drm_display_mode *fixed_mode)
>> +void intel_drrs_init(struct intel_connector *connector)
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>> -	struct drm_display_mode *downclock_mode;
>> -
>> -	downclock_mode = intel_panel_edid_downclock_mode(connector, fixed_mode);
>> -	if (!downclock_mode) {
>> -		drm_dbg_kms(&dev_priv->drm,
>> -			    "[CONNECTOR:%d:%s] DRRS not supported due to lack of downclock mode\n",
>> -			    connector->base.base.id, connector->base.name);
>> -		return NULL;
>> -	}
>> +
>> +	intel_panel_add_edid_downclock_mode(connector);
>
> What if there's no downclock mode, just one native mode with one
> vrefresh? We'll now now say drrs type is this or that below, but it'll
> never get enabled in compute config?
>
> Should intel_panel_add_edid_downclock_mode() debug log when there's no
> downclock mode?

Other than that, nice cleanups all over the place,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

-- 
Jani Nikula, Intel Open Source Graphics Center
