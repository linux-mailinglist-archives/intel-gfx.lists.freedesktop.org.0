Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D8F4B866C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 12:04:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D1A10E5D9;
	Wed, 16 Feb 2022 11:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A21F10E650
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 11:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645009469; x=1676545469;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=z2BhCCYqNJJw1IrFXBiATiQ8DcRjbGLRFJpbZPIV6Fk=;
 b=IotDJ1PJwWPy1n0O4HhwUNp2J+ic67TtzO6lUNavbsxh4xpX3lEr28hP
 bpF3px5p5aVWd0ijsj7xoTvp3KQgMi4lk9cFcUjjeGpY6kv9fGm2OHxGw
 1s7PDRDBWVhxJfp9aPoRCk6r1J10E1sxI+RGnuwuBulq9H2t4Q1NOvEOE
 QtaVXmO6cGDlXbLRx/w14P1WSu705yI1QHvbjDihREFM5oIGugKIG3sB4
 DFNUewRN1Bk8o2hFOkYZ2vOh4TH931VmckukiCwxzbP3dz5PtgPTdMyjc
 P69uogBSJYIIuHQ1Yv8rW9GyH2BK2BcJ3yAF41ZJbWHRzWzgiSolU8ZLL w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="337014193"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="337014193"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 03:04:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="544876124"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 16 Feb 2022 03:04:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 13:04:25 +0200
Date: Wed, 16 Feb 2022 13:04:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <YgzaOVz15qLUTd7g@intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-11-ville.syrjala@linux.intel.com>
 <b713032b-2696-677f-d1a6-b3eece58b678@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b713032b-2696-677f-d1a6-b3eece58b678@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 10/12] drm/i915: Eliminate bigjoiner boolean
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

On Wed, Feb 16, 2022 at 04:27:49PM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/16/2022 12:02 AM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Since we now have the bigjoiner_pipes bitmask the boolean
> > is redundant. Get rid of it.
> >
> > Also, populating bigjoiner_pipes already during
> > encoder->compute_config() allows us to use it much earlier
> > during the state calculation as well. The initial aim is
> > to use it in intel_crtc_compute_config().
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
> >   drivers/gpu/drm/i915/display/intel_display.c  | 50 ++++++++-----------
> >   .../drm/i915/display/intel_display_debugfs.c  |  2 +-
> >   .../drm/i915/display/intel_display_types.h    |  3 --
> >   drivers/gpu/drm/i915/display/intel_dp.c       | 13 ++---
> >   drivers/gpu/drm/i915/display/intel_vdsc.c     |  8 +--
> >   .../drm/i915/display/skl_universal_plane.c    |  2 +-
> >   7 files changed, 36 insertions(+), 44 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> > index 1f448f4e9aaf..da6cf0515164 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -640,7 +640,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
> >   	 * FIXME bigjoiner fastpath would be good
> >   	 */
> >   	if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state) ||
> > -	    crtc_state->update_pipe || crtc_state->bigjoiner)
> > +	    crtc_state->update_pipe || crtc_state->bigjoiner_pipes)
> >   		goto slow;
> >   
> >   	/*
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 47b5d8cc16fd..192474163edb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1926,7 +1926,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
> >   	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> >   		return;
> >   
> > -	if (!new_crtc_state->bigjoiner) {
> > +	if (!new_crtc_state->bigjoiner_pipes) {
> >   		intel_encoders_pre_pll_enable(state, crtc);
> >   
> >   		if (new_crtc_state->shared_dpll)
> > @@ -2727,7 +2727,7 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
> >   static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
> >   					   struct drm_display_mode *mode)
> >   {
> > -	if (!crtc_state->bigjoiner)
> > +	if (!crtc_state->bigjoiner_pipes)
> >   		return;
> >   
> >   	mode->crtc_clock /= 2;
> > @@ -2811,7 +2811,7 @@ static void intel_bigjoiner_compute_pipe_src(struct intel_crtc_state *crtc_state
> >   {
> >   	int width, height;
> >   
> > -	if (!crtc_state->bigjoiner)
> > +	if (!crtc_state->bigjoiner_pipes)
> >   		return;
> >   
> >   	width = drm_rect_width(&crtc_state->pipe_src);
> > @@ -4218,7 +4218,6 @@ static void intel_bigjoiner_get_config(struct intel_crtc_state *crtc_state)
> >   	if (((master_pipes | slave_pipes) & BIT(pipe)) == 0)
> >   		return;
> >   
> > -	crtc_state->bigjoiner = true;
> >   	crtc_state->bigjoiner_pipes =
> >   		BIT(get_bigjoiner_master_pipe(pipe, master_pipes, slave_pipes)) |
> >   		get_bigjoiner_slave_pipes(pipe, master_pipes, slave_pipes);
> 
> Although not part of this patch, do we need to check if 
> get_bigjoiner_master_pipe() does not give PIPE_INVALID?
> 
> Perhaps in a case where master_pipe is read as 0 but some garbage for 
> slave_pipes during readout?
> 
> Should there be a check for INVALID_PIPE, before feeding into BIT() macro?

I think if we want to do more thourough validation against totally bogus
hardware programming then we should just do it once at the start.
enabled_bigjoiner_pipes() does have something, but it's only good for
the two joined pipes cases. Also it just warns and doesn't do anything
more than that atm. The simple option might be to make it just zero out
the masks entirely if they look totally bogus. The readout would then
be skipped for all slave pipes.

-- 
Ville Syrjälä
Intel
