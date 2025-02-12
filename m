Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A361A324AF
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 12:18:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2573210E861;
	Wed, 12 Feb 2025 11:18:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K8ZcJhTe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F99810E85F;
 Wed, 12 Feb 2025 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739359096; x=1770895096;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=a2BV5EftgvKK7jBqk58eMd+XGpkIRbLmZTv8GwWG3Pc=;
 b=K8ZcJhTe9YX5SuJKqCDmstWOYrT4Ic3d56wZfkCjv7rgnufvCI3R0Q8h
 54rinU+Dy5LYsQF2ZGRi+OrL/mjQBejuYUTVpFOgGkRmEbHMlyTYIMKup
 z8DFLlxVORIfSvQHZCW7J9WdFx7SjANSzGbPeM0MRXFcyHgQ0f2NBEi+p
 vKJe1p150qe58xFrhozToIBZTcgbjU21kJoZnV2fRdfpMuSNLxFinv90O
 bSHfEU4Q+Mr/u0B4kN0IWddMefaQpXsGy3ZnQJPjM7auvjhIlG0ic5ys4
 a24OjGFGRDKw0HV8xXkESem2ELmgchQRmlPqwcZYNZNamwVztBKMQve60 g==;
X-CSE-ConnectionGUID: /1p3Y5A+S5GV93sh/KHrGw==
X-CSE-MsgGUID: UwLfnTr4QuSGXpUg8Xtwog==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50643733"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50643733"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 03:18:15 -0800
X-CSE-ConnectionGUID: A/HV0TNhTiySeU821p+l3A==
X-CSE-MsgGUID: dK4RKQ+xShKCqvp8ZOHfGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149983282"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 03:18:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/3] drm/i915/pch: Make LPT LP a dedicated PCH type
In-Reply-To: <IA1PR11MB646763382628DF974F79D6FAE3FD2@IA1PR11MB6467.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1738923308.git.jani.nikula@intel.com>
 <777b63f50b10fba1d768af25870e81b33267bdc8.1738923308.git.jani.nikula@intel.com>
 <IA1PR11MB646763382628DF974F79D6FAE3FD2@IA1PR11MB6467.namprd11.prod.outlook.com>
Date: Wed, 12 Feb 2025 13:18:10 +0200
Message-ID: <87jz9vza19.fsf@intel.com>
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

On Tue, 11 Feb 2025, "Garg, Nemesa" <nemesa.garg@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Friday, February 7, 2025 3:48 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [PATCH 1/3] drm/i915/pch: Make LPT LP a dedicated PCH type
>>
>> Add PCH type PCH_LPT_LP and rename PCH_LPT to PCH_LPT_H for
>> consistency. Keep the existing HAS_PCH_LPT*() macros, but express them in
>> terms of the PCH types instead of looking at the device IDs directly. This
>> makes the PCH checks independent of the PCH device IDs.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> LGTM,
> Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

Thanks for the review, series pushed to din.

BR,
Jani.

