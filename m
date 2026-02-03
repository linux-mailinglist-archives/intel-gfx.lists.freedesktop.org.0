Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMWJKjjvgWlAMwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 13:51:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 163F0D9584
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 13:51:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C5310E63E;
	Tue,  3 Feb 2026 12:51:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vgv33zOS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EDCF10E63D;
 Tue,  3 Feb 2026 12:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770123061; x=1801659061;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vB+m74EnGDep0MqTF2zeVufHrV6jNE6osxvNmYVOfFc=;
 b=Vgv33zOSgDWr42DZQiZMv/Da9QTpN+sG+kcDi+AoByvKS0IiZddke7Lm
 RHNsuAl5EcVFSo/gboL4S0KnD0GigpnOTRaksRwuxpE7A3dlWXcd7sN+v
 GOVJJg+KslBTEHUYQhcEqkmOKPa7XQtrhbxD/szo5ERNxN+yCJJPgEZmA
 RDdP70j/gFmO7H7CHYWWYpixjm+kDAr2pacx7yHavsdkjZnvkgAn49qty
 V31fsM0kXpz2f5j4PE6FxzZFNpexfeWZPDHmtLmYcECoXKmbC6WOj8hXz
 C1qbPKfRV63xDl2PYKtCON3I4LcepMMurJKIIX+8/tmppsf3NxqbUEpgJ A==;
X-CSE-ConnectionGUID: Ei5xUsnoTwmogl/+njR6Tg==
X-CSE-MsgGUID: u/WwSU6eSB+MlVOIdb7ZpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="81921519"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="81921519"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:50:58 -0800
X-CSE-ConnectionGUID: hsMkuQnSQ5K+vSs2hVOdug==
X-CSE-MsgGUID: JqS5Nw1MQHW17Jz3rfIRpw==
X-ExtLoop1: 1
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:50:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v3 19/19] drm/{i915, xe}: Remove i915_reg.h from display
In-Reply-To: <20260129211358.1240283-20-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-20-uma.shankar@intel.com>
Date: Tue, 03 Feb 2026 14:50:53 +0200
Message-ID: <69c7aea5bc84f5855944f90349bb5b92af13092a@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 163F0D9584
X-Rspamd-Action: no action

On Fri, 30 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Make display files free from including i915_reg.h.
>
> v2: Include modular per component headers (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/hsw_ips.c               | 2 +-
>  drivers/gpu/drm/i915/display/i9xx_plane.c            | 1 -
>  drivers/gpu/drm/i915/display/icl_dsi.c               | 1 -
>  drivers/gpu/drm/i915/display/intel_backlight.c       | 1 -
>  drivers/gpu/drm/i915/display/intel_bw.c              | 2 +-
>  drivers/gpu/drm/i915/display/intel_casf.c            | 1 -
>  drivers/gpu/drm/i915/display/intel_ddi.c             | 1 -
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 1 -
>  drivers/gpu/drm/i915/display/intel_display_power.c   | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_wa.c      | 1 -
>  drivers/gpu/drm/i915/display/intel_dmc.c             | 1 -
>  drivers/gpu/drm/i915/display/intel_fdi.c             | 1 -
>  drivers/gpu/drm/i915/display/intel_hdcp.c            | 2 +-
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c     | 1 -
>  drivers/gpu/drm/i915/display/intel_lt_phy.c          | 1 -
>  drivers/gpu/drm/i915/display/intel_pps.c             | 1 -
>  drivers/gpu/drm/i915/display/intel_tc.c              | 1 -
>  drivers/gpu/drm/i915/display/skl_watermark.c         | 2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c               | 1 -
>  19 files changed, 5 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
> index 0caaea2e64e1..5697fa4eb11f 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -6,9 +6,9 @@
>  #include <linux/debugfs.h>
>  
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_pcode.h>

Nothing's being added there in this patch, so this feels
unrelated. Ditto below.

I think it'll lead to a better overall series if intel_pcode.h (or
intel_pcode_regs.h) isn't included in i915_reg.h but rather everywhere
it's needed.

BR,
Jani.


