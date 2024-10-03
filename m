Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FD698ED9E
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 13:11:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3448A10E7F7;
	Thu,  3 Oct 2024 11:10:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YhO8bCu0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE96E10E7FE
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2024 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727953855; x=1759489855;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xUtOPRwToJ9G4yMisJWfWkyt5XPdYPqwZrPqT11fKKk=;
 b=YhO8bCu0UL26EMtajRgUXPAas2jSsdRH9sDIhrSQSAekcSIaL4wt78KR
 Dj525exgk0hysOw/U+UVMOrUkrr81FdIxDsLBNC/4JvnoiM0OCv00ZhOh
 5MqJdug6uNoUTUoUXEHHUKfa/0KKaereZ7C2SWa1437o0ZZbG2et5g4B5
 zYsSGi6JZpTeOVir18tGsrs5b+PSF2ocfxR7gGN0AJXu555UHmZQHpsOG
 kigW/bOpf3KOhPtiIqerUE10PdTaI1VCe3WG/k5PFMmY9NNKFLV8JplvV
 25SJu6/KN8dCkFN3Ep7zEdFioyzlzpG2DnEdb/7LbdolIF4UQdDQnONtj A==;
X-CSE-ConnectionGUID: scsL9XDdSRySsTxvA8u1MQ==
X-CSE-MsgGUID: ra0we5k2QieHSk6cpgcgDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="27012096"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27012096"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 04:10:35 -0700
X-CSE-ConnectionGUID: bJJs62rESPOqW8qS97ngfw==
X-CSE-MsgGUID: wGPA4WTHS5WcqW9ZcJXhCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="74421106"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Oct 2024 04:10:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Oct 2024 14:10:31 +0300
Date: Thu, 3 Oct 2024 14:10:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Cc: intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com,
 ville.syrjala@intel.com
Subject: Re: [PATCH] drm/i915/icl: Update csc and gamma enable checks
Message-ID: <Zv57pzLX4ltH4w00@intel.com>
References: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
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

On Thu, Oct 03, 2024 at 02:33:41PM +0530, Sai Teja Pottumuttu wrote:
> With ICL, we have a way to check if gamma and csc are enabled on
> a pipe using bits in GAMMA_MODE and CSC_MODE. So, use them as well
> along with the existing BOTTOM_COLOR checks.
> 
> BSpec: 7463, 7466
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 24 ++++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 50f41aeb3c28..1bf36898dc7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1076,6 +1076,26 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
>  		crtc_state->csc_enable = true;
>  }
>  
> +static void icl_get_config(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	u32 bottom_color;
> +
> +	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
> +	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
> +
> +	bottom_color = intel_de_read(i915, SKL_BOTTOM_COLOR(crtc->pipe));
> +
> +	if ((bottom_color & SKL_BOTTOM_COLOR_GAMMA_ENABLE) ||
> +	    (crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE))
> +		crtc_state->gamma_enable = true;
> +
> +	if ((bottom_color & SKL_BOTTOM_COLOR_CSC_ENABLE) ||
> +	    (crtc_state->csc_mode & ICL_CSC_ENABLE))
> +		crtc_state->csc_enable = true;

We don't use the old per-plane/bottom color way of enabling these.
So this is not right.

> +}
> +
>  static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -3811,7 +3831,7 @@ static const struct intel_color_funcs tgl_color_funcs = {
>  	.read_luts = icl_read_luts,
>  	.lut_equal = icl_lut_equal,
>  	.read_csc = icl_read_csc,
> -	.get_config = skl_get_config,
> +	.get_config = icl_get_config,
>  };
>  
>  static const struct intel_color_funcs icl_color_funcs = {
> @@ -3823,7 +3843,7 @@ static const struct intel_color_funcs icl_color_funcs = {
>  	.read_luts = icl_read_luts,
>  	.lut_equal = icl_lut_equal,
>  	.read_csc = icl_read_csc,
> -	.get_config = skl_get_config,
> +	.get_config = icl_get_config,
>  };
>  
>  static const struct intel_color_funcs glk_color_funcs = {
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
