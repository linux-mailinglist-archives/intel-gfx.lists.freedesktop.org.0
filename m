Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3B66C87C7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 22:55:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3923F10ECA2;
	Fri, 24 Mar 2023 21:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69D8910EC86;
 Fri, 24 Mar 2023 21:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679694942; x=1711230942;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YksY2hSUR7m0Zeln9tDoJnCUNP9iNuUtZGTbLWoWV3I=;
 b=g3MzQwJ5LJDX6/Qsp/0CmDuOWjhk10FFvRaGDUoxlX5klbGKYpeW7QFS
 Wa3qRsUaebFBJsq+L0MgwZ/q9BgkXCXQdJIEkcW/6kO7pnZcrtZTJqQre
 nZIzk1HxPg4wR9O5H7j0V4cdvUafXMt5GZkAkdelpxnk7asyo/q8OHEy1
 j+4aww52sJLAcSybk6wM5HIQEgQ432D/FcJ/ynmHf7nRTuGxAdo+N7WpQ
 D0JWFE1slHPVOQuFB2Rx+Q5WD4rRb5H+FGEiL7DD/TubIEO94lkfmMojF
 k/wVeTDlsnvPTXBYfhh5ucuDwOkzRtH9OR2VUAB1DuhQ/BOaCFSrh168g A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="404814521"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="404814521"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 14:55:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="1012432681"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="1012432681"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 24 Mar 2023 14:55:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Mar 2023 23:55:36 +0200
Date: Fri, 24 Mar 2023 23:55:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arthur Grillo <arthurgrillo@riseup.net>
Message-ID: <ZB4cWCVPLPWTAM0H@intel.com>
References: <20230324142533.6357-1-arthurgrillo@riseup.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230324142533.6357-1-arthurgrillo@riseup.net>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/overlay: Remove redundant
 drm_rect_visible() use
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
Cc: tales.aparecida@gmail.com, intel-gfx@lists.freedesktop.org,
 lucas.demarchi@intel.com, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, daniel@ffwll.ch, rodrigo.vivi@intel.com,
 andrealmeid@riseup.net, airlied@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 24, 2023 at 11:25:33AM -0300, Arthur Grillo wrote:
> The drm_rect_intersect() already returns if the intersection is visible
> or not, so the use of drm_rect_visible() is duplicate.
> 
> Signed-off-by: Arthur Grillo <arthurgrillo@riseup.net>
> ---
>  drivers/gpu/drm/i915/display/intel_overlay.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index c12bdca8da9b..444d88f418c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -966,9 +966,8 @@ static int check_overlay_dst(struct intel_overlay *overlay,
>  		      rec->dst_width, rec->dst_height);
>  
>  	clipped = req;
> -	drm_rect_intersect(&clipped, &crtc_state->pipe_src);
>  
> -	if (!drm_rect_visible(&clipped) ||
> +	if (!drm_rect_intersect(&clipped, &crtc_state->pipe_src) ||
>  	    !drm_rect_equals(&clipped, &req))

Hmm. I think I like the original a bit better because there is
no hard to spot dependency between the two sides of the ||.

I suppose another option would to to replace the || with
two separate if statements.

>  		return -EINVAL;
>  
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
