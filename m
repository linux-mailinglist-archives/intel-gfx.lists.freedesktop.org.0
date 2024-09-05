Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7597396E1A8
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 20:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2547C10E91D;
	Thu,  5 Sep 2024 18:11:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XB2I+kYu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00AAF10E91D
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 18:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725559887; x=1757095887;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=UPskwvdmtKVnzZnB6nTG7aS4AHIymiD1KSd2U9mmkiA=;
 b=XB2I+kYuzdsxzzdoEL/dOANasGIC7kY1YaOz1mSP/gMF1bQjrAB8M1/9
 x3C102JPQU+I5AIdmI/qR6QgL0R59viUJlgexloczEsFkZH10zvfYUFKd
 aymRgwV5EsyJ8DTh4rD0TV8Lg82RuXWUsSm4rITeKGIgNesGo3c/6wSKj
 zSHKzI7b12t3qK+nykfL2PGeZ8u+lQES/Nf1IB9CuhkiU7fyOk4HSTi4R
 JHUlYSEX96DyW01Leh/1DkQGW0EPonh6Yw1Wx4IN0Wnb3GwOJUX79gDSI
 MDGjtxQFB+s6/EITuQ3s86gGkTX+7NDvdRSeBENaXngSQtb/OsSI9zXrs Q==;
X-CSE-ConnectionGUID: OnPnoiPmSm+9XYIuqE+WYw==
X-CSE-MsgGUID: UHsJ0aNvSKmm/UgJ5IQ+Tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="28183635"
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="28183635"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 11:11:26 -0700
X-CSE-ConnectionGUID: c+eXzNH9R1GceJWgWwzW0g==
X-CSE-MsgGUID: p2ws5XdOQ3e50NKH53EXyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="66438885"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.216])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 11:11:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/display: pass display to
 intel_crtc_for_pipe()
In-Reply-To: <Zthj9wYWT5ESIGEX@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240904130633.3831492-1-jani.nikula@intel.com>
 <Zthj9wYWT5ESIGEX@intel.com>
Date: Thu, 05 Sep 2024 21:11:20 +0300
Message-ID: <87a5gmotrr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 04 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Sep 04, 2024 at 04:06:32PM +0300, Jani Nikula wrote:
>> Convert the intel_crtc_for_pipe() struct drm_i915_private parameter to
>> struct intel_display.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/i9xx_wm.c          | 15 ++++++++++-----
>>  .../gpu/drm/i915/display/intel_atomic_plane.c   |  4 ++--
>>  drivers/gpu/drm/i915/display/intel_cdclk.c      |  6 ++++--
>>  drivers/gpu/drm/i915/display/intel_crt.c        |  3 ++-
>>  drivers/gpu/drm/i915/display/intel_crtc.c       |  8 +++++---
>>  drivers/gpu/drm/i915/display/intel_crtc.h       |  3 ++-
>>  drivers/gpu/drm/i915/display/intel_display.c    | 17 ++++++++++-------
>>  .../gpu/drm/i915/display/intel_display_driver.c |  3 ++-
>>  .../gpu/drm/i915/display/intel_display_irq.c    |  9 ++++++---
>>  .../gpu/drm/i915/display/intel_display_trace.h  | 15 ++++++++++-----
>>  drivers/gpu/drm/i915/display/intel_dpll.c       |  3 ++-
>>  drivers/gpu/drm/i915/display/intel_dsb.c        |  2 +-
>>  drivers/gpu/drm/i915/display/intel_fbc.c        |  3 +--
>>  drivers/gpu/drm/i915/display/intel_fdi.c        | 10 ++++++----
>>  .../gpu/drm/i915/display/intel_fifo_underrun.c  | 15 ++++++++++-----
>>  drivers/gpu/drm/i915/display/intel_link_bw.c    |  3 +--
>>  .../gpu/drm/i915/display/intel_modeset_setup.c  | 12 ++++++++----
>>  .../gpu/drm/i915/display/intel_sprite_uapi.c    |  3 ++-
>>  drivers/gpu/drm/i915/display/skl_watermark.c    |  7 ++++---
>>  19 files changed, 88 insertions(+), 53 deletions(-)
>>=20
> <snip>
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm=
/i915/display/intel_crtc.c
>> index 1b578cad2813..32e0f2907899 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
>> @@ -48,12 +48,12 @@ struct intel_crtc *intel_first_crtc(struct drm_i915_=
private *i915)
>>  	return to_intel_crtc(drm_crtc_from_index(&i915->drm, 0));
>>  }
>>=20=20
>> -struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
>> +struct intel_crtc *intel_crtc_for_pipe(struct intel_display *display,
>>  				       enum pipe pipe)
>>  {
>>  	struct intel_crtc *crtc;
>>=20=20
>> -	for_each_intel_crtc(&i915->drm, crtc) {
>> +	for_each_intel_crtc(display->drm, crtc) {
>>  		if (crtc->pipe =3D=3D pipe)
>>  			return crtc;
>>  	}
>> @@ -69,7 +69,9 @@ void intel_crtc_wait_for_next_vblank(struct intel_crtc=
 *crtc)
>>  void intel_wait_for_vblank_if_active(struct drm_i915_private *i915,
>>  				     enum pipe pipe)
>>  {
>> -	struct intel_crtc *crtc =3D intel_crtc_for_pipe(i915, pipe);
>> +	struct intel_display *display =3D &i915->display;
>> +
>
> Stray newline.

Whoopsie, fixed while pushing to drm-intel-next.

>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks,
Jani.

>
>> +	struct intel_crtc *crtc =3D intel_crtc_for_pipe(display, pipe);
>>=20=20
>>  	if (crtc->active)
>>  		intel_crtc_wait_for_next_vblank(crtc);

--=20
Jani Nikula, Intel
