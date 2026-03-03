Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LdVIjMIp2k7bgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 17:11:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7634E1F35EF
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 17:11:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E84BA10E099;
	Tue,  3 Mar 2026 16:11:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ErbqYlCD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73BB810E099;
 Tue,  3 Mar 2026 16:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772554285; x=1804090285;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Gz+MhbO5dQbRlIbxydO6J8tl6FCkqp0KUJU+izR5ljQ=;
 b=ErbqYlCD5Ns3KxNZx1/BfKgUp3pEvMEERGxbcZeLCfqLh0hcNcy/beAP
 TxXLePRtDiAdmAi2HysCa6mDBmI8xKnmGFJf5+GroFM+6LNact1aZPGsd
 JfV0UPyoF14Ct9k0tLSVNU4a2yzF7pezkuwXcTGjcpkyzLbdUvyL9Am7l
 HjLXgN4xKiSRo6tncKXUZR9jHQBIZDkAhnaRK41bwUVThEKFKwSukCLCw
 p94o21SfhDg0P1lppCrhXj7t1IBY5B9eYcI5t+tm30JbcVnDbgcfpkAzA
 XOd5xDXGEjVDDleC028RW0VpdIKck73SuT68+AmUe2Dk+sLMU07vwKmfn A==;
X-CSE-ConnectionGUID: 7tixdQ2nTkSstEjTdmIWIA==
X-CSE-MsgGUID: iuKT+QSxQd6eg43IT9SC6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="85064890"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="85064890"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 08:11:16 -0800
X-CSE-ConnectionGUID: ap0MkpcmSV2LShlg3wZUfQ==
X-CSE-MsgGUID: ku6vi9t/RiO3oaxXP3S80w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="223045553"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.23])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 08:11:15 -0800
Date: Tue, 3 Mar 2026 18:11:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/4] drm/i915: add VMA to parent interface
Message-ID: <aacIH_3FjC7azuC9@intel.com>
References: <cover.1772212579.git.jani.nikula@intel.com>
 <036f4b2d20cc1b0a7ab814beb5bb914c53b6eb53.1772212579.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <036f4b2d20cc1b0a7ab814beb5bb914c53b6eb53.1772212579.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 7634E1F35EF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 07:17:12PM +0200, Jani Nikula wrote:
> It's unclear what the direction of the VMA abstraction in the parent
> interface should be, but convert i915_vma_fence_id() to parent interface
> for starters. This paves the way for making struct i915_vma opaque
> towards display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c          |  5 ++---
>  drivers/gpu/drm/i915/display/intel_parent.c       |  9 +++++++++
>  drivers/gpu/drm/i915/display/intel_parent.h       |  3 +++
>  drivers/gpu/drm/i915/i915_driver.c                |  1 +
>  drivers/gpu/drm/i915/i915_vma.c                   | 10 ++++++++++
>  drivers/gpu/drm/i915/i915_vma.h                   |  7 ++-----
>  drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h |  2 --
>  include/drm/intel/display_parent_interface.h      |  7 +++++++
>  8 files changed, 34 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 91de38379282..3e9b3e532499 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -45,7 +45,6 @@
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_print.h>
>  
> -#include "i915_vma.h"
>  #include "i9xx_plane_regs.h"
>  #include "intel_de.h"
>  #include "intel_display_device.h"
> @@ -1463,7 +1462,7 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
>  		    !intel_fbc_has_fences(display));
>  
>  	if (plane_state->flags & PLANE_HAS_FENCE)
> -		fbc_state->fence_id =  i915_vma_fence_id(plane_state->ggtt_vma);
> +		fbc_state->fence_id = intel_parent_vma_fence_id(display, plane_state->ggtt_vma);

Hmm. I think I'd rather just return the fence from the pin stuff
and track it in the plane state, and then nuke plane_state->flags
since it'll no longer be needed.

