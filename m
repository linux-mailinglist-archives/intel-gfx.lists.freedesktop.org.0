Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD35154DF1C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 12:29:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B2A8113EEB;
	Thu, 16 Jun 2022 10:29:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE4F113EEB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 10:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655375377; x=1686911377;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=4k4Ni2q/Bf+f+Pzi2ErXY6KK4EXy2EXgHcU1B5NsGqo=;
 b=I02akqR79YyGzEFwmhJDDKtI9ObZxOMmHAjc4NyK0L2/OTDqZtLtlm2a
 hNfG2L7ojJkAOo/TUr4HFNDgDxk3OlJrjEyjKXzI8MZ8/TF3ygZ0lqH68
 J5vlmd39CyKEQXLyqvMYG1BCmO/dpF/uSUQ++ta5BU/4KHdg+EAqoZYxT
 WZ77XunTC6rDbHSImmUCKn2soFpslS/8gcWynzjjcd/7bqihSyMaXmb1r
 F2Fqu8vFgXJ+5wLRdifiUl8aoXYFV276XABX7RroTzfaHwlbfX/VyJyi7
 cStgbpzfD0vClufQwoUck/HX4sjU46kg9UyKqk/dv6B63srKaAd5MNHJ7 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="365572373"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="365572373"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 03:29:36 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="641481401"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 03:29:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220616095530.15024-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220616095530.15024-1-ville.syrjala@linux.intel.com>
Date: Thu, 16 Jun 2022 13:29:32 +0300
Message-ID: <87r13ox5o3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove bogus LPT iCLKIP WARN
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

On Thu, 16 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The WARN shouldn't have been added yet. For the moment the
> clock that gets passed here is just what the user has requested
> (via the modeline) and may not be exactly what iCLKIP can
> generate.
>
> Later on the plan is to change things so that we already get
> passed the exact clock here, at which point the WARN should
> be reintroduced.

Hmph, who reviwed that patch anyway?!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6246
> Fixes: 97708335b04d ("drm/i915: Introduce struct iclkip_params")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pch_refclk.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gp=
u/drm/i915/display/intel_pch_refclk.c
> index 752dab11667f..9934c8a9e240 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> @@ -179,7 +179,6 @@ void lpt_program_iclkip(const struct intel_crtc_state=
 *crtc_state)
>  	lpt_disable_iclkip(dev_priv);
>=20=20
>  	lpt_compute_iclkip(&p, clock);
> -	drm_WARN_ON(&dev_priv->drm, lpt_iclkip_freq(&p) !=3D clock);
>=20=20
>  	/* This should not happen with any sane values */
>  	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIVSEL(p.divsel) &

--=20
Jani Nikula, Intel Open Source Graphics Center
