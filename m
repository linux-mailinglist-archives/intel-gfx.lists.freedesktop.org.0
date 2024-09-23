Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2986E97EFDD
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 19:33:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F154010E0C2;
	Mon, 23 Sep 2024 17:33:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GZE+ZXGc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7B7710E446
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 17:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727112816; x=1758648816;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=F0h9rG0GWNZkn0dQox3SpAISiJEyzfyhaGY1ReUAkoc=;
 b=GZE+ZXGc3fyxDybR3Wjc5NXu4RxDnwXwix/U/SlW01nJlG+DpRZNc5Dk
 AM+s/a1GQvRP0XInWuTcfCXrsI2VFRpqCkgV/G4G6koT9IYXzjtlm1EDp
 NRbuXcc9GeLFEvy/uwg7bvlgPZIdxOR6Df5lL0OKqcT+JsRtdzSUo5z9z
 QuELhtbcSyWSl9u4oXfyZdvO2kpCTmh0Ok/V1A+54Uo8sGdmZNCsJCzKD
 3sgZwa+7O9hTUcySqRYbzlDSHCto3IczsmsvRqGC/7oTk/c0UenMwYxQ3
 Gem84h7SKCX7SedgLxtVQkiiCfMGDSdznbve0axFXMI6ztsfpTG1wZmtl g==;
X-CSE-ConnectionGUID: 85yI4LrKT8iH8TK5oLGvog==
X-CSE-MsgGUID: N5JsCEl2QLm1SMUdH7oXPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26266195"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="26266195"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 10:33:35 -0700
X-CSE-ConnectionGUID: 1idOoRcfQ/64+Fr+QpRYGg==
X-CSE-MsgGUID: npXGUSwsTwu+b1PVz1Na/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71285435"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 10:33:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 20:33:32 +0300
Date: Mon, 23 Sep 2024 20:33:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 4/7] drm/i915: Clean up intel_wm_need_update()
Message-ID: <ZvGmbLMQFe_XhWtp@intel.com>
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
 <20240916162413.8555-5-ville.syrjala@linux.intel.com>
 <005dc35a0daff49c6d15fb68fb9e76f5e9836be3.camel@intel.com>
 <b32bfa82c4dbbf611b4bcd613c154261e4d8cb6a.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b32bfa82c4dbbf611b4bcd613c154261e4d8cb6a.camel@intel.com>
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

On Sun, Sep 22, 2024 at 10:34:07AM +0000, Govindapillai, Vinod wrote:
> On Sun, 2024-09-22 at 12:54 +0300, Govindapillai, Vinod wrote:
> > On Mon, 2024-09-16 at 19:24 +0300, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > intel_wm_need_update() is a mess when it comes to variable
> > > names and constness. The checks also keep alternating randomly
> > > between 'old != cur' vs. 'cur != old'. Clean it all up.
> > > 
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  .../gpu/drm/i915/display/intel_atomic_plane.c | 20 +++++++++----------
> > >  1 file changed, 10 insertions(+), 10 deletions(-)
> > 
> > Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> 
> Just noticed that the next patch in this series nuke this intel_wm_need_update() and move to
> i9xx_wm_need_update().

That's just a rename. Nothing to do with the internals of the function.

> So wonder if we need this patch.
> 
> Anyway, already RB-ed.
> 
> BR
> Vinod
> 
> > 
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index b5bbcc773ec0..2aeb4cd5b5a1 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -393,22 +393,22 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
> > >  }
> > >  
> > >  /* FIXME nuke when all wm code is atomic */
> > > -static bool intel_wm_need_update(const struct intel_plane_state *cur,
> > > -                                struct intel_plane_state *new)
> > > +static bool intel_wm_need_update(const struct intel_plane_state *old_plane_state,
> > > +                                const struct intel_plane_state *new_plane_state)
> > >  {
> > >         /* Update watermarks on tiling or size changes. */
> > > -       if (new->uapi.visible != cur->uapi.visible)
> > > +       if (old_plane_state->uapi.visible != new_plane_state->uapi.visible)
> > >                 return true;
> > >  
> > > -       if (!cur->hw.fb || !new->hw.fb)
> > > +       if (!old_plane_state->hw.fb || !new_plane_state->hw.fb)
> > >                 return false;
> > >  
> > > -       if (cur->hw.fb->modifier != new->hw.fb->modifier ||
> > > -           cur->hw.rotation != new->hw.rotation ||
> > > -           drm_rect_width(&new->uapi.src) != drm_rect_width(&cur->uapi.src) ||
> > > -           drm_rect_height(&new->uapi.src) != drm_rect_height(&cur->uapi.src) ||
> > > -           drm_rect_width(&new->uapi.dst) != drm_rect_width(&cur->uapi.dst) ||
> > > -           drm_rect_height(&new->uapi.dst) != drm_rect_height(&cur->uapi.dst))
> > > +       if (old_plane_state->hw.fb->modifier != new_plane_state->hw.fb->modifier ||
> > > +           old_plane_state->hw.rotation != new_plane_state->hw.rotation ||
> > > +           drm_rect_width(&old_plane_state->uapi.src) != drm_rect_width(&new_plane_state-
> > > > uapi.src) ||
> > > +           drm_rect_height(&old_plane_state->uapi.src) != drm_rect_height(&new_plane_state-
> > > > uapi.src) ||
> > > +           drm_rect_width(&old_plane_state->uapi.dst) != drm_rect_width(&new_plane_state-
> > > > uapi.dst) ||
> > > +           drm_rect_height(&old_plane_state->uapi.dst) != drm_rect_height(&new_plane_state-
> > > > uapi.dst))
> > >                 return true;
> > >  
> > >         return false;
> > 
> 

-- 
Ville Syrjälä
Intel
