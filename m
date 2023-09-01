Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E6A78FBF9
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 12:56:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D79510E5E1;
	Fri,  1 Sep 2023 10:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D208A10E5E1
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 10:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693565788; x=1725101788;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=q0ryO+10SHLRTT5B6hcTrMz2Bbp1EIULu/wcPVM1YpE=;
 b=Ajhl2rfedeSO/2STZPxXlSd/CQnrZdndEs4fovhDGrLaETLW/gogLNBN
 lC82B3oezoXlE6xxF6iBYerfHdN6qgm7Ss1XMud/WQ5fdW/CGCXGaKtJf
 84GZtBAlQfWuKo3nVbnXXylg+H+4VYL/MB6L5vrPGfBpg/4lzQHamSxji
 ll3Kv+Ra1VaOheNVVPoMIoudFTmKy8xzCd3ruA6Jl241BtDaadOB7TVEr
 82JAq/5ed0PgV8TZiPm7rhwn9qH+V7ahd9ZnmwEht6+10D86TDgH2fglp
 6bneYHvunjl1xoVBvGE422wWmhFSji6cunugwpZitjmTjrVaoa9zb80Cz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="361220866"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="361220866"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 03:56:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="883145329"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="883145329"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 01 Sep 2023 03:56:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 13:56:25 +0300
Date: Fri, 1 Sep 2023 13:56:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ZPHDWX31HVL18R_z@intel.com>
References: <20230831162643.20354-1-ville.syrjala@linux.intel.com>
 <5b340552-e09b-48cb-0677-7f65f24ee6ce@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5b340552-e09b-48cb-0677-7f65f24ee6ce@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use vblank worker to unpin old
 legacy cursor fb safely
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

On Fri, Sep 01, 2023 at 12:16:21PM +0200, Maarten Lankhorst wrote:
> Hey,
> 
> 
> Den 2023-08-31 kl. 18:26, skrev Ville Syrjala:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > The cursor hardware only does sync updates, and thus the hardware
> > will be scanning out from the old fb until the next start of vblank.
> > So in order to make the legacy cursor fastpath actually safe we
> > should not unpin the old fb until we're sure the hardware has
> > ceased accessing it. The simplest approach is to just use a vblank
> > work here to do the delayed unpin.
> >
> > Not 100% sure it's a good idea to put this onto the same high
> > priority vblank worker as eg. our timing critical gamma updates.
> > But let's keep it simple for now, and it we later discover that
> > this is causing problems we can think about adding a lower
> > priority worker for such things.
> >
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_cursor.c   | 25 +++++++++++++++++--
> >   .../drm/i915/display/intel_display_types.h    |  3 +++
> >   2 files changed, 26 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> > index b342fad180ca..2bd1a79c6955 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -603,6 +603,16 @@ static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
> >   	return format == DRM_FORMAT_ARGB8888;
> >   }
> >   
> > +static void intel_cursor_unpin_work(struct kthread_work *base)
> > +{
> > +	struct drm_vblank_work *work = to_drm_vblank_work(base);
> > +	struct intel_plane_state *plane_state =
> > +		container_of(work, typeof(*plane_state), unpin_work);
> > +
> > +	intel_plane_unpin_fb(plane_state);
> > +	intel_plane_destroy_state(plane_state->uapi.plane, &plane_state->uapi);
> > +}
> > +
> >   static int
> >   intel_legacy_cursor_update(struct drm_plane *_plane,
> >   			   struct drm_crtc *_crtc,
> > @@ -730,14 +740,25 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
> >   
> >   	local_irq_enable();
> >   
> > -	intel_plane_unpin_fb(old_plane_state);
> > +	if (old_plane_state->hw.fb != new_plane_state->hw.fb) {
> > +		drm_vblank_work_init(&old_plane_state->unpin_work, &crtc->base,
> > +				     intel_cursor_unpin_work);
> > +
> > +		drm_vblank_work_schedule(&old_plane_state->unpin_work,
> > +					 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
> > +					 false);
> > +
> > +		old_plane_state = NULL;
> > +	} else {
> > +		intel_plane_unpin_fb(old_plane_state);
> > +	}
> 
> Maybe check if crtc is active and no modeset is happening?

We wouldn't be on this codepath if that wasn't the case.

> Similar to 
> how the vblank worker is used in other cases. That should hopefully fix 
> the cursor leak test.

The leak is likely due to the vblank worker being a bit crazy
and sometimes silently cancelling pending works. I fired a new
series at trybot that tries to avoid that.

-- 
Ville Syrjälä
Intel
