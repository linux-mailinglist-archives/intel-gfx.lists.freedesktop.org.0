Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4E6B2EFEA
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 09:42:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B0FC10E898;
	Thu, 21 Aug 2025 07:42:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q9wf7+XI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE6D710E898;
 Thu, 21 Aug 2025 07:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755762150; x=1787298150;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=d/YWryRjJULq6ZmXN4ecwFgBk6vFJwLLXx3nXdMwsYY=;
 b=Q9wf7+XIk60ASiORmp+2088nTcSxdLchiPmpPJEmgZoLTXacm7u2lGhh
 H87OdD9EZXpjCYuUljQeFQl0nYUwixwMApdYiSe1m1cgdx0ZYGQjSTyt5
 Ry432bAyfmHvrO8pC74ddFpS4xXGkOr2oDpWcnhw3ekHj0GCdnBnv8FkP
 pblNJpMYB+y3lZV5B+yb4/fHl7Un5NrM+4rhMpjq/YEwYI4lmZ4NNzCvo
 M9mNyPbsaPD7aSeIOfsphIjM1yuGnHf426G3J/QsnmHOtdM4aplV/lVTt
 bk720azfUeaaWCtyxhi7XYHw+kZJgB7gdObCekrtWqlwk8UCiIi5GXu7k w==;
X-CSE-ConnectionGUID: yZoHSdQ2SyqiyL45ZIpVOA==
X-CSE-MsgGUID: +VvizsnUSYKdwvpSV/xtqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="61855566"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="61855566"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 00:42:29 -0700
X-CSE-ConnectionGUID: rLrL8kY3SiaDJnCfdI9G7A==
X-CSE-MsgGUID: D86m9Jw7SyWzxIDp1gK05g==
X-ExtLoop1: 1
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.126])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 00:42:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: check drm_mode_vrefresh return value
In-Reply-To: <20250821045918.17757-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250821045918.17757-1-jouni.hogander@intel.com>
 <20250821045918.17757-2-jouni.hogander@intel.com>
Date: Thu, 21 Aug 2025 10:42:25 +0300
Message-ID: <bb9915f57a7158030af13196cfd9c755afaf59ad@intel.com>
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

On Thu, 21 Aug 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Check drm_mode_vrefresh return value sanity before using it in
> intel_get_frame_time_us.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 5addde63168e..8cc2314fac6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1116,11 +1116,16 @@ transcoder_has_psr2(struct intel_display *display=
, enum transcoder cpu_transcode
>=20=20
>  static u32 intel_get_frame_time_us(const struct intel_crtc_state *crtc_s=
tate)
>  {
> +	int vrefresh;
> +
>  	if (!crtc_state->hw.active)
>  		return 0;
>=20=20
> -	return DIV_ROUND_UP(1000 * 1000,
> -			    drm_mode_vrefresh(&crtc_state->hw.adjusted_mode));
> +	vrefresh =3D drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
> +	if (vrefresh <=3D 0)
> +		return 0;
> +
> +	return DIV_ROUND_UP(1000 * 1000, vrefresh);
>  }
>=20=20
>  static void psr2_program_idle_frames(struct intel_dp *intel_dp,

--=20
Jani Nikula, Intel
