Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F6E988899
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 17:55:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B0FD10E20A;
	Fri, 27 Sep 2024 15:55:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QH2jlHrn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F2010E172;
 Fri, 27 Sep 2024 15:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727452536; x=1758988536;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KZReaACOuqcmD1BMuXq33d14+LFMPtQj0FM3L2hux30=;
 b=QH2jlHrnqTp1z/NHk+gEQcyuCeg9kL1EunhOMeCEZlgnoraT16s/xUnI
 8aGVvfy6MRkyxZYmdRriab9sZndJC7F0A44aIWTBbOpj/he5r6pAB9DBe
 xGOvXfhiEZeiOsn5YLtH8GiCKNhyIlsYMG4XrVNLd3Nz4E0xEMaHTAUFH
 YUZwcuu7y5aG8huhqI/gk2rR0IfNlawP/1ecxVKC5i+vjhGVI/7/17ihd
 agQnLvwwtf7Gd46DCtPp8utuCPg9YQZ8MFDgM3zwrmgRpmQog3POVRe5k
 ZMn37VvEhaEFpKR/Ma96SX3ISkLpc+6aTqJ9hFpDrKKtEGUUqEFLohjiu A==;
X-CSE-ConnectionGUID: U878g/GaRgqJRWR2a4Xjbg==
X-CSE-MsgGUID: Obo0UD01RIS6GLLT6PDyLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="26475050"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="26475050"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:55:36 -0700
X-CSE-ConnectionGUID: lFtPCI0uTjy/Kvgz/OmsxA==
X-CSE-MsgGUID: N/+X+FGATu+NxgRdSJb0mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="72734847"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Sep 2024 08:55:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2024 18:55:32 +0300
Date: Fri, 27 Sep 2024 18:55:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 13/17] drm/i915/dp: Modify compressed bpp limitations for
 ultrajoiner
Message-ID: <ZvbVdLlxvg_G9xR6@intel.com>
References: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
 <20240927152241.4014909-14-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240927152241.4014909-14-ankit.k.nautiyal@intel.com>
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

On Fri, Sep 27, 2024 at 08:52:37PM +0530, Ankit Nautiyal wrote:
> Add compressed bpp limitations for ultrajoiner.
> 
> v2: Fix the case for 1 pipe. (Ankit)
> v3: Refactor existing helper separately and add only ultrajoiner
> limitation. (Ville)
> v4: Separate out function for ultrajoiner_ram_bits.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a85527a55dc0..8a32d38d21bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -896,6 +896,16 @@ static u32 small_joiner_ram_max_bpp(struct intel_display *display,
>  	return max_bpp;
>  }
>  
> +static int ultrajoiner_ram_bits(void)
> +{
> +	return 4 * 72 * 512;
> +}
> +
> +static u32 ultrajoiner_ram_max_bpp(u32 mode_hdisplay)
> +{
> +	return ultrajoiner_ram_bits() / mode_hdisplay;
> +}
> +
>  static
>  u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>  				       u32 mode_clock, u32 mode_hdisplay,
> @@ -907,11 +917,18 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>  	max_bpp_small_joiner_ram = small_joiner_ram_max_bpp(display, mode_hdisplay,
>  							    num_joined_pipes);
>  
> -	if (num_joined_pipes == 2) {
> +	if (num_joined_pipes > 1) {
> +		u32 max_bpp;
>  		u32 max_bpp_bigjoiner = bigjoiner_bw_max_bpp(display, mode_clock,
>  							     num_joined_pipes);
>  
> -		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
> +		max_bpp = min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
> +
> +		if (num_joined_pipes == 2)
> +			return max_bpp;
> +
> +		if (num_joined_pipes == 4)
> +			return min(max_bpp, ultrajoiner_ram_max_bpp(mode_hdisplay));
>  	}

This whole thing could be simplified to just:

{
	max_bpp = small_joiner_ram_max_bpp(...);

	if (num_joined_pipes > 1)
		max_bpp = min(max_bpp, bigjoiner_bw_max_bpp(...));

	if (num_joined_pipes == 4)
		max_bpp = min(max_bpp, ultrajoiner_ram_max_bpp(...));

	return max_bpp;
}

but that can be done as a followup.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  
>  	return max_bpp_small_joiner_ram;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
