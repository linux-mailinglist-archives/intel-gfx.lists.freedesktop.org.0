Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 890466897EA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 12:40:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B454D10E76D;
	Fri,  3 Feb 2023 11:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6263310E76D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 11:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675424450; x=1706960450;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OpVnSNORMua1JmTBNk4Xj5LfgGiFljDe5SpolJ76qlw=;
 b=QHoy9SMrWADJ+08XHlwF5afY+x9+ob+tTghCeCdlHLQa0P63g9PsfUR1
 9pvnFOsmkzvd5J/CkbXfEg2GJmM2OGHgJu9lABd3TMkRroTz15k/lhZ07
 pD3AN82pcyJAkhOi/hNgxlEAGFb+2iVRLz6QIvIPORvPhttJQKS+9YA0S
 dMRjabqgP5UIDZoy66gFdM3hkkIQZ+0fosMASz68N9NNsN5R3szZTVoME
 EnIBD3vd3wiMzCaF5GghKwH8+V7ng6rETLF2e/2PR9l7HJB8tL6XC+ZpN
 VCbp9TShJF5WofnMJzvoKpub6qYhD4sSksqVcIxE+6O1HkZvaGhit6296 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="312383507"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="312383507"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 03:40:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="659071853"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="659071853"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 03 Feb 2023 03:40:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Feb 2023 13:40:46 +0200
Date: Fri, 3 Feb 2023 13:40:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <Y9zyvmYCPaBiV6HH@intel.com>
References: <20230123074437.475103-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230123074437.475103-1-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/fbdev: Implement fb_dirty for
 intel custom fb helper
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 23, 2023 at 09:44:37AM +0200, Jouni Högander wrote:
> After disconnecting damage worker from update logic it's left to fbdev
> emulation implementation to have fb_dirty function. Currently intel
> fbdev doesn't have it. This is causing problems to features (PSR, FBC,
> DRRS) relying on dirty callback.
> 
> Implement simple fb_dirty callback to deliver notifications about updates
> in fb console.
> 
> v4: Add proper Fixes tag and modify commit message
> v3: Check damage clip
> v2: Improved commit message and added Fixes tag
> 
> Fixes: f231af498c29 ("drm/fb-helper: Disconnect damage worker from update logic")
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Pushed this to get the regression actually fixed. Thanks.

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 19f3b5d92a55..d39db8050c69 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -321,8 +321,20 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  	return ret;
>  }
>  
> +static int intelfb_dirty(struct drm_fb_helper *helper, struct drm_clip_rect *clip)
> +{
> +	if (!(clip->x1 < clip->x2 && clip->y1 < clip->y2))
> +		return 0;
> +
> +	if (helper->fb->funcs->dirty)
> +		return helper->fb->funcs->dirty(helper->fb, NULL, 0, 0, clip, 1);
> +
> +	return 0;
> +}
> +
>  static const struct drm_fb_helper_funcs intel_fb_helper_funcs = {
>  	.fb_probe = intelfb_create,
> +	.fb_dirty = intelfb_dirty,
>  };
>  
>  static void intel_fbdev_destroy(struct intel_fbdev *ifbdev)
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
