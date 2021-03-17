Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB3C33F754
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 18:45:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF2B289DD3;
	Wed, 17 Mar 2021 17:45:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D270C89DD3
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 17:45:11 +0000 (UTC)
IronPort-SDR: ECK+ooH5loyLCiYwYI9/n0rUryCOAuknZjdBIi+vbdyyWrYVDMjjV+6NdDm6k+Ndua67OHlkY3
 VYzpl0fJH2eA==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="250872335"
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="250872335"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 10:45:04 -0700
IronPort-SDR: xSPjsDmAbRjdgkZJ4P83c/PsOJnrC18WA3AkusVl/NSD1UkWytQZEEedhb6pFCJTZHMv53Op11
 npJO4lqiAYaA==
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="406019465"
Received: from jpferrer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.46.99])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 10:45:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210311153415.3024607-3-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210311153415.3024607-1-matthew.d.roper@intel.com>
 <20210311153415.3024607-3-matthew.d.roper@intel.com>
Date: Wed, 17 Mar 2021 19:45:00 +0200
Message-ID: <87h7l9oesj.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 02/23] drm/i915: Add DISPLAY_VER()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 11 Mar 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
> Although we've long referred to platforms by a single "GEN" number, the
> hardware teams have recommended that we stop doing this since the
> various component IP blocks are going to start using independent number
> schemes with varying cadence.  To support this, hardware platforms a bit
> down the road are going to start providing MMIO registers that the
> driver can read to obtain the "graphics version," "media version," and
> "display version" without needing to do a PCI ID -> platform -> version
> translation.
>
> Although our current platforms don't yet expose these registers (and the
> next couple we release probably won't have them yet either), the
> hardware teams would still like to see us move to this independent
> numbering scheme now in preparation.  For i915 that means we should try
> to eliminate all usage of INTEL_GEN() throughout our code and instead
> replace it with separate GRAPHICS_VER(), MEDIA_VER(), and DISPLAY_VER()
> constructs in the code.  For old platforms, these will all usually give
> the same value for each IP block (aside from a few special cases like
> GLK which we can no more accurately represent as graphics=9 +
> display=10), but future platforms will have more flexibility to bump IP
> version numbers independently.
>
> The next hardware platform we'll be upstreaming (very soon!) will have a
> display version of 13 and a graphics version of 12, so let's just the
> first step of breaking out DISPLAY_VER(), but leaving the rest of
> INTEL_GEN() untouched for now.  For now we'll automatically
> derive the display version from the platform's INTEL_GEN() value except
> in cases where an alternative display version is explicitly provided in
> the device info structure.
>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 2 ++
>  drivers/gpu/drm/i915/i915_pci.c          | 2 +-
>  drivers/gpu/drm/i915/intel_device_info.h | 3 +++
>  3 files changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 4fe90a9782e8..5ec0524d3418 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1247,6 +1247,8 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>  #define INTEL_GEN(dev_priv)	(INTEL_INFO(dev_priv)->gen)
>  #define INTEL_DEVID(dev_priv)	(RUNTIME_INFO(dev_priv)->device_id)
>  
> +#define DISPLAY_VER(i915)	INTEL_INFO(i915)->display_ver

The value needs to be wrapped in parenthesis.

Maybe this should be ->display.version?

> +
>  #define REVID_FOREVER		0xff
>  #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
>  
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index a9f24f2bda33..3543611cf0fc 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -36,7 +36,7 @@
>  #include "i915_selftest.h"
>  
>  #define PLATFORM(x) .platform = (x)
> -#define GEN(x) .gen = (x), .gen_mask = BIT((x) - 1)
> +#define GEN(x) .gen = (x), .gen_mask = BIT((x) - 1), .display_ver = x

x needs parenthesis.

>  
>  #define I845_PIPE_OFFSETS \
>  	.pipe_offsets = { \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index d44f64b57b7a..3c7db9c690f4 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -162,6 +162,9 @@ struct intel_device_info {
>  
>  	u8 gen;
>  	u8 gt; /* GT number, 0 if undefined */
> +
> +	u8 display_ver;
> +
>  	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
>  
>  	enum intel_platform platform;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
