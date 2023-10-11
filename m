Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 913667C4DD6
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 10:59:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFCEC10E4CA;
	Wed, 11 Oct 2023 08:59:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BB1310E4CA
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 08:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697014783; x=1728550783;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LEwBx7TmG8Xc9MGt0VNBqWN6SCD2AEZkETv4En50pEI=;
 b=V/h+PJyTngfEOxpfmAjXuJGN6SXzAL1/+ns4Vw3qsbZFvSC7Xh4uKVDS
 7yaJiJ/9YJHnX9SxZb0zj4FrxXAaNof/vGxfKe/pVAL+M1aWoxYRVTOWb
 bgDfYH6BzyA3ubb2pJoEbP9DpxXSG4O7V/LET/TV+BoPxshBbTKdJ9BLM
 p/fnEgK12Lt2ApAl2oNSShnGS9f34UoZkvSM/gkLZ6VfgWoqHtVHzX3Vw
 4H3fDnZiy3g1vhHQL2sZfcR2FmvkmkUd6ogKQj9Jjexp+H+lMabXalnM4
 mPgTakfIvAUYqGyOjsUU1gNW5ZLDqButyMJXH4llrTjthvYxcHAumYEwf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="470878269"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="470878269"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:59:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="788924897"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="788924897"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:59:37 -0700
Date: Wed, 11 Oct 2023 11:59:28 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZSZj8IDK66wowKol@intel.com>
References: <20231009133042.25516-1-stanislav.lisovskiy@intel.com>
 <87r0m14k7x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87r0m14k7x.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add bigjoiner force enable option
 to debugfs
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

On Wed, Oct 11, 2023 at 11:49:38AM +0300, Jani Nikula wrote:
> On Mon, 09 Oct 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> > For validation purposes, it might be useful to be able to
> > force Bigjoiner mode, even if current dotclock/resolution
> > do not require that.
> > Lets add such to option to debugfs.
> >
> > v2: - Apparently intel_dp_need_bigjoiner can't be used, when
> >       debugfs entry is created so lets just check manually
> >       the DISPLAY_VER.
> >
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  | 71 +++++++++++++++++++
> >  .../drm/i915/display/intel_display_types.h    |  2 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  6 +-
> >  3 files changed, 78 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index f6d7c4d45fae..c806957cb902 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -1399,6 +1399,35 @@ out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
> >  	return ret;
> >  }
> >  
> > +static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
> > +{
> > +	struct drm_connector *connector = m->private;
> 
> struct intel_connector *connector, please. Yeah, this is copy-paste from
> other files, but they should be changed too.
> 
> > +	struct drm_device *dev = connector->dev;
> 
> struct drm_i915_private *i915, please.
> 
> > +	struct drm_crtc *crtc;
> > +	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
> > +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > +	int ret;
> > +
> > +	if (!encoder)
> > +		return -ENODEV;
> > +
> > +	ret = drm_modeset_lock_single_interruptible(&dev->mode_config.connection_mutex);
> > +	if (ret)
> > +		return ret;
> 
> Why does show need locking but write doesn't?
> 
> > +
> > +	crtc = connector->state->crtc;
> > +	if (connector->status != connector_status_connected || !crtc) {
> > +		ret = -ENODEV;
> > +		goto out;
> > +	}
> 
> I guess because of the above, but... do we need it? Or is this just
> copy-pasted from some other debugfs files, which copy-pasted from other
> debugfs files, which... ;)

Yeah, I would be honest here, had same question both for bool/int and crtc locking
however decided just to copy same approach, from other debugfs entries, assuming
that was done with some purpose :)

> 
> > +
> > +	seq_printf(m, "Bigjoiner enable: %d\n", intel_dp->force_bigjoiner_en);
> > +
> > +out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
> > +
> > +	return ret;
> > +}
> > +
> >  static ssize_t i915_dsc_output_format_write(struct file *file,
> >  					    const char __user *ubuf,
> >  					    size_t len, loff_t *offp)
> > @@ -1420,12 +1449,39 @@ static ssize_t i915_dsc_output_format_write(struct file *file,
> >  	return len;
> >  }
> >  
> > +static ssize_t i915_bigjoiner_enable_fops_write(struct file *file,
> > +						const char __user *ubuf,
> > +						size_t len, loff_t *offp)
> > +{
> > +	struct drm_connector *connector =
> > +		((struct seq_file *)file->private_data)->private;
> 
> I think this reads better with
> 
> 	struct seq_file *m = file->private_data;
>         struct intel_connector *connector = m->private;
> 
> > +	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
> > +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > +	int bigjoiner_en = 0;
> > +	int ret;
> > +
> > +	ret = kstrtoint_from_user(ubuf, len, 0, &bigjoiner_en);
> > +	if (ret < 0)
> > +		return ret;
> 
> If it's a bool, why kstrtoint? Yeah, because copy-paste, but why keep
> percolating the same mistakes?

Yeah, as I said above..

> 
> > +
> > +	intel_dp->force_bigjoiner_en = bigjoiner_en;
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
> > @@ -1435,6 +1491,15 @@ static const struct file_operations i915_dsc_output_format_fops = {
> >  	.write = i915_dsc_output_format_write
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
> > +
> >  /*
> >   * Returns the Current CRTC's bpc.
> >   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> > @@ -1514,6 +1579,12 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
> >  				    connector, &i915_dsc_output_format_fops);
> >  	}
> >  
> > +	if (DISPLAY_VER(dev_priv) >= 11 &&
> > +	    connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort) {
> > +		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
> > +				    connector, &i915_bigjoiner_enable_fops);
> 
> All of these should just pass struct intel_connector.

Do you mean intel_connector_debugfs_add? I think it does that already, will check.

> 
> > +	}
> > +
> >  	if (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
> >  	    connector->connector_type == DRM_MODE_CONNECTOR_eDP ||
> >  	    connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 8d8b2f8d37a9..ecec8a25838e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1753,6 +1753,8 @@ struct intel_dp {
> >  	bool is_mst;
> >  	int active_mst_links;
> >  
> > +	bool force_bigjoiner_en;
> 
> No need to try to shorten this, just spell out force_bigjoiner_enable.

Again just tried to match same things done before, but for me personally
doesn't really matter at all.

> 
> > +
> >  	/* connector directly attached - won't be use for modeset in mst world */
> >  	struct intel_connector *attached_connector;
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index f0f43aeabd21..7e553cb7ecbb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1153,7 +1153,11 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
> >  	if (!intel_dp_can_bigjoiner(intel_dp))
> >  		return false;
> >  
> > -	return clock > i915->max_dotclk_freq || hdisplay > 5120;
> > +	if (intel_dp->force_bigjoiner_en)
> > +		drm_dbg_kms(&i915->drm, "Forcing bigjoiner mode");
> 
> Missing \n.

Yes, will fix, thank you for comments!

Stan

> 
> > +
> > +	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
> > +	       intel_dp->force_bigjoiner_en;
> >  }
> >  
> >  static enum drm_mode_status
> 
> -- 
> Jani Nikula, Intel
