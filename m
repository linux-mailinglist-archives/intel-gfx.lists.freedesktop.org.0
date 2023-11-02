Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED53E7DF3CF
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 14:30:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7448310E8A7;
	Thu,  2 Nov 2023 13:30:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11E6610E8A7
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 13:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698931840; x=1730467840;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=2T6Ux911QZmXBHUgjeh7ZpZ34/N6gQVFHUYyhzDavEg=;
 b=lmV9YttS58HgDfg220oBeXUss+xJDkHZ75H9twGVGEd1OXvC1pJs47c2
 poEj+0cNibtaOFy22GksMlYWxj/EIki/Q2kEloLtxX3NvQTpvHf9s4tfh
 4RNGnUM8VWZ5V0Qvrlq1jGQFTczh/qD1qfJKyVqAtvWuPoQkYqfyQwMPE
 W8EjL2772n2eGhTtBb1wL4nVnnlXpu/YRfNnwcLflwAXgmLq0SvAfPE3H
 /qJ5ngBrauECRVWubhn+PdNp3U9ceizrDbrUN61+2tH52QLIqWb2cs570
 SlyQ6/TeoCx/q2xJp1R12l+DNbzCMTJQgb0ZG/y5aPARJ6jvx5EaJhmJ/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="10241490"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="10241490"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 06:30:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="761293084"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="761293084"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 06:29:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231101114212.9345-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
 <20231101114212.9345-3-ville.syrjala@linux.intel.com>
Date: Thu, 02 Nov 2023 15:29:56 +0200
Message-ID: <87edh82sh7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Stop using a 'reg' variable
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

On Wed, 01 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> 'reg' is a very non-descriptive name. Just get rid of the silly
> local variable and spell out the full register name always.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1abb81981ef5..751c36679b01 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -397,7 +397,6 @@ void intel_enable_transcoder(const struct intel_crtc_=
state *new_crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder =3D new_crtc_state->cpu_transcoder;
>  	enum pipe pipe =3D crtc->pipe;
> -	i915_reg_t reg;
>  	u32 val;
>=20=20
>  	drm_dbg_kms(&dev_priv->drm, "enabling pipe %c\n", pipe_name(pipe));
> @@ -430,16 +429,16 @@ void intel_enable_transcoder(const struct intel_crt=
c_state *new_crtc_state)
>  		intel_de_rmw(dev_priv, PIPE_ARB_CTL(pipe),
>  			     0, PIPE_ARB_USE_PROG_SLOTS);
>=20=20
> -	reg =3D TRANSCONF(cpu_transcoder);
> -	val =3D intel_de_read(dev_priv, reg);
> +	val =3D intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
>  	if (val & TRANSCONF_ENABLE) {
>  		/* we keep both pipes enabled on 830 */
>  		drm_WARN_ON(&dev_priv->drm, !IS_I830(dev_priv));
>  		return;
>  	}
>=20=20
> -	intel_de_write(dev_priv, reg, val | TRANSCONF_ENABLE);
> -	intel_de_posting_read(dev_priv, reg);
> +	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder),
> +		       val | TRANSCONF_ENABLE);
> +	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
>=20=20
>  	/*
>  	 * Until the pipe starts PIPEDSL reads will return a stale value,
> @@ -458,7 +457,6 @@ void intel_disable_transcoder(const struct intel_crtc=
_state *old_crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder =3D old_crtc_state->cpu_transcoder;
>  	enum pipe pipe =3D crtc->pipe;
> -	i915_reg_t reg;
>  	u32 val;
>=20=20
>  	drm_dbg_kms(&dev_priv->drm, "disabling pipe %c\n", pipe_name(pipe));
> @@ -469,8 +467,7 @@ void intel_disable_transcoder(const struct intel_crtc=
_state *old_crtc_state)
>  	 */
>  	assert_planes_disabled(crtc);
>=20=20
> -	reg =3D TRANSCONF(cpu_transcoder);
> -	val =3D intel_de_read(dev_priv, reg);
> +	val =3D intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
>  	if ((val & TRANSCONF_ENABLE) =3D=3D 0)
>  		return;
>=20=20
> @@ -485,7 +482,7 @@ void intel_disable_transcoder(const struct intel_crtc=
_state *old_crtc_state)
>  	if (!IS_I830(dev_priv))
>  		val &=3D ~TRANSCONF_ENABLE;
>=20=20
> -	intel_de_write(dev_priv, reg, val);
> +	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 12)
>  		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),

--=20
Jani Nikula, Intel