>  	else
>  		fbc_state->fence_id = -1;
>  
> @@ -1490,7 +1489,7 @@ static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
>  	 */
>  	return DISPLAY_VER(display) >= 9 ||
>  		(plane_state->flags & PLANE_HAS_FENCE &&
> -		 i915_vma_fence_id(plane_state->ggtt_vma) != -1);
> +		 intel_parent_vma_fence_id(display, plane_state->ggtt_vma) != -1);
>  }
>  
>  static bool intel_fbc_is_cfb_ok(const struct intel_plane_state *plane_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
> index 89f78ca1cd15..0c5962cb2f6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -317,6 +317,15 @@ void intel_parent_stolen_node_free(struct intel_display *display, const struct i
>  	display->parent->stolen->node_free(node);
>  }
>  
> +/* vma */
> +int intel_parent_vma_fence_id(struct intel_display *display, const struct i915_vma *vma)
> +{
> +	if (!display->parent->vma)
> +		return -1;
> +
> +	return display->parent->vma->fence_id(vma);
> +}
> +
>  /* generic */
>  void intel_parent_fence_priority_display(struct intel_display *display, struct dma_fence *fence)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
> index 2317482ef072..6e7d09133aee 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -102,6 +102,9 @@ u64 intel_parent_stolen_node_size(struct intel_display *display, const struct in
>  struct intel_stolen_node *intel_parent_stolen_node_alloc(struct intel_display *display);
>  void intel_parent_stolen_node_free(struct intel_display *display, const struct intel_stolen_node *node);
>  
> +/* vma */
> +int intel_parent_vma_fence_id(struct intel_display *display, const struct i915_vma *vma);
> +
>  /* generic */
>  bool intel_parent_has_auxccs(struct intel_display *display);
>  bool intel_parent_has_fenced_regions(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 5f77e891604d..18f912043f90 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -775,6 +775,7 @@ static const struct intel_display_parent_interface parent = {
>  	.rpm = &i915_display_rpm_interface,
>  	.rps = &i915_display_rps_interface,
>  	.stolen = &i915_display_stolen_interface,
> +	.vma = &i915_display_vma_interface,
>  
>  	.fence_priority_display = fence_priority_display,
>  	.has_auxccs = has_auxccs,
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index afc192d9931b..6a3a4d4244dc 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -27,6 +27,7 @@
>  
>  #include <drm/drm_gem.h>
>  #include <drm/drm_print.h>
> +#include <drm/intel/display_parent_interface.h>
>  
>  #include "display/intel_fb.h"
>  #include "display/intel_frontbuffer.h"
> @@ -2332,3 +2333,12 @@ int __init i915_vma_module_init(void)
>  
>  	return 0;
>  }
> +
> +static int i915_vma_fence_id(const struct i915_vma *vma)
> +{
> +	return vma->fence ? vma->fence->id : -1;
> +}
> +
> +const struct intel_display_vma_interface i915_display_vma_interface = {
> +	.fence_id = i915_vma_fence_id,
> +};
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index 8054047840aa..fa2d9b429db6 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -404,11 +404,6 @@ i915_vma_unpin_fence(struct i915_vma *vma)
>  		__i915_vma_unpin_fence(vma);
>  }
>  
> -static inline int i915_vma_fence_id(const struct i915_vma *vma)
> -{
> -	return vma->fence ? vma->fence->id : -1;
> -}
> -
>  void i915_vma_parked(struct intel_gt *gt);
>  
>  static inline bool i915_vma_is_scanout(const struct i915_vma *vma)
> @@ -481,4 +476,6 @@ int i915_vma_module_init(void);
>  I915_SELFTEST_DECLARE(int i915_vma_get_pages(struct i915_vma *vma));
>  I915_SELFTEST_DECLARE(void i915_vma_put_pages(struct i915_vma *vma));
>  
> +extern const struct intel_display_vma_interface i915_display_vma_interface;
> +
>  #endif
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
> index c4b5adaaa99a..da1d97b48fee 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
> @@ -26,8 +26,6 @@ struct i915_vma {
>  	struct xe_ggtt_node *node;
>  };
>  
> -#define i915_vma_fence_id(vma) -1
> -
>  static inline u32 i915_ggtt_offset(const struct i915_vma *vma)
>  {
>  	return xe_ggtt_node_addr(vma->node);
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
> index b4b0f58ae3ee..d02ab7cc1c92 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -149,6 +149,10 @@ struct intel_display_stolen_interface {
>  	void (*node_free)(const struct intel_stolen_node *node);
>  };
>  
> +struct intel_display_vma_interface {
> +	int (*fence_id)(const struct i915_vma *vma);
> +};
> +
>  /**
>   * struct intel_display_parent_interface - services parent driver provides to display
>   *
> @@ -198,6 +202,9 @@ struct intel_display_parent_interface {
>  	/** @stolen: Stolen memory. */
>  	const struct intel_display_stolen_interface *stolen;
>  
> +	/** @vma: VMA interface. Optional. */
> +	const struct intel_display_vma_interface *vma;
> +
>  	/* Generic independent functions */
>  	struct {
>  		/** @fence_priority_display: Set display priority. Optional. */
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
