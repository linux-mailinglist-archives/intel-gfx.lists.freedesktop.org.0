Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8484675B63
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 18:30:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5DA410E004;
	Fri, 20 Jan 2023 17:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93CE110E004
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 17:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674235837; x=1705771837;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5NcKr27XY64+yqjDBYfSDpwz7/9PxHOGqndpotjQg/A=;
 b=ZgtmFcFvBUpdGxcPwv9eoPqvHwifOjy2zR7S5Q7Fuv4trvHYZjyJy9c5
 1hDRLKG/7GJsdc1PRW9uFBllb4FW0Ru/vuo12sQGaM5WDMicTqGlAb9FN
 0XYVouGXvOTFl7JqGeF1m/79u6VbzC4CIYrtv5YyrAPaP3v73KAn3BX+6
 XGjZMYb6fo56+KEo0EcQ5bEwEdhkeFB43YLtK0HIGclwbib2Bo7Ns6bHM
 zl7PcnjP9wkdu3ba/73QwzxXVp+qmvK4JRBM9IbVOtZ62VJJC6nPVCjoX
 6TyZrw6sMvT6g9EOvtKWfXo0B346zI216TRxq5hJcxgkpH3Pyx6n8wD/R A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="326912702"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="326912702"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 09:30:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="803131535"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="803131535"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga001.fm.intel.com with SMTP; 20 Jan 2023 09:30:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Jan 2023 19:30:33 +0200
Date: Fri, 20 Jan 2023 19:30:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <Y8rPuc7APL616V6e@intel.com>
References: <20221221153816.1915426-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221221153816.1915426-1-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/fbdev: Implement fb_dirty for
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

On Wed, Dec 21, 2022 at 05:38:16PM +0200, Jouni Högander wrote:
> After splitting generic drm_fb_helper into it's own file it's left to
> helper implementation to have fb_dirty function. Currently intel
> fbdev doesn't have it. This is causing problems to features (PSR, FBC,
> DRRS) relying on dirty callback.
> 
> Implement simple fb_dirty callback to deliver notifications about updates
> in fb console.
> 
> v3: Check damage clip
> v2: Improved commit message and added Fixes tag
> 
> Fixes: 8ab59da26bc0 ("drm/fb-helper: Move generic fbdev emulation into separate source file")

That doesn't look like a funcitonal change to me.
Was it really that commit that broke things?

> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 03ed4607a46d..4e87d9964fcc 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -328,8 +328,20 @@ static int intelfb_create(struct drm_fb_helper *helper,
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
