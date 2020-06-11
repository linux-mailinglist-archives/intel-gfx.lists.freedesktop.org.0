Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A68701F6C45
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 18:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D96A6898C8;
	Thu, 11 Jun 2020 16:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B83B089206
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 16:37:57 +0000 (UTC)
IronPort-SDR: db7LoFgX82lw/GwSI5HzJzLjzdR7HX9jemqs32rF7TM/mky9WynCAM1KuuUuhmx2RDG+ErdCvt
 M6fD5M6Ne6Fg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 09:37:57 -0700
IronPort-SDR: jNd3BOquXSRKy/vQ3hSJONlEbKb+sYjILOTFZSJwBMzGt98yF7x1c87LI/EbvyEsvO63ffJr81
 acOizpGFDayQ==
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="306976600"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 09:37:56 -0700
Date: Thu, 11 Jun 2020 19:37:45 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200611163745.GK17512@ideak-desk.fi.intel.com>
References: <20200610183132.13341-1-imre.deak@intel.com>
 <20200611153955.GA6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611153955.GA6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl+: Fix DP MST ACT status
 handling
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 11, 2020 at 06:39:55PM +0300, Ville Syrj=E4l=E4 wrote:
> On Wed, Jun 10, 2020 at 09:31:31PM +0300, Imre Deak wrote:
> > On TGL+ the master transcoder's DP_TP_STATUS register should be used for
> > the MST ACT status handling, so make sure we do that even in case of
> > mulitple streams.
> > =

> > This fixes an ACT timeout problem during disabling when using multiple
> > streams. Not sure why this was not a problem during enabling (even the
> > slave's DP_TP_STATUS signaled ACT correctly), but following the spec
> > works in that case too, so let's do that.
> > =

> > There is one more place using DP_TP_STATUS, FEC enabling, but I haven't
> > found in BSpec which register to use in that case, so I leave the
> > clarification of that for later.
> > =

> > BSpec: 49190
> > =

> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 47 +++++++++++++++++----
> >  1 file changed, 39 insertions(+), 8 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/=
drm/i915/display/intel_dp_mst.c
> > index d18b406f2a7d..1c3654a117a9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -316,6 +316,40 @@ intel_dp_mst_atomic_check(struct drm_connector *co=
nnector,
> >  	return ret;
> >  }
> >  =

> > +static i915_reg_t
> > +master_dp_tp_status_reg(const struct intel_crtc_state *crtc_state,
> > +			const struct intel_dp *intel_dp)
> > +{
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->=
dev);
> > +
> > +	if (INTEL_GEN(dev_priv) >=3D 12)
> > +		return TGL_DP_TP_STATUS(crtc_state->mst_master_transcoder);
> > +
> > +	return intel_dp->regs.dp_tp_status;
> > +}
> > +
> > +static void clear_act_sent(const struct intel_crtc_state *crtc_state,
> > +			   const struct intel_dp *intel_dp)
> > +{
> > +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> > +	i915_reg_t dp_tp_status_reg =3D
> > +		master_dp_tp_status_reg(crtc_state, intel_dp);
> > +
> > +	intel_de_write(i915, dp_tp_status_reg,
> > +		       intel_de_read(i915, dp_tp_status_reg));
> =

> Followup material:
> Should we actually just clear the bit(s) we care about? No idea what
> other stuff is in there.

Yes, was thinking about that, but thought to leave it as-is for now,
since enabling may depend on something that we clear there. Though
clearing all the bits may break disabling, so probably better to have
this change already now.

> =

> > +}
> > +
> > +static bool wait_for_act_sent(const struct intel_crtc_state *crtc_stat=
e,
> > +			      const struct intel_dp *intel_dp)
> > +{
> > +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> > +	i915_reg_t dp_tp_status_reg =3D
> > +		master_dp_tp_status_reg(crtc_state, intel_dp);
> > +
> > +	return intel_de_wait_for_set(i915, dp_tp_status_reg,
> > +				     DP_TP_STATUS_ACT_SENT, 1) =3D=3D 0;
> > +}
> > +
> >  static void intel_mst_disable_dp(struct intel_atomic_state *state,
> >  				 struct intel_encoder *encoder,
> >  				 const struct intel_crtc_state *old_crtc_state,
> > @@ -376,8 +410,7 @@ static void intel_mst_post_disable_dp(struct intel_=
atomic_state *state,
> >  		       TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder),
> >  		       val);
> >  =

> > -	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
> > -				  DP_TP_STATUS_ACT_SENT, 1))
> > +	if (!wait_for_act_sent(old_crtc_state, intel_dp))
> >  		drm_err(&dev_priv->drm,
> >  			"Timed out waiting for ACT sent when disabling\n");
> >  	drm_dp_check_act_status(&intel_dp->mst_mgr);
> > @@ -443,7 +476,6 @@ static void intel_mst_pre_enable_dp(struct intel_at=
omic_state *state,
> >  	struct intel_connector *connector =3D
> >  		to_intel_connector(conn_state->connector);
> >  	int ret;
> > -	u32 temp;
> >  	bool first_mst_stream;
> >  =

> >  	/* MST encoders are bound to a crtc, not to a connector,
> > @@ -476,8 +508,8 @@ static void intel_mst_pre_enable_dp(struct intel_at=
omic_state *state,
> >  		drm_err(&dev_priv->drm, "failed to allocate vcpi\n");
> >  =

> >  	intel_dp->active_mst_links++;
> > -	temp =3D intel_de_read(dev_priv, intel_dp->regs.dp_tp_status);
> > -	intel_de_write(dev_priv, intel_dp->regs.dp_tp_status, temp);
> > +
> > +	clear_act_sent(pipe_config, intel_dp);
> >  =

> >  	ret =3D drm_dp_update_payload_part1(&intel_dp->mst_mgr);
> >  =

> > @@ -513,9 +545,8 @@ static void intel_mst_enable_dp(struct intel_atomic=
_state *state,
> >  	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
> >  		    intel_dp->active_mst_links);
> >  =

> > -	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
> > -				  DP_TP_STATUS_ACT_SENT, 1))
> > -		drm_err(&dev_priv->drm, "Timed out waiting for ACT sent\n");
> > +	if (!wait_for_act_sent(pipe_config, intel_dp))
> > +		drm_err(&dev_priv->drm, "Timed out waiting for ACT sent when enablin=
g\n");
> >  =

> >  	drm_dp_check_act_status(&intel_dp->mst_mgr);
> >  =

> > -- =

> > 2.23.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
