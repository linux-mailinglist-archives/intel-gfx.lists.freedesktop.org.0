Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A4C6F7073
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 19:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D142110E4A5;
	Thu,  4 May 2023 17:08:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C615210E4A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 17:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683220079; x=1714756079;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J+zrmze3MiwzMRQaxNSr4OiPgaMWA6POKFrpEZ0wpsA=;
 b=V7zdJwQ/Fh7UEF9L5xwH1rfGJxs9nKFbMcCxnZEm4uyV/yx8b/gotAWb
 LQStWDQ2hk0t5cr+JXJg1su/gbK/NDPI0Sh/tEzvOnsxtcdcOro40Js61
 Xy6hAnaMn1l1uTf99KUWsQKHkSGU6cWefdiywxEZpYEXXbMDN+TsygGpH
 SYROxYUJPk9vl9mzn7nlD4QXKabP1Djvgwu0fWVuR3GNvAwKiLhRyj772
 79+QjXthOosKmPFMHjtpCscWnSCSvHcMLLHB0eZfymDiLpmTzLJ8WCHR8
 dsgJm2rQNruKj70fqmSimFJWXAs3b3rtgoaTs6nmlgIyn6kx40a3ADvgV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="329356867"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="329356867"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 10:07:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="647410604"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="647410604"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 10:07:57 -0700
Date: Thu, 4 May 2023 20:08:25 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZFPmiWjiPH0qXNGK@ideak-desk.fi.intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
 <20230503231048.432368-3-imre.deak@intel.com>
 <ZFPDVPG4LdZFGwLx@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZFPDVPG4LdZFGwLx@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 02/12] drm/i915: Make the CRTC state
 consistent during sanitize-disabling
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 04, 2023 at 05:38:12PM +0300, Ville Syrjälä wrote:
> On Thu, May 04, 2023 at 02:10:38AM +0300, Imre Deak wrote:
> > Make sure that the CRTC state is reset correctly, as expected after
> > disabling the CRTC.
> > 
> > In particular this change will:
> > - Zero all the CSC blob pointers after intel_crtc_free_hw_state()
> >   has freed them.
> > - Zero the shared DPLL and port PLL pointers and clear the
> >   corresponding active flags in the PLL state.
> > - Reset all the transcoder and pipe fields.
> > 
> > v2:
> > - Reset fully the CRTC state. (Ville)
> > - Clear pipe active flags in the DPLL state.
> > 
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 13 +++++++------
> >  1 file changed, 7 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index eefa4018dc0c2..2ca66e49d8863 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -88,13 +88,14 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
> >  	crtc->active = false;
> >  	crtc->base.enabled = false;
> >  
> > -	drm_WARN_ON(&i915->drm,
> > -		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);
> > -	crtc_state->uapi.active = false;
> > -	crtc_state->uapi.connector_mask = 0;
> > -	crtc_state->uapi.encoder_mask = 0;
> > +	if (crtc_state->shared_dpll) {
> > +		crtc_state->shared_dpll->state.pipe_mask &= ~BIT(pipe);
> 
> So that's basiclly unreference_shared_dpll(). I wonder if we can
> refactor that a bit to by usable here?

Yes, makes sense I can add a
intel_unreference_shared_dpll_crtc(const struct intel_crtc *,
				   const struct intel_shared_dpll *,
				   struct intel_shared_dpll_state *);
for this.

> 
> > +		crtc_state->shared_dpll->active_mask &= ~BIT(pipe);
> > +	}
> 
> Isn't this part of disable_shared_dpll()?

Yes, it is.

> Are we not calling that?

Yes, missed that the active flag gets cleared there. Only the above
unreference is needed then, will fix this.

> 
> > +
> > +	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
> >  	intel_crtc_free_hw_state(crtc_state);
> > -	memset(&crtc_state->hw, 0, sizeof(crtc_state->hw));
> > +	intel_crtc_state_reset(crtc_state, crtc);
> >  
> >  	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder)
> >  		encoder->base.crtc = NULL;
> > -- 
> > 2.37.2
> 
> -- 
> Ville Syrjälä
> Intel
