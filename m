Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 853258C9B6B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 12:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB01110E272;
	Mon, 20 May 2024 10:37:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f7cN4kKh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C55210E272
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 10:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716201470; x=1747737470;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=tEIBJiTVNBHEx+CZoNI1uMp8Ec8nN8jjaFjekETEmqg=;
 b=f7cN4kKhy0aJbrOnTJxaWUAxoMbHqoYl/lGGk1qNZPUp95lB6zST4fll
 Wa5vPFcmp549GfQg7bzaeESDlkzPYyfTWagyafKZlYsag02DOEK1zwTy/
 jAu24jEM6OB/5swRop+Oo6kUtYdD9fdQ3krXuz/F8GDB4ZBonmTKB09Eh
 mxX1EabtLfKmMbzeMnSQzFKotSiHP6+Apwth2U2pmjCInIxCKiBfjDs9a
 7/fw3uzsJ2xW1BtWqolFmbNXoSOV9b/2tJyF+6q832yl8F0r+p7vFuia6
 0/CrVucVzajhf0tRda+qh9EVe9aVRpO+4JAT5177obmDA3PSICXSx3Eom Q==;
X-CSE-ConnectionGUID: lAlcy+zvSImtgMQ61Y8hiQ==
X-CSE-MsgGUID: /HbX95foReuvAuOSiPPyOA==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="12261965"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="12261965"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 03:37:31 -0700
X-CSE-ConnectionGUID: PMRs00iUSfWGJQeSsvWAJg==
X-CSE-MsgGUID: 4GBBRNNhRsGtraGMjPSDPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="33094715"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 03:37:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Bump max TMDS bitrate to 6 Gbps on ADL/DG2+
In-Reply-To: <20240516182715.27119-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516182715.27119-1-ville.syrjala@linux.intel.com>
Date: Mon, 20 May 2024 13:37:26 +0300
Message-ID: <87le44u5uh.fsf@intel.com>
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

On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Bspec lists the mas TMDS bitrate as 6 Gbps on ADL/DG2.

*max

There's also ADL-S with display 12 and 6 Gbps support?

BR,
Jani.

> Bump our limit to match.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 0faf2afa1c09..bd0ba4edcd1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1784,7 +1784,9 @@ static int intel_hdmi_source_max_tmds_clock(struct =
intel_encoder *encoder)
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	int max_tmds_clock, vbt_max_tmds_clock;
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 10)
> +	if (DISPLAY_VER(dev_priv) >=3D 13)
> +		max_tmds_clock =3D 600000;
> +	else if (DISPLAY_VER(dev_priv) >=3D 10)
>  		max_tmds_clock =3D 594000;
>  	else if (DISPLAY_VER(dev_priv) >=3D 8 || IS_HASWELL(dev_priv))
>  		max_tmds_clock =3D 300000;

--=20
Jani Nikula, Intel
