Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7077582471B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 18:17:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCBEC10E4E5;
	Thu,  4 Jan 2024 17:17:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B3E610E509
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 17:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704388659; x=1735924659;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=F9Z3FynOq2E7WHFTW7uSxi7vFXuDC4sMwr7AinqZvMw=;
 b=X0qTuhOu0+LiKOIBfiK+QE8ELHUUFkmb0aYF4e2SbPzIPdOMdyFqMTuV
 pXZ0AOmPgL7Y9gdbXmWRobcyvJ7AfzCn/FRMxxyIQ15BBfh6qkjaFjIMj
 +HkD9I6zDmJ8Wj+lEN6H06i63q1e74VnPYadQ6j6FO9kxKY/RdoLnLER7
 YyRcucYiTMcktALv0P6UIUCT1G7rmhnwB/sLAoUIf6O3MZSNObqCgySTm
 qclCMpGyIfVgZkiyffrou5jLdGeQ5NBgKfXYrsfhrDQvwWtQuc4Cn8NOu
 UxBnGg7dEPonDy+pcFEUitdZ6EEapPNaMMRJIJYkv4fjmdgZ9/KjEDEb8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4413712"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; 
   d="scan'208";a="4413712"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 09:17:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="756685882"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="756685882"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 09:17:28 -0800
Date: Thu, 4 Jan 2024 19:17:39 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915: don't make assumptions about intel_wakeref_t
 type
Message-ID: <ZZboM17ia5lPn+1o@ideak-desk.fi.intel.com>
References: <20240104164600.783371-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240104164600.783371-1-jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, intel-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 04, 2024 at 06:46:00PM +0200, Jani Nikula wrote:
> intel_wakeref_t is supposed to be a mostly opaque cookie to its
> users. It should only be checked for being non-zero and set to
> zero. Debug logging its actual value is meaningless. Switch to just
> debug logging whether the async_put_wakeref is non-zero.
> 
> The issue dates back to much earlier than
> commit b49e894c3fd8 ("drm/i915: Replace custom intel runtime_pm tracker
> with ref_tracker library"), but this is the one that brought about a
> build failure due to the printf format.
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Closes: https://lore.kernel.org/r/20240102111222.2db11208@canb.auug.org.au
> Fixes: b49e894c3fd8 ("drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library")
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 5f091502719b..6fd4fa52253a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -405,8 +405,8 @@ print_async_put_domains_state(struct i915_power_domains *power_domains)
>  						     struct drm_i915_private,
>  						     display.power.domains);
>  
> -	drm_dbg(&i915->drm, "async_put_wakeref %lu\n",
> -		power_domains->async_put_wakeref);
> +	drm_dbg(&i915->drm, "async_put_wakeref: %s\n",
> +		str_yes_no(power_domains->async_put_wakeref));
>  
>  	print_power_domains(power_domains, "async_put_domains[0]",
>  			    &power_domains->async_put_domains[0]);
> -- 
> 2.39.2
> 
