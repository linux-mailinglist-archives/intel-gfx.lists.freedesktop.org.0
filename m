Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9QCcGLwnPmpQAgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 09:18:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A81F46CADDB
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 09:18:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YMCjYnIT;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5264510F3DB;
	Fri, 26 Jun 2026 07:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2C8C10E214;
 Fri, 26 Jun 2026 07:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782458296; x=1813994296;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=V5zZ+TKDTUoUBWc7qGP3eF4AW3+kGIYRjReSnDZPCnM=;
 b=YMCjYnIThfjvBitlmcE41jnU3YkVqSp5U+F7JsScLXmRN5RgUoxW/BdO
 KT8FTmfHU+T5XYdswBKjyQi3aa2A6GGbFhRHCZgtAmJ1HnMpr3HRASTMK
 KrQ1OQG3ImEFntj0MoWdPXCaNj1KBuqW18VNS7INzDnh4w/2NqS+CKXKL
 d4lwlAjPEgkfhWmfeqcB4JjM67SB6r7aZL9tvG+RhTSDZ/AjfUQli9yZk
 5PnGAwJ1t7TWMbod8sYmSdgpM6w8fT0BvgXXfHcXEB3eMsfEXDQOU4neI
 ZcTdGrDYH85JH71njmC0bB3uVjPiw+dhX4nxITuUSQq20vTmLuqJFD3rD g==;
X-CSE-ConnectionGUID: qcROBhRESROeowqIfK6njA==
X-CSE-MsgGUID: k5afCp6jTXO84wMVEiH8Lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="70771837"
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="70771837"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 00:18:15 -0700
X-CSE-ConnectionGUID: Qs6a0u79RdeQdqzTuusLrg==
X-CSE-MsgGUID: uekswhV+TuqeA5CZGimPVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="254870733"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 00:18:14 -0700
Date: Fri, 26 Jun 2026 09:18:12 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/{i915, xe}: move opregion/dram/bw init to
 intel_display_driver_probe_noirq()
In-Reply-To: <aa37d6443516ae660c2de53aba8ca42e6e6d1a5c.1781549229.git.jani.nikula@intel.com>
Message-ID: <802a72cf-55f3-678e-55c0-4b84f8b2174b@intel.com>
References: <cover.1781549229.git.jani.nikula@intel.com>
 <aa37d6443516ae660c2de53aba8ca42e6e6d1a5c.1781549229.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-405234400-1782458295=:605841"
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A81F46CADDB

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-405234400-1782458295=:605841
Content-Type: text/plain; charset=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT

