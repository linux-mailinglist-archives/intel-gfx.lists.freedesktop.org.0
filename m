Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C207D69F0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 13:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DAE110E59C;
	Wed, 25 Oct 2023 11:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF1AA10E59C
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 11:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698232908; x=1729768908;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=HOl0yhR7wr6Upi9D9AQ4xMlETuLrtQXvdXiMfgKfmbs=;
 b=cc3A5vssoHjNyQTQaUgBiUv1suf9v+6IM6YYArq3GR/URi4a6EMTnmXl
 jjdEfDXLTIKuEZSMjxMf+9EWJanb1TzlhK7HdFAYiE5tLospwygIz/V9l
 pYRcER75SceNOVib1JLTX6uHmcPB3e7+W8J95XRRb4uwWNPdvglXsv4Tr
 /CatQ6N6b7BOTa8V8PwOdNqQu3FpPCf0JUK5zzVydmDwgWIlqTghqTbaQ
 hlWqGCXKXsKXgFOFUEdDvLxEUfLJDxJeBwk85YCdv1i3Sh0/VwPjUdWDX
 cc6Oq+XMlWVPzejrvbhnZ7WMWeC2wAPukB/d73B/hGY2htJs0U+SWwBMe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="418406643"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="418406643"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 04:21:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="708659234"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="708659234"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.33.83])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 04:21:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231025102734.2783492-3-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231025102734.2783492-1-nemesa.garg@intel.com>
 <20231025102734.2783492-3-nemesa.garg@intel.com>
Date: Wed, 25 Oct 2023 14:21:43 +0300
Message-ID: <871qdj9cc8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Add the darkscreen debugfs
 under crtc
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

On Wed, 25 Oct 2023, Nemesa Garg <nemesa.garg@intel.com> wrote:
> Add debugfs entry for darkscreen to know the status
> bpc and timer value .

Superfluous space before '.'.

>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_darkscreen.c   | 38 +++++++++++++++++++
>  .../drm/i915/display/intel_display_debugfs.c  |  2 +
>  2 files changed, 40 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.c b/drivers/gpu/drm/i915/display/intel_darkscreen.c
> index ef68dbc7a296..c6490c16fdb5 100644
> --- a/drivers/gpu/drm/i915/display/intel_darkscreen.c
> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
> @@ -67,3 +67,41 @@ void dark_screen_enable(struct intel_crtc_state *crtc_state)
>  	intel_de_rmw(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder), 0, DARK_SCREEN_DETECT |
>  		       DARK_SCREEN_DONE);
>  }
> +
> +static int intel_darkscreen_debugfs_status_get(void *data, u64 *val)
> +{
> +	struct intel_crtc *crtc = data;
> +
> +	*val = crtc->dark_screen.enable;
> +
> +	return 0;
> +}
> +
> +static int intel_darkscreen_debugfs_status_set(void *data, u64 val)
> +{
> +	struct intel_crtc *crtc = data;
> +	struct intel_crtc_state *crtc_state;
> +
> +	crtc->dark_screen.enable = val;
> +
> +	crtc_state = to_intel_crtc_state(crtc->base.state);
> +
> +	if (crtc_state)
> +		dark_screen_enable(crtc_state);

Can it be enabled on the fly?

The function returns early if !enable. So how do you *disable* this
thing?

> +
> +	return 0;
> +}
> +
> +/*
> + * Check the status whether the darkscreen
> + * is enabled or not.
> + */

Useless comment.

> +DEFINE_DEBUGFS_ATTRIBUTE(intel_darkscreen_debugfs_status_fops,
> +			 intel_darkscreen_debugfs_status_get,
> +			 intel_darkscreen_debugfs_status_set, "%llu\n");
> +
> +void intel_darkscreen_crtc_debugfs_add(struct intel_crtc *crtc)
> +{
> +	debugfs_create_file("i915_darkscreen_status", 0644, crtc->base.debugfs_entry,
> +			    crtc, &intel_darkscreen_debugfs_status_fops);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 2836826f8c05..27a6141eab3e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -33,6 +33,7 @@
>  #include "intel_psr.h"
>  #include "intel_psr_regs.h"
>  #include "intel_wm.h"
> +#include "intel_darkscreen.h"
>  
>  static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
>  {
> @@ -1539,6 +1540,7 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
>  	intel_drrs_crtc_debugfs_add(crtc);
>  	intel_fbc_crtc_debugfs_add(crtc);
>  	hsw_ips_crtc_debugfs_add(crtc);
> +	intel_darkscreen_crtc_debugfs_add(crtc);
>  
>  	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
>  			    &i915_current_bpc_fops);

-- 
Jani Nikula, Intel
