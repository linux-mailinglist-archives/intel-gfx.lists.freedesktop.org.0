Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EE99A9C5F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 10:25:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A1CC10E617;
	Tue, 22 Oct 2024 08:25:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="khiaEk6H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5169910E617
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 08:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729585552; x=1761121552;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=XZvvU8nu89D12nuPBZM4U8Hvfm+327U81f2uq1UREPw=;
 b=khiaEk6HD4wz4Mncnww75lKK82qQynfL/IMoaQWLuJK8/LPYvM8PihLR
 AdJPX2+36nmPZjd3/L2Y82gj9EtavbBv1EbK9ZLx4qqgORPqbKgJWB7ZZ
 CSddvx+gyYRAjLBf15g+g4/A8NYZrfWWABnk3plLB3RnRcLIetIynwETl
 TBzFFTbhCHQUbZGXlwrICMI1nGV5fxoyCOF23wZ4kXyg01AC3qUgo5Nmg
 UL2eGeK8uJSMOv+LjZBwFiL+8hEhl3QbHki6Jm3LtezB460DWS4sQijkN
 oR41JJGOt8ezGYB9eqSHc+rWH0rCCa0GxTVF+RcpYh7YzHJY9bAbgIpjI Q==;
X-CSE-ConnectionGUID: LrnAvu3mTgOgq4Oh6xygTg==
X-CSE-MsgGUID: CS4Mb8NLR5aZGSt6MQbrCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="29307828"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="29307828"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:25:52 -0700
X-CSE-ConnectionGUID: 2NIc2VhcQ6GJFCRsEUkoHw==
X-CSE-MsgGUID: ebQ+t3QoSwmEp+tj2PcSZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79428624"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:25:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 5/9] drm/i915/pfit: Reject cloning when using pfit on
 ILK-BDW
In-Reply-To: <20241016143134.26903-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
 <20241016143134.26903-6-ville.syrjala@linux.intel.com>
Date: Tue, 22 Oct 2024 11:25:48 +0300
Message-ID: <87ed48wnlf.fsf@intel.com>
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

On Wed, 16 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The panel fitter lives inside the pipe and so would affect all cloned
> outputs. However the relevant properties (scaling mode, TV margins)
> are per-connector so we could end up with a situation where each cloned
> output wants a different pfit configuration. Let's just reject pfit
> usage with cloning entirely.
>
> Currently not an issue as we don't yet expose the TV margin
> properties, but if/when we add those to HDMI we could end up
> in this situation. For eDP/DP we don't support cloning anyyway.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 27 ++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index dc843892b01b..593e41907d53 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -474,6 +474,29 @@ static int intel_pch_pfit_check_timings(const struct=
 intel_crtc_state *crtc_stat
>  	return 0;
>  }
>=20=20
> +static int intel_pch_pfit_check_cloning(const struct intel_crtc_state *c=
rtc_state)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	/*
> +	 * The panel fitter is in the pipe and thus would affect every
> +	 * cloned output. The relevant properties (scaling mode, TV
> +	 * margins) are per-connector so we'd have to make sure each
> +	 * output sets them up identically. Seems like a very niche use
> +	 * case so let's just reject cloning entirely when pfit is used.
> +	 */
> +	if (crtc_state->uapi.encoder_mask &&
> +	    !is_power_of_2(crtc_state->uapi.encoder_mask)) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] no pfit when cloning\n",
> +			    crtc->base.base.id, crtc->base.name);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  /* adjusted_mode has been preset to be the panel's fixed mode */
>  static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state)
> @@ -564,6 +587,10 @@ static int pch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>  	if (ret)
>  		return ret;
>=20=20
> +	ret =3D intel_pch_pfit_check_cloning(crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	return 0;
>  }

--=20
Jani Nikula, Intel