>> ---
>>  drivers/gpu/drm/i915/display/intel_backlight.c |  2 +-
>>  drivers/gpu/drm/i915/soc/intel_pch.c           |  8 ++++----
>>  drivers/gpu/drm/i915/soc/intel_pch.h           | 14 ++++++--------
>>  3 files changed, 11 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c
>> b/drivers/gpu/drm/i915/display/intel_backlight.c
>> index 477b21af71a4..178dc6c8de80 100644
>> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
>> @@ -1829,7 +1829,7 @@ void intel_backlight_init_funcs(struct intel_panel
>> *panel)
>>               panel->backlight.pwm_funcs = &bxt_pwm_funcs;
>>       } else if (INTEL_PCH_TYPE(i915) >= PCH_CNP) {
>>               panel->backlight.pwm_funcs = &cnp_pwm_funcs;
>> -     } else if (INTEL_PCH_TYPE(i915) >= PCH_LPT) {
>> +     } else if (INTEL_PCH_TYPE(i915) >= PCH_LPT_H) {
>>               if (HAS_PCH_LPT(i915))
>>                       panel->backlight.pwm_funcs = &lpt_pwm_funcs;
>>               else
>> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c
>> b/drivers/gpu/drm/i915/soc/intel_pch.c
>> index 9f7c9dbc178e..0370ccb6943c 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
>> @@ -33,14 +33,14 @@ intel_pch_type(const struct drm_i915_private
>> *dev_priv, unsigned short id)
>>                           !IS_HASWELL(dev_priv) &&
>> !IS_BROADWELL(dev_priv));
>>               drm_WARN_ON(&dev_priv->drm,
>>                           IS_HASWELL_ULT(dev_priv) ||
>> IS_BROADWELL_ULT(dev_priv));
>> -             return PCH_LPT;
>> +             return PCH_LPT_H;
>>       case INTEL_PCH_LPT_LP_DEVICE_ID_TYPE:
>>               drm_dbg_kms(&dev_priv->drm, "Found LynxPoint LP
>> PCH\n");
>>               drm_WARN_ON(&dev_priv->drm,
>>                           !IS_HASWELL(dev_priv) &&
>> !IS_BROADWELL(dev_priv));
>>               drm_WARN_ON(&dev_priv->drm,
>>                           !IS_HASWELL_ULT(dev_priv) &&
>> !IS_BROADWELL_ULT(dev_priv));
>> -             return PCH_LPT;
>> +             return PCH_LPT_LP;
>>       case INTEL_PCH_WPT_DEVICE_ID_TYPE:
>>               drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint
>> PCH\n");
>>               drm_WARN_ON(&dev_priv->drm,
>> @@ -48,7 +48,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv,
>> unsigned short id)
>>               drm_WARN_ON(&dev_priv->drm,
>>                           IS_HASWELL_ULT(dev_priv) ||
>> IS_BROADWELL_ULT(dev_priv));
>>               /* WPT is LPT compatible */
>> -             return PCH_LPT;
>> +             return PCH_LPT_H;
>>       case INTEL_PCH_WPT_LP_DEVICE_ID_TYPE:
>>               drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint LP
>> PCH\n");
>>               drm_WARN_ON(&dev_priv->drm,
>> @@ -56,7 +56,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv,
>> unsigned short id)
>>               drm_WARN_ON(&dev_priv->drm,
>>                           !IS_HASWELL_ULT(dev_priv) &&
>> !IS_BROADWELL_ULT(dev_priv));
>>               /* WPT is LPT compatible */
>> -             return PCH_LPT;
>> +             return PCH_LPT_LP;
>>       case INTEL_PCH_SPT_DEVICE_ID_TYPE:
>>               drm_dbg_kms(&dev_priv->drm, "Found SunrisePoint
>> PCH\n");
>>               drm_WARN_ON(&dev_priv->drm,
>> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h
>> b/drivers/gpu/drm/i915/soc/intel_pch.h
>> index 89e89ede265d..bc926df14c45 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_pch.h
>> +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
>> @@ -19,7 +19,8 @@ enum intel_pch {
>>       PCH_NONE = 0,   /* No PCH present */
>>       PCH_IBX,        /* Ibexpeak PCH */
>>       PCH_CPT,        /* Cougarpoint/Pantherpoint PCH */
>> -     PCH_LPT,        /* Lynxpoint/Wildcatpoint PCH */
>> +     PCH_LPT_H,      /* Lynxpoint/Wildcatpoint H PCH */
>> +     PCH_LPT_LP,     /* Lynxpoint/Wildcatpoint LP PCH */
>>       PCH_SPT,        /* Sunrisepoint/Kaby Lake PCH */
>>       PCH_CNP,        /* Cannon/Comet Lake PCH */
>>       PCH_ICP,        /* Ice Lake/Jasper Lake PCH */
>> @@ -72,13 +73,10 @@ enum intel_pch {
>>  #define HAS_PCH_ICP(dev_priv)
>>       (INTEL_PCH_TYPE(dev_priv) == PCH_ICP)
>>  #define HAS_PCH_CNP(dev_priv)
>>       (INTEL_PCH_TYPE(dev_priv) == PCH_CNP)
>>  #define HAS_PCH_SPT(dev_priv)
>>       (INTEL_PCH_TYPE(dev_priv) == PCH_SPT)
>> -#define HAS_PCH_LPT(dev_priv)
>>       (INTEL_PCH_TYPE(dev_priv) == PCH_LPT)
>> -#define HAS_PCH_LPT_LP(dev_priv) \
>> -     (INTEL_PCH_ID(dev_priv) == INTEL_PCH_LPT_LP_DEVICE_ID_TYPE ||
>> \
>> -      INTEL_PCH_ID(dev_priv) == INTEL_PCH_WPT_LP_DEVICE_ID_TYPE)
>> -#define HAS_PCH_LPT_H(dev_priv) \
>> -     (INTEL_PCH_ID(dev_priv) == INTEL_PCH_LPT_DEVICE_ID_TYPE || \
>> -      INTEL_PCH_ID(dev_priv) == INTEL_PCH_WPT_DEVICE_ID_TYPE)
>> +#define HAS_PCH_LPT_H(dev_priv)
>>       (INTEL_PCH_TYPE(dev_priv) == PCH_LPT_H)
>> +#define HAS_PCH_LPT_LP(dev_priv)             (INTEL_PCH_TYPE(dev_priv)
>> == PCH_LPT_LP)
>> +#define HAS_PCH_LPT(dev_priv)
>>       (INTEL_PCH_TYPE(dev_priv) == PCH_LPT_H || \
>> +                                              INTEL_PCH_TYPE(dev_priv)
>> == PCH_LPT_LP)
>>  #define HAS_PCH_CPT(dev_priv)
>>       (INTEL_PCH_TYPE(dev_priv) == PCH_CPT)
>>  #define HAS_PCH_IBX(dev_priv)
>>       (INTEL_PCH_TYPE(dev_priv) == PCH_IBX)
>>  #define HAS_PCH_NOP(dev_priv)
>>       (INTEL_PCH_TYPE(dev_priv) == PCH_NOP)
>> --
>> 2.39.5
>

-- 
Jani Nikula, Intel