On Mon, 15 Jun 2026, Jani Nikula wrote:
> The intel_opregion_setup(), intel_dram_detect(), and intel_bw_init_hw()
> calls should really be in display. Move them at the beginning of
> intel_display_driver_probe_noirq().
>
> This is a completely non-functional change for xe.
>
> For i915, the init order changes slightly:
>
> - i915_pcode_init() will happen before intel_opregion_setup(). This
>  should be of no consequence.
>
> - The intel_gvt_init() calls will happen before the mentioned
>  functions. There's a lot going on in intel_gvt_init(), but it does not
>  look like this should have dependencies on them either.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> ---
> .../drm/i915/display/intel_display_driver.c   | 17 +++++++++++++++-
> drivers/gpu/drm/i915/i915_driver.c            | 20 ++-----------------
> drivers/gpu/drm/xe/display/xe_display.c       | 20 ++-----------------
> 3 files changed, 20 insertions(+), 37 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 462f78d5b020..15a61f171d73 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -43,6 +43,7 @@
> #include "intel_dp_tunnel.h"
> #include "intel_dpll.h"
> #include "intel_dpll_mgr.h"
> +#include "intel_dram.h"
> #include "intel_encoder.h"
> #include "intel_fb.h"
> #include "intel_fbc.h"
> @@ -203,11 +204,23 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
> {
> 	int ret;
>
> +	intel_opregion_setup(display);
> +
> +	/*
> +	 * Fill the dram structure to get the system dram info. This will be
> +	 * used for memory latency calculation.
> +	 */
> +	ret = intel_dram_detect(display);
> +	if (ret)
> +		goto cleanup_opregion;
> +
> +	intel_bw_init_hw(display);
> +
> 	if (HAS_DISPLAY(display)) {
> 		ret = drm_vblank_init(display->drm,
> 				      INTEL_NUM_PIPES(display));
> 		if (ret)
> -			return ret;
> +			goto cleanup_opregion;
> 	}
>
> 	intel_bios_init(display);
> @@ -306,6 +319,8 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
> 	intel_display_power_driver_remove(display);
> cleanup_bios:
> 	intel_bios_driver_remove(display);
> +cleanup_opregion:
> +	intel_opregion_cleanup(display);
>
> 	return ret;
> }
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index d1d3f039483f..05fdcba7b2dc 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -51,7 +51,6 @@
> #include <drm/intel/intel_pcode_regs.h>
>
> #include "display/i9xx_display_sr.h"
> -#include "display/intel_bw.h"
> #include "display/intel_cdclk.h"
> #include "display/intel_crtc.h"
> #include "display/intel_display_device.h"
> @@ -60,7 +59,6 @@
> #include "display/intel_dmc.h"
> #include "display/intel_dp.h"
> #include "display/intel_dpt.h"
> -#include "display/intel_dram.h"
> #include "display/intel_fbdev.h"
> #include "display/intel_gmbus.h"
> #include "display/intel_hotplug.h"
> @@ -469,7 +467,6 @@ static int i915_pcode_init(struct drm_i915_private *i915)
>  */
> static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
> {
> -	struct intel_display *display = dev_priv->display;
> 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> 	int ret;
>
> @@ -563,26 +560,13 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
> 			drm_dbg(&dev_priv->drm, "can't enable MSI");
> 	}
>
> -	intel_opregion_setup(display);
> -
> 	ret = i915_pcode_init(dev_priv);
> 	if (ret)
> -		goto err_opregion;
> -
> -	/*
> -	 * Fill the dram structure to get the system dram info. This will be
> -	 * used for memory latency calculation.
> -	 */
> -	ret = intel_dram_detect(display);
> -	if (ret)
> -		goto err_opregion;
> -
> -	intel_bw_init_hw(display);
> +		goto err_msi;
>
> 	return 0;
>
> -err_opregion:
> -	intel_opregion_cleanup(display);
> +err_msi:
> 	pci_disable_msi(pdev);
> err_mem_regions:
> 	intel_memory_regions_driver_release(dev_priv);
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index a5768736dbbc..4a621779fc53 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -19,7 +19,6 @@
>
> #include "intel_acpi.h"
> #include "intel_audio.h"
> -#include "intel_bw.h"
> #include "intel_display.h"
> #include "intel_display_core.h"
> #include "intel_display_device.h"
> @@ -29,7 +28,6 @@
> #include "intel_dmc.h"
> #include "intel_dmc_wl.h"
> #include "intel_dp.h"
> -#include "intel_dram.h"
> #include "intel_fbdev.h"
> #include "intel_hdcp.h"
> #include "intel_hotplug.h"
> @@ -112,22 +110,9 @@ int xe_display_init_early(struct xe_device *xe)
> 		return 0;
> 	}
>
> -	/* Early display init.. */
> -	intel_opregion_setup(display);
> -
> -	/*
> -	 * Fill the dram structure to get the system dram info. This will be
> -	 * used for memory latency calculation.
> -	 */
> -	err = intel_dram_detect(display);
> -	if (err)
> -		goto err_opregion;
> -
> -	intel_bw_init_hw(display);
> -
> 	err = intel_display_driver_probe_noirq(display);
> 	if (err)
> -		goto err_opregion;
> +		return err;
>
> 	err = intel_display_driver_probe_nogem(display);
> 	if (err)
> @@ -137,8 +122,7 @@ int xe_display_init_early(struct xe_device *xe)
> err_noirq:
> 	intel_display_driver_remove_noirq(display);
> 	intel_display_power_cleanup(display);
> -err_opregion:
> -	intel_opregion_cleanup(display);
> +
> 	return err;
> }
>
> -- 
> 2.47.3
>
>
--8323329-405234400-1782458295=:605841--
