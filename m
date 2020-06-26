Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 369AC20AED5
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 11:16:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ACEA6E047;
	Fri, 26 Jun 2020 09:16:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3DEC6E047
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 09:16:15 +0000 (UTC)
IronPort-SDR: fmK8zm2Z/0ER1ujzyxyHcvgkXuF0aeh4HDobfJdL0x6ovKojvfV6jwVaITVq8L9esRzO7jSVXM
 zLUbKbjNyiXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="143498082"
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="143498082"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 02:16:15 -0700
IronPort-SDR: 5LZp7dUHjLJ/LtcH9GxZX0Qi3k7VIld6wkoyzWX6dKQSZDb6beSseae5xgzwuKlsDvuU/jmaAh
 NNNuib2RuJyQ==
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="424021788"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com (HELO
 intel.com) ([10.237.72.190])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 02:16:14 -0700
Date: Fri, 26 Jun 2020 12:16:06 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200626091606.GA29269@intel.com>
References: <20200625200003.12436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625200003.12436-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Clamp linetime wm to <64usec
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 25, 2020 at 11:00:03PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The linetime watermark is a 9 bit value, which gives us
> a maximum linetime of just below 64 usec. If the linetime
> exceeds that value we currently just discard the high bits
> and program the rest into the register, which angers the
> state checker.
> =

> To avoid that let's just clamp the value to the max. I believe
> it should be perfectly fine to program a smaller linetime wm
> than strictly required, just means the hardware may fetch data
> sooner than strictly needed. We are further reassured by the
> fact that with DRRS the spec tells us to program the smaller
> of the two linetimes corresponding to the two refresh rates.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index a11bb675f9b3..d486d675166f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -12581,12 +12581,15 @@ static u16 hsw_linetime_wm(const struct intel_c=
rtc_state *crtc_state)
>  {
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
> +	int linetime_wm;
>  =

>  	if (!crtc_state->hw.enable)
>  		return 0;
>  =

> -	return DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal * 1000 * 8,
> -				 adjusted_mode->crtc_clock);
> +	linetime_wm =3D DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal * 1000 * 8,
> +					adjusted_mode->crtc_clock);
> +
> +	return min(linetime_wm, 0x1ff);

Are we actually doing the right thing here? I just mean that we get value
543 in the bug because pixel rate is 14874 which doesn't seem correct.

Stan
>  }
>  =

>  static u16 hsw_ips_linetime_wm(const struct intel_crtc_state *crtc_state,
> @@ -12594,12 +12597,15 @@ static u16 hsw_ips_linetime_wm(const struct int=
el_crtc_state *crtc_state,
>  {
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
> +	int linetime_wm;
>  =

>  	if (!crtc_state->hw.enable)
>  		return 0;
>  =

> -	return DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal * 1000 * 8,
> -				 cdclk_state->logical.cdclk);
> +	linetime_wm =3D DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal * 1000 * 8,
> +					cdclk_state->logical.cdclk);
> +
> +	return min(linetime_wm, 0x1ff);
>  }
>  =

>  static u16 skl_linetime_wm(const struct intel_crtc_state *crtc_state)
> @@ -12608,7 +12614,7 @@ static u16 skl_linetime_wm(const struct intel_crt=
c_state *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
> -	u16 linetime_wm;
> +	int linetime_wm;
>  =

>  	if (!crtc_state->hw.enable)
>  		return 0;
> @@ -12620,7 +12626,7 @@ static u16 skl_linetime_wm(const struct intel_crt=
c_state *crtc_state)
>  	if (IS_GEN9_LP(dev_priv) && dev_priv->ipc_enabled)
>  		linetime_wm /=3D 2;
>  =

> -	return linetime_wm;
> +	return min(linetime_wm, 0x1ff);
>  }
>  =

>  static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
