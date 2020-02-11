Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCD81594F3
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 17:29:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBAEC6EEBF;
	Tue, 11 Feb 2020 16:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D176EEBF
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 16:29:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 08:29:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="237442395"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 11 Feb 2020 08:29:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Feb 2020 18:29:03 +0200
Date: Tue, 11 Feb 2020 18:29:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200211162903.GW13686@intel.com>
References: <20200211161451.6867-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211161451.6867-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: move intel_csr.[ch] under
 display/
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 11, 2020 at 06:14:50PM +0200, Jani Nikula wrote:
> The DMC firmware is about display. Move the handling under display. No
> functional changes.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

I'm also thinking s/csr/dmc/ migth be a good idea. I don't even
remember what "csr" means...

> ---
>  drivers/gpu/drm/i915/Makefile                  | 2 +-
>  drivers/gpu/drm/i915/{ =3D> display}/intel_csr.c | 0
>  drivers/gpu/drm/i915/{ =3D> display}/intel_csr.h | 0
>  drivers/gpu/drm/i915/i915_debugfs.c            | 2 +-
>  drivers/gpu/drm/i915/i915_drv.c                | 2 +-
>  drivers/gpu/drm/i915/i915_gpu_error.c          | 2 +-
>  6 files changed, 4 insertions(+), 4 deletions(-)
>  rename drivers/gpu/drm/i915/{ =3D> display}/intel_csr.c (100%)
>  rename drivers/gpu/drm/i915/{ =3D> display}/intel_csr.h (100%)
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 49eed50ef0a4..a2fab3c43563 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -46,7 +46,6 @@ i915-y +=3D i915_drv.o \
>  	  i915_switcheroo.o \
>  	  i915_sysfs.o \
>  	  i915_utils.o \
> -	  intel_csr.o \
>  	  intel_device_info.o \
>  	  intel_memory_region.o \
>  	  intel_pch.o \
> @@ -183,6 +182,7 @@ i915-y +=3D \
>  	display/intel_color.o \
>  	display/intel_combo_phy.o \
>  	display/intel_connector.o \
> +	display/intel_csr.o \
>  	display/intel_display.o \
>  	display/intel_display_power.o \
>  	display/intel_dpio_phy.o \
> diff --git a/drivers/gpu/drm/i915/intel_csr.c b/drivers/gpu/drm/i915/disp=
lay/intel_csr.c
> similarity index 100%
> rename from drivers/gpu/drm/i915/intel_csr.c
> rename to drivers/gpu/drm/i915/display/intel_csr.c
> diff --git a/drivers/gpu/drm/i915/intel_csr.h b/drivers/gpu/drm/i915/disp=
lay/intel_csr.h
> similarity index 100%
> rename from drivers/gpu/drm/i915/intel_csr.h
> rename to drivers/gpu/drm/i915/display/intel_csr.h
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index 3cae18d1d20c..83dae4d8ac0c 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -32,6 +32,7 @@
>  #include <drm/drm_debugfs.h>
>  #include <drm/drm_fourcc.h>
>  =

> +#include "display/intel_csr.h"
>  #include "display/intel_display_types.h"
>  #include "display/intel_dp.h"
>  #include "display/intel_fbc.h"
> @@ -51,7 +52,6 @@
>  #include "i915_debugfs_params.h"
>  #include "i915_irq.h"
>  #include "i915_trace.h"
> -#include "intel_csr.h"
>  #include "intel_pm.h"
>  #include "intel_sideband.h"
>  =

> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 516536234e97..4e43a671f2c0 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -50,6 +50,7 @@
>  #include "display/intel_audio.h"
>  #include "display/intel_bw.h"
>  #include "display/intel_cdclk.h"
> +#include "display/intel_csr.h"
>  #include "display/intel_display_types.h"
>  #include "display/intel_dp.h"
>  #include "display/intel_fbdev.h"
> @@ -77,7 +78,6 @@
>  #include "i915_sysfs.h"
>  #include "i915_trace.h"
>  #include "i915_vgpu.h"
> -#include "intel_csr.h"
>  #include "intel_memory_region.h"
>  #include "intel_pm.h"
>  =

> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915=
/i915_gpu_error.c
> index 5a1517d0bf3b..b2ed977ed971 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -37,6 +37,7 @@
>  #include <drm/drm_print.h>
>  =

>  #include "display/intel_atomic.h"
> +#include "display/intel_csr.h"
>  #include "display/intel_overlay.h"
>  =

>  #include "gem/i915_gem_context.h"
> @@ -47,7 +48,6 @@
>  #include "i915_gpu_error.h"
>  #include "i915_memcpy.h"
>  #include "i915_scatterlist.h"
> -#include "intel_csr.h"
>  =

>  #define ALLOW_FAIL (GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
>  #define ATOMIC_MAYFAIL (GFP_ATOMIC | __GFP_NOWARN)
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
