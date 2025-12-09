Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 728FACAFAA9
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:39:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 096D510E4FE;
	Tue,  9 Dec 2025 10:39:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n9H8p/af";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5717510E4FB;
 Tue,  9 Dec 2025 10:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765276776; x=1796812776;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=DF+wUKWy5/yn7UvduplKHCwPAIRYraQJtGo8vVBJOgA=;
 b=n9H8p/af48lkfibuyVubdZfOh6RqaNGP0eUitMqcXPA7vtaCD0T7v0WY
 MqWXeB6XLXODo8J06QSTgHSBIhNscrbEndMTA5Bm0aIwGWq2BWW2SHz3h
 zC14UeAc/jAxSloX+tEKcTmXZgfKzfjSUA4UrgXrK1Y18xZUMRuI4olC0
 oRUJ+FOXndae5HegnbWTV6vozJ/a492i92YDT7Mw5N5lIXmkj0ghICTqu
 cBX/Syinn4xfRD1xoF81ZMPxVi1iaiiffFPZsX9oh+GRPlQ9LsRTqKzlU
 afoQ/zU9jL8S93Z3rjNBeKq8rREb3zdM27fItBfrZgL9pqfRiVddasLeE w==;
X-CSE-ConnectionGUID: SGJ67pLLRKaAz+hQBGHlGg==
X-CSE-MsgGUID: mZIbcEwiQSCvT7/Tx5A4cg==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="77846464"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="77846464"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:39:35 -0800
X-CSE-ConnectionGUID: ya2BieI5RKqJtr6LXcVEYA==
X-CSE-MsgGUID: 1+CTryZJS129xRKMRQUEwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="200672478"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:39:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 08/19] drm/i915/vga: Stop trying to use GMCH_CTRL for
 VGA decode control
In-Reply-To: <20251208182637.334-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-9-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:39:31 +0200
Message-ID: <d56eff8d61d6560dca0357923d1e6f406c854926@intel.com>
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
> intel_gmch_vga_set_state() is a complete lie on ILK+ because
> the GMCH_CTRL register is locked and can't actually be written.
> But we still need to remove the iGPU from the VGA arbitration
> on iGPU+dGPU systems, or else Xorg performace will tank due

*performance

> to the constant VGA arbiter accesess.

*accesses

>
> For VGA memory decode we can't turn off the PCI_COMMAND
> memory deocde as that would disable even normal MMIO.

*decode

> Instead we can disable just the VGA memory decode via
> the VGA MSR register. And we can do that just once
> when disablign the VGA plane. That way we don't have

*disabling

> to touch VGA registers anywhere else.
>
> We can also inform the arbiter that we're no longer decding

*decoding

> VGA memory. This will stop the arbitter from disabling all

*arbiter

