Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A2D6525CD
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 18:53:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A279B10E0E4;
	Tue, 20 Dec 2022 17:53:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D83910E0E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 17:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671558790; x=1703094790;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QsavlN85rzMlfniFaetDUbgzyhShO27Ec5bAnc37Tic=;
 b=ifp/MLjh9Ha8zA6vK35CTmMEoYYUZSb/7t9xdHLhK8ZN997+QIB9ogtm
 3bsiJqZ2xlRhRmOnX425wrQ4VmC6xN/K3iIVwLnheqlXWK5uX5ke2tn0y
 JNNeN7NWG31QNrqjcaFAVwbjfpGKEOwD9SJKVR7Vuz43pmDPrcNUvVrzs
 z86dQjAdkbUcgLPn5QI/YbWk0RNIEX7CAHFYQNBnFj8plHNKErI00jMMx
 yXaJAJlB2k02ufNHtUS4Jq1FESwjW6jZdBKXi47217FNQ9nOeLVe59hYt
 Jhgcz6xpM0qr9FNZcAfBOMI2xf3zhXq0INvpgFyv7XrI8zxzVwT2sf4Ij A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="317316292"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="317316292"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 09:53:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="714539807"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="714539807"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 20 Dec 2022 09:53:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Dec 2022 19:53:06 +0200
Date: Tue, 20 Dec 2022 19:53:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <Y6H2gmQJRmCCP1gG@intel.com>
References: <20221129124302.291759-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221129124302.291759-1-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement fb_dirty for
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

On Tue, Nov 29, 2022 at 02:43:02PM +0200, Jouni Högander wrote:
> After splitting generic drm_fb_helper into it's own file it's left to
> helper implementation to have fb_dirty function. Currently intel
> fb doesn't have it. This is causing problems when PSR is enabled.
> 
> Implement simple fb_dirty callback to deliver notifications to psr
> about updates in fb console.

Just found this regression myself after being baffled why the
vt console was inoperable right after the driver gets loaded.

It's also not just psr, but also fbc that is having issues.

Needs a fixes + cc:stable tags.

> 
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 5575d7abdc09..7c7fba3fe69e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -328,8 +328,17 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  	return ret;
>  }
>  
> +static int intelfb_dirty(struct drm_fb_helper *helper, struct drm_clip_rect *clip)
> +{

The original thing had some kind of "is this rect actually visible?"
check here. Does anyone know why it was there, and if so maybe it should
go back to the higher level function so everyone doens't need to add it
back in?

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
