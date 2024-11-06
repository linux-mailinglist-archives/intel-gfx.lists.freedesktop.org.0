Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 553689BF973
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 23:47:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFFB410E7AF;
	Wed,  6 Nov 2024 22:47:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WzoInvZn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9502010E7A7;
 Wed,  6 Nov 2024 22:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730933224; x=1762469224;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9+qqroiDHbkQzw3AE5zj6uV2uMIQ37XQPwpPQM7joXU=;
 b=WzoInvZn7aSbpA8yqla6CP4KCoxM4kRVsV0P4lZG0kQ/m+mF/MF2UUcc
 wprwaV5NJMuQt5QPAXmgoT6NUqC1FTQ7HIzXkph6UEkrOfqXRtWtaLcBt
 8U66lOwooK8oolRjQzuAT2RMMB3Vf2ElbgGULcHvxcDOo4uvD8q0nlo96
 ZlSaUuj9cf3o149eCa9wLDgew3f8xFJsVu7SYdeFDy0rpREU7+/zHgZK/
 ih3qof/sLWip06LDD1HN6lJtXP/WZ+00ogpctziStzSnQ7nYIr1BTDxhn
 euf+K5VUg9T0V556mU4aI25pwfeSGlIW+xt1wwGMnpYUmUYNMiXP6GXBe w==;
X-CSE-ConnectionGUID: RHZij5RoRfuqUazEM4sS7Q==
X-CSE-MsgGUID: 22wR5MOASjW5/StLwjavfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30613043"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30613043"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 14:47:03 -0800
X-CSE-ConnectionGUID: VoolTkhoQoOEplqRqZnYHg==
X-CSE-MsgGUID: rK3LIUzASca2W7ypEAOqiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="84899237"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Nov 2024 14:47:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 00:46:59 +0200
Date: Thu, 7 Nov 2024 00:46:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@intel.com, ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH 8/8] drm/i915/debugfs: add dbuf alloc status as part of
 i915_ddb_info
Message-ID: <Zyvx49k6xg6vA83T@intel.com>
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
 <20241105071600.235338-9-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241105071600.235338-9-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Nov 05, 2024 at 09:16:00AM +0200, Vinod Govindapillai wrote:
> >From xe3 onwards, there is a provision to define and
> use min ddb and interim ddb allocations for async flip
> use case. Add the dbuf allocation status as part of
> i915_ddb_info as well to show if min or interim ddb
> is being used.
> 
> Bspec: 72053
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 23 ++++++++++++++++---
>  .../i915/display/skl_universal_plane_regs.h   |  1 +
>  2 files changed, 21 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 11aff485d8fa..bce4a1ab05c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -39,6 +39,7 @@
>  #include "intel_pps.h"
>  #include "intel_psr.h"
>  #include "intel_psr_regs.h"
> +#include "skl_universal_plane_regs.h"
>  #include "intel_vdsc.h"
>  #include "intel_wm.h"
>  
> @@ -688,9 +689,24 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
>  	return 0;
>  }
>  
> +static u32 dbuf_alloc_status(struct intel_display *display,
> +			     enum pipe pipe, enum plane_id plane_id)
> +{
> +	u32 val = 0;
> +
> +	if (DISPLAY_VER(display) >= 30) {
> +		u32 reg = intel_de_read(display,
> +					PLANE_MIN_BUF_CFG(pipe, plane_id));
> +		val = REG_FIELD_GET(PLANE_DBUF_ALLOC_STATUS_MASK, reg);
> +	}
> +
> +	return val;
> +}
> +
>  static int i915_ddb_info(struct seq_file *m, void *unused)
>  {
>  	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> +	struct intel_display *display = &dev_priv->display;
>  	struct skl_ddb_entry *entry;
>  	struct intel_crtc *crtc;
>  
> @@ -699,7 +715,7 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
>  
>  	drm_modeset_lock_all(&dev_priv->drm);
>  
> -	seq_printf(m, "%-15s%8s%8s%8s\n", "", "Start", "End", "Size");
> +	seq_printf(m, "%-15s%8s%8s%8s%16s\n", "", "Start", "End", "Size", "Alloc Status");

This guy is meant ot just print the software state. The hardware might
not even be awake here. So this doesn't belong here. It would be better
to add it to the intel_watermark tool instead.

>  
>  	for_each_intel_crtc(&dev_priv->drm, crtc) {
>  		struct intel_crtc_state *crtc_state =
> @@ -711,9 +727,10 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
>  
>  		for_each_plane_id_on_crtc(crtc, plane_id) {
>  			entry = &crtc_state->wm.skl.plane_ddb[plane_id];
> -			seq_printf(m, "  Plane%-8d%8u%8u%8u\n", plane_id + 1,
> +			seq_printf(m, "  Plane%-8d%8u%8u%8u%8u\n", plane_id + 1,
>  				   entry->start, entry->end,
> -				   skl_ddb_entry_size(entry));
> +				   skl_ddb_entry_size(entry),
> +				   dbuf_alloc_status(display, pipe, plane_id));
>  		}
>  
>  		entry = &crtc_state->wm.skl.plane_ddb[PLANE_CURSOR];
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index 65a5482fae60..53550356430d 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -390,6 +390,7 @@
>  
>  #define PLANE_AUTO_MIN_DBUF_EN			REG_BIT(31)
>  #define PLANE_MIN_DDB_BLOCKS_MASK		REG_GENMASK(27, 16)
> +#define PLANE_DBUF_ALLOC_STATUS_MASK		REG_GENMASK(15, 14)

Do these bits actually mean something?

>  #define PLANE_INTERIM_DDB_BLOCKS_MASK		REG_GENMASK(11, 0)
>  
>  /* tgl+ */
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
