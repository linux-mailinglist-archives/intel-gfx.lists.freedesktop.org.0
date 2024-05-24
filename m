Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC478CE231
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 10:17:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C128A10E396;
	Fri, 24 May 2024 08:17:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lw2ZSkdY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC81A10E4DD;
 Fri, 24 May 2024 08:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716538660; x=1748074660;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WlMTOyau85J6KQL43oJh8GbFyGgqZeSsAxtEAEdHT2E=;
 b=lw2ZSkdY0+YSXYCrD8COC9jBQTwWcQrnTETmV9Y5d7iiQIU9Kf2VPYdX
 7vP1fJag10EtdXWhdA/XDPB4K/Ze0AzQQMuUKj1C3/Sy9/+AQ+Bb6hX9p
 Njc4sHjn1qpIFbtBGeOiJUNGx5e6cCn6NFWiAiJDYFE4z4IkzttiLi0Bs
 08A5OOiOIMRWWKW9Ox2V3L2ObzIgFveOphDvNB9mjfc0IbXS2CrATRJQU
 btEyy24ZZc2wrRbm8MSiURjgDiJAa+JwO5ho/hVtL8Z7whOwvC5LZeZb6
 ESnEUFR4SvgIseoWz8xtQp2Evq/IflFYkzAV3riPMGssnoCeAYrGKuj2F g==;
X-CSE-ConnectionGUID: aXCLQTZ3REqbBDa9iBE0PA==
X-CSE-MsgGUID: b65C7QpER9W6UOz51otdJw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="13084050"
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="13084050"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 01:17:38 -0700
X-CSE-ConnectionGUID: TjvT7KosSXySpppgPvRzYg==
X-CSE-MsgGUID: 2uE4DyCeRnONBdm25CQlAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="33870928"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 01:17:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 lucas.demarchi@intel.com
Subject: Re: [PATCH 05/10] drm/i915/display: add platform descriptors
In-Reply-To: <Zk-PShUokzY2VbqW@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1716399081.git.jani.nikula@intel.com>
 <45425c155608403efc149d4a022c0b443aa71200.1716399081.git.jani.nikula@intel.com>
 <Zk-PShUokzY2VbqW@intel.com>
Date: Fri, 24 May 2024 11:17:32 +0300
Message-ID: <87ttinoc83.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 23 May 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, May 22, 2024 at 08:33:42PM +0300, Jani Nikula wrote:
>> We'll need to start identifying the platforms independently in display
>> code in order to break free from the i915 and xe IS_<PLATFORM>()
>> macros. This is fairly straightforward, as we already identify most
>> platforms by PCI ID in display probe anyway.
>> 
>> As the first step, add platform descriptors with pointers to display
>> info. We'll have more platforms than display info, so minimize
>> duplication:
>> 
>> - Add separate skl/kbl/cfl/cml descriptors while they share the display
>>   info.
>> 
>> - Add separate jsl/ehl descriptors while they share the display info.
>> 
>> Identify ADL-P (and derivatives) and DG2 descriptors by their names even
>> though their display info is Xe LPD or HPD.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_device.c   | 558 ++++++++++--------
>>  1 file changed, 326 insertions(+), 232 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>> index 56b27546d1b3..d1e03437abb3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>> @@ -20,6 +20,10 @@
>>  __diag_push();
>>  __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
>>  
>> +struct platform_desc {
>> +	const struct intel_display_device_info *info;
>> +};
>
> I had to jump to the latest patch to understand why this single item
> in a new struct... later it makes sense...

Yeah...

>> -#define GEN3_DISPLAY \
>> +#define GEN3_DISPLAY   \
>
> I had noticed a trend in all of your recent series, to replace the long tab
> or space before '\' with a single space. But then here you change the single
> space to multiple spaces. Intentional?

Accidental.

Emacs wants to indent and align \'s in a specific way, in a nice column
towards the right. Usually I follow that when adding new stuff manually.

Here, that happened on a line I didn't mean to change.

In the PCI ID patches I intentionally used a single space because I
scripted the whole thing, and I couldn't be bothered to figure out how
to align the \'s any other way! :)

