Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8FF988527
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 14:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7686010E357;
	Fri, 27 Sep 2024 12:41:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YTOqNdRt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1290310E357;
 Fri, 27 Sep 2024 12:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727440877; x=1758976877;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wvwfZfjM6P1l0SCvc5PqlF+2Whgw2TFio4ZhbS9/63Q=;
 b=YTOqNdRtdcukVqJATCPNqktCH6p+tsK7G13DUQh8Zq5ODK3BKgW/95QK
 0buQA8BtPf60XL12uIm7KLs3f7ziQ+YoRJkLAU1KEXeizvt60IWmPzb5q
 bY4EidHwgchGL0VWn59yuS92XWUfnq3RTa724Hu/MehYphUXH+3ec8tVj
 +7KFBhj7bi2LnilwSKUfjqZVbr/Utx+xpZaXNm0sjUCCCHZToD0iZySvc
 Ftu928zgje7cElDVGrA29h6TKcqccvI3YU/jic2ysGRwTjop0YyMzmpUs
 Uv7CAXbJRBUY4QehyoDVnYqhSQtIuA9lVKt/EejJ72C/4sZnzDVleJ0QC g==;
X-CSE-ConnectionGUID: IKPV8dbdRc+gxLCaVwEstw==
X-CSE-MsgGUID: s4CNl377RHSRoIplYQ7xkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="14201549"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="14201549"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 05:41:16 -0700
X-CSE-ConnectionGUID: NAZOk6EkQoKZUe5BQJegmQ==
X-CSE-MsgGUID: toNyKNmxS4KlIceeFXoipw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="72693517"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Sep 2024 05:41:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2024 15:41:13 +0300
Date: Fri, 27 Sep 2024 15:41:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 13/17] drm/i915/dp: Modify compressed bpp limitations for
 ultrajoiner
Message-ID: <Zvan6USC8Juhs2Xc@intel.com>
References: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
 <20240927083831.3913645-14-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240927083831.3913645-14-ankit.k.nautiyal@intel.com>
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

On Fri, Sep 27, 2024 at 02:08:27PM +0530, Ankit Nautiyal wrote:
> Add compressed bpp limitations for ultrajoiner.
> 
> v2: Fix the case for 1 pipe. (Ankit)
> v3: Refactor existing helper separately and add only ultrajoiner
> limitation. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index e7fe100ef8db..3d4d8e58380a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -896,6 +896,11 @@ static u32 small_joiner_ram_max_bpp(struct intel_display *display, u32 mode_hdis
>  	return max_bpp;
>  }
>  
> +static u32 ultrajoiner_ram_max_bpp(struct intel_display *display, u32 mode_hdisplay)
> +{
> +	return (4 * 72 * 512) / mode_hdisplay;
> +}
> +
>  static
>  u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>  				       u32 mode_clock, u32 mode_hdisplay,
> @@ -907,6 +912,9 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>  	max_bpp = small_joiner_ram_max_bpp(display, mode_hdisplay, num_joined_pipes);
>  	max_bpp = min(max_bpp, bigjoiner_bw_max_bpp(display, mode_clock, num_joined_pipes));
>  
> +	if (num_joined_pipes == 4)
> +		max_bpp = min(max_bpp, ultrajoiner_ram_max_bpp(display, mode_hdisplay));

So here you handle the "is this ultrajoiner" check outside.
If you want to  stick to that then please use the same approach 
to deal with the bigjoiner_bw_max_bpp()+num_joined_pipes==1
issue I pointed out the other patch.

Or if you want to handle the num_joined_pipes==1 case inside 
bigjoiner_bw_max_bpp() then please adjust this to do a similar
thing.

> +
>  	return max_bpp;
>  }
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
