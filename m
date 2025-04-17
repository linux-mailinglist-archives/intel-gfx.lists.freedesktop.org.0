Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE88A91D4B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 15:07:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 386F910EAFE;
	Thu, 17 Apr 2025 13:07:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kfV44Ys8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DB0010EAFE
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Apr 2025 13:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744895234; x=1776431234;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=z2M8/UICOjVysVGO9Mai9ajjIMC5/gpOPmMp3janmHw=;
 b=kfV44Ys8ADrBg6tfpiU3KPHQsgO3qmcrhP9JS7jDWbec5vm4vf2rzq5d
 yhY0dg8trR40gGqNqc01QO7Dml9gF461//2XPx+D+iJoMqHi6USg0lrca
 3X+TZfcvfk3+iIsVPNEVD5Msc9N7lvQsv/CkRj2YzhTXm6n8Rgjf4AbE0
 /Rx0/WEaq2gG59cG5/VJUKdHuWqKt6o7qgWN/UqmhTo+lpj75nm12wKJ0
 02KtnmJ+t8OeoSpacIJRTvbGdJhrTRngmUzmp7+PU0OwCvVVWd6XdxyLy
 EcWWsZ7wpR1zG3eTuVrEQVQK5J6IWtg6V5CWp4sb/o5d3GmP00hHji7nr w==;
X-CSE-ConnectionGUID: zPZMKl24Siat0c8BhYNk5g==
X-CSE-MsgGUID: 1cF+FwViRlaDpGJT0DX73Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="57147771"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="57147771"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 06:05:59 -0700
X-CSE-ConnectionGUID: Uryn2Dw9QCajv7AXIu5ruA==
X-CSE-MsgGUID: cD6QDjJgSe+Ky3VA4m9nmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="161753969"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 06:05:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 5/6] drm/i915/vga: Nuke vga_redisable_power_on()
In-Reply-To: <20250417114454.12836-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
 <20250417114454.12836-6-ville.syrjala@linux.intel.com>
Date: Thu, 17 Apr 2025 16:05:52 +0300
Message-ID: <87fri7ndjj.fsf@intel.com>
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

On Thu, 17 Apr 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Now that intel_vga_disable() itself will print a debug
> message, intel_vga_redisable_power_on() is completely redudant.

*redundant

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> Get rid of it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_power_well.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_vga.c            | 13 +------------
>  drivers/gpu/drm/i915/display/intel_vga.h            |  1 -
>  3 files changed, 2 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/dr=
ivers/gpu/drm/i915/display/intel_display_power_well.c
> index b9b4359751cc..9641fb5b846b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1252,7 +1252,7 @@ static void vlv_display_power_well_init(struct inte=
l_display *display)
>  			intel_crt_reset(&encoder->base);
>  	}
>=20=20
> -	intel_vga_redisable_power_on(display);
> +	intel_vga_disable(display);
>=20=20
>  	intel_pps_unlock_regs_wa(display);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index 7ee689a9da92..d01de61105c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -74,17 +74,6 @@ void intel_vga_disable(struct intel_display *display)
>  	intel_de_posting_read(display, vga_reg);
>  }
>=20=20
> -void intel_vga_redisable_power_on(struct intel_display *display)
> -{
> -	i915_reg_t vga_reg =3D intel_vga_cntrl_reg(display);
> -
> -	if (!(intel_de_read(display, vga_reg) & VGA_DISP_DISABLE)) {
> -		drm_dbg_kms(display->drm,
> -			    "Something enabled VGA plane, disabling it\n");
> -		intel_vga_disable(display);
> -	}
> -}
> -
>  void intel_vga_redisable(struct intel_display *display)
>  {
>  	intel_wakeref_t wakeref;
> @@ -102,7 +91,7 @@ void intel_vga_redisable(struct intel_display *display)
>  	if (!wakeref)
>  		return;
>=20=20
> -	intel_vga_redisable_power_on(display);
> +	intel_vga_disable(display);
>=20=20
>  	intel_display_power_put(display, POWER_DOMAIN_VGA, wakeref);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.h b/drivers/gpu/drm/i=
915/display/intel_vga.h
> index 824dfc32a199..d0716782c1f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.h
> +++ b/drivers/gpu/drm/i915/display/intel_vga.h
> @@ -11,7 +11,6 @@ struct intel_display;
>  void intel_vga_reset_io_mem(struct intel_display *display);
>  void intel_vga_disable(struct intel_display *display);
>  void intel_vga_redisable(struct intel_display *display);
> -void intel_vga_redisable_power_on(struct intel_display *display);
>  int intel_vga_register(struct intel_display *display);
>  void intel_vga_unregister(struct intel_display *display);

--=20
Jani Nikula, Intel
