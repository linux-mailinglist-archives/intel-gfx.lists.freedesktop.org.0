Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50454A5A1BF
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 19:13:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1785B10E4B3;
	Mon, 10 Mar 2025 18:13:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LTjKmHk1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C4CC10E4B3;
 Mon, 10 Mar 2025 18:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741630381; x=1773166381;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=awqG4HoC0aIAZxb9ySTFA7BQQeeEe2ssaxuDofPoYuU=;
 b=LTjKmHk1M0Q7gAgH9gXv5s8cSErz0/j06tyBKTjuO8dsTLY8vTWYunEC
 donBi6gl/alKO8OYlSIN5aybilM8uYxzEEEf9o/A2qMx4WxXYk0tj6Dgi
 NBv6uA0m6XezfMd4jnDL1tynK+aKsIw+mKDA4w+uZo1Y/zpZG2deeD8rJ
 wF0BmHdBuhkupt63kIBfz/umpeXJNp2ahZv27SpQYWD+mhKURhCCW+Zrp
 SAMjy6c7qHETjSKGQvlrp9Yk87I1jpplXBhx7TvVpN7iNo2f6FEqsM6Vh
 NUlQJ5qo3WT22RTtEzhxifvYkYOiDp0Vu7Iz3T4F/C+HF9KqWVwCbKLU0 g==;
X-CSE-ConnectionGUID: xomQu1fbRpipdHXnTf7Hkg==
X-CSE-MsgGUID: EFTv7+khSnKDhbNOzoiVxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42674863"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="42674863"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 11:13:01 -0700
X-CSE-ConnectionGUID: I4f06uvCS9Gi4EdW/dE1ww==
X-CSE-MsgGUID: s3DnU3xJTkevKCoC4qTicg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="125293725"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 10 Mar 2025 11:12:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Mar 2025 20:12:57 +0200
Date: Mon, 10 Mar 2025 20:12:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 20/21] drm/i915/vrr: Always use VRR timing generator for
 MTL+
Message-ID: <Z88rqb1NeO2VDfbg@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
 <20250310121615.1077079-21-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250310121615.1077079-21-ankit.k.nautiyal@intel.com>
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

On Mon, Mar 10, 2025 at 05:46:14PM +0530, Ankit Nautiyal wrote:
> Currently VRR timing generator is used only when VRR is enabled by
> userspace for sinks that support VRR. From MTL+ gradually move away from
> the older timing generator and use VRR timing generator for both variable
> and fixed timings.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 76398b3a9679..35f1463583f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -556,7 +556,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
>  	if (!HAS_VRR(display))
>  		return false;
>  
> -	/* #TODO return true for platforms supporting fixed_rr */
> +	if (DISPLAY_VER(display) >= 14)
> +		return true;

I think we might want this just for ptl for now because otherwise
we lose the LRR fastset.

Or do we know MTL/LNL having actual issues with the legacy timing
generator?

I think there was some kind of claim of issues on PTL, but dunno
if even those were real or imagined?

> +
>  	return false;
>  }
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
