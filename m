Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF92B853474
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 16:21:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FBF610E720;
	Tue, 13 Feb 2024 15:21:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KrP+x1Sh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9761010E751
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 15:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707837697; x=1739373697;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AcZMgYlqTq/feqjE8JEr1h4djh5WVCETwLl1zzvD7B0=;
 b=KrP+x1ShnUQMD2gM6jNNPWfUib5BGp16zf8eXi8WyWbEj65b2VRo6uk3
 fXcmMrhhJ+f9gcMNIkMx1vZmYYj+Vs05VTC/ogm1jCES03wiEwkP5E+Gu
 uxuXR985PF8Ti8Oso4fnsqg5rH0Ar7s2CRYbfuiFT3jSNtEsQmEeq3AuG
 omEuJoVBPup/dDxpoYthmJNY8Ztn2qsytjJSGvBcLc5ABnD1Pkzlvlab9
 DTOwDIPGevnGxtxnSIBXrWgZ/Kxjtd6e9A/gwAt+TdKO0rX2SI9TcfwuL
 SYI9nmmZW3ZGe67Qe19t5p5ch047QWKFW//e/8Ce+Wc1Z1aUimm3xKxPt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1753726"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="1753726"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 07:21:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="2882499"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 07:21:34 -0800
Date: Tue, 13 Feb 2024 17:21:26 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Add bigjoiner force enable option to debugfs
Message-ID: <ZcuI9vcmQEy+kvpR@intel.com>
References: <20240212125011.66174-1-uma.shankar@intel.com>
 <ZcuC56_5pZerqAV0@intel.com>
 <DM4PR11MB6360DD7D7B6557C5D0AEAE97F44F2@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB6360DD7D7B6557C5D0AEAE97F44F2@DM4PR11MB6360.namprd11.prod.outlook.com>
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

On Tue, Feb 13, 2024 at 05:11:37PM +0200, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Sent: Tuesday, February 13, 2024 8:26 PM
> > To: Shankar, Uma <uma.shankar@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Lisovskiy, Stanislav
> > <stanislav.lisovskiy@intel.com>; ville.syrjala@linux.intel.com;
> > jani.nikula@linux.intel.com
> > Subject: Re: [PATCH] drm/i915: Add bigjoiner force enable option to debugfs
> > 
> > On Mon, Feb 12, 2024 at 06:20:11PM +0530, Uma Shankar wrote:
> > > From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > >
> > > For validation purposes, it might be useful to be able to force
> > > Bigjoiner mode, even if current dotclock/resolution do not require
> > > that.
> > > Lets add such to option to debugfs.
> > >
> > > v2: - Apparently intel_dp_need_bigjoiner can't be used, when
> > >       debugfs entry is created so lets just check manually
> > >       the DISPLAY_VER.
> > >
> > > v3: - Switch to intel_connector from drm_connector(Jani Nikula)
> > >     - Remove redundant modeset lock(Jani Nikula)
> > >     - Use kstrtobool_from_user for boolean value(Jani Nikula)
> > >
> > > v4: - Apply the changes to proper function(Jani Nikula)
> > >
> > > v5: - Removed unnecessary check from i915_bigjoiner_enable_show
> > >       (Ville Syrjälä)
> > >     - Added eDP connector check to intel_connector_debugfs_add
> > >       (Ville Syrjälä)
> > >     - Removed debug message in order to prevent dmesg flooding
> > >       (Ville Syrjälä)
> > >
> > > v6: - Assume now always that m->private is intel_connector
> > >     - Fixed other similar conflicts
> > >
> > > v7: - Move bigjoiner force option to intel_connector(Ville Syrjälä)
> > >     - Use DEFINE_SHOW_STORE_ATTRIBUTE instead of defining fops
> > >       manually.(Ville Syrjälä)
> > >
> > > v8: - Pass intel_connector to debugfs_create_file, instead of drm_connector.
> > >       (Jani Nikula)
> > >
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > 
> > please remind to sign-off when sending someone else's patch.
> 
> Oh yeah, sorry missed it. Was filling in for Stan while he was OOO.
> @Lisovskiy, Stanislav Please address rest of the comments raised by Rodrigo.

Sorry, had that pushed already in the morning, since it was Acked and I was asked
to do it asap.

Stan

