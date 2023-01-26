Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A72B067D6C5
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 21:48:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F27AC10E2B5;
	Thu, 26 Jan 2023 20:48:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66F9A10E2B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 20:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674766118; x=1706302118;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=64eNTS4oxTmUNxSRneT6MR2MmSkQqpFBUg+cJJLHhdo=;
 b=k3XFmRd+LCmZfQkwKKlxBOsQvXulovPyyhkwPM34vSKXRU06eHSy4ma0
 h1h+bJb6tV2WOO5OLAX0sVx8dh/WEfnfdTIt73WFhe9bXTsZMuHgx2FBl
 A39Q3cASzKESDaCpIXauJVV9KFigJNbuY/fxd5+oA2PL4pwhfAUUlYhWJ
 HXDLgB/cgjvsnYYil25Pudr60IMcAxd1KjIW32UqBkfW9JO4nYLUKsYBZ
 1Rnz5oYx7LuBHwN8q+b9wwwN6f2d/+aQ/xoX90bOzKuemjxtQHkJjwcNX
 dhRmtX44G53skDq5sn9l3648CCbmRBVtAnUnEtbVIO06Uozhvrqwy4z4y w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328202515"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="328202515"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 12:48:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="908394001"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="908394001"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 12:48:24 -0800
Date: Thu, 26 Jan 2023 22:48:20 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y9LnFFl7EztcWbr3@ideak-desk.fi.intel.com>
References: <20230125114852.748337-1-imre.deak@intel.com>
 <20230125114852.748337-5-imre.deak@intel.com>
 <Y9LImOVP9e4tkq9j@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y9LImOVP9e4tkq9j@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915/dp_mst: Fix payload removal
 during output disabling
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 26, 2023 at 08:38:16PM +0200, Ville Syrjälä wrote:
> On Wed, Jan 25, 2023 at 01:48:47PM +0200, Imre Deak wrote:
> > Use the correct old/new topology and payload states in
> > intel_mst_disable_dp(). So far drm_atomic_get_mst_topology_state() it
> > used returned either the old state, in case the state was added already
> > earlier during the atomic check phase or otherwise the new state (but
> > the latter could fail, which can't be handled in the enable/disable
> > hooks). After the first patch in the patchset, the state should always
> > get added already during the check phase, so here we can get the
> > old/new states without a failure.
> > 
> > drm_dp_remove_payload() should use time_slots from the old payload state
> > and vc_start_slot in the new one. It should update the new payload
> > states to reflect the sink's current payload table after the payload is
> > removed. Pass the new topology state and the old and new payload states
> > accordingly.
> > 
> > This also fixes a problem where the payload allocations for multiple MST
> > streams on the same link got inconsistent after a few commits, as
> > during payload removal the old instead of the new payload state got
> > updated, so the subsequent enabling sequence and commits used a stale
> > payload state.
> > 
> > Cc: Lyude Paul <lyude@redhat.com>
> > Cc: stable@vger.kernel.org # 6.1
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 16 ++++++++++------
> >  1 file changed, 10 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 5f7bcb5c14847..800fa12a61d93 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -524,10 +524,14 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
> >  	struct intel_dp *intel_dp = &dig_port->dp;
> >  	struct intel_connector *connector =
> >  		to_intel_connector(old_conn_state->connector);
> > -	struct drm_dp_mst_topology_state *mst_state =
> > -		drm_atomic_get_mst_topology_state(&state->base, &intel_dp->mst_mgr);
> > -	struct drm_dp_mst_atomic_payload *payload =
> > -		drm_atomic_get_mst_payload_state(mst_state, connector->port);
> > +	struct drm_dp_mst_topology_state *old_mst_state =
> > +		drm_atomic_get_old_mst_topology_state(&state->base, &intel_dp->mst_mgr);
> > +	struct drm_dp_mst_topology_state *new_mst_state =
> > +		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
> > +	struct drm_dp_mst_atomic_payload *old_payload =
> > +		drm_atomic_get_mst_payload_state(old_mst_state, connector->port);
> > +	struct drm_dp_mst_atomic_payload *new_payload =
> > +		drm_atomic_get_mst_payload_state(new_mst_state, connector->port);
> 
> old states could be const no?

Yes, will change this.

> >  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> >  
> >  	drm_dbg_kms(&i915->drm, "active links %d\n",
> > @@ -535,8 +539,8 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
> >  
> >  	intel_hdcp_disable(intel_mst->connector);
> >  
> > -	drm_dp_remove_payload(&intel_dp->mst_mgr, mst_state,
> > -			      payload, payload);
> > +	drm_dp_remove_payload(&intel_dp->mst_mgr, new_mst_state,
> 
> Right that one needs to be 'new' to update the start_slots
> 
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> > +			      old_payload, new_payload);
> >  
> >  	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> >  }
> > -- 
> > 2.37.1
> 
> -- 
> Ville Syrjälä
> Intel
