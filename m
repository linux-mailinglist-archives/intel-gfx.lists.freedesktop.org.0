Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BA868303A
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 16:00:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A08AA10E369;
	Tue, 31 Jan 2023 15:00:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A10410E36A
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 15:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675177234; x=1706713234;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2tTQrftNT7jCm+umoWQrEMz3vBGPKbAarJqZ8eh6YOU=;
 b=ZsHQHOqWx2Ad+kCuYVEffqsjrcCuPFuuGJquPiWSv7FImWVdXvugOD+s
 9J7PbjzD/PDW2NVVI9AqD6NvEso0HLK17YbAs4B/V40mxhdAtA0oDtgqB
 EKcPzvUFSRTNrTL/NrCx6C0fsWCVDrw/hgdjyxxlNjLjSl/NFhli+gmZl
 Ctg44X3pXn3if78lsboAGdD/X9ng/R75uI+5Yzfj8ZkmOJu5iUxYGDk8F
 mZvqUM5oYi/wC2nm+eEWZVi1ECQFcNcyiTtSMDieUenUi3ZQXU2M86dKJ
 /wiO9zOtmW7+Hi413aMnUuIX5e2W3AHAcLegh24hrIaFpADgcvfl12G4W Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="390222568"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="390222568"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:00:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="666523262"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="666523262"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga007.fm.intel.com with SMTP; 31 Jan 2023 07:00:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 Jan 2023 17:00:30 +0200
Date: Tue, 31 Jan 2023 17:00:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Y9ktDuLR9olCgy79@intel.com>
References: <20230116111937.875-1-stanislav.lisovskiy@intel.com>
 <20230116111937.875-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230116111937.875-3-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Implement UHBR bandwidth check
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

On Mon, Jan 16, 2023 at 01:19:37PM +0200, Stanislav Lisovskiy wrote:
> According to spec, we should check if output_bpp * pixel_rate is less
> than DDI clock * 72, if UHBR is used.
> 
> HSDES: 1406899791
> BSPEC: 49259
> 
> v2: - Removed wrong comment(Rodrigo Vivi)
>     - Added HSDES to the commit msg(Rodrigo Vivi)
>     - Moved UHBR check to the MST specific code
> 
> v3: - Changed commit subject(Rodrigo Vivi)
>     - Fixed the error message if check fails(Rodrigo Vivi)
> 
> v4: - Move UHBR check to new helper function
>     - Now both for non-DSC/DSC we use that new check as
>       one of the constraints, when figuring out output bpp
>       to be used(Ville Syrjälä)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index e3e7c305fece..b95051fed23d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -47,8 +47,19 @@
>  
>  static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
>  					  const struct drm_display_mode *adjusted_mode,
> -					  struct intel_crtc_state *crtc_state)
> +					  struct intel_crtc_state *pipe_config)
>  {
> +	if (intel_dp_is_uhbr(pipe_config)) {
> +		int output_bpp = bpp;
> +
> +		if (output_bpp * adjusted_mode->crtc_clock >=
> +		    pipe_config->port_clock * 72) {

This seems to be some DSC specific constraint, but this code appears to
apply it also to uncompresed output.

Also DDICLK != port_clock, so this looks to be off by quite a lot.


> +			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
> +				    output_bpp * adjusted_mode->crtc_clock, pipe_config->port_clock * 72);
> +			return -EINVAL;
> +		}
> +	}
> +
>  	return 0;
>  }
>  
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