> 
> Regards,
> Uma Shankar
> 
> > > ---
> > >  .../drm/i915/display/intel_display_debugfs.c  | 47 +++++++++++++++++++
> > >  .../drm/i915/display/intel_display_types.h    |  2 +
> > >  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
> > >  3 files changed, 52 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > index 6f2d13c8ccf7..a962b48bcf13 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > @@ -1391,6 +1391,20 @@ out:	drm_modeset_unlock(&i915-
> > >drm.mode_config.connection_mutex);
> > >  	return ret;
> > >  }
> > >
> > > +static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
> > > +{
> > > +	struct intel_connector *connector = m->private;
> > > +	struct drm_crtc *crtc;
> > > +
> > > +	crtc = connector->base.state->crtc;
> > > +	if (connector->base.status != connector_status_connected || !crtc)
> > > +		return -ENODEV;
> > > +
> > > +	seq_printf(m, "Bigjoiner enable: %d\n",
> > > +connector->force_bigjoiner_enable);
> > 
> > probably better with a yes_or_no string?
> > 
> > > +
> > > +	return 0;
> > > +}
> > > +
> > >  static ssize_t i915_dsc_output_format_write(struct file *file,
> > >  					    const char __user *ubuf,
> > >  					    size_t len, loff_t *offp)
> > > @@ -1412,6 +1426,30 @@ static ssize_t i915_dsc_output_format_write(struct
> > file *file,
> > >  	return len;
> > >  }
> > >
> > > +static ssize_t i915_bigjoiner_enable_write(struct file *file,
> > > +					   const char __user *ubuf,
> > > +					   size_t len, loff_t *offp)
> > > +{
> > > +	struct seq_file *m = file->private_data;
> > > +	struct intel_connector *connector = m->private;
> > > +	struct drm_crtc *crtc;
> > > +	bool bigjoiner_en = 0;
> > > +	int ret;
> > > +
> > > +	crtc = connector->base.state->crtc;
> > > +	if (connector->base.status != connector_status_connected || !crtc)
> > > +		return -ENODEV;
> > > +
> > > +	ret = kstrtobool_from_user(ubuf, len, &bigjoiner_en);
> > > +	if (ret < 0)
> > > +		return ret;
> > > +
> > > +	connector->force_bigjoiner_enable = bigjoiner_en;
> > > +	*offp += len;
> > > +
> > > +	return len;
> > > +}
> > > +
> > >  static int i915_dsc_output_format_open(struct inode *inode,
> > >  				       struct file *file)
> > >  {
> > > @@ -1505,6 +1543,8 @@ static const struct file_operations
> > i915_dsc_fractional_bpp_fops = {
> > >  	.write = i915_dsc_fractional_bpp_write  };
> > >
> > > +DEFINE_SHOW_STORE_ATTRIBUTE(i915_bigjoiner_enable);
> > 
> > I don't believe this macro here is using the defined _show function, but maybe I'm
> > not following that very well since this macro is not widely used.
> > 
> > What about using DEFINE_SIMPLE_ATTRIBUTE instead?
> > 
> > > +
> > >  /*
> > >   * Returns the Current CRTC's bpc.
> > >   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> > > @@ -1586,6 +1626,13 @@ void intel_connector_debugfs_add(struct
> > intel_connector *connector)
> > >  				    connector, &i915_dsc_fractional_bpp_fops);
> > >  	}
> > >
> > > +	if (DISPLAY_VER(i915) >= 11 &&
> > > +	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> > > +	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
> > 
> > I wish we had a simpler check, but I couldn't find. :/
> > 
> > > +		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
> > > +				    connector, &i915_bigjoiner_enable_fops);
> > > +	}
> > > +
> > >  	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
> > >  	    connector_type == DRM_MODE_CONNECTOR_eDP ||
> > >  	    connector_type == DRM_MODE_CONNECTOR_DisplayPort || diff --git
> > > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 01eb6e4e6049..0d4012097db1 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -626,6 +626,8 @@ struct intel_connector {
> > >
> > >  	struct intel_dp *mst_port;
> > >
> > > +	bool force_bigjoiner_enable;
> > > +
> > >  	struct {
> > >  		struct drm_dp_aux *dsc_decompression_aux;
> > >  		u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 5045c34a16be..217196196e50 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -1205,11 +1205,13 @@ bool intel_dp_need_bigjoiner(struct intel_dp
> > *intel_dp,
> > >  			     int hdisplay, int clock)
> > >  {
> > >  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > > +	struct intel_connector *connector = intel_dp->attached_connector;
> > >
> > >  	if (!intel_dp_can_bigjoiner(intel_dp))
> > >  		return false;
> > >
> > > -	return clock > i915->max_dotclk_freq || hdisplay > 5120;
> > > +	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
> > > +	       connector->force_bigjoiner_enable;
> > 
> > I'm just not comfortable with the magic _show of that macro and would prefer a
> > more simple and straight forward and widely used version.
> > 
> > Other then that everything else looks good to me.
> > 
> > Thanks,
> > Rodrigo.
> > 
> > >  }
> > >
> > >  static enum drm_mode_status
> > > --
> > > 2.42.0
> > >
