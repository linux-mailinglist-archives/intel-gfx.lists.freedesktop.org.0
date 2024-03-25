Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6C588A484
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 15:30:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BD4D10E821;
	Mon, 25 Mar 2024 14:30:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hJvIECfj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B659E10E910
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 14:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711377019; x=1742913019;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=onmSKknosloqRKow2yJROQeatmDCkeXdWfb1oQMm+VE=;
 b=hJvIECfjcQIunmJGVYgX8vu6P9syy/FbDG1NU1c9nMTFN79dgIlrEqgt
 kP4DlFwDBzk8cyCifLGU+UGxW1FvRIhakVZ+1Wv9DqpIXw1WKiGYqCdpn
 PUTrUIILHMaV1E77at8jyLM56+kbaCg7RmR39IXZx8ScmOhHY8iJKag1i
 v8bWk4alAyJIFG/emqvRR804vMIh0++aNKy8PZOzNgtLb7rk1X/nFTpQT
 MLhQ2RVxnxui6aIeW+nB/urJuOYxoLqtt07FSo+so/+JG2W/Is0aFrE67
 CKIloL+IctzWvka1t/gp9+6CMUtTQFal18lCCmkEwzHR0lksGLT6PQ7i5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="17776126"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="17776126"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 07:30:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="827784694"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="827784694"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 25 Mar 2024 07:30:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 25 Mar 2024 16:30:14 +0200
Date: Mon, 25 Mar 2024 16:30:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 2/4] drm/i915: Use old mbus_join value when increasing
 CDCLK
Message-ID: <ZgGKdnlh5Kw5mY_V@intel.com>
References: <20240325112329.7922-1-stanislav.lisovskiy@intel.com>
 <20240325112329.7922-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240325112329.7922-3-stanislav.lisovskiy@intel.com>
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

On Mon, Mar 25, 2024 at 01:23:27PM +0200, Stanislav Lisovskiy wrote:
> In order to make sure we are not breaking the proper sequence
> lets to updates step by step and don't change MBUS join value
> during MDCLK/CDCLK programming stage.
> MBUS join programming would be taken care by pre/post ddb hooks.
> 
> v2: - Reworded comment about using old mbus_join value in
>       intel_set_cdclk(Ville Syrjälä)
> 
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 31aaa9780dfcf..c7813d433c424 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2611,9 +2611,19 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
>  
>  	if (pipe == INVALID_PIPE ||
>  	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
> +		struct intel_cdclk_config cdclk_config;
> +
>  		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
>  
> -		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
> +		/*
> +		 * By this hack we want to prevent mbus_join to be changed
> +		 * beforehand

That sentence is still confusing.

> - we will take care of this later in
> +		 * intel_dbuf_mbus_post_ddb_update
> +		 */
> +		cdclk_config = new_cdclk_state->actual;
> +		cdclk_config.joined_mbus = old_cdclk_state->actual.joined_mbus;
> +
> +		intel_set_cdclk(i915, &cdclk_config, pipe);
>  	}
>  }
>  
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
