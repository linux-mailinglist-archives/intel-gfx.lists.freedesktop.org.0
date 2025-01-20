Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B36F8A170BA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 17:50:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57D3810E08B;
	Mon, 20 Jan 2025 16:50:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kKEWyqT3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C76D10E08B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 16:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737391802; x=1768927802;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6n43JfpSRmoNQ6I5nUqwkzIjKwv7wPx2+MdNc2mGPLQ=;
 b=kKEWyqT33h/YR3WwvBK7X0yZVQW7ToVYAxju3ZMd1puka+fVHO9H95Qv
 PDXlSzpO44FH+uIY0MQaU3Et+iSx9QlcNQGktKW6ykPi/4dSEDmDCqBAf
 cExF2nW2nhTNu+h1Un10EyKl8hZmkXfGNmnc2DSdyrsaRaTwj8ZPWRQHd
 gZS1Y2/zMzRD+ICSbRimKl/Paj8iWCaKQou5mjjoiEUD9BTCEKjh9kn1/
 W5adJozIHBJNhLeIFSpu59jO7wk1VEDaRpRTI+2+3TdShJkI5KYwZxsAP
 HdFh0G1/hh/ZUf4g/OlEQQAjmCbJ+IZnvYLWXpUJbKRPSj4ZKvPYEFUxN g==;
X-CSE-ConnectionGUID: /ynYfW4qRgGRZ2P/ttsXEQ==
X-CSE-MsgGUID: wQutmlI3Szmn8H3u6BM/jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="48289608"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="48289608"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 08:50:01 -0800
X-CSE-ConnectionGUID: hkCiiVqfTbakECWFpBNyVQ==
X-CSE-MsgGUID: NxdNMr85SWeEB4CzhqrMdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110618208"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 08:49:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Paz Zcharya <pazz@chromium.org>
Subject: Re: [PATCH 3/8] drm/i915: Update TRANS_SET_CONTEXT_LATENCY during
 LRR updates
In-Reply-To: <20250116201637.22486-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
 <20250116201637.22486-4-ville.syrjala@linux.intel.com>
Date: Mon, 20 Jan 2025 18:49:54 +0200
Message-ID: <87zfjlpgzx.fsf@intel.com>
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

On Thu, 16 Jan 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Update TRANS_SET_CONTEXT_LATENCY in intel_set_transcoder_timings_lrr()
> as well. While for actual LRR updates this should not change, I want
> to reuse this code to also sanitize the vblank delay during boot,
> and in that case we do need to update this.
>
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1260e394afc7..ac6fc177099f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2930,6 +2930,10 @@ static void intel_set_transcoder_timings_lrr(const=
 struct intel_crtc_state *crtc
>  	}
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 13) {
> +		intel_de_write(dev_priv,
> +			       TRANS_SET_CONTEXT_LATENCY(dev_priv, cpu_transcoder),
> +			       crtc_vblank_start - crtc_vdisplay);
> +
>  		/*
>  		 * VBLANK_START not used by hw, just clear it
>  		 * to make it stand out in register dumps.

--=20
Jani Nikula, Intel
