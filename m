Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1CF7869E0
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:21:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C61AC10E4BA;
	Thu, 24 Aug 2023 08:20:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1AB610E4BA;
 Thu, 24 Aug 2023 08:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692865258; x=1724401258;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bfoDV2wRt5cPkjQGxyyeS9K9ahizHTC98bXJ5/Br44c=;
 b=L9Z/4BDtZRBk2ROs41Lo52WXJNoKm9CnKbycpPu8MSzxtVtVrKBq3Ggo
 XolZxdFGMY6gjRo6x9ZHFw80V7hCPE/xEYRCwZdEd+wBXFc+9efWjO09Q
 uPxkkxASSbrESJscdf8u+rWtVuz3PylcQE9vQ5uypmTA5QHVcJD+xd7iS
 RFgMtf+w4CxKp6pPkZqbNbsedbjYy6WLAXFXwbqTeV2FzJrahirL5Q213
 HxgPNfBIeRWn6sOULYC2Rs46TwWNACo3Ds8i7iZIGtf4AVvOP3LyoEVyv
 GDleXdQ4e1ExhzXu+xs6DRbr2gTbKIGufybIuwBp+8eiZiR4hwM9TyTg4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="440727252"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="440727252"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:20:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="713870843"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="713870843"
Received: from andrzejk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.90])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:20:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
In-Reply-To: <20230823180342.GG6080@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-13-lucas.demarchi@intel.com>
 <20230823180342.GG6080@mdroper-desk1.amr.corp.intel.com>
Date: Thu, 24 Aug 2023 11:20:31 +0300
Message-ID: <875y546ecw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 12/42] drm/i915/lnl: Add display
 definitions
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 23 Aug 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Wed, Aug 23, 2023 at 10:07:10AM -0700, Lucas De Marchi wrote:
>> From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>> 
>> Add Lunar Lake platform definitions for i915 display. The support for
>> LNL will be added to the xe driver, with i915 only driving the display
>> side. Therefore define IS_LUNARLAKE to 0 to disable it when building the
>> i915 module.
>> 
>> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_device.c   | 15 +++++++++++++++
>>  drivers/gpu/drm/i915/i915_drv.h                   |  1 +
>>  2 files changed, 16 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>> index f87470da25d0..b853cd0c704a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>> @@ -727,6 +727,20 @@ static const struct intel_display_device_info xe_lpdp_display = {
>>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>>  };
>>  
>> +static const struct intel_display_device_info xe2_lpd_display = {
>> +	XE_LPD_FEATURES,
>> +	.has_cdclk_crawl = 1,
>> +	.has_cdclk_squash = 1,
>
> XE_LPD_FEATURES, crawl, squash, transcoder mask, and port mask are all
> common between Xe_LPD+ and Xe2_LPD.  Maybe we should add an
> XE_LPDP_FEATURES macro first, and then re-use it here so that the deltas
> are smaller and it's more obvious what the key changes are with this new
> IP?
>
>> +
>> +	.__runtime_defaults.ip.ver = 20,
>> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
>
> With Xe2, FBC is supported on all pipes now (bspec 68881, 68904).
>
>> +	.__runtime_defaults.cpu_transcoder_mask =
>> +		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
>> +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
>> +		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>> +};
>> +
>>  __diag_pop();
>>  
>>  #undef INTEL_VGA_DEVICE
>> @@ -795,6 +809,7 @@ static const struct {
>>  	const struct intel_display_device_info *display;
>>  } gmdid_display_map[] = {
>>  	{ 14,  0, &xe_lpdp_display },
>> +	{ 20,  0, &xe2_lpd_display },
>>  };
>>  
>>  static const struct intel_display_device_info *
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 07f79b1028e1..96ac9a9cc155 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -574,6 +574,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>  #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
>>  #define IS_PONTEVECCHIO(i915) IS_PLATFORM(i915, INTEL_PONTEVECCHIO)
>>  #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
>> +#define IS_LUNARLAKE(dev_priv)  0
>
> As noted on the previous patch, we might be able to drop this completely
> if we update the fake PCH and gmbus code to match on display IP.  Given
> that PCH isn't even involved in south display handling anymore, that
> seems like it might be reasonable?  If anything, we're more likely to
> need to match on PICA ID (which has its own GMD_ID register) than base
> platform at some point in the future.

And in any case it's out of place in this patch.

BR,
Jani.

>
>
> Matt
>
>>  
>>  #define IS_METEORLAKE_M(i915) \
>>  	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_M)
>> -- 
>> 2.40.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
