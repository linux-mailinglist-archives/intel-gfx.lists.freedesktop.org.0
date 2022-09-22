Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 011535E61DB
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 13:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D82B110EAD5;
	Thu, 22 Sep 2022 11:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF6D010E2FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 11:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663847885; x=1695383885;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=/xR9its97WoYNWFsdrSpT309g6DCtq819bEZNeSb2eQ=;
 b=Y5mYPUKDjBCZhRSlP6NXczgZqf27OxIsgcht5pzRHa3Hm0CX4YGBOxlh
 0Xwns8GG++gAVBar3yA6ehZDRrOpB3u+y7BacOiIynLh61PCbIqdzx4Is
 t3v5IEJaSC5QFuL9dc4CVqjoxiWQuqYYZYgi7acsvUHN13jQbcZ8D845A
 U3CXmrsWX2dTVfX5a6kgEUlB9OLUyhLbJK1x3eUpaeektkYCnu0IiUyKX
 gg10AG7vGG8qT2PzDWPV3yaD6PQWz6m8r4GyBNkHTVdTPwuAHwvT35Bsx
 R5nlrdWFUkokhnj+vhlLaaVsqK3ViDk+yV8hccbXI1b3lnxLcRBtyEZ5Y g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="326595421"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="326595421"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 04:58:05 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="682185114"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.153])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 04:58:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220921211525.10675-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220921211525.10675-1-ville.syrjala@linux.intel.com>
 <20220921211525.10675-4-ville.syrjala@linux.intel.com>
Date: Thu, 22 Sep 2022 14:57:45 +0300
Message-ID: <87mtar62py.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Pimp DPLL ref/unref debugs
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

On Thu, 22 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We currently have a debug message in intel_reference_shared_dpll()
> but no counterpart in intel_unreference_shared_dpll(). Add one.
>
> Switch to the [CRTC:...] notation for the pipe name while at it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index e5fb66a5dd02..c21818cb6fe2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -384,20 +384,25 @@ intel_reference_shared_dpll(struct intel_atomic_sta=
te *state,
>  	if (shared_dpll[id].pipe_mask =3D=3D 0)
>  		shared_dpll[id].hw_state =3D *pll_state;
>=20=20
> -	drm_dbg(&i915->drm, "using %s for pipe %c\n", pll->info->name,
> -		pipe_name(crtc->pipe));
> -
>  	shared_dpll[id].pipe_mask |=3D BIT(crtc->pipe);
> +
> +	drm_dbg(&i915->drm, "[CRTC:%d:%s] reserving %s\n",
> +		crtc->base.base.id, crtc->base.name, pll->info->name);


drm_dbg_kms while at it?

>  }
>=20=20
>  static void intel_unreference_shared_dpll(struct intel_atomic_state *sta=
te,
>  					  const struct intel_crtc *crtc,
>  					  const struct intel_shared_dpll *pll)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  	struct intel_shared_dpll_state *shared_dpll;
>=20=20
>  	shared_dpll =3D intel_atomic_get_shared_dpll_state(&state->base);
> +
>  	shared_dpll[pll->info->id].pipe_mask &=3D ~BIT(crtc->pipe);
> +
> +	drm_dbg(&i915->drm, "[CRTC:%d:%s] releasing %s\n",
> +		crtc->base.base.id, crtc->base.name, pll->info->name);
>  }
>=20=20
>  static void intel_put_dpll(struct intel_atomic_state *state,

--=20
Jani Nikula, Intel Open Source Graphics Center
