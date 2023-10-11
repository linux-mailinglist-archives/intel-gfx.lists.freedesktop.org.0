Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 825B97C55D2
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 15:47:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 412A910E4E5;
	Wed, 11 Oct 2023 13:47:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42D7610E4E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 13:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697032028; x=1728568028;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=stSZc/nTS2iTLgIUQYUeuaUErktq8nw+54Q1vIQaBqg=;
 b=dXX7U6fMd4yzhdY4mUdsoVLd5F7LqqgoME1f2xJaXWsoLlcd2T87TYFM
 woqXEPIvV84oTCgxqxzgqyivqqLWbnxSbktgMmTSIiII4LH8qlweK1e05
 eQOgwZhfZL+TEGCPz7VAUBxrbSRG7OU9HN2KG0nEAtwFdlnVx+/76iG8b
 vImaRwQYwucrGjFvJBsVe3L3u09foF4BQSd++cRKORWeAD1cnf5joH0gu
 yNKemDUvBMt7G71QdDsmZFRqQuDZfQYtFbDiwmytR+KaA/XqyH3Mu3pEF
 7QihO5msx0qVeYShZZCgKxiYQNUyPpiMucR7/wUFFa+a9tbu+AsCiItoS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="388530453"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="388530453"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 06:47:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="870150107"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="870150107"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 06:47:07 -0700
Date: Wed, 11 Oct 2023 16:47:00 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <ZSanVLhcF8uZOu6n@intel.com>
References: <20230907122541.32261-1-ville.syrjala@linux.intel.com>
 <20230907122541.32261-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230907122541.32261-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Drop redundant !modeset check
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

On Thu, Sep 07, 2023 at 03:25:39PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Since commit 7de5b6b54630 ("drm/i915: Don't flag both full
> modeset and fastset at the same time")
> intel_crtc_needs_fastset() and intel_crtc_needs_modeset() have
> been mutually exclusive. Drop the redundant check.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Let's see if the crash returns, however if it does then anyway
its time to change/refactor bigjoiner logic(as we suspected it
to be bigjoiner issue)

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 83e1bc858b9f..526f38b502be 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6606,7 +6606,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
>  	 * valid pipe configuration from the BIOS we need to take care
>  	 * of enabling them on the CRTC's first fastset.
>  	 */
> -	if (intel_crtc_needs_fastset(new_crtc_state) && !modeset &&
> +	if (intel_crtc_needs_fastset(new_crtc_state) &&
>  	    old_crtc_state->inherited)
>  		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
>  }
> -- 
> 2.41.0
> 
