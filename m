Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6314ACAFA13
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:26:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EC3689A5C;
	Tue,  9 Dec 2025 10:26:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c6GjgOWV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C60EF89A5C;
 Tue,  9 Dec 2025 10:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765276017; x=1796812017;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=M/nRkLMVjgVbBl10ihmtEF5v9ye4Mujq2nM1yxSWMVs=;
 b=c6GjgOWVNBjkttTmVZE1ZHY8nC3DoOSq8YOVWsoPwPezJoVDuzg/oqVH
 w4LiHRjGO60Cbu+ouucbQIY6/8Djo1icIlzUCC+NRwotogmjp0Ipsut8+
 Hx84XtNMpDMd0kpVLvL2eyFLo7plM6Qi4HM2Ye45r8vlh2UnL5VzTTfiw
 zSGW4KLokqMSgCKHUoPJlHQPagsV7y9GBcfmPdryWVbk6epedfWECJGeQ
 antJMbh6Bj1Mcv2sCU8ZTQj/TJBoy4ehxYIoOlywHd73jZ6iCI4XuB5zd
 8BNm97ZuWXaLxQEV6ro4nAPgHK0T2ACZv8ssKerBvjc+ShIBcxwOfdAh1 A==;
X-CSE-ConnectionGUID: +qXn5F9UTZysqZgwVmh8IA==
X-CSE-MsgGUID: qUsVnAG8TRe5v12qBsUfeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="78589245"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78589245"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:26:56 -0800
X-CSE-ConnectionGUID: R7DUjffrRr2G7rAwq9DKmw==
X-CSE-MsgGUID: N5WuR00HRYycTTwQttJDyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="200372425"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:26:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 02/19] drm/i915/vga: Get rid of intel_vga_reset_io_mem()
In-Reply-To: <20251208182637.334-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-3-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:26:51 +0200
Message-ID: <a3da5fc0e578e2776e5b7e4ae776ff341324014b@intel.com>
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
> Remove the MSR VGA register access from the power well hook, and
> just do it once in intel_vga_disable().
>
> Turns out that the hardware has two levels of MDA vs. CGA decode
> logic: GPU level and display engine level. When we write the MSR
> register MDA/CGA mode selection bit both decode logics are updated
> accordingly, so that whichever register accessed the GPU claims
> will also be claimed by the display engine on the RMbus. If the
> two get out of sync the GPU will claim the register accesses but
> the display engine will not, leading to RMbus NoClaim errors.
>
> The way to get the two decode logics out of sync is by resetting
> the power well housing the VGA stuff, while we are in CGA mode.
> At that point only the display engine level decode logic will be
> updated with the new MSR register reset value (which selects MDA
> mode), and the GPU level decode logic will retain its previous
> state (GGA mode). To avoid the mismatch we just have to switch
> to MDA mode with an explicit MSR register write.
>
> Currently this is being done in a somewhat dodgy manner whenever
> the power well gets enabled. But doing if from the power well
> hook is not actually necessary since the GPU level decode logic
> will retain its state even when the power well is disabled. Ie.
> doing it just the one time is sufficient, and that can be done
> when we're anyway writing other VGA registers while disabling
> the VGA plane.
>
> See commit f9dcb0dfee98 ("drm/i915: touch VGA MSR after we
> enable the power well") for the original details.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I'll take your word for it. Looks plausible.

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../i915/display/intel_display_power_well.c   |  3 --
>  drivers/gpu/drm/i915/display/intel_vga.c      | 40 +++++++++----------
>  2 files changed, 20 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/dr=
ivers/gpu/drm/i915/display/intel_display_power_well.c
> index db185a859133..52b20118ace6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -204,9 +204,6 @@ int intel_power_well_refcount(struct i915_power_well =
*power_well)
>  static void hsw_power_well_post_enable(struct intel_display *display,
>  				       u8 irq_pipe_mask, bool has_vga)
>  {
> -	if (has_vga)
> -		intel_vga_reset_io_mem(display);
> -
>  	if (irq_pipe_mask)
>  		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index f13734cfd904..39c68aec647b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -47,8 +47,8 @@ void intel_vga_disable(struct intel_display *display)
>  	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
>  	i915_reg_t vga_reg =3D intel_vga_cntrl_reg(display);
>  	enum pipe pipe;
> +	u8 msr, sr1;
>  	u32 tmp;
> -	u8 sr1;
>=20=20
>  	tmp =3D intel_de_read(display, vga_reg);
>  	if (tmp & VGA_DISP_DISABLE)
> @@ -66,35 +66,35 @@ void intel_vga_disable(struct intel_display *display)
>=20=20
>  	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
>  	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
> +
>  	outb(0x01, VGA_SEQ_I);
>  	sr1 =3D inb(VGA_SEQ_D);
>  	outb(sr1 | VGA_SR01_SCREEN_OFF, VGA_SEQ_D);
> +
> +	msr =3D inb(VGA_MIS_R);
> +	/*
> +	 * VGA_MIS_COLOR controls both GPU level and display engine level
> +	 * MDA vs. CGA decode logic. But when the register gets reset
> +	 * (reset value has VGA_MIS_COLOR=3D0) by the power well, only the
> +	 * display engine level decode logic gets notified.
> +	 *
> +	 * Switch to MDA mode to make sure the GPU level decode logic will
> +	 * be in sync with the display engine level decode logic after the
> +	 * power well has been reset. Otherwise the GPU will claim CGA
> +	 * register accesses but the display engine will not, causing
> +	 * RMbus NoClaim errors.
> +	 */
> +	msr &=3D ~VGA_MIS_COLOR;
> +	outb(msr, VGA_MIS_W);
> +
>  	vga_put(pdev, VGA_RSRC_LEGACY_IO);
> +
>  	udelay(300);
>=20=20
>  	intel_de_write(display, vga_reg, VGA_DISP_DISABLE);
>  	intel_de_posting_read(display, vga_reg);
>  }
>=20=20
> -void intel_vga_reset_io_mem(struct intel_display *display)
> -{
> -	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
> -
> -	/*
> -	 * After we re-enable the power well, if we touch VGA register 0x3d5
> -	 * we'll get unclaimed register interrupts. This stops after we write
> -	 * anything to the VGA MSR register. The vgacon module uses this
> -	 * register all the time, so if we unbind our driver and, as a
> -	 * consequence, bind vgacon, we'll get stuck in an infinite loop at
> -	 * console_unlock(). So make here we touch the VGA MSR register, making
> -	 * sure vgacon can keep working normally without triggering interrupts
> -	 * and error messages.
> -	 */
> -	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
> -	outb(inb(VGA_MIS_R), VGA_MIS_W);
> -	vga_put(pdev, VGA_RSRC_LEGACY_IO);
> -}
> -
>  static int intel_gmch_vga_set_state(struct intel_display *display, bool =
enable_decode)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);

--=20
Jani Nikula, Intel
