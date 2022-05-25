Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E72533AC2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 12:41:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29B8910FB88;
	Wed, 25 May 2022 10:41:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A5F310FB88
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 10:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653475259; x=1685011259;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=k8nGyxs/7c4NuLL5dAXKs7x1teOm+vi6a4UWit24A60=;
 b=YSWn2YEtxqnGbsfYtW+6Xs3SkYeHxywlNOMS6bQod6QAcGvlehNFJj2l
 H2A6w80Hsmx9Zz5r8nggllTdLf/ALXVtagdZlUNsXkEnwiKyJBUGIuYet
 9+Ivrakr9cHTqG2GXJ9ekunrA0fyWE3qzoBRRCEittbTm24mVECbPAOzb
 4dAw5WC3kWMhulIoH4W4NGzrluMRgZIYdVPZia4incKJ5VJzUdMTH62Zp
 o+4Mhjv2w6nmgC091Frk9zqApcCP67E88B3ouGjtX1gcsq+1BWeXgBpgi
 t6XMFrporPcZZdTZUAYnR6F/PumdOZqZfSWaKhxp++v3rg/TMwwDLmFEV w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="261390732"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="261390732"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 03:40:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="578286478"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga007.fm.intel.com with SMTP; 25 May 2022 03:40:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 May 2022 13:40:55 +0300
Date: Wed, 25 May 2022 13:40:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yo4Ht6NMavN8Hjfy@intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
 <20220510104242.6099-13-ville.syrjala@linux.intel.com>
 <87pmk2uhm2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87pmk2uhm2.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 12/15] drm/i915/bios: Split VBT data into
 per-panel vs. global parts
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

On Wed, May 25, 2022 at 11:44:05AM +0300, Jani Nikula wrote:
> On Tue, 10 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Move the panel specific VBT parsing to happen during the
> > output probing stage. Needs to be done because the VBT
> > parsing will need to look at the EDID to determine
> > the correct panel_type on some machines.
> >
> > We split the parsed VBT data (i915->vbt) along the same
> > boundary. For the moment we just hoist all the panel
> > specific stuff into connector->panel.vbt since that seems
> > like the most convenient place for eg. the backlight code.
> 
> For a lot of stuff I was thinking we'd hang this stuff off of the
> encoder, but I guess for panel stuff this makes sense. Child device
> stuff in the encoder then.

Yeah, not really sure where to stuff it all. Also a bunch of it might
just be able to be disappeared eventually. Just took the easiest
approach here for the moment.

> 
> >  drivers/gpu/drm/i915/i915_drv.h               |  63 ---
> 
> Gotta love this.
> 
> > diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> > index 166caf293f7b..7da4a9cbe4ba 100644
> > --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> > @@ -217,9 +217,6 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
> >  {
> >  	struct intel_crtc *crtc;
> >  
> > -	if (dev_priv->vbt.drrs_type != DRRS_TYPE_SEAMLESS)
> > -		return;
> 
> I think this was the only unexplained thing in the entire monster patch
> that I could spot. With that explained, even just in reply,

This gets called for the whole device, so we don't know which
panel we're dealing with here. It was just a micro optimization
to avoid having to look through the crtcs to figure out which ones
are affected, so dropping it won't cause any functional changes.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

> 
> > -
> >  	for_each_intel_crtc(&dev_priv->drm, crtc) {
> >  		unsigned int frontbuffer_bits;
> >  
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
