Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 959EF78BF7D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 09:46:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14FAF10E0A1;
	Tue, 29 Aug 2023 07:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3D1A10E06E;
 Tue, 29 Aug 2023 07:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693295175; x=1724831175;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zuOA5LM3g2ghNjJh/pZXzZ5xDHkSBFRyR/EyKclt9l8=;
 b=bzC1QqABxOk2Lz3zOpAdPbIvyUjBIXIT4uvz/zI+xI/3erJgnPjX1GUl
 H4Cs3TEsJR1HppK7ut4GJeUXcPAagGCZnXQ4BETaXuFSzmbs+9/pq3Jpe
 HszzgEAreBz+jCymtA5tEleag6+A11jkiW48wjwk7v/kwltYvch9xOhrV
 0K6qhMsnP7b17v/iAgJZPEnV7iChPi7xhEZn9bPbjEJiYtU56/fufIkJl
 b84DkMoSI7vtqZevDml+NutpbNSYewB2UFntRyZM1ZFDBn+GFhaH1uzN3
 rQXhPX5rlMxRgw1VAMl+W5ueiCY1gV0kmD1AzhKNLFTumDMiPfI3tyn5T Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="372718205"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="372718205"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 00:46:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="715420450"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="715420450"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga006.jf.intel.com with SMTP; 29 Aug 2023 00:46:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Aug 2023 10:46:11 +0300
Date: Tue, 29 Aug 2023 10:46:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZO2iQytXpy04CG1R@intel.com>
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
 <20230828062035.6906-3-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230828062035.6906-3-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 2/4] drm/i915/lnl: update FBC
 debugfs to include plane information
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 28, 2023 at 09:20:33AM +0300, Vinod Govindapillai wrote:
> In future platforms, FBC can be supported on planes other than
> the primary plane. So update the debugfs entry for FBC status
> to have the plane ID included.
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index d36499d7e0be..45e205a0f740 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1837,7 +1837,9 @@ static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
>  	mutex_lock(&fbc->lock);
>  
>  	if (fbc->active) {
> -		seq_puts(m, "FBC enabled\n");
> +		seq_printf(m, "FBC enabled: [PLANE:%d:%s]\n",
> +			   fbc->state.plane->base.base.id,
> +			   fbc->state.plane->base.name);

That informtion is already part of the plane loop below.

>  		seq_printf(m, "Compressing: %s\n",
>  			   str_yes_no(intel_fbc_is_compressing(fbc)));
>  	} else {
> @@ -1910,10 +1912,16 @@ static void intel_fbc_debugfs_add(struct intel_fbc *fbc,
>  
>  void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc)
>  {
> -	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct intel_plane *plane;
> +
> +	for_each_intel_plane(&i915->drm, plane) {
> +		if (!plane->fbc || plane->pipe != crtc->pipe)
> +			continue;
>  
> -	if (plane->fbc)
>  		intel_fbc_debugfs_add(plane->fbc, crtc->base.debugfs_entry);
> +		break;
> +	}

Do we have a case where the first plane wouldn't support FBC? If not
this wouldn't really be needed. But I guess no harm in iterating here
too.

>  }
>  
>  /* FIXME: remove this once igt is on board with per-crtc stuff */
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
