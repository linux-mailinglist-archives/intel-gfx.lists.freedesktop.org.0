Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 171DE6525E5
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 18:58:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D945A10E0E4;
	Tue, 20 Dec 2022 17:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A736210E0E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 17:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671559103; x=1703095103;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GcNAl0Njzj9iqas0FGegSTA8oN2/5+sPMXp3USL2vUo=;
 b=UYiSfoVsL6+zTzKT0f5eVNfy0Uud0eY/pP7Sm8HTOOAXz+0KlS1HE251
 V1bSTTctv/S+xP5mnz4tvW8AuoWQsUrxCURBLAPPP8nTP4+UwV5o95c+l
 koGr9F6BGfkxrqg03INVFfBGATOsLzBsB+zVMeC61vr6Fr5aQqHwfiMoK
 eMyAAnWYGbsmR6ehmF6d+D0ttxZQ5eIA+r27GOx+5wJAeobfjUhViXqGf
 h3NSJqo56uO/NyHlenByFOU6QtV1ZJjNFgihY2IbFWr+KW+hRGYuip5Sx
 /ruYPH4OjYhuFdsMsmYVBkhWzE1HkcxMPWCZD75cb1Y5IojGGCljiIKyx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="381903020"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="381903020"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 09:58:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="681746620"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="681746620"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 20 Dec 2022 09:58:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Dec 2022 19:58:18 +0200
Date: Tue, 20 Dec 2022 19:58:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <Y6H3ugZOxZzroO6Q@intel.com>
References: <20221129124302.291759-1-jouni.hogander@intel.com>
 <Y6H2gmQJRmCCP1gG@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y6H2gmQJRmCCP1gG@intel.com>
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

On Tue, Dec 20, 2022 at 07:53:06PM +0200, Ville Syrjälä wrote:
> On Tue, Nov 29, 2022 at 02:43:02PM +0200, Jouni Högander wrote:
> > After splitting generic drm_fb_helper into it's own file it's left to
> > helper implementation to have fb_dirty function. Currently intel
> > fb doesn't have it. This is causing problems when PSR is enabled.
> > 
> > Implement simple fb_dirty callback to deliver notifications to psr
> > about updates in fb console.
> 
> Just found this regression myself after being baffled why the
> vt console was inoperable right after the driver gets loaded.
> 
> It's also not just psr, but also fbc that is having issues.
> 
> Needs a fixes + cc:stable tags.

Actually looks like it didn't make it into 6.1 so I guess
no cc:stable needed.

> 
> > 
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbdev.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> > index 5575d7abdc09..7c7fba3fe69e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> > @@ -328,8 +328,17 @@ static int intelfb_create(struct drm_fb_helper *helper,
> >  	return ret;
> >  }
> >  
> > +static int intelfb_dirty(struct drm_fb_helper *helper, struct drm_clip_rect *clip)
> > +{
> 
> The original thing had some kind of "is this rect actually visible?"
> check here. Does anyone know why it was there, and if so maybe it should
> go back to the higher level function so everyone doens't need to add it
> back in?
> 
> > +	if (helper->fb->funcs->dirty)
> > +		return helper->fb->funcs->dirty(helper->fb, NULL, 0, 0, clip, 1);
> > +
> > +	return 0;
> > +}
> > +
> >  static const struct drm_fb_helper_funcs intel_fb_helper_funcs = {
> >  	.fb_probe = intelfb_create,
> > +	.fb_dirty = intelfb_dirty,
> >  };
> >  
> >  static void intel_fbdev_destroy(struct intel_fbdev *ifbdev)
> > -- 
> > 2.34.1
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
