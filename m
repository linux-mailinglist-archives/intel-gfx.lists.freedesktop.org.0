Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F17082D567
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jan 2024 09:57:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB0F810E216;
	Mon, 15 Jan 2024 08:57:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DB9510E215
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 08:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705309050; x=1736845050;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MCE8orpLO2w84EJGt6N6xNPY2CnHindzuLhyePBdgOQ=;
 b=BpNTCM86aKvvMJ2DCPZ3yi+LWUYIJC8dgOu1rn4hK+V4xjMBcbUtOdjp
 TH3exo/gm/990VHmuw7Mdd2S6gxBFlAZP+ZAU7WVkYctmMT+GmzgwRawx
 IhM1E1jQ+d9TK3yBSWdTGLc9SyWt+0o+VXJ2QQo59XiqyqcnrkcvmLl3L
 tWn5RzuNiNnoVaq2e+nrDYnBIZvNeWs7MVzsYsrCfUdrPvMJDFAtfSAue
 vsPqIDI1729EE0Z+KRjQJz5nczihIpGxjc5FPsaXoeFpF48oSX5FB4lcs
 oQwtBNI9610oD6hJqbdmboRBZWqYgr9c/9MPb8Y6sh+ulJFI8XomFtVp5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="403327305"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="403327305"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 00:57:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="733246477"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="733246477"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 00:57:27 -0800
Date: Mon, 15 Jan 2024 10:57:20 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/3] drm/i915: Add bigjoiner force enable option to debugfs
Message-ID: <ZaTzcLXAZEOaa0T/@intel.com>
References: <20240108120725.20057-1-stanislav.lisovskiy@intel.com>
 <20240108120725.20057-2-stanislav.lisovskiy@intel.com>
 <ZaFn4TSiXPf6Ku-i@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZaFn4TSiXPf6Ku-i@intel.com>
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

On Fri, Jan 12, 2024 at 06:25:05PM +0200, Ville Syrjälä wrote:
> On Mon, Jan 08, 2024 at 02:07:23PM +0200, Stanislav Lisovskiy wrote:
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
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  | 59 +++++++++++++++++++
> >  .../drm/i915/display/intel_display_types.h    |  2 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
> >  3 files changed, 63 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index d951edb366871..353e71b4e1db2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -1413,6 +1413,22 @@ out:	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> >  	return ret;
> >  }
> >  
> > +static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
> > +{
> > +	struct intel_connector *connector = m->private;
> > +	struct intel_encoder *encoder = intel_attached_encoder(connector);
> > +	struct intel_dp *intel_dp;
> > +
> > +	if (!encoder)
> > +		return -ENODEV;
> > +
> > +	intel_dp = enc_to_intel_dp(encoder);
> > +
> > +	seq_printf(m, "Bigjoiner enable: %d\n", intel_dp->force_bigjoiner_enable);
> 
> So it's a per-connector debugfs knob but we track it in the
> SST DP encoder? That's rather odd, and not going to work for MST.

I guess you mean, I should move it to the connector instead, makes sense.

> 
> > +
> > +	return 0;
> > +}
> > +
> >  static ssize_t i915_dsc_output_format_write(struct file *file,
> >  					    const char __user *ubuf,
> >  					    size_t len, loff_t *offp)
> > @@ -1434,12 +1450,39 @@ static ssize_t i915_dsc_output_format_write(struct file *file,
> >  	return len;
> >  }
> >  
> > +static ssize_t i915_bigjoiner_enable_fops_write(struct file *file,
> > +						const char __user *ubuf,
> > +						size_t len, loff_t *offp)
> > +{
> > +	struct seq_file *m = file->private_data;
> > +	struct intel_connector *connector = m->private;
> > +	struct intel_encoder *encoder = intel_attached_encoder(connector);
> > +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > +	bool bigjoiner_en = 0;
> > +	int ret;
> > +
> > +	ret = kstrtobool_from_user(ubuf, len, &bigjoiner_en);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	intel_dp->force_bigjoiner_enable = bigjoiner_en;
> > +	*offp += len;
> > +
> > +	return len;
> > +}
> > +
> >  static int i915_dsc_output_format_open(struct inode *inode,
> >  				       struct file *file)
> >  {
> >  	return single_open(file, i915_dsc_output_format_show, inode->i_private);
> >  }
> >  
> > +static int i915_bigjoiner_enable_open(struct inode *inode,
> > +				      struct file *file)
> > +{
> > +	return single_open(file, i915_bigjoiner_enable_show, inode->i_private);
> > +}
> > +
> >  static const struct file_operations i915_dsc_output_format_fops = {
> >  	.owner = THIS_MODULE,
> >  	.open = i915_dsc_output_format_open,
> > @@ -1527,6 +1570,15 @@ static const struct file_operations i915_dsc_fractional_bpp_fops = {
> >  	.write = i915_dsc_fractional_bpp_write
> >  };
> >  
> > +static const struct file_operations i915_bigjoiner_enable_fops = {
> > +	.owner = THIS_MODULE,
> > +	.open = i915_bigjoiner_enable_open,
> > +	.read = seq_read,
> > +	.llseek = seq_lseek,
> > +	.release = single_release,
> > +	.write = i915_bigjoiner_enable_fops_write
> > +};
> 
> Why are we implementing this long-hand for a simple boolean flag?

Will check, thought thats the only way..

> 
> > +
> >  /*
> >   * Returns the Current CRTC's bpc.
> >   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> > @@ -1608,6 +1660,13 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
> >  				    connector, &i915_dsc_fractional_bpp_fops);
> >  	}
> >  
> > +	if (DISPLAY_VER(i915) >= 11 &&
> > +	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> > +	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
> > +		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
> > +				    &connector->base, &i915_bigjoiner_enable_fops);
> > +	}
> > +
> >  	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
> >  	    connector_type == DRM_MODE_CONNECTOR_eDP ||
> >  	    connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index b9b9d9f2bc0ba..e4c5a44dd02f5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1768,6 +1768,8 @@ struct intel_dp {
> >  	bool is_mst;
> >  	int active_mst_links;
> >  
> > +	bool force_bigjoiner_enable;
> > +
> >  	/* connector directly attached - won't be use for modeset in mst world */
> >  	struct intel_connector *attached_connector;
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 9ff0cbd9c0df5..525ab926582d5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1208,7 +1208,8 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
> >  	if (!intel_dp_can_bigjoiner(intel_dp))
> >  		return false;
> >  
> > -	return clock > i915->max_dotclk_freq || hdisplay > 5120;
> > +	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
> > +	       intel_dp->force_bigjoiner_enable;
> >  }
> >  
> >  static enum drm_mode_status
> > -- 
> > 2.37.3
> 
> -- 
> Ville Syrjälä
> Intel
