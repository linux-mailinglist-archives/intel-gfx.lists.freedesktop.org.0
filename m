Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D4898394C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 23:58:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8B810E0C6;
	Mon, 23 Sep 2024 21:58:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RXEIO0ZP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6151F10E0C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 21:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727128712; x=1758664712;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/MGfdCzZhKGhX8zhszJtQIi4MJHGsZjgGjWiJWEPGwk=;
 b=RXEIO0ZP2V+Q4lNy5mg/2r6GkWCBThUzck+wnx2EJLLaJJD8CHENNB25
 4Htyf2FOEqUH0AZXo2Lj007u6sHbzuBKJa0Nfp8ZeZDsJE9JCnrKkA0CO
 SOjmNxufTbvIECbBxaU63v6ga+QewhsUXAxA6GJKb6bi04sYDe9bODBs0
 ckrRwEKk3I3phPASRTaYFe2k1Vd/o7zLzvPCkymNd6vb3anDDkUIEHKSa
 TcMADSD9XmNLagKRjbrv0+ctcFCyJZfmGsu76p+Ys4X4/10nEZAMu9uOd
 wUuNXuTdCxnwqEawzo+zl7aYmuS8GyA9iKwKfRwOMqg674zl9KJniLufO w==;
X-CSE-ConnectionGUID: BmcjlMzcQciCRTk0nyMDSQ==
X-CSE-MsgGUID: lttx3WJGTEuvz7DGywwEqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="25962561"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="25962561"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 14:58:31 -0700
X-CSE-ConnectionGUID: VD1Cf/A4RxyPfN3srG8Xmw==
X-CSE-MsgGUID: X2qhUQeWRFyZTiWGMCz0GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71342741"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 14:58:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Sep 2024 00:58:28 +0300
Date: Tue, 24 Sep 2024 00:58:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/7] drm/i915: Remove leftover
 intel_sprite_set_colorkey_ioctl() prototype
Message-ID: <ZvHkhKtWYtlboSsc@intel.com>
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
 <20240916162413.8555-2-ville.syrjala@linux.intel.com>
 <7f2f6c108752139d388f272731e7b3fd8abedfb8.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7f2f6c108752139d388f272731e7b3fd8abedfb8.camel@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Sep 22, 2024 at 09:31:10AM +0000, Govindapillai, Vinod wrote:
> On Mon, 2024-09-16 at 19:24 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > intel_sprite_set_colorkey_ioctl() lives in intel_sprice_uapi.{c,h}
> > these days. For some reason the old protoype was left behind
> > in intel_sprite.h and even used by i915_driver.c. Remove the
> > leftovers and switch to including the correct header for the
> > prototype.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_sprite.h | 3 ---
> >  drivers/gpu/drm/i915/i915_driver.c          | 2 +-
> >  2 files changed, 1 insertion(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h
> > b/drivers/gpu/drm/i915/display/intel_sprite.h
> > index 044a032e41b9..f22abeb82032 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.h
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.h
> > @@ -10,7 +10,6 @@
> >  
> >  struct drm_device;
> >  struct drm_display_mode;
> Not related to this patch, the above seems to be unused as well.

drm_device I should have removed in this patch it seems.
The other one is some older leftover.

I'll see if I can remember to remedy that when applying
the patch...

> 
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Ta.


> 
> > -struct drm_file;
> >  struct drm_i915_private;
> >  struct intel_crtc_state;
> >  struct intel_plane_state;
> > @@ -19,8 +18,6 @@ enum pipe;
> >  #ifdef I915
> >  struct intel_plane *intel_sprite_plane_create(struct drm_i915_private *dev_priv,
> >                                               enum pipe pipe, int plane);
> > -int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
> > -                                   struct drm_file *file_priv);
> >  int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
> >  int chv_plane_check_rotation(const struct intel_plane_state *plane_state);
> >  
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index 943e938040c0..b0ec54a4e033 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -59,7 +59,7 @@
> >  #include "display/intel_overlay.h"
> >  #include "display/intel_pch_refclk.h"
> >  #include "display/intel_pps.h"
> > -#include "display/intel_sprite.h"
> > +#include "display/intel_sprite_uapi.h"
> >  #include "display/skl_watermark.h"
> >  
> >  #include "gem/i915_gem_context.h"
> 

-- 
Ville Syrjälä
Intel
