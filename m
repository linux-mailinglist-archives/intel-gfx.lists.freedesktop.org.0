Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 615129ED335
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 18:17:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2AC10E1EC;
	Wed, 11 Dec 2024 17:17:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BJA8C/FV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 238B310EBDE
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 17:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733937445; x=1765473445;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=lQJPb6qq2K8sHAM6fwndU/qXj93yC3jUV4rxodlLibU=;
 b=BJA8C/FVltK25SH+vF+Zr/nTE9Q5bpbm9CcVkb6L0m+lN4Pbgc+oBlOj
 0s+S0IkRqLu1ackZFbAaFMhKUuDZvwt7aNRlh3GicGz/hxHpVNfnzK0Ad
 BnG7neyAcf+R0+bYZXsJ/OgM1HLmqNDiwMyboPQzSWgzHHAxYAK0yCVE/
 31ebHFvzinT2VJLm7GQPe2ZmMxAoBBPBcFoMu+V/LGAIjpCk/l0TW3jkC
 HihxjX00udMVUnOsi3peLymHoJKOeP2MbsiwPpP+6I0NuYlTQPDobzAGC
 0gdzABNwyxMvSHYUO9aZxMEvXZqbJrtBuVK1aWYoSGqvPJW4htncR7XV5 g==;
X-CSE-ConnectionGUID: o9X4mw+QTquwRjqMkNE5xg==
X-CSE-MsgGUID: asoIP0fXRPy30YB7U+wirg==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="34202884"
X-IronPort-AV: E=Sophos;i="6.12,226,1728975600"; d="scan'208";a="34202884"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 09:17:24 -0800
X-CSE-ConnectionGUID: wRaTxHFRQiiXP0i7P8nljg==
X-CSE-MsgGUID: +k3xFOBnQTGErqI2lcw1oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,226,1728975600"; d="scan'208";a="100703995"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.44])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 09:17:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/dp: move g4x_dp_set_clock() call to
 g4x_dp_compute_config()
In-Reply-To: <Z1mW2C4f3szIVRjN@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241211125431.680227-1-jani.nikula@intel.com>
 <20241211125431.680227-2-jani.nikula@intel.com>
 <Z1mW2C4f3szIVRjN@intel.com>
Date: Wed, 11 Dec 2024 19:17:19 +0200
Message-ID: <87sequxhpc.fsf@intel.com>
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

On Wed, 11 Dec 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Dec 11, 2024 at 02:54:31PM +0200, Jani Nikula wrote:
>> It does not look like anything in intel_dp_compute_config() after the
>> g4x_dp_set_clock() call depends on the changes it makes, namely setting
>> dpll and clock_set in crtc_state.
>
> Hmm, yeah I was a bit worried about DRRS and such, but as long
> as don't mangle the clock itself/etc. then this looks fine.
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> Move the call one level higher to
>> g4x_dp_compute_config() to reduce the clutter in
>> intel_dp_compute_config().
>>=20
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/g4x_dp.c   | 13 ++++++++++---
>>  drivers/gpu/drm/i915/display/g4x_dp.h   |  6 ------
>>  drivers/gpu/drm/i915/display/intel_dp.c |  3 ---
>>  3 files changed, 10 insertions(+), 12 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i91=
5/display/g4x_dp.c
>> index 9ac894a7411f..e06405a3b82d 100644
>> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
>> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
>> @@ -55,8 +55,8 @@ const struct dpll *vlv_get_dpll(struct drm_i915_privat=
e *i915)
>>  	return IS_CHERRYVIEW(i915) ? &chv_dpll[0] : &vlv_dpll[0];
>>  }
>>=20=20
>> -void g4x_dp_set_clock(struct intel_encoder *encoder,
>> -		      struct intel_crtc_state *pipe_config)
>> +static void g4x_dp_set_clock(struct intel_encoder *encoder,
>> +			     struct intel_crtc_state *pipe_config)
>>  {
>>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>>  	const struct dpll *divisor =3D NULL;
>> @@ -1228,11 +1228,18 @@ static int g4x_dp_compute_config(struct intel_en=
coder *encoder,
>>  				 struct drm_connector_state *conn_state)
>>  {
>>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> +	int ret;
>>=20=20
>>  	if (HAS_PCH_SPLIT(i915) && encoder->port !=3D PORT_A)
>>  		crtc_state->has_pch_encoder =3D true;
>>=20=20
>> -	return intel_dp_compute_config(encoder, crtc_state, conn_state);
>> +	ret =3D intel_dp_compute_config(encoder, crtc_state, conn_state);
>> +	if (ret)
>> +		return ret;
>> +
>> +	g4x_dp_set_clock(encoder, crtc_state);
>> +
>> +	return 0;
>>  }
>>=20=20
>>  static void g4x_dp_suspend_complete(struct intel_encoder *encoder)
>> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.h b/drivers/gpu/drm/i91=
5/display/g4x_dp.h
>> index c75e64ae79b7..839a251dc069 100644
>> --- a/drivers/gpu/drm/i915/display/g4x_dp.h
>> +++ b/drivers/gpu/drm/i915/display/g4x_dp.h
>> @@ -19,8 +19,6 @@ struct intel_encoder;
>>=20=20
>>  #ifdef I915
>>  const struct dpll *vlv_get_dpll(struct drm_i915_private *i915);
>> -void g4x_dp_set_clock(struct intel_encoder *encoder,
>> -		      struct intel_crtc_state *pipe_config);
>>  bool g4x_dp_port_enabled(struct drm_i915_private *dev_priv,
>>  			 i915_reg_t dp_reg, enum port port,
>>  			 enum pipe *pipe);
>> @@ -31,10 +29,6 @@ static inline const struct dpll *vlv_get_dpll(struct =
drm_i915_private *i915)
>>  {
>>  	return NULL;
>>  }
>> -static inline void g4x_dp_set_clock(struct intel_encoder *encoder,
>> -				    struct intel_crtc_state *pipe_config)
>> -{
>> -}
>>  static inline bool g4x_dp_port_enabled(struct drm_i915_private *dev_pri=
v,
>>  				       i915_reg_t dp_reg, int port,
>>  				       enum pipe *pipe)
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index adc51567ec17..f8100c4f4d20 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3172,9 +3172,6 @@ intel_dp_compute_config(struct intel_encoder *enco=
der,
>>  	if (pipe_config->splitter.enable)
>>  		pipe_config->dp_m_n.data_m *=3D pipe_config->splitter.link_count;
>>=20=20
>> -	if (!HAS_DDI(dev_priv))
>> -		g4x_dp_set_clock(encoder, pipe_config);
>> -
>>  	intel_vrr_compute_config(pipe_config, conn_state);
>>  	intel_dp_compute_as_sdp(intel_dp, pipe_config);
>>  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
>> --=20
>> 2.39.5

--=20
Jani Nikula, Intel
