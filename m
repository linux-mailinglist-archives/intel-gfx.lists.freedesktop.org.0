Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF57A170B5
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 17:48:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD11510E063;
	Mon, 20 Jan 2025 16:48:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gsg7TzSM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A60B10E44B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 16:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737391716; x=1768927716;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=5Ru5PviGc6LL9pWCjKQ1JDC9qT965Z6PpAVl3NVViEc=;
 b=Gsg7TzSMmxL/NXhbWw+9r/6Y5Yq8XGbM2AklVy6DADp2f6YitWEOy5B3
 8TVS4ioQ2w3PCz8BqAvqh9cpbnKh/kcRYaGoWyu1mJ5LCjOOyTjC9x3LQ
 xfIy36Ir5D8E2nICBmb3OInG2RIiEP0i99WO5V4vS8TYvESB+F+fYgGIa
 LJJCpKosN7S6+M25H/y3f8pK0nDtzoFFuowBKQmAdYeidX5TcwhgyXOTP
 mJkg1xD4KvJ1Wdd9hC5CcRLBQ6lsYhbJoBM2DaPrsZSl3cUAv2gB7OAmY
 3z9Qmf94a6wtx3abRcRQi+NJLu1KfR0t+xgSGkK7LGGXLdq7ZmQjn5SWs g==;
X-CSE-ConnectionGUID: QwAD7CrsTbKDz8Q6sq+7IA==
X-CSE-MsgGUID: 7P3wmE5fS9uHYg2A6u7x8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="48386204"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="48386204"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 08:48:36 -0800
X-CSE-ConnectionGUID: 9jgap++5Q1K3AILCD6E/Jg==
X-CSE-MsgGUID: x6wlRXzgRxiUo0MCJm7KbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="111551576"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 08:48:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Paz Zcharya <pazz@chromium.org>
Subject: Re: [PATCH 1/8] drm/i915: Keep TRANS_VBLANK.vblank_start==0 on ADL+
 even when doing LRR updates
In-Reply-To: <20250116201637.22486-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
 <20250116201637.22486-2-ville.syrjala@linux.intel.com>
Date: Mon, 20 Jan 2025 18:48:31 +0200
Message-ID: <875xm9qvmo.fsf@intel.com>
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
> intel_set_transcoder_timings() will set TRANS_VBLANK.vblank_start to 0
> for clarity on ADL+ (non-DSI) because the hardware no longer uses that
> value. So the same in intel_set_transcoder_timings_lrr() to make sure
> the registers stay constitent even when doing LRR timing updates.
>
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Hmm, so how come this doesn't warrant a change in readout?

Apparently because intel_get_transcoder_timings() overwrites the read
value for display 13+ and non-dsi. Hrmh.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f5d2eacce119..5ba3b2d658e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2923,6 +2923,14 @@ static void intel_set_transcoder_timings_lrr(const=
 struct intel_crtc_state *crtc
>  	crtc_vblank_start =3D adjusted_mode->crtc_vblank_start;
>  	crtc_vblank_end =3D adjusted_mode->crtc_vblank_end;
>=20=20
> +	if (DISPLAY_VER(dev_priv) >=3D 13) {
> +		/*
> +		 * VBLANK_START not used by hw, just clear it
> +		 * to make it stand out in register dumps.
> +		 */
> +		crtc_vblank_start =3D 1;
> +	}
> +
>  	drm_WARN_ON(&dev_priv->drm, adjusted_mode->flags & DRM_MODE_FLAG_INTERL=
ACE);
>=20=20
>  	/*

--=20
Jani Nikula, Intel
