Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FADC9F8EAB
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 10:12:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17EAE10EF3B;
	Fri, 20 Dec 2024 09:12:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WC4JmkZt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 115E110E384;
 Fri, 20 Dec 2024 09:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734685921; x=1766221921;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Y6fWIpNpn6+RfkCwXAYImqJKK8WJMBpzJdscsLxngmk=;
 b=WC4JmkZtrdWO+mQsgKUrJ9DGK+dlQvI7AJs2pSqPsY1Z72DmWDqt4nmF
 +FNOqNlF+f0ami9cuIXYYtKXzA9LX1nM8OSU023JkMkEPQiJ2WBmqGl3Q
 77K+D3MeCd835x/jluNlMN2gxHjkg+tOC29DoGt7jhTne/tWtdS45f87h
 9jGV2i04ZCSjyLlucfpkopEOTE82ZyVncPyDxXmAx4+nUH7FvuREF8b6I
 AVjXnhbHCHwxlWi+N0HVDe9Se4VehW5Z4zoMAKyu4SGLZ43gWCEiWULyv
 TapG6+eURl/c2x7Yhkzry6Eq7W5FropiyTdK261+SCnzgcX1pFQM/SvAH w==;
X-CSE-ConnectionGUID: R1zxceReQ7CJQVr7U2oukA==
X-CSE-MsgGUID: zcSvNclCRFStBcsinMk1fg==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="45834874"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="45834874"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 01:12:00 -0800
X-CSE-ConnectionGUID: VokFSDUPT0ucR0XQoYSd1A==
X-CSE-MsgGUID: y5XR78syS+KOFb/33K20qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="98659126"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Dec 2024 01:11:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Dec 2024 11:11:57 +0200
Date: Fri, 20 Dec 2024 11:11:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/display: Do not assume zero offset when
 duplicating global state
Message-ID: <Z2U03bMgwHMvapu-@intel.com>
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
 <20241219214909.104869-2-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241219214909.104869-2-gustavo.sousa@intel.com>
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

On Thu, Dec 19, 2024 at 06:48:36PM -0300, Gustavo Sousa wrote:
> The current intel_*_duplicate_state() functions assume the offset for
> the base member of their state structures is zero when calling
> kmemdup(). While that is true today, such assumption should not be made
> and proper offset must be applied when calling kmemdup(), otherwise we
> will be duplicating the wrong memory area if, for some reason, the
> offset is changed in the future.

All kms objects we use make that same assumption. I think the correct
thing to do is to just throw in some BUILD_BUG_ON()/etc. to make the
thing not build if that doesn't hold. I had a patch like that ages
ago, but it's no doubt 110% stale by now.

I suppose no real harm if avoiding that assumption in spots like
this, but the &foo->base==NULL <-> foo==NULL assumptions we have
all over the place are the far bigger issue.

> 
> As such, update each of those functions to use its respective
> to_*_state() as the parameter to kmemdup().
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       | 4 ++--
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 4 ++--
>  drivers/gpu/drm/i915/display/intel_pmdemand.c | 4 ++--
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 4 ++--
>  4 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 08e8a67ca74c..30236010e0ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -1425,9 +1425,9 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  static struct intel_global_state *
>  intel_bw_duplicate_state(struct intel_global_obj *obj)
>  {
> -	struct intel_bw_state *state;
> +	struct intel_bw_state *state = to_intel_bw_state(obj->state);
>  
> -	state = kmemdup(obj->state, sizeof(*state), GFP_KERNEL);
> +	state = kmemdup(state, sizeof(*state), GFP_KERNEL);
>  	if (!state)
>  		return NULL;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 3506e576bf6b..fc084e2a4c6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3130,9 +3130,9 @@ static int fixed_modeset_calc_cdclk(struct intel_atomic_state *state)
>  
>  static struct intel_global_state *intel_cdclk_duplicate_state(struct intel_global_obj *obj)
>  {
> -	struct intel_cdclk_state *cdclk_state;
> +	struct intel_cdclk_state *cdclk_state = to_intel_cdclk_state(obj->state);
>  
> -	cdclk_state = kmemdup(obj->state, sizeof(*cdclk_state), GFP_KERNEL);
> +	cdclk_state = kmemdup(cdclk_state, sizeof(*cdclk_state), GFP_KERNEL);
>  	if (!cdclk_state)
>  		return NULL;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> index cdd314956a31..1f71efb7d04d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -18,9 +18,9 @@
>  static struct intel_global_state *
>  intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
>  {
> -	struct intel_pmdemand_state *pmdemand_state;
> +	struct intel_pmdemand_state *pmdemand_state = to_intel_pmdemand_state(obj->state);
>  
> -	pmdemand_state = kmemdup(obj->state, sizeof(*pmdemand_state), GFP_KERNEL);
> +	pmdemand_state = kmemdup(pmdemand_state, sizeof(*pmdemand_state), GFP_KERNEL);
>  	if (!pmdemand_state)
>  		return NULL;
>  
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 29e8ea91c858..b3d38e09df5a 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3291,9 +3291,9 @@ static void skl_setup_wm_latency(struct drm_i915_private *i915)
>  
>  static struct intel_global_state *intel_dbuf_duplicate_state(struct intel_global_obj *obj)
>  {
> -	struct intel_dbuf_state *dbuf_state;
> +	struct intel_dbuf_state *dbuf_state = to_intel_dbuf_state(obj->state);
>  
> -	dbuf_state = kmemdup(obj->state, sizeof(*dbuf_state), GFP_KERNEL);
> +	dbuf_state = kmemdup(dbuf_state, sizeof(*dbuf_state), GFP_KERNEL);
>  	if (!dbuf_state)
>  		return NULL;
>  
> -- 
> 2.47.1

-- 
Ville Syrjälä
Intel
