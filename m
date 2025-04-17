Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21027A91D03
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 14:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96AC210EAFC;
	Thu, 17 Apr 2025 12:53:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WgoObMBC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A92310EAFC
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Apr 2025 12:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744894429; x=1776430429;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=hwjse1T3GgyjbNULKoAVxJI0lUsg6luXlRhkoLxlWB8=;
 b=WgoObMBCVBzeJHArKMssj/NxJ0457RsgQTYeQYeVRqxZyG7Zlcgqno4t
 8A2Quac8nAiHV7HzuO8gRDcf3jQhdweslpXdBkNA+Ov+byttdF5Th3wYp
 sZ2Ymfo0bNrkzT0JeJOdTf2JZ9NxpdPbYPP2LDpj4MSRMsQlKqGcbrpHs
 uw8okNkyWc8R+esunmwq7SZwuGERqcI6aPHIUPSlFI0c1rqi5Y8hQIlkU
 +wvMjCizYWoXo/MM7VoCW/q8jkOZo2kLKR+DT5HGlYxdTeHgL1PbeA/7k
 9//9ZFzLZlKZtHThelWhEdHit9ZB0Onte1QGWzh2QCeBfTJkplTMY6Y2z g==;
X-CSE-ConnectionGUID: iaDOM4TzTHqyKzj1ifYWUA==
X-CSE-MsgGUID: LW5YYUGCReO1eDnPMfd3lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="57864006"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="57864006"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 05:53:49 -0700
X-CSE-ConnectionGUID: 7GBme3K7RGa5bOz7okuVZQ==
X-CSE-MsgGUID: pXfR5hgqSWeF+YTByTMh2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="161751041"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 05:53:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/6] drm/i915/vga: Include the current pipe in the VGA
 disable debug message
In-Reply-To: <20250417114454.12836-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
 <20250417114454.12836-5-ville.syrjala@linux.intel.com>
Date: Thu, 17 Apr 2025 15:53:44 +0300
Message-ID: <87ikn3ne3r.fsf@intel.com>
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
> Add some debugs to the VGA plane disable so that we can at least
> see from the logs when it happens (and on which pipe). I was curious
> about this at some point when I was seeing some random underruns
> near the time when we disable the VGA plane, but I think in the end
> that turned out to be a red herring.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vga.c | 29 +++++++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index 56047f701798..7ee689a9da92 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -12,6 +12,7 @@
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "intel_de.h"
> +#include "intel_display.h"
>  #include "intel_vga.h"
>  #include "intel_vga_regs.h"
>=20=20
> @@ -25,16 +26,42 @@ static i915_reg_t intel_vga_cntrl_reg(struct intel_di=
splay *display)
>  		return VGACNTRL;
>  }
>=20=20
> +static bool has_vga_pipe_sel(struct intel_display *display)
> +{
> +	if (display->platform.i845g ||
> +	    display->platform.i865g)
> +		return false;
> +
> +	if (display->platform.valleyview ||
> +	    display->platform.cherryview)
> +		return true;
> +
> +	return DISPLAY_VER(display) < 7;
> +}
> +
>  /* Disable the VGA plane that we never use */
>  void intel_vga_disable(struct intel_display *display)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
>  	i915_reg_t vga_reg =3D intel_vga_cntrl_reg(display);
> +	enum pipe pipe;
> +	u32 tmp;
>  	u8 sr1;
>=20=20
> -	if (intel_de_read(display, vga_reg) & VGA_DISP_DISABLE)
> +	tmp =3D intel_de_read(display, vga_reg);
> +	if (tmp & VGA_DISP_DISABLE)
>  		return;
>=20=20
> +	if (display->platform.cherryview)
> +		pipe =3D REG_FIELD_GET(VGA_PIPE_SEL_MASK_CHV, tmp);
> +	else if (has_vga_pipe_sel(display))
> +		pipe =3D REG_FIELD_GET(VGA_PIPE_SEL_MASK, tmp);
> +	else
> +		pipe =3D PIPE_A;
> +
> +	drm_dbg_kms(display->drm, "Disabling VGA plane on pipe %c\n",
> +		    pipe_name(pipe));
> +
>  	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
>  	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
>  	outb(0x01, VGA_SEQ_I);

--=20
Jani Nikula, Intel
