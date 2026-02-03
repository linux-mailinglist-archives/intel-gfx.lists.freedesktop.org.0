Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEldC7fkgWl0LwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 13:06:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F691D8CA9
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 13:06:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 501B510E636;
	Tue,  3 Feb 2026 12:06:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q6Y/6vQ1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ECEC10E1E5;
 Tue,  3 Feb 2026 12:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770120369; x=1801656369;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gkXPBsJD5oF6HL+mK7jqqDHnkOs1cffKf4CzQGceWzA=;
 b=Q6Y/6vQ1Pv+qnGk2LNVifO1c+pG0nORle8cHuAvdrTiDts1mlGFu/9ks
 7zkJtGJDK5SaTaQmO3YCTDkDVMHZPFXvs2DgHRPs0iCvzpct68/g0xztM
 Gfxsb1+3zixVPS1xVixRnX5DqYR2rcxlldvLr722WTZ4O+6nUJIUJUxyc
 NUjG+MK6UusRR446lEBWXw7GI9+sLCq0AwwZYnmPughEu0oCE1t8gbKd0
 Ci8feJkM9fQBqsNAipbqgh51RkA/bJGySwriMEwIFWZU6LNMkLVPvNEUw
 lk5qLLSePN+KAAdK1q+x2jeDbpwUhJobteBJ306FzDGKvPppuL8jn8uzN g==;
X-CSE-ConnectionGUID: rWb0Ww5RQTOrm9c5TDPiWg==
X-CSE-MsgGUID: ZpCxbBatRo+37giEwcIYBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75146245"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="75146245"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:06:07 -0800
X-CSE-ConnectionGUID: uBfwDrY0QbmVZooPzxh1XA==
X-CSE-MsgGUID: k/OxYAUyTXKWtpfbCZ8LXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="209927579"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:06:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v3 06/19] drm/i915: Remove i915_reg.h from intel_display_device.c
In-Reply-To: <20260129211358.1240283-7-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-7-uma.shankar@intel.com>
Date: Tue, 03 Feb 2026 14:06:02 +0200
Message-ID: <242e99f8cff36a711e74fa2abaca49af09c64255@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6F691D8CA9
X-Rspamd-Action: no action

On Fri, 30 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move GU_CNTL_PROTECTED and GMD_ID_DISPLAY to common header,
> this helps intel_display_device.c free from i915_reg.h dependency.
>
> v2: Move GMD_ID_DISPLAY to display header instead of common (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 7 +++----
>  drivers/gpu/drm/i915/display/intel_display_regs.h   | 8 ++++++++
>  drivers/gpu/drm/i915/i915_reg.h                     | 4 ----
>  3 files changed, 11 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 471f236c9ddf..d449528bfc7f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -10,7 +10,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/intel/pciids.h>
>  
> -#include "i915_reg.h"
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_de.h"
>  #include "intel_display.h"
> @@ -1539,9 +1538,9 @@ probe_gmdid_display(struct intel_display *display, struct intel_display_ip_ver *
>  		return NULL;
>  	}
>  
> -	gmd_id.ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
> -	gmd_id.rel = REG_FIELD_GET(GMD_ID_RELEASE_MASK, val);
> -	gmd_id.step = REG_FIELD_GET(GMD_ID_STEP, val);
> +	gmd_id.ver = REG_FIELD_GET(GMD_ID_DISPLAY_ARCH_MASK, val);
> +	gmd_id.rel = REG_FIELD_GET(GMD_ID_DISPLAY_RELEASE_MASK, val);
> +	gmd_id.step = REG_FIELD_GET(GMD_ID_DISPLAY_STEP, val);
>  
>  	for (i = 0; i < ARRAY_SIZE(gmdid_display_map); i++) {
>  		if (gmd_id.ver == gmdid_display_map[i].ver &&
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index f90d52f7e5be..0d7788db4a7f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -6,6 +6,9 @@
>  
>  #include "intel_display_reg_defs.h"
>  
> +#define GU_CNTL_PROTECTED		_MMIO(0x10100C)
> +#define   DEPRESENT			REG_BIT(9)
> +
>  #define _GEN7_PIPEA_DE_LOAD_SL	0x70068
>  #define _GEN7_PIPEB_DE_LOAD_SL	0x71068
>  #define GEN7_PIPE_DE_LOAD_SL(pipe) _MMIO_PIPE(pipe, _GEN7_PIPEA_DE_LOAD_SL, _GEN7_PIPEB_DE_LOAD_SL)
> @@ -1626,6 +1629,11 @@
>  #define   GLK_DFSM_DISPLAY_DSC_DISABLE	(1 << 7)
>  #define   XE2LPD_DFSM_DBUF_OVERLAP_DISABLE	(1 << 3)
>  
> +#define GMD_ID_DISPLAY				_MMIO(0x510a0)
> +#define   GMD_ID_DISPLAY_ARCH_MASK		REG_GENMASK(31, 22)
> +#define   GMD_ID_DISPLAY_RELEASE_MASK		REG_GENMASK(21, 14)
> +#define   GMD_ID_DISPLAY_STEP			REG_GENMASK(5, 0)
> +
>  #define XE2LPD_DE_CAP			_MMIO(0x41100)
>  #define   XE2LPD_DE_CAP_3DLUT_MASK	REG_GENMASK(31, 30)
>  #define   XE2LPD_DE_CAP_DSC_MASK	REG_GENMASK(29, 28)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c7361e82a0c6..4341308c3b2b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -117,9 +117,6 @@
>   *  #define GEN8_BAR                    _MMIO(0xb888)
>   */
>  
> -#define GU_CNTL_PROTECTED		_MMIO(0x10100C)
> -#define   DEPRESENT			REG_BIT(9)
> -
>  #define GU_CNTL				_MMIO(0x101010)
>  #define   LMEM_INIT			REG_BIT(7)
>  #define   DRIVERFLR			REG_BIT(31)
> @@ -926,7 +923,6 @@
>  #define   MASK_WAKEMEM				REG_BIT(13)
>  #define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
>  
> -#define GMD_ID_DISPLAY				_MMIO(0x510a0)
>  #define   GMD_ID_ARCH_MASK			REG_GENMASK(31, 22)
>  #define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
>  #define   GMD_ID_STEP				REG_GENMASK(5, 0)

I guess these could now go next to

#define GMD_ID_GRAPHICS				_MMIO(0xd8c)
#define GMD_ID_MEDIA				_MMIO(MTL_MEDIA_GSI_BASE + 0xd8c)

in gt/intel_gt_regs.h, but can be a follow-up too.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

-- 
Jani Nikula, Intel