> memory decode for the iGPU via PCI_COMMAND (and thus breaking
> everything) whenever some other GPU wants to own the VGA memory
> accesses.
>
> For IO we can disable all IO decode via the PCI_COMMAND
> register, except around the few VGA register accesses that
> we need to do in intel_vga_disable(). Unfortunately we can't
> disable IO decode permanently as it makes some laptops (eg.
> Dell Latitude E5400) hang during reboot/shutdown. One option
> would be to re-enable IO decode from the poweroff hooks, but
> that won't help the sysrq emergency reboot/shutdown since it
> won't call said hooks. So let's try to keep IO decode in its
> original setting unless we really need to disable it to
> exclude the GPU from VGA arbitration.
>
> I suppose we could keep frobbing GMCH_CTRL on pre-ILK, but
> it seems better to not do it since it has other side effects
> such as changing the class code of the PCI device.
>
> For discrete GPUs we'll rely on the bridge control instead.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vga.c | 93 +++++++++++++++---------
>  1 file changed, 57 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index a2a1c33d053e..f2f7d396c556 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -71,6 +71,19 @@ static bool intel_pci_set_io_decode(struct pci_dev *pd=
ev, bool enable)
>  	return old & PCI_COMMAND_IO;
>  }
>=20=20
> +static bool intel_pci_bridge_set_vga(struct pci_dev *pdev, bool enable)
> +{
> +	u16 old =3D 0, ctl;
> +
> +	pci_read_config_word(pdev->bus->self, PCI_BRIDGE_CONTROL, &old);
> +	ctl =3D old & ~PCI_BRIDGE_CTL_VGA;
> +	if (enable)
> +		ctl |=3D PCI_BRIDGE_CTL_VGA;
> +	pci_write_config_word(pdev->bus->self, PCI_BRIDGE_CONTROL, ctl);
> +
> +	return old & PCI_BRIDGE_CTL_VGA;
> +}
> +
>  static bool intel_vga_get(struct intel_display *display)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
> @@ -108,6 +121,7 @@ static void intel_vga_put(struct intel_display *displ=
ay, bool io_decode)
>  /* Disable the VGA plane that we never use */
>  void intel_vga_disable(struct intel_display *display)
>  {
> +	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
>  	i915_reg_t vga_reg =3D intel_vga_cntrl_reg(display);
>  	bool io_decode;
>  	u8 msr, sr1;
> @@ -160,6 +174,12 @@ void intel_vga_disable(struct intel_display *display)
>  	outb(sr1 | VGA_SR01_SCREEN_OFF, VGA_SEQ_D);
>=20=20
>  	msr =3D inb(VGA_MIS_R);
> +	/*
> +	 * Always disable VGA memory decode for iGPU so that
> +	 * intel_vga_set_decode() doesn't need to access VGA registers.
> +	 * VGA_MIS_ENB_MEM_ACCESS=3D0 is also the reset value.
> +	 */
> +	msr &=3D ~VGA_MIS_ENB_MEM_ACCESS;
>  	/*
>  	 * VGA_MIS_COLOR controls both GPU level and display engine level
>  	 * MDA vs. CGA decode logic. But when the register gets reset
> @@ -177,6 +197,14 @@ void intel_vga_disable(struct intel_display *display)
>=20=20
>  	intel_vga_put(display, io_decode);
>=20=20
> +	/*
> +	 * Inform the arbiter about VGA memory decode being disabled so
> +	 * that it doesn't disable all memory decode for the iGPU when
> +	 * targeting another GPU.
> +	 */
> +	if (!display->platform.dgfx)
> +		vga_set_legacy_decoding(pdev, VGA_RSRC_LEGACY_IO);
> +
>  	udelay(300);
>=20=20
>  reset_vgacntr:
> @@ -184,45 +212,38 @@ void intel_vga_disable(struct intel_display *displa=
y)
>  	intel_de_posting_read(display, vga_reg);
>  }
>=20=20
> -static int intel_gmch_vga_set_state(struct intel_display *display, bool =
enable_decode)
> -{
> -	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
> -	u16 gmch_ctrl;
> -
> -	if (pci_bus_read_config_word(pdev->bus, PCI_DEVFN(0, 0),
> -				     intel_gmch_ctrl_reg(display), &gmch_ctrl)) {
> -		drm_err(display->drm, "failed to read control word\n");
> -		return -EIO;
> -	}
> -
> -	if (!!(gmch_ctrl & INTEL_GMCH_VGA_DISABLE) =3D=3D !enable_decode)
> -		return 0;
> -
> -	if (enable_decode)
> -		gmch_ctrl &=3D ~INTEL_GMCH_VGA_DISABLE;
> -	else
> -		gmch_ctrl |=3D INTEL_GMCH_VGA_DISABLE;
> -
> -	if (pci_bus_write_config_word(pdev->bus, PCI_DEVFN(0, 0),
> -				      intel_gmch_ctrl_reg(display), gmch_ctrl)) {
> -		drm_err(display->drm, "failed to write control word\n");
> -		return -EIO;
> -	}
> -
> -	return 0;
> -}
> -
> -static unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool=
 enable_decode)
> +static unsigned int intel_vga_set_decode(struct pci_dev *pdev, bool enab=
le_decode)
>  {
>  	struct intel_display *display =3D to_intel_display(pdev);
> +	unsigned int decodes =3D VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
>=20=20
> -	intel_gmch_vga_set_state(display, enable_decode);
> +	drm_dbg_kms(display->drm, "%s VGA decode due to VGA arbitration\n",
> +		    str_enable_disable(enable_decode));
>=20=20
> -	if (enable_decode)
> -		return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
> -		       VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
> -	else
> -		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
> +	/*
> +	 * Can't use GMCH_CTRL INTEL_GMCH_VGA_DISABLE to disable VGA
> +	 * decode on ILK+ since the register is locked. Instead
> +	 * intel_disable_vga() will disable VGA memory decode for the
> +	 * iGPU, and here we just need to take care of the IO decode.
> +	 * For discrete GPUs we rely on the bridge VGA control.
> +	 *
> +	 * We can't disable IO decode already in intel_vga_disable()
> +	 * because at least some laptops (eg. CTG Dell Latitude E5400)
> +	 * will hang during reboot/shutfown with IO decode disabled.
> +	 */
> +	if (display->platform.dgfx) {
> +		if (!enable_decode)
> +			intel_pci_bridge_set_vga(pdev, false);
> +		else
> +			decodes |=3D VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM;
> +	} else {
> +		if (!enable_decode)
> +			intel_pci_set_io_decode(pdev, false);
> +		else
> +			decodes |=3D VGA_RSRC_LEGACY_IO;
> +	}
> +
> +	return decodes;
>  }
>=20=20
>  void intel_vga_register(struct intel_display *display)
> @@ -239,7 +260,7 @@ void intel_vga_register(struct intel_display *display)
>  	 * then we do not take part in VGA arbitration and the
>  	 * vga_client_register() fails with -ENODEV.
>  	 */
> -	ret =3D vga_client_register(pdev, intel_gmch_vga_set_decode);
> +	ret =3D vga_client_register(pdev, intel_vga_set_decode);
>  	drm_WARN_ON(display->drm, ret && ret !=3D -ENODEV);
>  }

--=20
Jani Nikula, Intel
