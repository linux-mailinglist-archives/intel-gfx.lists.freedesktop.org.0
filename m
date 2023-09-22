Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A5D7AADBB
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 11:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64B410E03D;
	Fri, 22 Sep 2023 09:22:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D37D710E05B
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 09:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695374559; x=1726910559;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=zBJ8alOf0mxqBPPK6FQBtDnC1W+WbOJr+PMTY5kFH4I=;
 b=gyIulcTZ7N+myUtyifS0IVG/20Jsz89/VqlbY5xbk1ERJxhVKF/csEgi
 k6Hsi5e8gttE5wgJI8HfHq6VHdpH0pp7TLUFly/OUZFC4EGzWi/70F1Rg
 fsEN1JjuW1BUDLhwl+GCkTv4dY6/APTkbxdlW+2nHzh+QPbBft84SwlDa
 8kQe1bCI8XrbSJaT579/ZqwYA028lXz93Y6NqiURHatrtROz3+Up8eUXc
 aymDWqcs9rT6uXO3+Uf84eXy91zDWU3C4mf7nIviTsSkEi5MW10PeXPdc
 Bt0CgNRmPL78KW8stVPIkLnoJG0xR2qEYsyTIcz8XxjxMLo763zi7mgXR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="384620211"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="384620211"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 02:22:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="697097226"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="697097226"
Received: from mtomczew-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.37.163])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 02:22:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230922091102.1030418-1-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230922091102.1030418-1-uma.shankar@intel.com>
Date: Fri, 22 Sep 2023 12:22:34 +0300
Message-ID: <8734z6pnol.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add a wrapper function
 for vga decode setup
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

On Fri, 22 Sep 2023, Uma Shankar <uma.shankar@intel.com> wrote:
> Some of the VGA functionality is not needed by the proposed
> Intel Xe driver. Adding a wrapper function for VGA decode setup.

This should also use it in i915, not just add duplicated code.

>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vga.c |  3 ---
>  drivers/gpu/drm/i915/soc/intel_gmch.c    | 14 ++++++++++++++
>  drivers/gpu/drm/i915/soc/intel_gmch.h    |  2 ++
>  3 files changed, 16 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index 286a0bdd28c6..bf84d01339b9 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -3,11 +3,8 @@
>   * Copyright =C2=A9 2019 Intel Corporation
>   */
>=20=20
> -#include <linux/pci.h>
>  #include <linux/vgaarb.h>
> -
>  #include <video/vga.h>
> -

There should remain a blank line after the system includes and before
the rest.

>  #include "soc/intel_gmch.h"
>=20=20
>  #include "i915_drv.h"
> diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915=
/soc/intel_gmch.c
> index 49c7fb16e934..818f0b7f62a2 100644
> --- a/drivers/gpu/drm/i915/soc/intel_gmch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
> @@ -12,6 +12,7 @@
>  #include "i915_drv.h"
>  #include "intel_gmch.h"
>  #include "intel_pci_config.h"
> +#include <linux/vgaarb.h>

<linux/...> and <drm/...> includes go before the rest.

>=20=20
>  static void intel_gmch_bridge_release(struct drm_device *dev, void *brid=
ge)
>  {
> @@ -167,3 +168,16 @@ int intel_gmch_vga_set_state(struct drm_i915_private=
 *i915, bool enable_decode)
>=20=20
>  	return 0;
>  }
> +
> +unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable=
_decode)
> +{
> +	struct drm_i915_private *i915 =3D pdev_to_i915(pdev);
> +
> +	intel_gmch_vga_set_state(i915, enable_decode);
> +
> +	if (enable_decode)
> +		return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
> +		       VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
> +	else
> +		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
> +}
> diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.h b/drivers/gpu/drm/i915=
/soc/intel_gmch.h
> index d0133eedc720..5ab2552ceb1a 100644
> --- a/drivers/gpu/drm/i915/soc/intel_gmch.h
> +++ b/drivers/gpu/drm/i915/soc/intel_gmch.h
> @@ -7,6 +7,7 @@
>  #define __INTEL_GMCH_H__
>=20=20
>  #include <linux/types.h>
> +#include <linux/pci.h>

You don't need that, just a forward declaration for struct pci_dev.

>=20=20
>  struct drm_i915_private;
>=20=20
> @@ -14,5 +15,6 @@ int intel_gmch_bridge_setup(struct drm_i915_private *i9=
15);
>  void intel_gmch_bar_setup(struct drm_i915_private *i915);
>  void intel_gmch_bar_teardown(struct drm_i915_private *i915);
>  int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_=
decode);
> +unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable=
_decode);
>=20=20
>  #endif /* __INTEL_GMCH_H__ */

--=20
Jani Nikula, Intel
