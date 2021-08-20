Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8243F27CA
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Aug 2021 09:45:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 052766EA33;
	Fri, 20 Aug 2021 07:45:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 844F86EA33
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Aug 2021 07:45:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="280461606"
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="280461606"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 00:45:14 -0700
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="523170078"
Received: from schuenem-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.43.187])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 00:45:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <YR6F3EclDR6Yq+l0@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1629281426.git.jani.nikula@intel.com>
 <8c9bb23d92878deb1ecc75427ec6648bd3505816.1629281426.git.jani.nikula@intel.com>
 <YR6F3EclDR6Yq+l0@intel.com>
Date: Fri, 20 Aug 2021 10:45:10 +0300
Message-ID: <87eeaoh855.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/fdi: move
 intel_fdi_link_freq() to intel_fdi.[ch]
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

On Thu, 19 Aug 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Aug 18, 2021 at 01:11:09PM +0300, Jani Nikula wrote:
>> There's no performance reason to have it as static inline; move it out
>> of intel_display_types.h to reduce clutter and dependency on i915_drv.h.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_types.h | 9 ---------
>>  drivers/gpu/drm/i915/display/intel_fdi.c           | 9 +++++++++
>>  drivers/gpu/drm/i915/display/intel_fdi.h           | 4 ++++
>>  3 files changed, 13 insertions(+), 9 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/driver=
s/gpu/drm/i915/display/intel_display_types.h
>> index 7b5d7b1ae501..c2725d07b930 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -2040,15 +2040,6 @@ static inline u32 i9xx_dpll_compute_fp(struct dpl=
l *dpll)
>>  	return dpll->n << 16 | dpll->m1 << 8 | dpll->m2;
>>  }
>>=20=20
>> -static inline u32 intel_fdi_link_freq(struct drm_i915_private *dev_priv,
>> -				      const struct intel_crtc_state *pipe_config)
>> -{
>> -	if (HAS_DDI(dev_priv))
>> -		return pipe_config->port_clock; /* SPLL */
>> -	else
>> -		return dev_priv->fdi_pll_freq;
>> -}
>> -
>>  static inline bool is_ccs_modifier(u64 modifier)
>>  {
>>  	return modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
>> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/=
i915/display/intel_fdi.c
>> index e10b9cd8e86e..970a57369b05 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
>> @@ -95,6 +95,15 @@ static int ilk_check_fdi_lanes(struct drm_device *dev=
, enum pipe pipe,
>>  	}
>>  }
>>=20=20
>> +u32 intel_fdi_link_freq(struct drm_i915_private *i915,
>
> Could just change it to 'int' while at it.

Left this for a future change to avoid the CI run now.

>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

BR,
Jani.


>
>> +			const struct intel_crtc_state *pipe_config)
>> +{
>> +	if (HAS_DDI(i915))
>> +		return pipe_config->port_clock; /* SPLL */
>> +	else
>> +		return i915->fdi_pll_freq;
>> +}
>> +
>>  int ilk_fdi_compute_config(struct intel_crtc *crtc,
>>  			   struct intel_crtc_state *pipe_config)
>>  {
>> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/=
i915/display/intel_fdi.h
>> index af01d2c173a8..fd63a6a53fca 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fdi.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fdi.h
>> @@ -6,12 +6,16 @@
>>  #ifndef _INTEL_FDI_H_
>>  #define _INTEL_FDI_H_
>>=20=20
>> +#include <linux/types.h>
>> +
>>  struct drm_i915_private;
>>  struct intel_crtc;
>>  struct intel_crtc_state;
>>  struct intel_encoder;
>>=20=20
>>  #define I915_DISPLAY_CONFIG_RETRY 1
>> +u32 intel_fdi_link_freq(struct drm_i915_private *i915,
>> +			const struct intel_crtc_state *pipe_config);
>>  int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
>>  			   struct intel_crtc_state *pipe_config);
>>  void intel_fdi_normal_train(struct intel_crtc *crtc);
>> --=20
>> 2.20.1

--=20
Jani Nikula, Intel Open Source Graphics Center
