Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F785B253D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 19:57:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D92F210EB83;
	Thu,  8 Sep 2022 17:57:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6B1610EB83
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 17:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662659854; x=1694195854;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qRPnnI9UV0emwiN07w0bee1rsnYCTBr4+v8eEZ8/ap8=;
 b=AFwCNNpIXoDXwPQxAh/N+UUBI0gJhTB4sFr347Bpsel4m1S8NxBr4p46
 qlXAjRvQy9Wv3op9RoFLTloMC7IbuYpw06U3U0ojta92t9KvsBNdOLth4
 eiEnKv5cXZnnTDcnRRUwFnGiseKU1kao4gdn1ly9M6+UPc1cwsIDU6OuM
 WY6GegM+0b8p7jpwaGpv6FMu1f65AZ4mSfxWVdphcP+GYETdSyVgqGGA+
 mz9S54tWnLDUzdfSGYIukO2tiKToK7pSPpalSSXpRbUPeQBMunmSOmcBE
 EKjB5ryxL8SuEFGQvTSSPHmwVJ/zlhmdihp1qSeyTrnFXis9Qj9D76s6X g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="297278217"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="297278217"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 10:57:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="676806973"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 08 Sep 2022 10:57:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Sep 2022 20:57:31 +0300
Date: Thu, 8 Sep 2022 20:57:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YxotC3pJctVNNjmv@intel.com>
References: <20220908165702.973854-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220908165702.973854-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: hide struct intel_dsb better
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 08, 2022 at 07:57:02PM +0300, Jani Nikula wrote:
> struct intel_dsb can be an opaque type, hidden in intel_dsb.c. Make it
> so. Reduce related includes while at it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

One thing I was mildly worried about with dsb is the cost
of creating the batch (updating LUTs involves writing some
thousands of dwords). So I was pondering whether that should
be inlined as opposed to being a function call per dword.
But as it stands it's already a function call, and
I've not actually measured how fast/slow it really is.
So can't really argue against this sort of stuff, for the
moment at least :)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c |  1 +
>  drivers/gpu/drm/i915/display/intel_dsb.c     | 30 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dsb.h     | 28 ------------------
>  drivers/gpu/drm/i915/i915_drv.h              |  1 -
>  5 files changed, 32 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index ed98c732b24e..6bda4274eae9 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -26,6 +26,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dpll.h"
> +#include "intel_dsb.h"
>  #include "vlv_dsi_pll.h"
>  
>  struct intel_color_funcs {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 2b6bb5ee7698..296cbcd1352c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -91,6 +91,7 @@
>  #include "intel_dmc.h"
>  #include "intel_dp_link_training.h"
>  #include "intel_dpt.h"
> +#include "intel_dsb.h"
>  #include "intel_fbc.h"
>  #include "intel_fbdev.h"
>  #include "intel_fdi.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index c4affcb216fd..fc9c3e41c333 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -9,6 +9,36 @@
>  #include "i915_drv.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_dsb.h"
> +
> +struct i915_vma;
> +
> +enum dsb_id {
> +	INVALID_DSB = -1,
> +	DSB1,
> +	DSB2,
> +	DSB3,
> +	MAX_DSB_PER_PIPE
> +};
> +
> +struct intel_dsb {
> +	enum dsb_id id;
> +	u32 *cmd_buf;
> +	struct i915_vma *vma;
> +
> +	/*
> +	 * free_pos will point the first free entry position
> +	 * and help in calculating tail of command buffer.
> +	 */
> +	int free_pos;
> +
> +	/*
> +	 * ins_start_offset will help to store start address of the dsb
> +	 * instuction and help in identifying the batch of auto-increment
> +	 * register.
> +	 */
> +	u32 ins_start_offset;
> +};
>  
>  #define DSB_BUF_SIZE    (2 * PAGE_SIZE)
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
> index 6cb9c580cdca..74dd2b3343bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> @@ -11,34 +11,6 @@
>  #include "i915_reg_defs.h"
>  
>  struct intel_crtc_state;
> -struct i915_vma;
> -
> -enum dsb_id {
> -	INVALID_DSB = -1,
> -	DSB1,
> -	DSB2,
> -	DSB3,
> -	MAX_DSB_PER_PIPE
> -};
> -
> -struct intel_dsb {
> -	enum dsb_id id;
> -	u32 *cmd_buf;
> -	struct i915_vma *vma;
> -
> -	/*
> -	 * free_pos will point the first free entry position
> -	 * and help in calculating tail of command buffer.
> -	 */
> -	int free_pos;
> -
> -	/*
> -	 * ins_start_offset will help to store start address of the dsb
> -	 * instuction and help in identifying the batch of auto-increment
> -	 * register.
> -	 */
> -	u32 ins_start_offset;
> -};
>  
>  void intel_dsb_prepare(struct intel_crtc_state *crtc_state);
>  void intel_dsb_cleanup(struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 76aad81c014b..be201ba5e9ab 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -38,7 +38,6 @@
>  
>  #include "display/intel_display.h"
>  #include "display/intel_display_core.h"
> -#include "display/intel_dsb.h"
>  
>  #include "gem/i915_gem_context_types.h"
>  #include "gem/i915_gem_lmem.h"
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
