Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 036126910F4
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 20:07:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 150B810E012;
	Thu,  9 Feb 2023 19:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9409910E012
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Feb 2023 19:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675969629; x=1707505629;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=a8lLX37wdbAvJPu23SNmgbLCddw0DDoszDcu019iGkQ=;
 b=D+MBsxN4/TOPwtdnela6SAzXhiyYN+tvUA2jswKK9gGnHPCuHJIi88Es
 K26zECAVOtzaTjL3i/rkyk57G0k+Dx4Z6+QbxoMo+hphGOLSmmej/dt4T
 a+XJ+/qtniD/xWfN6tlEQ69Hyf7IbT8d/KY8j5kwd3VujHqKylqjkStoX
 rgwPfZQQb0CM/4qUvCGeP/HQjOKAeNpfCp2PcqMKs+IuDd9m5+duG9CMg
 JAwXYIkDeDXs9boH2scT2cPe8WIretP3WrX3W6Sh6i4FwYk7xrUSAHydJ
 81hEXg5bRpOCDjg717tbzIz84VQEcwxSyhdnyzXvsAndiEEqIeAn8mGJr Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="328849190"
X-IronPort-AV: E=Sophos;i="5.97,284,1669104000"; d="scan'208";a="328849190"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 11:07:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="645375164"
X-IronPort-AV: E=Sophos;i="5.97,284,1669104000"; d="scan'208";a="645375164"
Received: from mschwieg-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.38.128])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 11:07:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y+OpuuSPvayRLcKa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1675849634.git.jani.nikula@intel.com>
 <2f6fa8f3215b7a9f71a2b21d4eccd0bca526dbce.1675849634.git.jani.nikula@intel.com>
 <Y+OpuuSPvayRLcKa@intel.com>
Date: Thu, 09 Feb 2023 21:07:02 +0200
Message-ID: <87pmaiwtd5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/wm: move remaining watermark
 code out of intel_pm.c
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

On Wed, 08 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 08, 2023 at 11:48:40AM +0200, Jani Nikula wrote:
>> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/inte=
l_pm.c
>> index ee8f8d2d2a66..649c4d222f79 100644
>> --- a/drivers/gpu/drm/i915/intel_pm.c
>> +++ b/drivers/gpu/drm/i915/intel_pm.c
>> -
>> +static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
>> +{
>> +	if (HAS_LLC(dev_priv)) {
>>  		/*
>> -		 * Always set WM_LP_SPRITE_EN when spr_val !=3D 0, even if the
>> -		 * level is disabled. Doing otherwise could cause underruns.
>> +		 * WaCompressedResourceDisplayNewHashMode:skl,kbl
>> +		 * Display WA #0390: skl,kbl
>> +		 *
>> +		 * Must match Sampler, Pixel Back End, and Media. See
>> +		 * WaCompressedResourceSamplerPbeMediaNewHashMode.
>>  		 */
>> -		if (DISPLAY_VER(dev_priv) <=3D 6 && r->spr_val) {
>> -			drm_WARN_ON(&dev_priv->drm, wm_lp !=3D 1);
>> -			results->wm_lp_spr[wm_lp - 1] |=3D WM_LP_SPRITE_ENABLE;
>> -		}
>>
>
> git diff screwed up was some of the untouched stuff
> got reordered? Maybe --patience helps?

Locally --patience seems to do a nicer job, will use that for v2.

BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