>  
>  #include "hsw_ips.h"
> -#include "i915_reg.h"
>  #include "intel_color_regs.h"
>  #include "intel_de.h"
>  #include "intel_display_regs.h"
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> index b1fecf178906..9c16753a1f3b 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -10,7 +10,6 @@
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "i9xx_plane.h"
>  #include "i9xx_plane_regs.h"
>  #include "intel_atomic.h"
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index c8e0333706c1..7cf511a6c0f9 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -34,7 +34,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
>  
> -#include "i915_reg.h"
>  #include "icl_dsi.h"
>  #include "icl_dsi_regs.h"
>  #include "intel_atomic.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index a68fdbd2acb9..34e95f05936e 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -12,7 +12,6 @@
>  #include <drm/drm_file.h>
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_backlight.h"
>  #include "intel_backlight_regs.h"
>  #include "intel_connector.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 8d84445c69f1..71149d8bcd73 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -5,8 +5,8 @@
>  
>  #include <drm/drm_atomic_state_helper.h>
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_pcode.h>
>  
> -#include "i915_reg.h"
>  #include "intel_bw.h"
>  #include "intel_crtc.h"
>  #include "intel_display_core.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
> index 0fe4398a1a4e..b167af31de5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.c
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -3,7 +3,6 @@
>  
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_casf.h"
>  #include "intel_casf_regs.h"
>  #include "intel_de.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d8739e2bb004..3f0c9c7fd5f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -34,7 +34,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_privacy_screen_consumer.h>
>  
> -#include "i915_reg.h"
>  #include "icl_dsi.h"
>  #include "intel_alpm.h"
>  #include "intel_audio.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index aba13e8a9051..1ce28a31affb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -15,7 +15,6 @@
>  #include <drm/drm_print.h>
>  
>  #include "hsw_ips.h"
> -#include "i915_reg.h"
>  #include "i9xx_wm_regs.h"
>  #include "intel_alpm.h"
>  #include "intel_bo.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 06adf6afbec0..a6e9f1c8d2dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -7,8 +7,8 @@
>  #include <linux/string_helpers.h>
>  
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_pcode.h>
>  
> -#include "i915_reg.h"
>  #include "intel_backlight_regs.h"
>  #include "intel_cdclk.h"
>  #include "intel_clock_gating.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 2eb4af62d556..d9788a979561 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -5,7 +5,6 @@
>  
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_core.h"
>  #include "intel_display_regs.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 1182bc9a2e6d..8df06b993890 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -29,7 +29,6 @@
>  #include <drm/drm_file.h>
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_power_well.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index 5bb0090dd5ed..24ce8a7842c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -8,7 +8,6 @@
>  #include <drm/drm_fixed.h>
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_atomic.h"
>  #include "intel_crtc.h"
>  #include "intel_ddi.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index b7479ced7871..6110a582437c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -17,8 +17,8 @@
>  #include <drm/display/drm_hdcp_helper.h>
>  #include <drm/drm_print.h>
>  #include <drm/intel/i915_component.h>
> +#include <drm/intel/intel_pcode.h>
>  
> -#include "i915_reg.h"
>  #include "intel_connector.h"
>  #include "intel_de.h"
>  #include "intel_display_jiffies.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 82c39e4ffa37..8865cb2ac569 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -5,7 +5,6 @@
>  
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
>  #include "intel_display_regs.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 04f63bdd0b87..1df23447fd84 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -5,7 +5,6 @@
>  
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_ddi.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index b217ec7aa758..2d799af73bb7 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -9,7 +9,6 @@
>  #include <drm/drm_print.h>
>  
>  #include "g4x_dp.h"
> -#include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_jiffies.h"
>  #include "intel_display_power_well.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 064f572bbc85..78ed9c58a72f 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -7,7 +7,6 @@
>  
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_atomic.h"
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_ddi.h"
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index b41da10f0f85..9efb94b4cbdb 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -7,8 +7,8 @@
>  
>  #include <drm/drm_blend.h>
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_pcode.h>
>  
> -#include "i915_reg.h"
>  #include "i9xx_wm.h"
>  #include "intel_atomic.h"
>  #include "intel_bw.h"
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index d705af3bf8ba..67f0082d3a69 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -33,7 +33,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
>  
> -#include "i915_reg.h"
>  #include "intel_atomic.h"
>  #include "intel_backlight.h"
>  #include "intel_connector.h"

-- 
Jani Nikula, Intel
