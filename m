Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C8F5B900B
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 23:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 779EF10E049;
	Wed, 14 Sep 2022 21:23:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15835890EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 21:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663190577; x=1694726577;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hr0eKWRElBDz3G710qUFjXwKLBMuT3JarJVVYMI9c3c=;
 b=cOkNc27W0GpowCCQUG2NLNtEh417fNVotur56xK8WQD/u04XJsPBORKe
 zc4j55obsUXboyUhmEPJ1EN1QYCY0p3q2xnXbrht21XJ8Cztnl8txPIGH
 dg/ntN2/4sSXce1FLBKY2PACiU5kpGfp5xl3/2W6dGERlDr4HKAAK7XlW
 GTqadn8lXRk67M5A8Gnmvc4kBREg/zbcHsD3SXgTwLit+CCk8Jf7Uro2U
 4yZ3XMNsX5Zb+n+g0hJEGb6BT57Ymj3aUUcmc1v7rDFFhQZlMMzBm3J92
 rYpkfw00AbEzi8zIT1R6d3pnbhMPVtqlkVBVqEjlkUNnVr1M8WhS7LjQX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="299905404"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="299905404"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 14:22:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="720729501"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 14 Sep 2022 14:22:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Sep 2022 00:22:53 +0300
Date: Thu, 15 Sep 2022 00:22:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <YyJGLUva3ZOLUBui@intel.com>
References: <20220820005822.102716-1-anusha.srivatsa@intel.com>
 <20220820005822.102716-2-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220820005822.102716-2-anusha.srivatsa@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Add CDCLK actions to
 intel_cdclk_state
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

On Fri, Aug 19, 2022 at 05:58:19PM -0700, Anusha Srivatsa wrote:
> This is a prep patch for what the rest of the series does.
> 
> Add existing actions that change cdclk - squash, crawl, modeset to
> intel_cdclk_state so we have access to the cdclk values
> that are in transition.
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index b535cf6a7d9e..43835688ee02 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -15,6 +15,14 @@ struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_crtc_state;
>  
> +enum cdclk_actions {
> +	INTEL_CDCLK_MODESET = 0,
> +	INTEL_CDCLK_SQUASH,
> +	INTEL_CDCLK_CRAWL,
> +	INTEL_CDCLK_NOOP,
> +	MAX_CDCLK_ACTIONS
> +};

This whole actions thing feels overly complicated to me.
I think we should only need something like this:

if (new.squash > old.squash) {
	mid.vco = old.vco;
	mid.squash = new.squash;
} else {
	mid.vco = new.vco;
	mid.squash = old.squash;
}
/*
 * bunch of asserts here to make sure
 * the mid state looks sane.
 */
set_cdclk(mid);
set_cdclk(new);

And perhaps the current set_cdclk needs to get chunked up
into smaller pieces so we don't do all the pre/post stuff
more than once needlessly.

> +
>  struct intel_cdclk_config {
>  	unsigned int cdclk, vco, ref, bypass;
>  	u8 voltage_level;
> @@ -51,6 +59,11 @@ struct intel_cdclk_state {
>  
>  	/* bitmask of active pipes */
>  	u8 active_pipes;
> +
> +	struct cdclk_step {
> +		enum cdclk_actions action;
> +		u32 cdclk;
> +	} steps[MAX_CDCLK_ACTIONS];
>  };
>  
>  int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state);
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
