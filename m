Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 130157B864F
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 19:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 719AB10E3AD;
	Wed,  4 Oct 2023 17:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFC6F10E3AD
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 17:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696439960; x=1727975960;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5zDzvNxzfB1nOA+RxQvtmn2lwER6f7arJUJ0n4I6RoA=;
 b=KJxmtqG7LxQMFOtMQOChL87py1fe0raPusZs0t9LiiLcTCY0XxT8luxD
 rpgVbmIdCdZOw46KPpbgNx5ku+Xr03sCU80p9AqFe396SiYlVC0RVXrTF
 kBX1B+K/dAGEk00ER1HQqNfSC5EIyg+fh4QDHQXRffUfYj7TlhMChSxzm
 Hrl6nf+uPbst301qKlrrZf71rSQY8LTaEA7GW6HIGCAFhXV4zU/DYNrOC
 XCJjV5XX5U2wpqLX6TI+UTsOsi8bFeEVBicISkcv44zhfnYlpWqirzynY
 k/M2UfqbXT6zJq7oKU9K69wNlD2YLlcqKdRyG0QCSxyR5kDztbum9otIf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="449731497"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="449731497"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 10:19:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="728099884"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="728099884"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga006.jf.intel.com with SMTP; 04 Oct 2023 10:18:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 20:18:58 +0300
Date: Wed, 4 Oct 2023 20:18:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZR2egmdflimqIpu3@intel.com>
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
 <20231004155607.7719-7-ville.syrjala@linux.intel.com>
 <877co2e36j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <877co2e36j.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 06/12] drm/i915: Simplify watermark state
 checker calling convention
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

On Wed, Oct 04, 2023 at 07:57:08PM +0300, Jani Nikula wrote:
> On Wed, 04 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > There is never any reason to pass in both the crtc and its state
> > as one can always dig out the crtc from its state.
> 
> I'm wondering whether we shouldn't just always pass 
> 
> struct intel_atomic_state *state, struct intel_crtc *crtc
> 
> to the checker, everywhere, even if that's excessive in some cases. I
> think some of the confusion you're fixing in this series comes from
> people cargo culting the conventions, and then adding some new
> parameters as needed, deviating from the state, crtc pair.

Yeah, I guess that makes sense. I can respin with that.

> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_modeset_verify.c | 2 +-
> >  drivers/gpu/drm/i915/display/skl_watermark.c        | 4 ++--
> >  drivers/gpu/drm/i915/display/skl_watermark.h        | 3 +--
> >  3 files changed, 4 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > index 47d45ba1e707..bbee79aad0cd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > @@ -233,7 +233,7 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
> >  	    !intel_crtc_needs_fastset(new_crtc_state))
> >  		return;
> >  
> > -	intel_wm_state_verify(crtc, new_crtc_state);
> > +	intel_wm_state_verify(new_crtc_state);
> >  	verify_connector_state(state, crtc);
> >  	verify_crtc_state(state, crtc);
> >  	intel_shared_dpll_state_verify(state, crtc);
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index d51cf92c96ae..e7a9fb4b1f6b 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -3134,9 +3134,9 @@ static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
> >  	skl_wm_sanitize(i915);
> >  }
> >  
> > -void intel_wm_state_verify(struct intel_crtc *crtc,
> > -			   const struct intel_crtc_state *new_crtc_state)
> > +void intel_wm_state_verify(const struct intel_crtc_state *new_crtc_state)
> >  {
> > +	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
> >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >  	struct skl_hw_state {
> >  		struct skl_ddb_entry ddb[I915_MAX_PLANES];
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
> > index 18e4b0661cbb..ca4312bf7012 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> > @@ -38,8 +38,7 @@ bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
> >  				 const struct skl_ddb_entry *entries,
> >  				 int num_entries, int ignore_idx);
> >  
> > -void intel_wm_state_verify(struct intel_crtc *crtc,
> > -			   const struct intel_crtc_state *new_crtc_state);
> > +void intel_wm_state_verify(const struct intel_crtc_state *new_crtc_state);
> >  
> >  void skl_watermark_ipc_init(struct drm_i915_private *i915);
> >  void skl_watermark_ipc_update(struct drm_i915_private *i915);
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
