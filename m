Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DF9CAFAAF
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:40:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A657910E4F2;
	Tue,  9 Dec 2025 10:40:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eswsl5iw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CD5E10E1CD;
 Tue,  9 Dec 2025 10:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765276838; x=1796812838;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=IXMZbqjFvfkkq47OwcgxC8pbFt60k0lfvu7WqRbvhHg=;
 b=eswsl5iwPWLWycQzLcZrmbHiGWTOPeos4TXNRAZjX7bzhyOQxvR3Pjd5
 ztE7e5DcVRAlQxmkJj+pXgrstyKL+LtDq73dB33aGzs6l9OBEwWG+C8Wm
 8Ep3GUs/lrvU6++NTC1I25WUWJRfhrvParXQFqFl/IZNrU2j/HFZoLBpe
 8tv+WThcs+8LNuiutFSQzOBjoIydjmi9aJtZwf2PAoVt0n17KHwAJpuZ9
 Kw/LVxAR13QRbi6wBhheg0p4MpzqFvOTaadfeneWmkJZbvCoQgIg8dhB+
 aQOjwyxecYP2D65p74PYlyaGjDgSwI6cupqK82e8V15s6gcxmhcNsM1+e A==;
X-CSE-ConnectionGUID: wu5qFXF2R/uMCz2VgL2YOQ==
X-CSE-MsgGUID: UQrMNy+USn+xjhIg7UFPzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="71086481"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="71086481"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:40:38 -0800
X-CSE-ConnectionGUID: zZZ7dWeVRN+LMzxG+iEW3Q==
X-CSE-MsgGUID: Avdep1DlTVqVPRfDIaalZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="201302306"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:40:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 09/19] drm/i915/vga: Assert that VGA register accesses
 are going to the right GPU
In-Reply-To: <20251208182637.334-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-10-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:40:33 +0200
Message-ID: <e0515ef73a6ba6299068bb63d49c95f553b06be0@intel.com>
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
> We want out VGA register accesses to land on the correct GPU.

our?

> Check that the VGA routing is appropriately configured.
>
> For the iGPU this just means the IO decode enable on the GPU, but
> for dGPUs we also need the entire chain of bridges to forward the
> VGA accesses.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vga.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index f2f7d396c556..e51451966f72 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -58,6 +58,28 @@ static bool has_vga_pipe_sel(struct intel_display *dis=
play)
>  	return DISPLAY_VER(display) < 7;
>  }
>=20=20
> +static bool intel_pci_has_vga_io_decode(struct pci_dev *pdev)
> +{
> +	u16 cmd =3D 0;
> +
> +	pci_read_config_word(pdev, PCI_COMMAND, &cmd);
> +	if ((cmd & PCI_COMMAND_IO) =3D=3D 0)
> +		return false;
> +
> +	pdev =3D pdev->bus->self;
> +	while (pdev) {
> +		u16 ctl =3D 0;
> +
> +		pci_read_config_word(pdev, PCI_BRIDGE_CONTROL, &ctl);
> +		if ((ctl & PCI_BRIDGE_CTL_VGA) =3D=3D 0)
> +			return false;
> +
> +		pdev =3D pdev->bus->self;
> +	}
> +
> +	return true;
> +}
> +
>  static bool intel_pci_set_io_decode(struct pci_dev *pdev, bool enable)
>  {
>  	u16 old =3D 0, cmd;
> @@ -169,6 +191,8 @@ void intel_vga_disable(struct intel_display *display)
>=20=20
>  	io_decode =3D intel_vga_get(display);
>=20=20
> +	drm_WARN_ON(display->drm, !intel_pci_has_vga_io_decode(pdev));
> +
>  	outb(0x01, VGA_SEQ_I);
>  	sr1 =3D inb(VGA_SEQ_D);
>  	outb(sr1 | VGA_SR01_SCREEN_OFF, VGA_SEQ_D);

--=20
Jani Nikula, Intel
