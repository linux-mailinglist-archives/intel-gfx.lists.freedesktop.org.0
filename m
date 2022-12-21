Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6448A6532B1
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 15:52:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3254C10E119;
	Wed, 21 Dec 2022 14:51:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65AAB10E119
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 14:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671634315; x=1703170315;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nf6ZBsu7upUlncQJ6ejLdfCA0+qu+6nuvbb4SnQzdhQ=;
 b=Wmrkna1zKEwrIK7okHBSw8pjSJbm+6XFZkXXwL3WXSsCWc9bOGuUI0/M
 1tTLssJjwwp2jsj65r38DxQAI+LwKQcMaR29/KWRGtRzcwx6gwGIjIBZ6
 PN1ewQuOZHiHlQTFxaYA3IXDzfNcVL90gfvEbMsxg2KSj632vXJDxRI/g
 v7ZiMklvxdKk362X0xfuo/qkfUhWmCGBAWp49ysZy4y/sOTql2Y8IrtLQ
 y1m5B7r3BXjj0ySSXzWr3kh06WPnOyH7+/HKQR+InKKwWX4328zrsnYy6
 NmEIimeDmaJ+GL1OO4FhDOGn5Isqsgqu6PvAR8HS6eotPfRSkHZpcU9iW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="318582530"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="318582530"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 06:51:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="793720808"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="793720808"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 21 Dec 2022 06:51:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Dec 2022 16:51:50 +0200
Date: Wed, 21 Dec 2022 16:51:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <Y6MdhrwVjkzGx6z5@intel.com>
References: <20221129124302.291759-1-jouni.hogander@intel.com>
 <287763d0-a708-efa2-f84e-bf50d4a58d64@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <287763d0-a708-efa2-f84e-bf50d4a58d64@suse.de>
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 21, 2022 at 11:49:59AM +0100, Thomas Zimmermann wrote:
> Hi
> 
> Am 29.11.22 um 13:43 schrieb Jouni Högander:
> > After splitting generic drm_fb_helper into it's own file it's left to
> > helper implementation to have fb_dirty function. Currently intel
> > fb doesn't have it. This is causing problems when PSR is enabled.
> > 
> > Implement simple fb_dirty callback to deliver notifications to psr
> > about updates in fb console.
> 
> I'm a bit confused about i915's use of fb_dirty here. How is this 
> supposed to interact with mmap?  i915 doesn't use deferred I/O so fbdev 
> mmap will never call fb_dirty if userspace writes to mmap'ed pages. Is 
> this only required for the kernel's graphics console?

It's required for everything. mmap is presumably borked for
the cases where we can't use any hw based damage tracking.

> 
> Best regards
> Thomas
> 
> > 
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_fbdev.c | 9 +++++++++
> >   1 file changed, 9 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> > index 5575d7abdc09..7c7fba3fe69e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> > @@ -328,8 +328,17 @@ static int intelfb_create(struct drm_fb_helper *helper,
> >   	return ret;
> >   }
> >   
> > +static int intelfb_dirty(struct drm_fb_helper *helper, struct drm_clip_rect *clip)
> > +{
> > +	if (helper->fb->funcs->dirty)
> > +		return helper->fb->funcs->dirty(helper->fb, NULL, 0, 0, clip, 1);
> > +
> > +	return 0;
> > +}
> > +
> >   static const struct drm_fb_helper_funcs intel_fb_helper_funcs = {
> >   	.fb_probe = intelfb_create,
> > +	.fb_dirty = intelfb_dirty,
> >   };
> >   
> >   static void intel_fbdev_destroy(struct intel_fbdev *ifbdev)
> 
> -- 
> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 Nürnberg, Germany
> (HRB 36809, AG Nürnberg)
> Geschäftsführer: Ivo Totev




-- 
Ville Syrjälä
Intel
