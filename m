Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2466E887218
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 18:46:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E5FC112686;
	Fri, 22 Mar 2024 17:46:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bbiJRPZe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C06D112686
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 17:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711129580; x=1742665580;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MwaMX/0gZUXcNHp3YbmUGW1sFXsBYrIeMlJlPZ4oTSs=;
 b=bbiJRPZeVNn+HVbM5bFrGTm45fUhfPKg7cAye4UoOPbwhUKXT5J2wnj1
 XlczuH/zABYkUHcKCZrGZhDG40WnxNC6prfENO18iKmpKuVZE/3UZ6x9j
 xNlwPZhT/YLxRac3H0Mgjrzlq2ySJ8l+x6yIp+y+L7EUQ+x0Yv9KKIk/5
 ngKpZ/QZAhGrHvbF6zdF/el2Y4jxvYXGbw/yWRzUAtIvwxtbnpTgbJ9i/
 zf97tbZKt/F/s+EwRBQeFYsznk0kSwGx5wjDLcayyLto5gUML14+GUOVp
 vrMA08aWOQbUKqs2o46igMxwSHIduQ48IBEYwD1RaKMSY2zBI05wrBD83 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6047366"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; 
   d="scan'208";a="6047366"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 10:46:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="827783568"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; d="scan'208";a="827783568"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 22 Mar 2024 10:46:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Mar 2024 19:46:16 +0200
Date: Fri, 22 Mar 2024 19:46:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 1/5] drm/i915: Update mbus in intel_dbuf_mbus_update and
 do it properly
Message-ID: <Zf3D6IsC1iubhYjJ@intel.com>
References: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
 <20240322114046.24930-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240322114046.24930-2-stanislav.lisovskiy@intel.com>
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

On Fri, Mar 22, 2024 at 01:40:42PM +0200, Stanislav Lisovskiy wrote:
> According to BSpec we need to do correspondent MBUS updates before
> or after DBUF reallocation, depending on whether we are enabling
> or disabling mbus joining(typical scenario is swithing between
> multiple and single displays).
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index bc341abcab2fe..8ff69da664807 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3574,7 +3574,7 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio
>   * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
>   * update the request state of all DBUS slices.
>   */
> -static void update_mbus_pre_enable(struct intel_atomic_state *state)
> +static void intel_dbuf_mbus_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	u32 mbus_ctl;
> @@ -3632,7 +3632,9 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
>  
>  	WARN_ON(!new_dbuf_state->base.changed);
>  
> -	update_mbus_pre_enable(state);
> +	if (!old_dbuf_state->joined_mbus && new_dbuf_state->joined_mbus)
> +		intel_dbuf_mbus_update(state);
> +

Does this acutally do something sensible on its own?
If not I'd just squash this into the other patch.

>  	gen9_dbuf_slices_update(i915,
>  				old_dbuf_state->enabled_slices |
>  				new_dbuf_state->enabled_slices);
> @@ -3653,6 +3655,9 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
>  
>  	WARN_ON(!new_dbuf_state->base.changed);
>  
> +	if (old_dbuf_state->joined_mbus && !new_dbuf_state->joined_mbus)
> +		intel_dbuf_mbus_update(state);
> +
>  	gen9_dbuf_slices_update(i915,
>  				new_dbuf_state->enabled_slices);
>  }
> -- 
> 2.37.3

-- 
Ville Syrj�l�
Intel
