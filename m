Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CBA689729
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 11:42:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E216D10E763;
	Fri,  3 Feb 2023 10:42:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6BD110E763
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 10:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675420965; x=1706956965;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hiX+lkzCKo+YC+vql+ilqo5tKD7qgdVUKem1e/xssJY=;
 b=kKGvu4nxSn7qlHDB7G+cEAYXh8Bn0IEHDa98amvlk4qHEj9/nn7B8fBp
 pBQP4ly2UQuvr9wF71K8jvuEZ9DskHG15WYEDEhal8FgV060o8F6E2rl2
 dLo17MdiZjebsiuYx5pgxNyu85+aD2POVksU9vATsNy7poA0aSRxiHDq+
 Gqdf6qNn+VH4/fc+i9QD4H03SV47IiVMz9UMMg4mP1+61+nziNj1JBgcz
 A3w29xYeI9TT/jRKy3LSjIgEfg42vVnig6eTF87Iah/LkDxu7WzwLBjZI
 7XL3Dz/BYm/p3o7PNcW91Lt20GjsU2GBe9+iLA2va9BCPLAmI2d+p+fSY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="330002207"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="330002207"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 02:42:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="911119784"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="911119784"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga006.fm.intel.com with SMTP; 03 Feb 2023 02:42:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Feb 2023 12:42:41 +0200
Date: Fri, 3 Feb 2023 12:42:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <Y9zlIV3Yt6apP8o9@intel.com>
References: <20230124091046.2500682-1-jouni.hogander@intel.com>
 <7f8b8d4d-b122-bff7-a458-985061bf1b4c@suse.de>
 <29978ffbbffd810a380c8d0606fffb31c8f007dd.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <29978ffbbffd810a380c8d0606fffb31c8f007dd.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement wrappers for
 callbacks used by fbcon
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 03, 2023 at 07:21:27AM +0000, Hogander, Jouni wrote:
> On Tue, 2023-01-24 at 13:27 +0100, Thomas Zimmermann wrote:
> > Hi
> > 
> > Am 24.01.23 um 10:10 schrieb Jouni Högander:
> > > After disconnecting damage worker from update logic our dirty
> > > callback
> > > is not called on fbcon events. This is causing problems to features
> > > (PSR, FBC, DRRS) relying on dirty callback getting called and
> > > breaking
> > > fb console when these features are in use.
> > > 
> > > Implement wrappers for callbacks used by fbcon and call our dirty
> > > callback in those.
> > > 
> > > Fixes: f231af498c29 ("drm/fb-helper: Disconnect damage worker from
> > > update logic")
> > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > 
> > This is the better solution wrt what fbdev wants.
> 
> There was a failure from testing robot. drivers/tty/vt/vt.c is using
> spinlock and in our dirty callback we are taking mutex.
> 
> Do you have any suggestions? Shall we fallback to original fix which
> was setting the dirty callback where call is made from workqueue?

Please just fix the original regression as straightforwardly as
possible.

> 
> > 
> > Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
> > 
> > Best regards
> > Thomas
> > 
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_fbdev.c | 53
> > > ++++++++++++++++++++--
> > >   1 file changed, 49 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c
> > > b/drivers/gpu/drm/i915/display/intel_fbdev.c
> > > index 19f3b5d92a55..b1653624552e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> > > @@ -77,6 +77,18 @@ static void intel_fbdev_invalidate(struct
> > > intel_fbdev *ifbdev)
> > >         intel_frontbuffer_invalidate(to_frontbuffer(ifbdev),
> > > ORIGIN_CPU);
> > >   }
> > >   
> > > +static void intel_fbdev_dirty(struct fb_info *info)
> > > +{
> > > +       struct drm_fb_helper *helper = info->par;
> > > +
> > > +       /*
> > > +        * Intel_fb dirty implementation doesn't use damage clips -
> > > >
> > > +        * no need to pass them here
> > > +        */
> > > +       if (helper->fb->funcs->dirty)
> > > +               helper->fb->funcs->dirty(helper->fb, NULL, 0, 0,
> > > NULL, 0);
> > > +}
> > > +
> > >   static int intel_fbdev_set_par(struct fb_info *info)
> > >   {
> > >         struct drm_fb_helper *fb_helper = info->par;
> > > @@ -91,6 +103,39 @@ static int intel_fbdev_set_par(struct fb_info
> > > *info)
> > >         return ret;
> > >   }
> > >   
> > > +static ssize_t intel_fbdev_write(struct fb_info *info, const char
> > > __user *buf,
> > > +                                size_t count, loff_t *ppos)
> > > +{
> > > +       int ret;
> > > +
> > > +       ret = drm_fb_helper_cfb_write(info, buf, count, ppos);
> > > +       if (ret > 0)
> > > +               intel_fbdev_dirty(info);
> > > +
> > > +       return ret;
> > > +}
> > > +
> > > +static void intel_fbdev_fillrect(struct fb_info *info,
> > > +                                 const struct fb_fillrect *rect)
> > > +{
> > > +       drm_fb_helper_cfb_fillrect(info, rect);
> > > +       intel_fbdev_dirty(info);
> > > +}
> > > +
> > > +static void intel_fbdev_copyarea(struct fb_info *info,
> > > +                                 const struct fb_copyarea *area)
> > > +{
> > > +       drm_fb_helper_cfb_copyarea(info, area);
> > > +       intel_fbdev_dirty(info);
> > > +}
> > > +
> > > +static void intel_fbdev_imageblit(struct fb_info *info,
> > > +                                const struct fb_image *image)
> > > +{
> > > +       drm_fb_helper_cfb_imageblit(info, image);
> > > +       intel_fbdev_dirty(info);
> > > +}
> > > +
> > >   static int intel_fbdev_blank(int blank, struct fb_info *info)
> > >   {
> > >         struct drm_fb_helper *fb_helper = info->par;
> > > @@ -125,10 +170,10 @@ static const struct fb_ops intelfb_ops = {
> > >         DRM_FB_HELPER_DEFAULT_OPS,
> > >         .fb_set_par = intel_fbdev_set_par,
> > >         .fb_read = drm_fb_helper_cfb_read,
> > > -       .fb_write = drm_fb_helper_cfb_write,
> > > -       .fb_fillrect = drm_fb_helper_cfb_fillrect,
> > > -       .fb_copyarea = drm_fb_helper_cfb_copyarea,
> > > -       .fb_imageblit = drm_fb_helper_cfb_imageblit,
> > > +       .fb_write = intel_fbdev_write,
> > > +       .fb_fillrect = intel_fbdev_fillrect,
> > > +       .fb_copyarea = intel_fbdev_copyarea,
> > > +       .fb_imageblit = intel_fbdev_imageblit,
> > >         .fb_pan_display = intel_fbdev_pan_display,
> > >         .fb_blank = intel_fbdev_blank,
> > >   };
> > 
> > -- 
> > Thomas Zimmermann
> > Graphics Driver Developer
> > SUSE Software Solutions Germany GmbH
> > Maxfeldstr. 5, 90409 Nürnberg, Germany
> > (HRB 36809, AG Nürnberg)
> > Geschäftsführer: Ivo Totev
> 

-- 
Ville Syrjälä
Intel
