Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55716749768
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 10:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C2B10E46D;
	Thu,  6 Jul 2023 08:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86C8910E46D
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 08:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688631731; x=1720167731;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=aYmUxj8fM3NwRdDwv5zjHsrVUcFczdMgBkOH6VqSAcs=;
 b=BAmYqxqZnSx/an7ROgzkY7wmR/oMwmTqru4bhDgtcExBVjOiED0NDV1M
 WMLx2UQf6XDsMjig/cX8TznFL5+M4czNaj0Pcu3dMQYh8aQikJaRUmBD0
 kvzdNnJCgA4jMc9wSTyJ6x6D2QljewrDeH6dXsRfJFVQeORFVzK16LJ4s
 TR7Q2xBPor++TJUm0PLpCeTuFObjpL2sC+jgAcs6nAdqav+Co8wtO52bj
 ZEfXI4/lD99M1fajRRm6pGnFIOEaCuW41ltxusqhCqVLJ6p/BsOrLRekH
 uLPt5hx9f3q5nhtSXPX342l8fBGPvnuPvZeme3lLo/jOHXMfvjQQm3Qzt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="348326761"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="348326761"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:22:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="966127066"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="966127066"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:22:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230705202122.17915-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
 <20230705202122.17915-7-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jul 2023 11:22:05 +0300
Message-ID: <87a5w9zbyq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915/sdvo: Pick the TV dotclock
 from adjusted_mode
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

On Wed, 05 Jul 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> port_clock is what the encoder/dpll code is supposed to calculate,
> it is not the input clock. Use the dotclock as the target we're
> trying to achieve instead.
>
> TODO: the SDVO TV clocking is a mess atm and needs further work
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 76eed11e9fed..75a8e5583358 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1272,7 +1272,7 @@ intel_sdvo_get_preferred_input_mode(struct intel_sd=
vo *intel_sdvo,
>  static void i9xx_adjust_sdvo_tv_clock(struct intel_crtc_state *pipe_conf=
ig)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(pipe_config->uapi.crtc->d=
ev);
> -	unsigned dotclock =3D pipe_config->port_clock;
> +	unsigned int dotclock =3D pipe_config->hw.adjusted_mode.crtc_clock;
>  	struct dpll *clock =3D &pipe_config->dpll;
>=20=20
>  	/*

--=20
Jani Nikula, Intel Open Source Graphics Center
