Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD801496049
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 15:03:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 024BA10EA20;
	Fri, 21 Jan 2022 14:03:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 772B210EA20
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 14:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642773798; x=1674309798;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=N+qZh3W2bU6z/PWYNgBj0Brq5L4Ihcq5p4YpUd+rb6c=;
 b=RgO/UinS0oqJsQqquCLTbxE1hYh4uVjRsLkF8BM7QA+tptpz59Vx/GP5
 E90eaVPnbmSiVhoRE6/u6hd+e5POj6oswUyE4tOW89w7UORGdVswdsuDU
 2MShQ6aOatF3UBk/smZap6md713f40z1VslAgLJL6vyRWgYOKLScXfQvD
 fK+afBBsKIdS8Fjn+5vkjyBP5N4g2x+/lO5VaAxP/Csiev55U2ds3fVXS
 FTCt+rlxYhLbeQAQxEjTWfY+/98duKB9pZPaVxeRhwcDIV9RxDv02YCip
 MfnGXZ09z4/9dScHqzxpLtpWcXpNzAFAmsbbDoK0RkEA920k9cpoQ5qJk g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="243251169"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="243251169"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 06:03:17 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="533283532"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 06:03:16 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220121130710.10382-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220121130710.10382-1-ville.syrjala@linux.intel.com>
Date: Fri, 21 Jan 2022 16:03:09 +0200
Message-ID: <87y2392nky.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Reject bigjoiner if the pipe
 doesn't support it
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

On Fri, 21 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Check that our crtc can in fact be the bigjoiner master before
> we let the modeset proceed with bigjoiner enabled.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0964b2403e2d..36e547bd0cbe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4102,6 +4102,14 @@ static u8 bigjoiner_pipes(struct drm_i915_private =
*i915)
>  		return 0;
>  }
>=20=20
> +static u8 bigjoiner_master_pipes(struct drm_i915_private *i915)
> +{
> +	u8 pipes =3D bigjoiner_pipes(i915);
> +
> +	/* last pipe can not be master */
> +	return pipes & (pipes >> 1);
> +}
> +
>  static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_=
priv,
>  					   enum transcoder cpu_transcoder)
>  {
> @@ -7600,6 +7608,7 @@ static int intel_atomic_check_bigjoiner(struct inte=
l_atomic_state *state,
>  					struct intel_crtc_state *old_crtc_state,
>  					struct intel_crtc_state *new_crtc_state)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
>  	struct intel_crtc *slave_crtc, *master_crtc;
>=20=20
> @@ -7615,6 +7624,13 @@ static int intel_atomic_check_bigjoiner(struct int=
el_atomic_state *state,
>  	if (!new_crtc_state->bigjoiner)
>  		return 0;
>=20=20
> +	if ((bigjoiner_master_pipes(i915) & BIT(crtc->pipe)) =3D=3D 0) {

Feels like the check should be in
intel_dsc_get_bigjoiner_{secondary,primary}.

They already contain the check that the next/prev pipe exists, which
(silly me) I thought was enough.

BR,
Jani.

> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s] Bigjoiner not available on this pipe\n",
> +			    crtc->base.base.id, crtc->base.name);
> +		return -EINVAL;
> +	}
> +
>  	slave_crtc =3D intel_dsc_get_bigjoiner_secondary(crtc);
>  	if (!slave_crtc) {
>  		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration requires "

--=20
Jani Nikula, Intel Open Source Graphics Center
