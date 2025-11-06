Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B89F3C3A617
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 11:53:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C8A010E891;
	Thu,  6 Nov 2025 10:53:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M/O5H5+R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A443A10E88D;
 Thu,  6 Nov 2025 10:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762426391; x=1793962391;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=2/C5ktd02A/6CpLiWfrZ8T3MWg+/L5i2JvIr2/9VPuY=;
 b=M/O5H5+R7YYQ5os8+6y7Qy530j1r6d1D7rBDOoeuc1aQZJqWdLIOZLUD
 i7ij4cp1CBMfAi5xyaqOrpj1WhjezlqSATGewxktI1pN/V92a1icI0Frf
 HO9d1n9WENJUKDktwSPCmBoVZ+CrRah+Y3amU0VWZMWxoTojFRgdZFi1m
 gDbs0Bqd9BJw2xLt22ksvAGAKrf+TQ3VYSyD+hZ54FwHJxbYSwUewXDCg
 eCQd9TFc546JrlP2LP5tRLI+sMLN8ndFZKFTJPQoOr8egk6YlW3BWwwVU
 P91c9dR2WFCUwKPB28QD8JCDuwmui8qYhGSpCh+9PvYWEpTfjZSH3n8f6 Q==;
X-CSE-ConnectionGUID: IWIzlGgFSvCr5xVzGfCvUg==
X-CSE-MsgGUID: sTRk9MpwSrelwPv6oylAwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64655653"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="64655653"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 02:53:10 -0800
X-CSE-ConnectionGUID: ILR1T8xdTE+p+JWNjHHdXQ==
X-CSE-MsgGUID: tw8fQ4t0Qw6VLPimdE9wUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187672524"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 02:53:08 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH 1/7] drm/i915/cx0: Undo the unjustified timeout change
In-Reply-To: <20251105190433.16434-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-2-ville.syrjala@linux.intel.com>
Date: Thu, 06 Nov 2025 12:53:05 +0200
Message-ID: <6a1805606fe7963cc5ee998401a22c6b71476fe0@intel.com>
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

On Wed, 05 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Undo the bogus timeout change to
> intel_cx0_powerdown_change_sequence(). If this was intentional
> then it should have been justifie in the commit message.
>
> This is also now abusing intel_de_wait_custom() in way that
> prevents future conversion to poll_timeout_us().
>
> Fixes: fc9be0a10ca4 ("drm/i915/ltphy: Add a wrapper for LT Phy powerdown =
change sequence")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index b3b506d0e040..e7fe974129fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2830,7 +2830,7 @@ void intel_cx0_powerdown_change_sequence(struct int=
el_encoder *encoder,
>  	/* Update Timeout Value */
>  	if (intel_de_wait_custom(display, buf_ctl2_reg,
>  				 intel_cx0_get_powerdown_update(lane_mask), 0,
> -				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 2, NULL))
> +				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
>  		drm_warn(display->drm,
>  			 "PHY %c failed to bring out of Lane reset after %dus.\n",
>  			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);

--=20
Jani Nikula, Intel
