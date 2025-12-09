Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F608CAFAFD
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:53:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1DC010E506;
	Tue,  9 Dec 2025 10:53:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LR5xgHxt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78E410E504;
 Tue,  9 Dec 2025 10:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765277628; x=1796813628;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ohGTuCLS+XCcyaXkD42TTQtpb14ksLYCwZ2gRz78WVc=;
 b=LR5xgHxtidC6wO4inF5bId+PJTacTPouDssTRU04K4l+g9Qp6ppi/CDh
 Cj0umZBLNXhQh9Wudq5pcYlmDCA4myHHJ8wFVqsZlXum5Od+sNQt8zAF0
 d78t7NTfiwebhUODF+YPDFz641uYMXMQKL7kzb1fGlHcI2MEjGPVjjvj3
 I9dURtL4vb96g5MRUcW8sSCkCg8cWEHMftbCM4L6qvlHtzLfkeLfVL0Wc
 fWUlgmBiE4GvaH1EktQX8UixQtJ8P9EmxoWBVDx0Wm/qHn2FbGbMPqltT
 slwXydNze0mZldwKcr7cZ+sKDM8PpUDkBMlN07PkWS/V0NIVrr6VK/0PP w==;
X-CSE-ConnectionGUID: d1A2d2MBSlqpbdW1hBaTfA==
X-CSE-MsgGUID: FNBtH/W/SOeo95cm+GW8kA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="92706168"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="92706168"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:53:47 -0800
X-CSE-ConnectionGUID: RX9i3RsmRSq5NggITzj6Pg==
X-CSE-MsgGUID: 3kBudJ4XQv2Norv8Of96ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196210139"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:53:45 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 13/19] drm/i915/vga: Use MMIO for VGA registers on pre-g4x
In-Reply-To: <20251208182637.334-14-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-14-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:53:42 +0200
Message-ID: <269fc4773ae53374b2851b6a467b31e04ffa0dc4@intel.com>
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
> On pre-g4x VGA registers are accessible via MMIO. Make use of
> it so that we can avoid dealing with the VGA arbiter.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vga.c | 33 ++++++++++++++++--------
>  1 file changed, 22 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index c1942520c765..9e1f3ab632d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -58,6 +58,12 @@ static bool has_vga_pipe_sel(struct intel_display *dis=
play)
>  	return DISPLAY_VER(display) < 7;
>  }
>=20=20
> +static bool has_vga_mmio_access(struct intel_display *display)
> +{
> +	/* WaEnableVGAAccessThroughIOPort:ctg+ */
> +	return DISPLAY_VER(display) < 5 && !display->platform.g4x;
> +}
> +
>  static bool intel_pci_has_vga_io_decode(struct pci_dev *pdev)
>  {
>  	u16 cmd =3D 0;
> @@ -106,11 +112,12 @@ static bool intel_pci_bridge_set_vga(struct pci_dev=
 *pdev, bool enable)
>  	return old & PCI_BRIDGE_CTL_VGA;
>  }
>=20=20
> -static bool intel_vga_get(struct intel_display *display)
> +static bool intel_vga_get(struct intel_display *display, bool mmio)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
>=20=20
> -	/* WaEnableVGAAccessThroughIOPort:ctg+ */
> +	if (mmio)
> +		return false;
>=20=20
>  	/*
>  	 * Bypass the VGA arbiter on the iGPU and just enable
> @@ -129,10 +136,13 @@ static bool intel_vga_get(struct intel_display *dis=
play)
>  	return intel_pci_set_io_decode(pdev, true);
>  }
>=20=20
> -static void intel_vga_put(struct intel_display *display, bool io_decode)
> +static void intel_vga_put(struct intel_display *display, bool io_decode,=
 bool mmio)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
>=20=20
> +	if (mmio)
> +		return;
> +
>  	/* see intel_vga_get() */
>  	intel_pci_set_io_decode(pdev, io_decode);
>=20=20
> @@ -161,6 +171,7 @@ void intel_vga_disable(struct intel_display *display)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
>  	i915_reg_t vga_reg =3D intel_vga_cntrl_reg(display);
> +	bool mmio =3D has_vga_mmio_access(display);
>  	bool io_decode;
>  	u8 msr, sr1;
>  	u32 tmp;
> @@ -205,16 +216,16 @@ void intel_vga_disable(struct intel_display *displa=
y)
>  			goto reset_vgacntr;
>  	}
>=20=20
> -	io_decode =3D intel_vga_get(display);
> +	io_decode =3D intel_vga_get(display, mmio);
>=20=20
> -	drm_WARN_ON(display->drm, !intel_pci_has_vga_io_decode(pdev));
> +	drm_WARN_ON(display->drm, !mmio && !intel_pci_has_vga_io_decode(pdev));
>=20=20
> -	intel_vga_write(display, VGA_SEQ_I, 0x01, false);
> -	sr1 =3D intel_vga_read(display, VGA_SEQ_D, false);
> +	intel_vga_write(display, VGA_SEQ_I, 0x01, mmio);
> +	sr1 =3D intel_vga_read(display, VGA_SEQ_D, mmio);
>  	sr1 |=3D VGA_SR01_SCREEN_OFF;
> -	intel_vga_write(display, VGA_SEQ_D, sr1, false);
> +	intel_vga_write(display, VGA_SEQ_D, sr1, mmio);
>=20=20
> -	msr =3D intel_vga_read(display, VGA_MIS_R, false);
> +	msr =3D intel_vga_read(display, VGA_MIS_R, mmio);
>  	/*
>  	 * Always disable VGA memory decode for iGPU so that
>  	 * intel_vga_set_decode() doesn't need to access VGA registers.
> @@ -234,9 +245,9 @@ void intel_vga_disable(struct intel_display *display)
>  	 * RMbus NoClaim errors.
>  	 */
>  	msr &=3D ~VGA_MIS_COLOR;
> -	intel_vga_write(display, VGA_MIS_W, msr, false);
> +	intel_vga_write(display, VGA_MIS_W, msr, mmio);
>=20=20
> -	intel_vga_put(display, io_decode);
> +	intel_vga_put(display, io_decode, mmio);
>=20=20
>  	/*
>  	 * Inform the arbiter about VGA memory decode being disabled so

--=20
Jani Nikula, Intel
