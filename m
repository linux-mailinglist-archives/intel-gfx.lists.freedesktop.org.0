Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F28934B594C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 19:03:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C319610E258;
	Mon, 14 Feb 2022 18:03:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EB7110E258
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 18:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644861830; x=1676397830;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cXWkwkp962cMUSvvY44qjgiEzK3feE2Ux4hJb4SH2ic=;
 b=dLE5m4YHR0zCrBkI15OSjdrhU2m3W0G/nYmGR0QPeBTHt2fYrZkeaAC1
 gcmQavEDAA3WQObxPRjj7IpLFv0WqNOjnqyfzeyiKaNWdmlF5qEst7oB5
 Q00jHyejjp3JElUElNgGlgBsBcbTqOUkqkZr1MN98BOlx4G6VPuM2mO7/
 QQypJdtTFUMI8mrt4G8PLk8bHfxeRP2R5Ry1FNrPWMEXlrxNH6FLj/yJm
 ipnE8vOPKGZlU+Nqm7gLbw6K3RXJ+JVwV64TWhhfM1j6Shjgw063r4jxy
 2VCnMqc6Y9ThGz9mY81l6iAvDTnnssrtsQGtv3UiR1C9kS4Z4HWpEkaSX w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="336577936"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="336577936"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 10:03:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="495885294"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 10:03:48 -0800
Date: Mon, 14 Feb 2022 20:04:02 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220214180402.GA26059@intel.com>
References: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
 <20220214091811.13725-7-ville.syrjala@linux.intel.com>
 <20220214100011.GA24878@intel.com> <YgouksR7cIvoRGQA@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YgouksR7cIvoRGQA@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915: Pimp icl+ sagv pre/post update
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

On Mon, Feb 14, 2022 at 12:27:30PM +0200, Ville Syrjälä wrote:
> On Mon, Feb 14, 2022 at 12:00:11PM +0200, Lisovskiy, Stanislav wrote:
> > On Mon, Feb 14, 2022 at 11:18:11AM +0200, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Add some debugs on what exactly we're doing to the QGV point mask
> > > in the icl+ sagv pre/post plane update hooks. Currently we're just
> > > guessing.
> > > 
> > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/intel_pm.c | 37 ++++++++++++++++-----------------
> > >  1 file changed, 18 insertions(+), 19 deletions(-)
> > 
> > Weird I think, I had those debugs initially. Definitely remember
> > there was something similar. Was it kinda removed later?
> 
> Can't immediately see any such debugs being added or removed
> by any commit.

Ah, now actually I remember. It was initially added to intel_bw_atomic_check
to show the new qgv mask, however in one of the reviews was asked to remove
that debug as redundant.

Stan

> 
> > 
> > Stan
> > 
> > Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> >  
> > > 
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > index 8b70cdc3b58b..5d1f1a9988bb 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -3818,26 +3818,22 @@ static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
> > >  		intel_atomic_get_old_bw_state(state);
> > >  	const struct intel_bw_state *new_bw_state =
> > >  		intel_atomic_get_new_bw_state(state);
> > > -	u32 new_mask;
> > > +	u32 old_mask, new_mask;
> > >  
> > >  	if (!new_bw_state)
> > >  		return;
> > >  
> > > -	/*
> > > -	 * Nothing to mask
> > > -	 */
> > > -	if (new_bw_state->qgv_points_mask == old_bw_state->qgv_points_mask)
> > > -		return;
> > > -
> > > +	old_mask = old_bw_state->qgv_points_mask;
> > >  	new_mask = old_bw_state->qgv_points_mask | new_bw_state->qgv_points_mask;
> > >  
> > > -	/*
> > > -	 * If new mask is zero - means there is nothing to mask,
> > > -	 * we can only unmask, which should be done in unmask.
> > > -	 */
> > > -	if (!new_mask)
> > > +	if (old_mask == new_mask)
> > >  		return;
> > >  
> > > +	WARN_ON(!new_bw_state->base.changed);
> > > +
> > > +	drm_dbg_kms(&dev_priv->drm, "Restricting QGV points: 0x%x -> 0x%x\n",
> > > +		    old_mask, new_mask);
> > > +
> > >  	/*
> > >  	 * Restrict required qgv points before updating the configuration.
> > >  	 * According to BSpec we can't mask and unmask qgv points at the same
> > > @@ -3854,19 +3850,22 @@ static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
> > >  		intel_atomic_get_old_bw_state(state);
> > >  	const struct intel_bw_state *new_bw_state =
> > >  		intel_atomic_get_new_bw_state(state);
> > > -	u32 new_mask = 0;
> > > +	u32 old_mask, new_mask;
> > >  
> > >  	if (!new_bw_state)
> > >  		return;
> > >  
> > > -	/*
> > > -	 * Nothing to unmask
> > > -	 */
> > > -	if (new_bw_state->qgv_points_mask == old_bw_state->qgv_points_mask)
> > > -		return;
> > > -
> > > +	old_mask = old_bw_state->qgv_points_mask | new_bw_state->qgv_points_mask;
> > >  	new_mask = new_bw_state->qgv_points_mask;
> > >  
> > > +	if (old_mask == new_mask)
> > > +		return;
> > > +
> > > +	WARN_ON(!new_bw_state->base.changed);
> > > +
> > > +	drm_dbg_kms(&dev_priv->drm, "Relaxing QGV points: 0x%x -> 0x%x\n",
> > > +		    old_mask, new_mask);
> > > +
> > >  	/*
> > >  	 * Allow required qgv points after updating the configuration.
> > >  	 * According to BSpec we can't mask and unmask qgv points at the same
> > > -- 
> > > 2.34.1
> > > 
> 
> -- 
> Ville Syrjälä
> Intel
