Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCA9615FD3
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 10:33:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CAC710E0AA;
	Wed,  2 Nov 2022 09:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D563310E0AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 09:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667381578; x=1698917578;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yQwRGGNCkdqDYvusroOVMAsc7UMcK3p3bt9jVA8oRZw=;
 b=mirbCVVvgIwf7AV2wHlc6UUEa2krJTfOJ4Z4i2EcoaqXY2tFbcHqVg0D
 2r2bTX9VCpe2RVFIm05G+LNKJ1vkC3FeoQELHd3C+GuGA5r8hdqBsyAbm
 TxMVEO1JgKKFJQ8UT5yxDIUxwrGK2j0G65Zvo9ZzeYHeU919Fm0X0xV2W
 JrpDKxSj3I0T3AxzlQ6JRZ66pBUqQsmgwHAL8855yQ2vAplnW9AW2Yj/a
 VXdF9O4SqA9OgaGfa2CDsPDSVrb1YI2hjg/OgrOz3+iYTtkukYLD2RHwV
 labU3BBD2u/oP0Um5gciLCXixJNsQ4lk0u1Kih1ZjLzaT0G3m+h3sB1Yh w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="310463744"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="310463744"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 02:32:58 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="809214200"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="809214200"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 02:32:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>
In-Reply-To: <27ad74e3-d436-6f74-e3bb-599f960de195@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221101075927.15146-1-swati2.sharma@intel.com>
 <Y2GNrfJJ/ryBY0+9@mdroper-desk1.amr.corp.intel.com>
 <27ad74e3-d436-6f74-e3bb-599f960de195@intel.com>
Date: Wed, 02 Nov 2022 11:32:54 +0200
Message-ID: <87v8nx7lbt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 02 Nov 2022, Swati Sharma <swati2.sharma@intel.com> wrote:
> Hi Matt,
>
> Yes. Though h/w supports DSC from gen10, DSC is enabled from gen11+ from 
> driver.
> We can see "has_dsc" flag enabled in gen11+.
> #define GEN11_FEATURES \
>  >-------.__runtime.has_dsc = 1, \
>
> Also, in the driver intel_dsc_source_support(), it is
> if (DISPLAY_VER(i915) >= 11 && cpu_transcoder != TRANSCODER_A)
>                  return true;
> So, we should align DISPLAY_VER check according to DSC enablement
> from driver.

The real fix would be to use intel_dsc_source_support() as the single
point of truth instead of sprinkled all over the place. Especially since
that also takes fusing into account.

BR,
Jani.



>
> On 02-Nov-22 2:50 AM, Matt Roper wrote:
>> On Tue, Nov 01, 2022 at 01:29:27PM +0530, Swati Sharma wrote:
>>> i915 driver supports DSC from DISPLAY_VER >= 11. Fix it.
>> 
>> Bspec 19713 indicates that GLK (i.e., our only display version 10
>> platform) does support DSC.  Are you saying that there's other GLK
>> enablement missing in the driver right now that prevents DSC from
>> working?
>> 
>> 
>> Matt
>> 
>>>
>>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 7400d6b4c587..02e64f0284d8 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -1012,7 +1012,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>>   	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>>>   	 * integer value since we support only integer values of bpp.
>>>   	 */
>>> -	if (DISPLAY_VER(dev_priv) >= 10 &&
>>> +	if (DISPLAY_VER(dev_priv) >= 11 &&
>>>   	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
>>>   		/*
>>>   		 * TBD pass the connector BPC,
>>> @@ -2906,7 +2906,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
>>>   	intel_dp_set_max_sink_lane_count(intel_dp);
>>>   
>>>   	/* Read the eDP DSC DPCD registers */
>>> -	if (DISPLAY_VER(dev_priv) >= 10)
>>> +	if (DISPLAY_VER(dev_priv) >= 11)
>>>   		intel_dp_get_dsc_sink_cap(intel_dp);
>>>   
>>>   	/*
>>> -- 
>>> 2.25.1
>>>
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
