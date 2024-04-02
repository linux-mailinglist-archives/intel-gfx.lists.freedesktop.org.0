Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1D4895D01
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 21:50:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5080310FFDC;
	Tue,  2 Apr 2024 19:50:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KdYnvotO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DB6A10FFDC
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 19:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712087411; x=1743623411;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=H/La8UF6K54ys6zESXF/NymPmls9TFO9P3lS7pIymHg=;
 b=KdYnvotOsYycy+0PCJVEwf4FL8TBFVROe8m3aWtPcOM6lOLI/WO9weM1
 y7zo6VuHqBms6Dw3Uc/9ewvaEypkhXLNB6XRNuhNQmYO0drLpLH9Suzgz
 3n8kLAwL3D2XoLLTjTyikTUDKwwjPwrZt9b2oKkWIBSc0pbSUsRo9D7AB
 988Z3pWAuc1zM8nq39h8GwgUawF75/+CXAufh8RIqbOvoHfNHlojy9Qwo
 8++QAW9rRAC4AjSVKsvzhE2kiDEY/nU+u0Cdf7YBt3VagXR3tb2qXeU2Z
 JrMYmQ7Hh536rS97omsjQP6L17LAegPid/coyMTgZKDXBQ8OoffinC6GJ Q==;
X-CSE-ConnectionGUID: RUpfNmaHTXiP9hkXOw8Ryw==
X-CSE-MsgGUID: L3tMpEGqRDu4chlOvTVkog==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7151767"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; 
   d="scan'208";a="7151767"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 12:50:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789556"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789556"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 12:50:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 22:50:07 +0300
Date: Tue, 2 Apr 2024 22:50:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 18/22] drm/i915: Handle joined pipes inside
 hsw_crtc_disable()
Message-ID: <Zgxhb9nlcFDSI3OG@intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-19-ville.syrjala@linux.intel.com>
 <IA0PR11MB7307310C4E64AD31007F2DCFBA3F2@IA0PR11MB7307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA0PR11MB7307310C4E64AD31007F2DCFBA3F2@IA0PR11MB7307.namprd11.prod.outlook.com>
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

On Mon, Apr 01, 2024 at 06:46:20AM +0000, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Friday, March 29, 2024 6:43 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 18/22] drm/i915: Handle joined pipes inside hsw_crtc_disable()
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Reorganize the crtc disable path to only deal with the master pipes/transcoders
> > in intel_old_crtc_state_disables() and offload the handling of joined pipes to
> > hsw_crtc_disable().
> > This makes the whole thing much more sensible since we can actually control
> > the order in which we do the per-pipe vs.
> > per-transcoder modeset steps.
> > 
> > v2: Use the name 'pipe_crtc' for the per-pipe crtc pointer
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 64 ++++++++++++--------
> >  1 file changed, 39 insertions(+), 25 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 58ee40786d5c..c15ea046c62a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1791,29 +1791,28 @@ static void hsw_crtc_disable(struct
> > intel_atomic_state *state,
> >  	const struct intel_crtc_state *old_crtc_state =
> >  		intel_atomic_get_old_crtc_state(state, crtc);
> >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > +	struct intel_crtc *pipe_crtc;
> > 
> >  	/*
> >  	 * FIXME collapse everything to one hook.
> >  	 * Need care with mst->ddi interactions.
> >  	 */
> > -	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
> > -		intel_encoders_disable(state, crtc);
> > -		intel_encoders_post_disable(state, crtc);
> > -	}
> > -
> > -	intel_disable_shared_dpll(old_crtc_state);
> > +	intel_encoders_disable(state, crtc);
> > +	intel_encoders_post_disable(state, crtc);
> > 
> > -	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
> > -		struct intel_crtc *slave_crtc;
> > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
> > +
> > intel_crtc_joined_pipe_mask(old_crtc_state)) {
> > +		const struct intel_crtc_state *old_pipe_crtc_state =
> > +			intel_atomic_get_old_crtc_state(state, pipe_crtc);
> > 
> > -		intel_encoders_post_pll_disable(state, crtc);
> > +		intel_disable_shared_dpll(old_pipe_crtc_state);
> > +	}
> 
> As per the sequence is considered, should the pll be disabled prior to disabling the encoders and then followed by post_pll_disable?

The correct disable order is:
1. encoder disable()
2. disable transcoder/etc. (nop for hsw+ as that stuff
   has been sucked into the encoder hooks)
3. encoder post_disable()
4. pll disable
5. encoder post_pll_disable()

which we should be following here, thouh the diff is
rather hard to read due to the indentation changes.

-- 
Ville Syrjälä
Intel
