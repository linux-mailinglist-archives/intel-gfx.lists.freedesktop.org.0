Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE7C7EA003
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 16:33:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5281B10E3A8;
	Mon, 13 Nov 2023 15:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49DCC10E3A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 15:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699889589; x=1731425589;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=uKEDRFeEkMS/wD0u8PgB/OHKDjW4Jiipk2Eb2UJmK8k=;
 b=JnftCjfhwQgfUWYi4a+z3XaH7SwpmrqvAKlaAGQws/58UVWTleXgLRrT
 lYnLiMV1q0hNLnWH5NS1vJ6oSzHYS5gErdJM+ML65ePPqSkLHdrPZhGj9
 M4Zc4K0dAjk+AzcoHoTqr5xkz755+LjKe20/h9lDsOc8UWPju+qHSHY8V
 +JQeJQ40GcJh9y1H0/g1IMqmKcqMOZPx+tTQ7cNEnpPu55hA1scLcszwP
 g9dLmIkbZELgxDRPeY95NOWK2ZE38Fd6H2tO6Ik4LMdU7Z/y62HsKnHee
 iMv/egwuCHGewCFhQjqfbQ5sDAjXDt5WzpHI1S071opkFogXZHx2HbHmS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="12005848"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="12005848"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:33:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="12132525"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:33:08 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231106211915.13406-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
 <20231106211915.13406-3-ville.syrjala@linux.intel.com>
Date: Mon, 13 Nov 2023 17:33:04 +0200
Message-ID: <87cywdvfbj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915: Call
 intel_pre_plane_updates() also for pipes getting enabled
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

On Mon, 06 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We used to call intel_pre_plane_updates() for any pipe going through
> a modeset whether the pipe was previously enabled or not. This in
> fact needed to apply all the necessary clock gating workarounds/etc.
> Restore the correct behaviour.
>
> Fixes: 39919997322f ("drm/i915: Disable all planes before modesetting any=
 pipes")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f24c410cbd8f..dad8dac0ebbe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6856,10 +6856,11 @@ static void intel_commit_modeset_disables(struct =
intel_atomic_state *state)
>  		if (!intel_crtc_needs_modeset(new_crtc_state))
>  			continue;
>=20=20
> +		intel_pre_plane_update(state, crtc);
> +
>  		if (!old_crtc_state->hw.active)
>  			continue;
>=20=20
> -		intel_pre_plane_update(state, crtc);
>  		intel_crtc_disable_planes(state, crtc);
>  	}

--=20
Jani Nikula, Intel
