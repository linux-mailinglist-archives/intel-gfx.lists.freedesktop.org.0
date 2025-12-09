Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A0FCAFA1F
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:28:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C8A10E4F4;
	Tue,  9 Dec 2025 10:28:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QlBHaViw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6A1910E1C7;
 Tue,  9 Dec 2025 10:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765276086; x=1796812086;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=UkkEA6WZdhUJJKiGs+vhu3BW5vggN+9J01cE4p9sGYs=;
 b=QlBHaViwQNLyBNL+0hXakQc9gIfJmtygWDQK61CTD+m3hi4Pofj6Julr
 KpIaJEzlSB0A1o5Vxq0oWo3SrYhYisEJiY2HshzWkuKXfvD3tR4sJvMTi
 CqHm1qJg/3Qol41F/At8RjkMxsX0jSBJizKfTH9okq7fXDhhZbGXaoyD4
 3/KhBtQRCa+VzQJ7RiqW2w/iLe70hYzixAi3oJOT0stIeKah1HhuWodAg
 WUYemJLo7RyLsCFiGlhGobboA3vS2CfkX3DeJZMGhnT8j7Pl+m6yPjIN0
 ixtqQ6+TnszIw+6BptZ+tTc1yJm/Eho03/ssaG7vfrg9xXv2rq3xoDMvU A==;
X-CSE-ConnectionGUID: igr3swyqQFW9cDbgl27ILg==
X-CSE-MsgGUID: UjDr+kqpQqW1xElQyfwtIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67190783"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="67190783"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:28:06 -0800
X-CSE-ConnectionGUID: M6n/+aguRk+xgW41/cfyxg==
X-CSE-MsgGUID: PquZUkjlRQSlKBdDs9p5mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="233572374"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:28:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 04/19] drm/i915/vga: Extract intel_gmch_ctrl_reg()
In-Reply-To: <20251208182637.334-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-5-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:28:01 +0200
Message-ID: <77bdcd1a4125dadf1200b400948929fb9815c801@intel.com>
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
> Extract the GMCH_CTLR register offset determination into a helper
> rather than using a local varaible. I'll be needing this in another
> function soon.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vga.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index 39c68aec647b..84fd5475d336 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -18,6 +18,11 @@
>  #include "intel_vga.h"
>  #include "intel_vga_regs.h"
>=20=20
> +static unsigned int intel_gmch_ctrl_reg(struct intel_display *display)
> +{
> +	return DISPLAY_VER(display) >=3D 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
> +}
> +
>  static i915_reg_t intel_vga_cntrl_reg(struct intel_display *display)
>  {
>  	if (display->platform.valleyview || display->platform.cherryview)
> @@ -98,10 +103,10 @@ void intel_vga_disable(struct intel_display *display)
>  static int intel_gmch_vga_set_state(struct intel_display *display, bool =
enable_decode)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
> -	unsigned int reg =3D DISPLAY_VER(display) >=3D 6 ? SNB_GMCH_CTRL : INTE=
L_GMCH_CTRL;
>  	u16 gmch_ctrl;
>=20=20
> -	if (pci_bus_read_config_word(pdev->bus, PCI_DEVFN(0, 0), reg, &gmch_ctr=
l)) {
> +	if (pci_bus_read_config_word(pdev->bus, PCI_DEVFN(0, 0),
> +				     intel_gmch_ctrl_reg(display), &gmch_ctrl)) {
>  		drm_err(display->drm, "failed to read control word\n");
>  		return -EIO;
>  	}
> @@ -114,7 +119,8 @@ static int intel_gmch_vga_set_state(struct intel_disp=
lay *display, bool enable_d
>  	else
>  		gmch_ctrl |=3D INTEL_GMCH_VGA_DISABLE;
>=20=20
> -	if (pci_bus_write_config_word(pdev->bus, PCI_DEVFN(0, 0), reg, gmch_ctr=
l)) {
> +	if (pci_bus_write_config_word(pdev->bus, PCI_DEVFN(0, 0),
> +				      intel_gmch_ctrl_reg(display), gmch_ctrl)) {
>  		drm_err(display->drm, "failed to write control word\n");
>  		return -EIO;
>  	}

--=20
Jani Nikula, Intel
