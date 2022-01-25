Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E02B149ABCA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 06:37:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D97CF10E4D0;
	Tue, 25 Jan 2022 05:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 386F110E4D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 05:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643089032; x=1674625032;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=CjQY31LHYeFf7LtuMkUQcOa7CedBjXfphWLP+g0NtkE=;
 b=jaoxQLa+cbZ6Yw+ki+HZMOQbIigPeGP2aNfOOgKUUlX+4jNXHbDrVcKW
 KdPn0DZQbvuF+xPywyK2eBzKLOel6ZxtEyHf68pbWctvK14XPo7SJ+YJo
 KFqx3lKPmcMWIPR3Wiw4q6hAfFNxQcAv3ttyaTgt+wOzvS3SAIk4Z+OkL
 QPWOIebD9nWDjklwOYo7jR1N2/lhImuW3YY7AqZdyoeEV7Y1/Tgg0zsO7
 IZc230p4X5HoK8Fz28jeDwkEOSE/tdFfQ/We0SL+IX1D/1kbQVxU35z8H
 rQNos4KGIjygtjVBQYQYN1jaGbZupxI3F/nRW7uk6Am5OgcRsYox0g1Fp g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="246169748"
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="246169748"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 21:37:09 -0800
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="520246161"
Received: from skirillo-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.32.77])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 21:37:07 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
Date: Tue, 25 Jan 2022 07:36:51 +0200
Message-ID: <87zgnk1imk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Skip dsc readout if the
 transcoder is disabled
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

On Mon, 24 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Tryingf to do readout when we don't even have a cpu transcoder
> is not a great idea. Don't do it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 80bc52425e47..e32a7a1e7ba0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4380,13 +4380,13 @@ static bool hsw_get_pipe_config(struct intel_crtc=
 *crtc,
>  		active =3D true;
>  	}
>=20=20
> +	if (!active)
> +		goto out;
> +
>  	intel_dsc_get_config(pipe_config);
>  	if (DISPLAY_VER(dev_priv) >=3D 13 && !pipe_config->dsc.compression_enab=
le)
>  		intel_uncompressed_joiner_get_config(pipe_config);
>=20=20
> -	if (!active)
> -		goto out;
> -
>  	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
>  	    DISPLAY_VER(dev_priv) >=3D 11)
>  		intel_get_transcoder_timings(crtc, pipe_config);

--=20
Jani Nikula, Intel Open Source Graphics Center
