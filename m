Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B70A23E52
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 14:31:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1BAD10EAAC;
	Fri, 31 Jan 2025 13:31:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BrUVm08l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D048310E0D6;
 Fri, 31 Jan 2025 13:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738330304; x=1769866304;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=acxBtP3naVLbc/nuu2Xr7tOIoK71doyEyfio1+8KUkk=;
 b=BrUVm08lGkiI0WY/8+EJ8lJkNlu57O9Zn6jn9UsmeqQaF3zzuBszdOtj
 GfHG46lpuuGLrlCyl0CRA8c6Bvc5R53jMYNuNDwsLLzqZoceJkrzPucE6
 LOS3mtgOq+0bCq0v9NUrIljbyTaxfvvZ+JevmNJtpAkDktzojkeDvjkLH
 W4bJQm8B7D90L71xgrb/4JG3DoQR61uGygN7MLQeuY8mjAq8MggaqMijf
 i8tS9qI9cnknWWAK8YG66vfs/190ZSHTBSfeEf+jYMDxDAx8uciSByOKX
 Qn6nP3uXZXXS0PEUYcKcdJvOgiINFJlQR9GdZ7JRoTaEV8/AmA3ACertT Q==;
X-CSE-ConnectionGUID: xftI4QQoTWKhHTvTBuGnMg==
X-CSE-MsgGUID: NPZwvz8pSQqlsB1rpdOpjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="56326110"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="56326110"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 05:31:44 -0800
X-CSE-ConnectionGUID: YOdfq9UORaeFIO1OFIifaw==
X-CSE-MsgGUID: Vzm88yZzRYe7aZHt/ka6jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114778336"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 05:31:41 -0800
Date: Fri, 31 Jan 2025 15:32:36 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>, stable@vger.kernel.org
Subject: Re: [PATCH 01/14] drm/i915/dp: Iterate DSC BPP from high to low on
 all platforms
Message-ID: <Z5zQ9BjEkA_PN9Ns@ideak-desk.fi.intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
 <3bba67923cbcd13a59d26ef5fa4bb042b13c8a9b.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3bba67923cbcd13a59d26ef5fa4bb042b13c8a9b.1738327620.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 31, 2025 at 02:49:54PM +0200, Jani Nikula wrote:
> Commit 1c56e9a39833 ("drm/i915/dp: Get optimal link config to have best
> compressed bpp") tries to find the best compressed bpp for the
> link. However, it iterates from max to min bpp on display 13+, and from
> min to max on other platforms. This presumably leads to minimum
> compressed bpp always being chosen on display 11-12.
> 
> Iterate from high to low on all platforms to actually use the best
> possible compressed bpp.
> 
> Fixes: 1c56e9a39833 ("drm/i915/dp: Get optimal link config to have best compressed bpp")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: <stable@vger.kernel.org> # v6.7+
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index d1b4fd542a1f..ecf192262eb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2073,11 +2073,10 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	/* Compressed BPP should be less than the Input DSC bpp */
>  	dsc_max_bpp = min(dsc_max_bpp, output_bpp - 1);
>  
> -	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
> -		if (valid_dsc_bpp[i] < dsc_min_bpp)
> +	for (i = ARRAY_SIZE(valid_dsc_bpp) - 1; i >= 0; i--) {
> +		if (valid_dsc_bpp[i] < dsc_min_bpp ||
> +		    valid_dsc_bpp[i] > dsc_max_bpp)
>  			continue;
> -		if (valid_dsc_bpp[i] > dsc_max_bpp)
> -			break;
>  
>  		ret = dsc_compute_link_config(intel_dp,
>  					      pipe_config,
> -- 
> 2.39.5
> 
