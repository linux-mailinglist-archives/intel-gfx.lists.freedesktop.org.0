Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC538CD875
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 18:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E464410E0DB;
	Thu, 23 May 2024 16:32:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IeWzCmgb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 332A710E0DB
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 16:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716481933; x=1748017933;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=op+hu1Pl0iy/N3NdyEbbPVDDj2MWeGJFVHqTbXY5cOc=;
 b=IeWzCmgbpHgSjJxfvJdNi3KjG+hi9RbdLeQ3EMPSeqk/0SaVPM4Pjgme
 IpDWgrdrGmpeMPFUirXnZ9HmLeernk56tvltwHzD47WJW4mpro7n/fVOP
 dMe3UPD5UC3NB3DhCgtCuZKzDe3hiVbKpq8yUdkr0a3LEmbxQcKaEmR5h
 ZE8YMOWy5HkxvmuLn9/sZZ0lFkmyCoo73xZjYmQtxrG34jUMRJeOMAJO9
 VD6TNWnAS5yfbJwlOlKzPaXB4DO/o+TNri6PVdOUQmkU62tk8gn6LwCcy
 z0l6WX0OPHpgElJ9RlkXhqFIk5adedqDO1kKalUs8krX5wnAtJgdXxPDC g==;
X-CSE-ConnectionGUID: NSqCeGL9QhCAwtmvXiIu9w==
X-CSE-MsgGUID: KSaMuX5wRkSQqd7Rr77RUw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12665013"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="12665013"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 09:32:04 -0700
X-CSE-ConnectionGUID: GpqU3EVXS/aINDILRUSHAA==
X-CSE-MsgGUID: fhsty6/VRle3aq2KG1YO+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="33573275"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 09:32:03 -0700
Date: Thu, 23 May 2024 19:32:06 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v2 19/21] drm/i915/dp: Add debugfs entry to force link
 training failure
Message-ID: <Zk9vhqCU8kWTYsMs@ideak-desk.fi.intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-20-imre.deak@intel.com>
 <Zk9g3nvs261GQtdz@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zk9g3nvs261GQtdz@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 23, 2024 at 06:29:34PM +0300, Ville Syrjälä wrote:
> On Mon, May 20, 2024 at 09:58:17PM +0300, Imre Deak wrote:
> > Add a connector debugfs entry to force a failure during the following
> > 1-2 link training. The entry will auto-reset after the specified link
> > training events are complete.
> > 
> > v2: Add the entry from intel_dp_link_training.c (Jani)
> > 
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  .../drm/i915/display/intel_dp_link_training.c | 52 ++++++++++++++++++-
> >  2 files changed, 52 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index e1c41cece249d..dbe1468fe471d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1770,6 +1770,7 @@ struct intel_dp {
> >  		bool retrain_disabled;
> >  		/* Sequential link training failures after a passing LT */
> >  		int seq_train_failures;
> > +		int force_train_failure;
> >  	} link;
> >  	bool reset_link_params;
> >  	int mso_link_count;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 764187bc42ff9..b40148a42f442 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1489,7 +1489,10 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
> >  	else
> >  		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
> >  
> > -	if (passed) {
> > +	if (intel_dp->link.force_train_failure) {
> > +		intel_dp->link.force_train_failure--;
> > +		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
> > +	} else if (passed) {
> >  		intel_dp->link.seq_train_failures = 0;
> >  		intel_ddi_queue_link_check(dig_port, 2000);
> >  		return;
> > @@ -1799,6 +1802,50 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
> >  }
> >  DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_count_show, NULL, "%llu\n");
> >  
> > +static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
> > +{
> > +	struct intel_connector *connector = to_intel_connector(data);
> > +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> > +	struct intel_dp *intel_dp;
> > +	int err;
> > +
> > +	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
> > +	if (err)
> > +		return err;
> > +
> > +	intel_dp = intel_connector_to_intel_dp(connector);
> > +	*val = intel_dp->link.force_train_failure;
> > +
> > +	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> > +
> > +	return 0;
> > +}
> > +
> > +static int i915_dp_force_link_training_failure_write(void *data, u64 val)
> > +{
> > +	struct intel_connector *connector = to_intel_connector(data);
> > +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> > +	struct intel_dp *intel_dp;
> > +	int err;
> > +
> > +	if (val > 2)
> 
> Why 2 specifically?

There are 2 back-to-back link trainings that can fail after a modeset or
later after detecting a bad link state, the initial one and a second
with the same LT parameters. That's followed by reducing the LT
parameters and probably a modeset changing the mode.

> > +		return -EINVAL;
> > +
> > +	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
> > +	if (err)
> > +		return err;
> > +
> > +	intel_dp = intel_connector_to_intel_dp(connector);
> > +	intel_dp->link.force_train_failure = val;
> > +
> > +	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> > +
> > +	return 0;
> > +}
> > +DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_force_link_training_failure_fops,
> > +			 i915_dp_force_link_training_failure_show,
> > +			 i915_dp_force_link_training_failure_write, "%llu\n");
> > +
> >  void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
> >  {
> >  	struct dentry *root = connector->base.debugfs_entry;
> > @@ -1818,4 +1865,7 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
> >  
> >  	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
> >  			    connector, &i915_dp_max_lane_count_fops);
> > +
> > +	debugfs_create_file("i915_dp_force_link_training_failure", 0644, root,
> > +			    connector, &i915_dp_force_link_training_failure_fops);
> >  }
> > -- 
> > 2.43.3
> 
> -- 
> Ville Syrjälä
> Intel
