Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0E4CAF9EF
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:23:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BFCA10E1CC;
	Tue,  9 Dec 2025 10:23:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k09XIKMp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FF7010E1C7;
 Tue,  9 Dec 2025 10:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765275824; x=1796811824;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=veg5C2aubgfwsG+eIk6zf7/xqQvNeOga3Zl9KxtYqxI=;
 b=k09XIKMpykCyb/NafDc/3NlZmExSRPuTfAb9WyC4YUxNCWiCO7jWYlCm
 Zp/EUMNesbxrWWhFxcIFKUEZlaO8jd1JHDZZoCbfLKIJFusHRsYnOPXJh
 lFf9ifiqEM/lm8uanIXTd+BpKNQ2zE+kRkRRp53D668fimdVDLpp2fCQU
 co+iztYecmh1kI6652rHv8hFN+m3Y8ZxsL4fmZRK8+3159bnMZB5rPUSh
 Dk1QmCTWaAHTvA02Ma4Q2HfodMWJbh6rop56f+BIHjdxj1BDqJJw2j6/W
 0I6WjCfuMQ+dOmSHXBEoOuAkR1WIbAFfYwhEG01ZlginK0SREXZZPDeWP Q==;
X-CSE-ConnectionGUID: K2prZIlCS66PQWOGKMSLjQ==
X-CSE-MsgGUID: Huc2OHW+TxWYbAHhfdH5rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="67158808"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="67158808"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:23:44 -0800
X-CSE-ConnectionGUID: SAI4SqOWROmAwbUxqdNTOw==
X-CSE-MsgGUID: vrwtP7zeTGShXookExmD+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196653048"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:23:41 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 01/19] drm/i915/vga: Register vgaarb client later
In-Reply-To: <20251208182637.334-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-2-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:23:38 +0200
Message-ID: <ffced987dae21837148d7e9216e90e77b156c085@intel.com>
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

On Mon, 08 Dec 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently we register to vgaarb way too early. Thus it is
> possible that the entire VGA decode logic gets nuked via
> GMCH_CTRL before intel_vga_disable() has even disabled the
> VGA plane. This could even cause a system hang because
> we'll be unable to turn off the VGA plane gracefully.
>
> Move the vgaarb registration into intel_display_driver_register().
> I suppose we could do it a bit earlier (after intel_vga_disable()),
> but not convinced there's any point.
>
> Also the error handling here is pointless since the
> registration can't fail (unless the device isn't a VGA class
> in which case all VGA decode logic should aleady be disabled
> by the BIOS via GMCH_CTRL). But let's toss in a WARN to catch
> any future breakage of vga_client_register().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

After this, intel_vga_register() is only called for HAS_DISPLAY(), while
previously it was called unconditionally.

It's probably fine?

Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../drm/i915/display/intel_display_driver.c    | 18 +++++++-----------
>  drivers/gpu/drm/i915/display/intel_vga.c       |  7 ++-----
>  drivers/gpu/drm/i915/display/intel_vga.h       |  2 +-
>  3 files changed, 10 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 7e000ba3e08b..b149976f527b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -214,16 +214,12 @@ int intel_display_driver_probe_noirq(struct intel_d=
isplay *display)
>=20=20
>  	intel_bios_init(display);
>=20=20
> -	ret =3D intel_vga_register(display);
> -	if (ret)
> -		goto cleanup_bios;
> -
>  	intel_psr_dc5_dc6_wa_init(display);
>=20=20
>  	/* FIXME: completely on the wrong abstraction layer */
>  	ret =3D intel_power_domains_init(display);
>  	if (ret < 0)
> -		goto cleanup_vga;
> +		goto cleanup_bios;
>=20=20
>  	intel_pmdemand_init_early(display);
>=20=20
> @@ -235,7 +231,7 @@ int intel_display_driver_probe_noirq(struct intel_dis=
play *display)
>  	display->hotplug.dp_wq =3D alloc_ordered_workqueue("intel-dp", 0);
>  	if (!display->hotplug.dp_wq) {
>  		ret =3D -ENOMEM;
> -		goto cleanup_vga_client_pw_domain_dmc;
> +		goto cleanup_pw_domain_dmc;
>  	}
>=20=20
>  	display->wq.modeset =3D alloc_ordered_workqueue("i915_modeset", 0);
> @@ -307,11 +303,9 @@ int intel_display_driver_probe_noirq(struct intel_di=
splay *display)
>  	destroy_workqueue(display->wq.modeset);
>  cleanup_wq_dp:
>  	destroy_workqueue(display->hotplug.dp_wq);
> -cleanup_vga_client_pw_domain_dmc:
> +cleanup_pw_domain_dmc:
>  	intel_dmc_fini(display);
>  	intel_power_domains_driver_remove(display);
> -cleanup_vga:
> -	intel_vga_unregister(display);
>  cleanup_bios:
>  	intel_bios_driver_remove(display);
>=20=20
> @@ -566,6 +560,8 @@ void intel_display_driver_register(struct intel_displ=
ay *display)
>  	if (!HAS_DISPLAY(display))
>  		return;
>=20=20
> +	intel_vga_register(display);
> +
>  	/* Must be done after probing outputs */
>  	intel_opregion_register(display);
>  	intel_acpi_video_register(display);
> @@ -658,8 +654,6 @@ void intel_display_driver_remove_nogem(struct intel_d=
isplay *display)
>=20=20
>  	intel_power_domains_driver_remove(display);
>=20=20
> -	intel_vga_unregister(display);
> -
>  	intel_bios_driver_remove(display);
>  }
>=20=20
> @@ -687,6 +681,8 @@ void intel_display_driver_unregister(struct intel_dis=
play *display)
>=20=20
>  	acpi_video_unregister();
>  	intel_opregion_unregister(display);
> +
> +	intel_vga_unregister(display);
>  }
>=20=20
>  /*
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index c45c4bbc3f95..f13734cfd904 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -135,7 +135,7 @@ static unsigned int intel_gmch_vga_set_decode(struct =
pci_dev *pdev, bool enable_
>  		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
>  }
>=20=20
> -int intel_vga_register(struct intel_display *display)
> +void intel_vga_register(struct intel_display *display)
>  {
>=20=20
>  	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
> @@ -150,10 +150,7 @@ int intel_vga_register(struct intel_display *display)
>  	 * vga_client_register() fails with -ENODEV.
>  	 */
>  	ret =3D vga_client_register(pdev, intel_gmch_vga_set_decode);
> -	if (ret && ret !=3D -ENODEV)
> -		return ret;
> -
> -	return 0;
> +	drm_WARN_ON(display->drm, ret && ret !=3D -ENODEV);
>  }
>=20=20
>  void intel_vga_unregister(struct intel_display *display)
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.h b/drivers/gpu/drm/i=
915/display/intel_vga.h
> index 16d699f3b641..80084265c6cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.h
> +++ b/drivers/gpu/drm/i915/display/intel_vga.h
> @@ -10,7 +10,7 @@ struct intel_display;
>=20=20
>  void intel_vga_reset_io_mem(struct intel_display *display);
>  void intel_vga_disable(struct intel_display *display);
> -int intel_vga_register(struct intel_display *display);
> +void intel_vga_register(struct intel_display *display);
>  void intel_vga_unregister(struct intel_display *display);
>=20=20
>  #endif /* __INTEL_VGA_H__ */

--=20
Jani Nikula, Intel
