Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E8987A42E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 09:42:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DBBD10E309;
	Wed, 13 Mar 2024 08:42:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HbhM7fUT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E78B10E309
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 08:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710319375; x=1741855375;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=web9syGfly7f9zAnlhxtaGhgk6AMUwi+qkQUs4LEAPk=;
 b=HbhM7fUTHVbeMYDJab8qrCIsXrx2ycTWJZncR00/xLvaehTq8Tv7IW+P
 1YzMyh4yK7Ir0WZyO6fB55wZ/5qYzjj/b1/G+vtWPElcGJ3TinMgyBZpM
 5p+yxaceF6oMwwwsXfsUkQm3FUVIwlm8P75/xlM5hQDYSkFLt5SR4DPc3
 NrQFdQXVGxzK/KDSAHkW9S8L8LV1bWeLFqobv5MuFEAQYR0VjcBXz3yCy
 MyS4lMfVmyW540WNPGrdrY01/UtAR7KH7Y9HMJ4yjzF7urnfDxbc2VKqt
 j1IbTawBdbAeLfRDMhAljAX28ir5JDOXiht+BAWX6yyg1qq1R2EBnBX3o Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8012661"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="8012661"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 01:42:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="11755029"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 01:42:52 -0700
Date: Wed, 13 Mar 2024 10:42:45 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Manasi Navare <navaremanasi@chromium.org>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: Re: [PATCH 2/6] drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
Message-ID: <ZfFnBbBoRuPis5qT@intel.com>
References: <20240308131146.32714-1-stanislav.lisovskiy@intel.com>
 <20240308131146.32714-3-stanislav.lisovskiy@intel.com>
 <CAE72mNmBWeCNig3p0y3-dAcDjvy_XELCxynYbsqP3yEMGzYkoA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAE72mNmBWeCNig3p0y3-dAcDjvy_XELCxynYbsqP3yEMGzYkoA@mail.gmail.com>
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

On Tue, Mar 12, 2024 at 09:36:22PM -0700, Manasi Navare wrote:
> Thanks Stan for the cleanup around post disable non MST case, one comment below
> 
> On Fri, Mar 8, 2024 at 5:11 AM Stanislav Lisovskiy
> <stanislav.lisovskiy@intel.com> wrote:
> >
> > Extract the "not-MST" stuff from intel_ddi_post_disable() so that
> > the whole thing isn't so cluttered.
> >
> > The bigjoiner slave handling was outside of the !MST check,
> > but it really should have been inside it as its the counterpart
> > to the master handling inside the check. So we pull that
> > in as well. There is no functional change here as we don't
> > currently support bigjoiner+MST anyway.
> 
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Credits-to: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 37 +++++++++++++++---------
> >  1 file changed, 23 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index bbce74f011d40..5628a4ab608d4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3095,28 +3095,26 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
> >         intel_dp_dual_mode_set_tmds_output(intel_hdmi, false);
> >  }
> >
> > -static void intel_ddi_post_disable(struct intel_atomic_state *state,
> > -                                  struct intel_encoder *encoder,
> > -                                  const struct intel_crtc_state *old_crtc_state,
> > -                                  const struct drm_connector_state *old_conn_state)
> > +static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
> > +                                              struct intel_encoder *encoder,
> > +                                              const struct intel_crtc_state *old_master_crtc_state,
> > +                                              const struct drm_connector_state *old_conn_state)
> >  {
> >         struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >         struct intel_crtc *slave_crtc;
> >
> > -       if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
> > -               intel_crtc_vblank_off(old_crtc_state);
> > +       intel_crtc_vblank_off(old_crtc_state);
> >
> > -               intel_disable_transcoder(old_crtc_state);
> > +       intel_disable_transcoder(old_crtc_state);
> >
> > -               intel_ddi_disable_transcoder_func(old_crtc_state);
> > +       intel_ddi_disable_transcoder_func(old_crtc_state);
> >
> > -               intel_dsc_disable(old_crtc_state);
> > +       intel_dsc_disable(old_crtc_state);
> >
> > -               if (DISPLAY_VER(dev_priv) >= 9)
> > -                       skl_scaler_disable(old_crtc_state);
> > -               else
> > -                       ilk_pfit_disable(old_crtc_state);
> > -       }
> > +       if (DISPLAY_VER(dev_priv) >= 9)
> > +               skl_scaler_disable(old_crtc_state);
> > +       else
> > +               ilk_pfit_disable(old_crtc_state);
> >
> >         for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
> >                                          intel_crtc_bigjoiner_slave_pipes(old_crtc_state)) {
> 
> This bigjoiner slave handling for MST path will be added later to the
> intel_ddi_post_post_disable()
> when we enable bigjoiner for MST?
> 
> Manasi

Hi Manasi, yes, currently I'm evaluating what would be the best way
to do that.


Stan

> 
> > @@ -3128,6 +3126,17 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
> >                 intel_dsc_disable(old_slave_crtc_state);
> >                 skl_scaler_disable(old_slave_crtc_state);
> >         }
> > +}
> > +
> > +static void intel_ddi_post_disable(struct intel_atomic_state *state,
> > +                                  struct intel_encoder *encoder,
> > +                                  const struct intel_crtc_state *old_crtc_state,
> > +                                  const struct drm_connector_state *old_conn_state)
> > +{
> > +
> > +       if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
> > +               intel_ddi_post_disable_hdmi_or_sst(state, encoder,
> > +                                                  old_crtc_state, old_conn_state);
> >
> >         /*
> >          * When called from DP MST code:
> > --
> > 2.37.3
> >
