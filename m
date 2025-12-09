Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE61CAFA7C
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:35:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 914C210E4E3;
	Tue,  9 Dec 2025 10:35:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RaJX0A09";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B55910E4E3;
 Tue,  9 Dec 2025 10:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765276524; x=1796812524;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=i802Q2Aw9tml+XfHXXQzvGx556vkFfz+5HaPphx7KIw=;
 b=RaJX0A09BZJaduBXHQ9iV9Gkcps+iGQzsQDF5Dz0++Zfw6n3HLfZA6Fg
 2DkJxw54gbLurkO6dWAFbuPH1tYkdXUR7GLmTpFCawOhEiaIfgoJIk3uH
 c2YUrUNzo3I0KBX0rGYpDeju16LfG9ctUdO00QjazdO/7O27nmSl36Zdx
 ES6BYgYRNIsW861qku5mIVZnNp/9k1fr30a/D9G5NrUJatMQUT9KUePDT
 dRxhIhQFHwBZlULLEx7Of6lKpoMZK8lgAePMcty+7QJ9CP4H1BwquNzgG
 9haG3e1ieKX3YICu8q+Q4g5Kp15jrS4gRe+KAWbrRO1SrK2S9SU+S80Jq A==;
X-CSE-ConnectionGUID: 0Xng9wenSFyjtPNDLw57WA==
X-CSE-MsgGUID: nXwRtGldTdyb355PLrcc8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="89883528"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="89883528"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:35:20 -0800
X-CSE-ConnectionGUID: qet1eBRvTZ6iQioEbnCp+g==
X-CSE-MsgGUID: 6YDl/flFTPuvIWUUiKucrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="226861825"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:35:19 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/19] drm/i915/vga: Avoid VGA arbiter during
 intel_vga_disable() for iGPUs
In-Reply-To: <20251208182637.334-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-8-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:35:15 +0200
Message-ID: <753969c83db9890a3556088630c9f079c584280a@intel.com>
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
> Avoid using the VGA arbiter during intel_vga_get() for iGPUs because
> that will clobber the VGA routing for whatever external GPU is the
> current VGA device. That will cause all reads from VGA memory to
> come back as 0xff/white, and thus we get a white rectangle on screen
> when the external GPU switches from vgacon to fbcon.
>
> The iGPU has the highest VGA decode priority so it will steal all
> VGA register accesses whenever its IO decoding is enabled. We'll only
> keep the IO decode enabled for a short time so hopefully we don't
> end up eating too many unrelated VGA register accesses.
>
> For discrete GPUs we need all the bridges to have their VGA forwarding
> bits correctly configured so we can't really avoid the VGA arbiter
> there. Although we only do this stuff on dGPUs when the VGA plane was
> actaully enabled, so the dGPU should be the current VGA device
> and thus have VGA routed to it already anyway.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Again, I'll take your word for it.

Acked-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_vga.c | 54 ++++++++++++++++++++++--
>  1 file changed, 50 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index 6a19fb242248..a2a1c33d053e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -58,11 +58,58 @@ static bool has_vga_pipe_sel(struct intel_display *di=
splay)
>  	return DISPLAY_VER(display) < 7;
>  }
>=20=20
> +static bool intel_pci_set_io_decode(struct pci_dev *pdev, bool enable)
> +{
> +	u16 old =3D 0, cmd;
> +
> +	pci_read_config_word(pdev, PCI_COMMAND, &old);
> +	cmd =3D old & ~PCI_COMMAND_IO;
> +	if (enable)
> +		cmd |=3D PCI_COMMAND_IO;
> +	pci_write_config_word(pdev, PCI_COMMAND, cmd);
> +
> +	return old & PCI_COMMAND_IO;
> +}
> +
> +static bool intel_vga_get(struct intel_display *display)
> +{
> +	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
> +
> +	/* WaEnableVGAAccessThroughIOPort:ctg+ */
> +
> +	/*
> +	 * Bypass the VGA arbiter on the iGPU and just enable
> +	 * IO decode by hand. This avoids clobbering the VGA
> +	 * routing for an external GPU when it's the current
> +	 * VGA device, and thus prevents the all 0xff/white
> +	 * readout from VGA memory when taking over from vgacon.
> +	 *
> +	 * The iGPU has the highest VGA decode priority so it will
> +	 * grab any VGA IO access when IO decode is enabled, regardless
> +	 * of how any other VGA routing bits are configured.
> +	 */
> +	if (display->platform.dgfx)
> +		vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
> +
> +	return intel_pci_set_io_decode(pdev, true);
> +}
> +
> +static void intel_vga_put(struct intel_display *display, bool io_decode)
> +{
> +	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
> +
> +	/* see intel_vga_get() */
> +	intel_pci_set_io_decode(pdev, io_decode);
> +
> +	if (display->platform.dgfx)
> +		vga_put(pdev, VGA_RSRC_LEGACY_IO);
> +}
> +
>  /* Disable the VGA plane that we never use */
>  void intel_vga_disable(struct intel_display *display)
>  {
> -	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
>  	i915_reg_t vga_reg =3D intel_vga_cntrl_reg(display);
> +	bool io_decode;
>  	u8 msr, sr1;
>  	u32 tmp;
>=20=20
> @@ -106,8 +153,7 @@ void intel_vga_disable(struct intel_display *display)
>  			goto reset_vgacntr;
>  	}
>=20=20
> -	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
> -	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
> +	io_decode =3D intel_vga_get(display);
>=20=20
>  	outb(0x01, VGA_SEQ_I);
>  	sr1 =3D inb(VGA_SEQ_D);
> @@ -129,7 +175,7 @@ void intel_vga_disable(struct intel_display *display)
>  	msr &=3D ~VGA_MIS_COLOR;
>  	outb(msr, VGA_MIS_W);
>=20=20
> -	vga_put(pdev, VGA_RSRC_LEGACY_IO);
> +	intel_vga_put(display, io_decode);
>=20=20
>  	udelay(300);

--=20
Jani Nikula, Intel
