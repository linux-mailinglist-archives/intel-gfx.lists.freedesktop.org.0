Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C48B7A8CB9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 21:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 831B810E496;
	Wed, 20 Sep 2023 19:26:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 461F410E496;
 Wed, 20 Sep 2023 19:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695237979; x=1726773979;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xxqPkpxXDtBtEp+IYx3lyysaQQjIimZsAj+pY0FOX/M=;
 b=VjTbI2nT129D6eEwgv968z2TKn5rQBaAnksJ23KdHD2lkqmvRNjHX7kL
 U/25w1HpDpprVsT58p4kjitC1P+Ac00EgHOOiIkoamfcbqrohgMtOSR25
 +QrPylOmNbJQZJ0OD6rlGRwH/km//71S+fqBjMlQRbA04+MhHL+kieCsV
 EeVqzPck1Cd1Rnm3GZY85XgvyhWeobeb4LcToclnNyauXYtwGSBDk7wLE
 c/f58GCG8wkQ44EjvXy/L3uCfeWL/4XIV3gW+rX6qSxT8p96A+Hpw/HJM
 +KZNUmqSQUeFVTQjrQISZWMNLtnHNY62jpCyGCPiRmk8aMFTIxhvogSD2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="383063590"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="383063590"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 12:26:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="862124113"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="862124113"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 20 Sep 2023 12:26:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Sep 2023 22:26:13 +0300
Date: Wed, 20 Sep 2023 22:26:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZQtHVTci7P4jWScz@intel.com>
References: <20230914112258.27156-1-ville.syrjala@linux.intel.com>
 <87jzskrbf3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87jzskrbf3.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/edid: Fixup h/vsync_end instead of
 h/vtotal
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 20, 2023 at 08:40:00PM +0300, Jani Nikula wrote:
> On Thu, 14 Sep 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> >
> > There are some weird EDIDs floating around that have the sync
> > pulse extending beyond the end of the blanking period.
> >
> > On the currently problemtic machine (HP Omni 120) EDID reports
> > the following mode:
> > "1600x900": 60 108000 1600 1780 1860 1800 900 910 913 1000 0x40 0x5
> > which is then "corrected" to have htotal=1861 by the current drm_edid.c
> > code.
> >
> > The fixup code was originally added in commit 7064fef56369 ("drm: work
> > around EDIDs with bad htotal/vtotal values"). Googling around we end up in
> > https://bugs.launchpad.net/ubuntu/hardy/+source/xserver-xorg-video-intel/+bug/297245
> > where we find an EDID for a Dell Studio 15, which reports:
> > (II) VESA(0): clock: 65.0 MHz   Image Size:  331 x 207 mm
> > (II) VESA(0): h_active: 1280  h_sync: 1328  h_sync_end 1360 h_blank_end 1337 h_border: 0
> > (II) VESA(0): v_active: 800  v_sync: 803  v_sync_end 809 v_blanking: 810 v_border: 0
> >
> > Note that if we use the hblank size (as opposed of the hsync_end)
> > from the DTD to determine htotal we get exactly 60Hz refresh rate in
> > both cases, whereas using hsync_end to determine htotal we get a
> > slightly lower refresh rates. This makes me believe the using the
> > hblank size is what was intended even in those cases.
> >
> > Also note that in case of the HP Onmi 120 the VBIOS boots with these:
> >   crtc timings: 108000 1600 1780 1860 1800 900 910 913 1000, type: 0x40 flags: 0x5
> > ie. it just blindly stuffs the bogus hsync_end and htotal from the DTD
> > into the transcoder timing registers, and the display works. I believe
> > the (at least more modern) hardware will automagically terminate the hsync
> > pulse when the timing generator reaches htotal, which again points that we
> > should use the hblank size to determine htotal. Unfortunatley the old bug
> > reports for the Dell machines are extremely lacking in useful details so
> > we have no idea what kind of timings the VBIOS programmed into the
> > hardware :(
> >
> > Let's just flip this quirk around and reduce the length of the sync
> > pulse instead of extending the blanking period. This at least seems
> > to be the correct thing to do on more modern hardware. And if any
> > issues crop up on older hardware we need to debug them properly.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8895
> > Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/drm_edid.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> > index 39dd3f694544..0c5563b4d21e 100644
> > --- a/drivers/gpu/drm/drm_edid.c
> > +++ b/drivers/gpu/drm/drm_edid.c
> > @@ -3497,11 +3497,11 @@ static struct drm_display_mode *drm_mode_detailed(struct drm_connector *connecto
> >  	mode->vsync_end = mode->vsync_start + vsync_pulse_width;
> >  	mode->vtotal = mode->vdisplay + vblank;
> >  
> > -	/* Some EDIDs have bogus h/vtotal values */
> > +	/* Some EDIDs have bogus h/vsync_end values */
> >  	if (mode->hsync_end > mode->htotal)
> > -		mode->htotal = mode->hsync_end + 1;
> > +		mode->hsync_end = mode->htotal;
> >  	if (mode->vsync_end > mode->vtotal)
> > -		mode->vtotal = mode->vsync_end + 1;
> > +		mode->vsync_end = mode->vtotal;
> 
> I wonder if we shouldn't debug log these to help our future selves?

Yeah, might be a good idea. I can respin with that. I noticed
that our VBT parser has the exact same code in it as well so
I'll be wanting to cook up a patch that as well.

> 
> Anyway,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Ta.

> 
> 
> >  
> >  	drm_mode_do_interlace_quirk(mode, pt);
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrj�l�
Intel
