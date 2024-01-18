Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE00F8318CC
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 13:00:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0550610E7C6;
	Thu, 18 Jan 2024 12:00:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3178110E7D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jan 2024 11:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705579198; x=1737115198;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XLnV4eOfq55clkfePx+CQLiFhcHeTC3Poj/g04plPkg=;
 b=KFbYznIqzLhFpx0P1ELTOM5wJafF9KqqsJWWmYhPAb+8vxJm+wrLGY2V
 9PXczGDpsF3VZkf2YZFJ60t/BrKGK+BzUqrXgHeKwDVUgEQKjLbV2v3C2
 +cRjUR0mSpD27BeDR1pSwu28u+RFYVGT3JAdAd3xsFqWcN7cwFdMqQn43
 Dz/zSX+MlkrX+ak4o1OPTLYeI0PVr7/PpwHgP91/T+6COEMh0/JeEhNn1
 NIrEJuJuvQWtg3CEAkWjKc0B9+hxb57Nhq7RdhrfX8dKD76sMPAKefmo5
 Pp6sgJgICFwV6aNLwznSZJRaDyIIDFNpm+fH7ZPAAEL4DmwkkDKV3+bMQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="21909859"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="21909859"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 03:59:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="903812854"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="903812854"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 03:59:54 -0800
Date: Thu, 18 Jan 2024 13:59:46 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 1/3] drm/i915: Add bigjoiner force enable option to debugfs
Message-ID: <ZakSsiD0cUiAU7Dd@intel.com>
References: <20240108120725.20057-2-stanislav.lisovskiy@intel.com>
 <20240118110205.15787-1-stanislav.lisovskiy@intel.com>
 <87h6jaq2m2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87h6jaq2m2.fsf@intel.com>
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

On Thu, Jan 18, 2024 at 01:53:41PM +0200, Jani Nikula wrote:
> On Thu, 18 Jan 2024, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> > For validation purposes, it might be useful to be able to
> > force Bigjoiner mode, even if current dotclock/resolution
> > do not require that.
> > Lets add such to option to debugfs.
> >
> > v2: - Apparently intel_dp_need_bigjoiner can't be used, when
> >       debugfs entry is created so lets just check manually
> >       the DISPLAY_VER.
> >
> > v3: - Switch to intel_connector from drm_connector(Jani Nikula)
> >     - Remove redundant modeset lock(Jani Nikula)
> >     - Use kstrtobool_from_user for boolean value(Jani Nikula)
> >
> > v4: - Apply the changes to proper function(Jani Nikula)
> >
> > v5: - Removed unnecessary check from i915_bigjoiner_enable_show
> >       (Ville Syrjälä)
> >     - Added eDP connector check to intel_connector_debugfs_add
> >       (Ville Syrjälä)
> >     - Removed debug message in order to prevent dmesg flooding
> >       (Ville Syrjälä)
> >
> > v6: - Assume now always that m->private is intel_connector
> >     - Fixed other similar conflicts
> >
> > v7: - Move bigjoiner force option to intel_connector(Ville Syrjälä)
> >     - Use DEFINE_SHOW_STORE_ATTRIBUTE instead of defining fops
> >       manually.(Ville Syrjälä)
> >
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  | 47 +++++++++++++++++++
> >  .../drm/i915/display/intel_display_types.h    |  2 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
> >  3 files changed, 52 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index d951edb366871..ff0c7dfae89a3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -1413,6 +1413,20 @@ out:	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> >  	return ret;
> >  }
> >  
> > +static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
> > +{
> > +	struct intel_connector *connector = m->private;
> > +	struct drm_crtc *crtc;
> > +
> > +	crtc = connector->base.state->crtc;
> > +	if (connector->base.status != connector_status_connected || !crtc)
> > +		return -ENODEV;
> > +
> > +	seq_printf(m, "Bigjoiner enable: %d\n", connector->force_bigjoiner_enable);
> > +
> > +	return 0;
> > +}
> > +
> >  static ssize_t i915_dsc_output_format_write(struct file *file,
> >  					    const char __user *ubuf,
> >  					    size_t len, loff_t *offp)
> > @@ -1434,6 +1448,30 @@ static ssize_t i915_dsc_output_format_write(struct file *file,
> >  	return len;
> >  }
> >  
> > +static ssize_t i915_bigjoiner_enable_write(struct file *file,
> > +						const char __user *ubuf,
> > +						size_t len, loff_t *offp)
> > +{
> > +	struct seq_file *m = file->private_data;
> > +	struct intel_connector *connector = m->private;
> > +	struct drm_crtc *crtc;
> > +	bool bigjoiner_en = 0;
> > +	int ret;
> > +
> > +	crtc = connector->base.state->crtc;
> > +	if (connector->base.status != connector_status_connected || !crtc)
> > +		return -ENODEV;
> > +
> > +	ret = kstrtobool_from_user(ubuf, len, &bigjoiner_en);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	connector->force_bigjoiner_enable = bigjoiner_en;
> > +	*offp += len;
> > +
> > +	return len;
> > +}
> > +
> >  static int i915_dsc_output_format_open(struct inode *inode,
> >  				       struct file *file)
> >  {
> > @@ -1527,6 +1565,8 @@ static const struct file_operations i915_dsc_fractional_bpp_fops = {
> >  	.write = i915_dsc_fractional_bpp_write
> >  };
> >  
> > +DEFINE_SHOW_STORE_ATTRIBUTE(i915_bigjoiner_enable);
> > +
> >  /*
> >   * Returns the Current CRTC's bpc.
> >   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> > @@ -1608,6 +1648,13 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
> >  				    connector, &i915_dsc_fractional_bpp_fops);
> >  	}
> >  
> > +	if (DISPLAY_VER(i915) >= 11 &&
> > +	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> > +	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
> > +		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
> > +				    &connector->base, &i915_bigjoiner_enable_fops);
> 
> I've replied to an earlier version of this patch telling you to pass
> struct intel_connector * to debugfs_create_file() when your show/write
> hooks expect that. This only works because offset of base member is 0,
> and the private pointer is void *.
> 
> BR,
> Jani.

Ahh.. I've seen but forgot to change that.
Anyways I will fix that, will now wait for feedback from Ville as well here, if
something else pops up.

Stan

> 
> > +	}
> > +
> >  	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
> >  	    connector_type == DRM_MODE_CONNECTOR_eDP ||
> >  	    connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index ae2e8cff9d691..db38f2b8178a8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -626,6 +626,8 @@ struct intel_connector {
> >  
> >  	struct intel_dp *mst_port;
> >  
> > +	bool force_bigjoiner_enable;
> > +
> >  	struct {
> >  		struct drm_dp_aux *dsc_decompression_aux;
> >  		u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index ab415f41924d7..d70890ca2b47d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1205,11 +1205,13 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
> >  			     int hdisplay, int clock)
> >  {
> >  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +	struct intel_connector *connector = intel_dp->attached_connector;
> >  
> >  	if (!intel_dp_can_bigjoiner(intel_dp))
> >  		return false;
> >  
> > -	return clock > i915->max_dotclk_freq || hdisplay > 5120;
> > +	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
> > +	       connector->force_bigjoiner_enable;
> >  }
> >  
> >  static enum drm_mode_status
> 
> -- 
> Jani Nikula, Intel
