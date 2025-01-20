Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51003A16EBC
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 15:48:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A104F10E421;
	Mon, 20 Jan 2025 14:48:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BwSnLEGz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80A3210E421;
 Mon, 20 Jan 2025 14:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737384508; x=1768920508;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/vVWF2FG5ycIu+AfjnknHIjppqu2cxy+iV35YMvSG0I=;
 b=BwSnLEGz1ZqELsAvqhF5wvTFrRN/WjUGmQiuPYXZBQ1ammAZcYRAiYUD
 LBVkclg4uXjWKXFo9b46Tgy1JTq5fbmf4BmeWIe1aYf8zKaLJzfgieSK8
 PfAHFH9HhKs5TDouJsuRYr2tbfZ/n7O/SYXp80HkthTfZvLgqejlx78YD
 tAK23i+CQO1CAFcEV1WrIS/2N7OAwF51X0+pqO6bSC8k+wuSgf5lDrQ2D
 doK+TM02nC5VfGp5Ob2vl7frOAC7APpwetcvDvztJ5yrthEOAYjMYfO1M
 7zoucaPzBBUNz7Oq68JblkF0f3Gbwe50K8JcILGl1NRwUE1pkSLA4Vt0d A==;
X-CSE-ConnectionGUID: Z/x7D39+TICfrJ877k90dw==
X-CSE-MsgGUID: +JDazdTESviGU9Txgd7PHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="25381883"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="25381883"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 06:48:28 -0800
X-CSE-ConnectionGUID: giss7MIMQCi1oad4HwA/fg==
X-CSE-MsgGUID: cexijOTQQeOnCMp0AXBijg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106661646"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Jan 2025 06:48:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jan 2025 16:48:25 +0200
Date: Mon, 20 Jan 2025 16:48:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/8] drm/i915: Pimp display fault reporting
Message-ID: <Z45iOZzV01fk4Fnk@intel.com>
References: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
 <20250116174758.18298-4-ville.syrjala@linux.intel.com>
 <87ef6c2e-a5c9-431a-9ea5-3b709e913384@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ef6c2e-a5c9-431a-9ea5-3b709e913384@linux.intel.com>
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

On Mon, Jan 20, 2025 at 02:50:50PM +0100, Maarten Lankhorst wrote:
> 
> 
> Den 2025-01-16 kl. 18:47, skrev Ville Syrjala:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Decode the display faults a bit more extensively so that one
> > doesn't have translate the bitmask to planes/etc. manually.
> > Also for plane faults we can read out a bit of state from the
> > relevant plane(s) and dump that out.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   .../gpu/drm/i915/display/intel_atomic_plane.c |   2 +-
> >   .../gpu/drm/i915/display/intel_atomic_plane.h |   2 +
> >   .../gpu/drm/i915/display/intel_display_irq.c  | 156 +++++++++++++++++-
> >   3 files changed, 155 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index 612e9b0ec14a..0aeb5f00d9c4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -663,7 +663,7 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
> >   					       old_plane_state, new_plane_state);
> >   }
> >   
> > -static struct intel_plane *
> > +struct intel_plane *
> >   intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)
> >   {
> >   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > index 0f982f452ff3..298bb97b37a4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > @@ -19,6 +19,8 @@ struct intel_plane;
> >   struct intel_plane_state;
> >   enum plane_id;
> >   
> > +struct intel_plane *
> > +intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id);
> >   unsigned int intel_adjusted_rate(const struct drm_rect *src,
> >   				 const struct drm_rect *dst,
> >   				 unsigned int rate);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > index f06273d9bc8c..1b3b6b8bc794 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > @@ -10,6 +10,7 @@
> >   #include "i915_irq.h"
> >   #include "i915_reg.h"
> >   #include "icl_dsi_regs.h"
> > +#include "intel_atomic_plane.h"
> >   #include "intel_crtc.h"
> >   #include "intel_de.h"
> >   #include "intel_display_irq.h"
> > @@ -26,6 +27,52 @@
> >   #include "intel_psr.h"
> >   #include "intel_psr_regs.h"
> >   
> > +struct pipe_fault_handler {
> > +	bool (*handle)(struct intel_crtc *crtc, enum plane_id plane_id);
> > +	u32 fault;
> > +	enum plane_id plane_id;
> > +};
> > +
> > +static bool handle_plane_fault(struct intel_crtc *crtc, enum plane_id plane_id)
> > +{
> > +	struct intel_display *display = to_intel_display(crtc);
> > +	struct intel_plane_error error = {};
> > +	struct intel_plane *plane;
> > +
> > +	plane = intel_crtc_get_plane(crtc, plane_id);
> > +	if (!plane || !plane->capture_error)
> > +		return false;
> > +
> > +	plane->capture_error(crtc, plane, &error);
> > +
> > +	drm_err_ratelimited(display->drm,
> > +			    "[CRTC:%d:%s][PLANE:%d:%s] fault (CTL=0x%x, SURF=0x%x, SURFLIVE=0x%x)\n",
> > +			    crtc->base.base.id, crtc->base.name,
> > +			    plane->base.base.id, plane->base.name,
> > +			    error.ctl, error.surf, error.surflive);
> 
> Could we drop the CRTC here?
> <3> [264.586596] xe 0000:00:02.0: [drm] *ERROR* [CRTC:82:pipe 
> A][PLANE:32:plane 1A] fault (CTL=0x94001002, SURF=0x1800000, 
> SURFLIVE=0x1800000)
> 
> Looks to be a bit redundant to print CRTC and plane here. Most likely 
> PLANE is good enough. :-)

It's helpful with cases where the plane name isn't very descriptive,
which will mainly be VLV/CHV sprites.

Would also help with gen2/3 where we swap the plane<->pipe mapping
around for FBC purposes, but as FBC seems to trigger spurious
faults on those platforms we probably can't hook this up there.

-- 
Ville Syrjälä
Intel
