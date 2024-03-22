Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E99C887217
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 18:45:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2C0D112684;
	Fri, 22 Mar 2024 17:45:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JUenmAFp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 646BB112685
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 17:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711129534; x=1742665534;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LQhZBzDTMJdQBqSZ6wUhIGcDaYIRSjIYTSrm0Xg9BzY=;
 b=JUenmAFppxq+5hsSJwoUn+DIgxBuUqyDRKsMar4lwqikH+exe1kUjkL4
 HS5txEW8OOsGcwFvetfyvImHt0HuziIlpEp5RFdq9D9QBu9xM+Fm7x/Xe
 epVORvm73vURMigpDWaR210bwrAMRieZj/zchIWSqL9GVQoa9yrEmHeYQ
 KwcIliCuINJNtYdC3VACLlLbK//hVNJWDaZWhJjECDvyQncmADeXM3Blu
 ZCvVLQkx0Gh6vifR1oRpwePZ0Frn9BPyWRyS16gmz5L2D6sor3BNgqAKT
 yA69E0MxgVSKKbNQIaB1lwZ8xMvMtdBOWqurNymCYMbh1J3dJtmm0vkH9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6047277"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; 
   d="scan'208";a="6047277"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 10:45:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="827783565"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; d="scan'208";a="827783565"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 22 Mar 2024 10:45:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Mar 2024 19:45:29 +0200
Date: Fri, 22 Mar 2024 19:45:29 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 3/5] drm/i915: Use old mbus_join value when increasing
 CDCLK
Message-ID: <Zf3DuTTsvjXfdOQE@intel.com>
References: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
 <20240322114046.24930-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240322114046.24930-4-stanislav.lisovskiy@intel.com>
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

On Fri, Mar 22, 2024 at 01:40:44PM +0200, Stanislav Lisovskiy wrote:
> In order to make sure we are not breaking the proper sequence
> lets to updates step by step and don't change MBUS join value
> during MDCLK/CDCLK programming stage.
> MBUS join programming would be taken care by pre/post ddb hooks.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 31aaa9780dfcf..43a9616c78260 100644
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
> +		 * By this hack we want to prevent mbus_join to be programmed
> +		 * beforehand - we will take care of this later in pre ddb
> +		 * programming hook.
> +		 */

We're not doing anything to prevent mbus joining to be
programmed here. It will simply not be programmed here,
which is why we need to use the old mbus_join based ratio.

I would also include the actual function name here instead
of "pre ddb programming hook" since that's rather vague.

So this could use a bit of rewording. Otherwise lgtm
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

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