>>  static const struct {
>>  	u32 devid;
>> -	const struct intel_display_device_info *info;
>> +	const struct platform_desc *desc;
>>  } intel_display_ids[] = {
>> -	INTEL_I830_IDS(INTEL_DISPLAY_DEVICE, &i830_display),
>> -	INTEL_I845G_IDS(INTEL_DISPLAY_DEVICE, &i845_display),
>> -	INTEL_I85X_IDS(INTEL_DISPLAY_DEVICE, &i85x_display),
>> -	INTEL_I865G_IDS(INTEL_DISPLAY_DEVICE, &i865g_display),
>> -	INTEL_I915G_IDS(INTEL_DISPLAY_DEVICE, &i915g_display),
>> -	INTEL_I915GM_IDS(INTEL_DISPLAY_DEVICE, &i915gm_display),
>> -	INTEL_I945G_IDS(INTEL_DISPLAY_DEVICE, &i945g_display),
>> -	INTEL_I945GM_IDS(INTEL_DISPLAY_DEVICE, &i945gm_display),
>> -	INTEL_I965G_IDS(INTEL_DISPLAY_DEVICE, &i965g_display),
>> -	INTEL_G33_IDS(INTEL_DISPLAY_DEVICE, &g33_display),
>> -	INTEL_I965GM_IDS(INTEL_DISPLAY_DEVICE, &i965gm_display),
>> -	INTEL_GM45_IDS(INTEL_DISPLAY_DEVICE, &gm45_display),
>> -	INTEL_G45_IDS(INTEL_DISPLAY_DEVICE, &g45_display),
>> -	INTEL_PNV_IDS(INTEL_DISPLAY_DEVICE, &pnv_display),
>> -	INTEL_ILK_D_IDS(INTEL_DISPLAY_DEVICE, &ilk_d_display),
>> -	INTEL_ILK_M_IDS(INTEL_DISPLAY_DEVICE, &ilk_m_display),
>> -	INTEL_SNB_IDS(INTEL_DISPLAY_DEVICE, &snb_display),
>> -	INTEL_IVB_IDS(INTEL_DISPLAY_DEVICE, &ivb_display),
>> -	INTEL_HSW_IDS(INTEL_DISPLAY_DEVICE, &hsw_display),
>> -	INTEL_VLV_IDS(INTEL_DISPLAY_DEVICE, &vlv_display),
>> -	INTEL_BDW_IDS(INTEL_DISPLAY_DEVICE, &bdw_display),
>> -	INTEL_CHV_IDS(INTEL_DISPLAY_DEVICE, &chv_display),
>> -	INTEL_SKL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
>> -	INTEL_BXT_IDS(INTEL_DISPLAY_DEVICE, &bxt_display),
>> -	INTEL_GLK_IDS(INTEL_DISPLAY_DEVICE, &glk_display),
>> -	INTEL_KBL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
>> -	INTEL_CFL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
>> -	INTEL_WHL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
>> -	INTEL_CML_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
>> -	INTEL_ICL_IDS(INTEL_DISPLAY_DEVICE, &icl_display),
>> -	INTEL_EHL_IDS(INTEL_DISPLAY_DEVICE, &jsl_ehl_display),
>> -	INTEL_JSL_IDS(INTEL_DISPLAY_DEVICE, &jsl_ehl_display),
>> -	INTEL_TGL_IDS(INTEL_DISPLAY_DEVICE, &tgl_display),
>> -	INTEL_DG1_IDS(INTEL_DISPLAY_DEVICE, &dg1_display),
>> -	INTEL_RKL_IDS(INTEL_DISPLAY_DEVICE, &rkl_display),
>> -	INTEL_ADLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_display),
>> -	INTEL_RPLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_display),
>> -	INTEL_ADLP_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
>> -	INTEL_ADLN_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
>> -	INTEL_RPLU_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
>> -	INTEL_RPLP_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
>> -	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &xe_hpd_display),
>> +	INTEL_I830_IDS(INTEL_DISPLAY_DEVICE, &i830_desc),
>
> But here is what I'm not sure if I completely understand/agree...
> before this patch is a display device with a display struct
> but then it becomes a display device with a platform description
> but a platform that is not used by the driver...
>
> I'm probably missing some later jump there.

Yeah, I did not want to put too much stuff in the same patch. I think
easier to review this way, though I guess I should've made my intentions
more clear in the commit message! Also, easy to squash if so desired.

So this one adds the platform descs with just the display struct, and
later patches add more content in the descs.


BR,
Jani.


-- 
Jani Nikula, Intel
