Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2593A4AF270
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 14:13:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FCD210E237;
	Wed,  9 Feb 2022 13:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDB9310E237
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 13:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644412386; x=1675948386;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=dAp3jnQ18UeHdYDMgegwCmHxZiRVT6kwSaav3lrTJJ4=;
 b=juQ5BiqYoC1QM7ewvd0/uhRF7S0hCxAteiifIaOYk2RkdFDgJ96Y7cKj
 /V/B2NWXt7KCh3jKz3dumu1VfGEtodau+9VT7dQHh50ZvgbAqfko+ycaB
 q62VlsG0uLAAjHZmsyXmouZjbR6SeIF23d0FnhsPgYipl8r2+5NsakRm2
 wt1Sv6uQxLKliNexzXZMfJ+omnmcFr/WcldN5GkTMf7H90EGL4q0ewWN8
 OGjCPRRlsmcOcGLL5thzV/QvAx0QzvY+El6U/c0LWrzj8/v89SqTi6ROD
 VLtZD2tWzrByCcuhGrs7xwRBYykJ+ClhR4JSPJJJ5e1GtNr79LPpeFQuz g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="229169645"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="229169645"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:12:47 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="485235645"
Received: from rcallina-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.18.41])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:12:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YgObWDqQwhh6+aNz@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1643896905.git.jani.nikula@intel.com>
 <63779ac0472895803113180818ecadc22c10369e.1643896905.git.jani.nikula@intel.com>
 <YgObWDqQwhh6+aNz@intel.com>
Date: Wed, 09 Feb 2022 15:12:43 +0200
Message-ID: <87a6f0p4j8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/pm: hide struct
 drm_i915_clock_gating_funcs
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

On Wed, 09 Feb 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Feb 03, 2022 at 04:02:33PM +0200, Jani Nikula wrote:
>> The struct is only needed in intel_pm.c, move it there.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> I find these single vfunc structs a bit ridiculous, but since
> we have them might as well hide them.
>
> For the series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed the lot.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.h | 6 +-----
>>  drivers/gpu/drm/i915/intel_pm.c | 4 ++++
>>  2 files changed, 5 insertions(+), 5 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index 078fc50e7eb9..4ac0fcb9a4ca 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -107,6 +107,7 @@
>>  #include "i915_vma.h"
>>=20=20
>>  struct dpll;
>> +struct drm_i915_clock_gating_funcs;
>>  struct drm_i915_gem_object;
>>  struct drm_i915_private;
>>  struct intel_atomic_state;
>> @@ -302,11 +303,6 @@ struct sdvo_device_mapping {
>>  	u8 ddc_pin;
>>  };
>>=20=20
>> -/* functions used internal in intel_pm.c */
>> -struct drm_i915_clock_gating_funcs {
>> -	void (*init_clock_gating)(struct drm_i915_private *dev_priv);
>> -};
>> -
>>  /* functions used for watermark calcs for display. */
>>  struct drm_i915_wm_disp_funcs {
>>  	/* update_wm is for legacy wm management */
>> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/inte=
l_pm.c
>> index 859be750fb22..2e84d45f9bf0 100644
>> --- a/drivers/gpu/drm/i915/intel_pm.c
>> +++ b/drivers/gpu/drm/i915/intel_pm.c
>> @@ -55,6 +55,10 @@
>>  #include "vlv_sideband.h"
>>  #include "../../../platform/x86/intel_ips.h"
>>=20=20
>> +struct drm_i915_clock_gating_funcs {
>> +	void (*init_clock_gating)(struct drm_i915_private *i915);
>> +};
>> +
>>  /* Stores plane specific WM parameters */
>>  struct skl_wm_params {
>>  	bool x_tiled, y_tiled;
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
