Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7E76A0C90
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 16:07:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64EE010E4D0;
	Thu, 23 Feb 2023 15:07:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6022510E4D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 15:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677164871; x=1708700871;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZKOk4kVlvilbwgFC3m7Qkbk6fLr1LYT7xa/0p+Q9pLQ=;
 b=Xq+9U9/5nFvZKvt5J30IwU2bx04eQIhYcly6JEXdQ+owc8PIh6vxVQNe
 2fHN61vE37nFH3+mjPbbE3HMgj7Lr1LqLL4O7jScjiKAqL7kD34sNOOJz
 G8TIKGeQkvCtKR6D6rnrMSqFaTVOA8WOfIU+KuSBtInc8jRRmEpXMtDj6
 FwHstCXp7is50adFufFvxlPMB827a530rSJFGrglOjsqrrnI3TAkWNeCM
 Qaeaepn1j9tFlEK6duTFTpf3M/gGgzFzTtQyTI9yAEdSLD/pztnxY7H9D
 t8WnbvyCpEmJQo3Q96VGfsBRG9UwZ/nfIH5xpEJJnDuTkjQEsMa60WUWS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="360725510"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="360725510"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 07:07:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="674557274"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="674557274"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 23 Feb 2023 07:07:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Feb 2023 17:07:14 +0200
Date: Thu, 23 Feb 2023 17:07:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <Y/eBIshF4EiSS4rT@intel.com>
References: <20230220151731.6852-1-ville.syrjala@linux.intel.com>
 <DM4PR11MB636060CF5C30347EF0EBE755F4AA9@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB636060CF5C30347EF0EBE755F4AA9@DM4PR11MB6360.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling for DP
 MST
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 22, 2023 at 05:59:45PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville Syrjala
> > Sent: Monday, February 20, 2023 8:48 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling for DP MST
> 
> Nit: May be append "display" to drm/i915.

Don't think I've ever used that one. Seems a bit too generic
to provide any real additional information to the table that
wouldn't usually be obvious from the subject anyway.
Do other people find /display useful?

I guess I could have used a more specific /mst in this case,
but then again I already mention MST in the subject anyway
so seems a bit redundant.

> 
> Change looks good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > I forgot to call intel_audio_compute_config() on DP MST, which means ELD doesn't
> > get populated and passed to the audio driver.
> > 
> > References: https://gitlab.freedesktop.org/drm/intel/-/issues/8097
> > Fixes: 5d986635e296 ("drm/i915/audio: Precompute the ELD")
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 25 +++++++++++++--------
> >  1 file changed, 16 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index de856f4375fb..a860cbc5dbea 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -265,6 +265,19 @@ static int intel_dp_mst_update_slots(struct intel_encoder
> > *encoder,
> >  	return 0;
> >  }
> > 
> > +static bool intel_dp_mst_has_audio(const struct drm_connector_state
> > +*conn_state) {
> > +	const struct intel_digital_connector_state *intel_conn_state =
> > +		to_intel_digital_connector_state(conn_state);
> > +	struct intel_connector *connector =
> > +		to_intel_connector(conn_state->connector);
> > +
> > +	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
> > +		return connector->port->has_audio;
> > +	else
> > +		return intel_conn_state->force_audio == HDMI_AUDIO_ON; }
> > +
> >  static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> >  				       struct intel_crtc_state *pipe_config,
> >  				       struct drm_connector_state *conn_state) @@ -
> > 272,10 +285,6 @@ static int intel_dp_mst_compute_config(struct intel_encoder
> > *encoder,
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> >  	struct intel_dp *intel_dp = &intel_mst->primary->dp;
> > -	struct intel_connector *connector =
> > -		to_intel_connector(conn_state->connector);
> > -	struct intel_digital_connector_state *intel_conn_state =
> > -		to_intel_digital_connector_state(conn_state);
> >  	const struct drm_display_mode *adjusted_mode =
> >  		&pipe_config->hw.adjusted_mode;
> >  	struct link_config_limits limits;
> > @@ -287,11 +296,9 @@ static int intel_dp_mst_compute_config(struct
> > intel_encoder *encoder,
> >  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >  	pipe_config->has_pch_encoder = false;
> > 
> > -	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
> > -		pipe_config->has_audio = connector->port->has_audio;
> > -	else
> > -		pipe_config->has_audio =
> > -			intel_conn_state->force_audio == HDMI_AUDIO_ON;
> > +	pipe_config->has_audio =
> > +		intel_dp_mst_has_audio(conn_state) &&
> > +		intel_audio_compute_config(encoder, pipe_config, conn_state);
> > 
> >  	/*
> >  	 * for MST we always configure max link bw - the spec doesn't
> > --
> > 2.39.2
> 

-- 
Ville Syrjälä
Intel
