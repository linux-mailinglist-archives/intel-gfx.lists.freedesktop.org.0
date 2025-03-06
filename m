Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C330A55041
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:10:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E61A410E9E9;
	Thu,  6 Mar 2025 16:10:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nx20EVkQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0661D10E9E9
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741277413; x=1772813413;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BHGP42oZAS6eOVh87QVdiyWWl5boFlHVO0p6IYwtRqQ=;
 b=nx20EVkQHRa1HFTqrAGrWCGcP6dkV29ZQ1ntLZh5yv5ye5bYWqLKUsM8
 p3aTKY67HbKmEmCToRvMpyACVBm51tYFqF5UFJF0fKu/Mo8LYbM1QaA8a
 AzkMw7UFRlsEgNu5nXPBA+HCIZNTeEl7C2YE+bbcyOJmf/6fsj96NmAW4
 h0rGGFi+2ccufO98wb0saZB0UBZag0LKd2ydUEwpplLEK9mC0kNH5DO3B
 1jFe8NUYU9p3WqyvPjrWaWT350gW1/YSiOvsaYDmKbr6pFajRStMLRrOI
 LzOioKgzbATCogfgF3yOqlJ1gSCrAjapTQkoo9dofCMUAow/UwoqG1zLR A==;
X-CSE-ConnectionGUID: ECyaTfSVSGqytQWvqWRDLA==
X-CSE-MsgGUID: RoImmNDJRt2VopdaQxO7ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="41548242"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="41548242"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:10:12 -0800
X-CSE-ConnectionGUID: 28ppofi2T3iDFKNrZHoMGQ==
X-CSE-MsgGUID: iEJEkmRuRv6M0/3yIt6cgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124279904"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:10:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:10:09 +0200
Date: Thu, 6 Mar 2025 18:10:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 15/19] drm/i915: Simplify cdclk_disable_noatomic()
Message-ID: <Z8nI4amyO227YuQZ@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-16-ville.syrjala@linux.intel.com>
 <ea61c60a6b473c5e76a151fefa273cd50ddedcb4.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ea61c60a6b473c5e76a151fefa273cd50ddedcb4.camel@intel.com>
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

On Tue, Mar 04, 2025 at 03:04:07PM +0000, Govindapillai, Vinod wrote:
> On Tue, 2025-02-18 at 23:19 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Instead of hand rolling the cdclk state disabling for a
> > pipe in noatomic() let's just recompute the whole thing
> > from scratch. Less code we have to remember to keep in sync.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 7 +------
> >  1 file changed, 1 insertion(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 62caee4a8b64..2a8749a0213e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -3364,13 +3364,8 @@ void intel_cdclk_update_hw_state(struct intel_display *display)
> >  void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc)
> >  {
> >  	struct intel_display *display = to_intel_display(crtc);
> > -	struct intel_cdclk_state *cdclk_state =
> > -		to_intel_cdclk_state(display->cdclk.obj.state);
> > -	enum pipe pipe = crtc->pipe;
> >  
> > -	cdclk_state->min_cdclk[pipe] = 0;
> > -	cdclk_state->min_voltage_level[pipe] = 0;
> > -	cdclk_state->active_pipes &= ~BIT(pipe);
> > +	intel_cdclk_update_hw_state(display);
> >  }
> >  
> 
> Okay! Now I see that passing active_pipes to intel_cdclk_update_hw_state() as I commented in one of
> the earlier patch wont work!
> 
> But isnt this bit efficient, as we will be calling,  intel_cdclk_crtc_disable_noatomic() (and
> intel_cdclk_update_hw_state()) for_each_intel_crtc_in_pipe_mask(), we end up executing
> intel_cdclk_update_hw_state() redundantly?
> 
> Instead should we extract intel_cdclk_update_crtc_hw_state() from  intel_cdclk_update_hw_state() 
> and use that here?

We'll just do these once during driver for the typical case, and
only if have to sanitize off some pipes then we'll potentially
do them extra times. Performance doesn't matter at that point,
so the simpler it all is the better.

-- 
Ville Syrjälä
Intel
