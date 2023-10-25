Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A187D6C8A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 14:59:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFA7410E650;
	Wed, 25 Oct 2023 12:59:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8617010E650
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698238793; x=1729774793;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dGpZs6XmbdHe7Rf5YJaHHAME/AVKCHnkefo50Hms3tg=;
 b=mRgRDjovZlq8m8rA7QORmVCXpybJho9pOEjnC7qws8xJ4MO6Yj7ol1o4
 6r0GumCt8N9O4PWbMS1CPMdr21bWVlmFc3upASLXrm92OOJ8iRVDcqFrZ
 kKh26tJhEBQ57Fl5dILLV+S/KZlFSnDBNDKeLvjv91DH6AxC4K7U240lX
 LEoLc9BlRLxCSDv5/OIZ5eznIVYkbLdhgSmM/ORs2VUKEjZs3Xrl1RJ6+
 AqdcBxOJKyvxo3Bsma9yAWZJIJxElviw4tIUALQmFqV63trluvGmtWDtk
 MDMlPJVDnw9KyItkahmFpViyZAktxleHg3gVf7axxIsoqllSXz9fUENjy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="386183679"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="386183679"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:59:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="735382666"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="735382666"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga006.jf.intel.com with SMTP; 25 Oct 2023 05:59:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Oct 2023 15:59:49 +0300
Date: Wed, 25 Oct 2023 15:59:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <ZTkRRRf2lTksA_a2@intel.com>
References: <20231018132400.1446-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231018132400.1446-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 18, 2023 at 04:24:00PM +0300, Stanislav Lisovskiy wrote:
> For validation purposes, it might be useful to be able to
> force Bigjoiner mode, even if current dotclock/resolution
> do not require that.
> Lets add such to option to debugfs.
> 
> v2: - Apparently intel_dp_need_bigjoiner can't be used, when
>       debugfs entry is created so lets just check manually
>       the DISPLAY_VER.
> 
> v3: - Switch to intel_connector from drm_connector(Jani Nikula)
>     - Remove redundant modeset lock(Jani Nikula)
>     - Use kstrtobool_from_user for boolean value(Jani Nikula)
> 
> v4: - Apply the changes to proper function(Jani Nikula)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 66 +++++++++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  6 +-
>  3 files changed, 73 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index fbe75d47a165..9b810c6f96ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1398,6 +1398,30 @@ out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
>  	return ret;
>  }
>  
> +static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector = to_intel_connector(m->private);
> +	struct drm_crtc *crtc;
> +	struct intel_encoder *encoder = intel_attached_encoder(connector);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	int ret = 0;
> +
> +	if (!encoder)
> +		return -ENODEV;
> +
> +	crtc = connector->base.state->crtc;
> +	if (connector->base.status != connector_status_connected || !crtc) {
> +		ret = -ENODEV;

Why do we need this extra complication?

> +		goto out;
> +	}
> +
> +	seq_printf(m, "Bigjoiner enable: %d\n", intel_dp->force_bigjoiner_enable);
> +
> +out:
> +
> +	return ret;
> +}
> +
>  static ssize_t i915_dsc_output_format_write(struct file *file,
>  					    const char __user *ubuf,
>  					    size_t len, loff_t *offp)
> @@ -1419,12 +1443,39 @@ static ssize_t i915_dsc_output_format_write(struct file *file,
>  	return len;
>  }
>  
> +static ssize_t i915_bigjoiner_enable_fops_write(struct file *file,
> +						const char __user *ubuf,
> +						size_t len, loff_t *offp)
> +{
> +	struct seq_file *m = file->private_data;
> +	struct intel_connector *connector = m->private;
> +	struct intel_encoder *encoder = intel_attached_encoder(connector);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	bool bigjoiner_en = 0;
> +	int ret;
> +
> +	ret = kstrtobool_from_user(ubuf, len, &bigjoiner_en);
> +	if (ret < 0)
> +		return ret;
> +
> +	intel_dp->force_bigjoiner_enable = bigjoiner_en;
> +	*offp += len;
> +
> +	return len;
> +}
> +
>  static int i915_dsc_output_format_open(struct inode *inode,
>  				       struct file *file)
>  {
>  	return single_open(file, i915_dsc_output_format_show, inode->i_private);
>  }
>  
> +static int i915_bigjoiner_enable_open(struct inode *inode,
> +				      struct file *file)
> +{
> +	return single_open(file, i915_bigjoiner_enable_show, inode->i_private);
> +}
> +
>  static const struct file_operations i915_dsc_output_format_fops = {
>  	.owner = THIS_MODULE,
>  	.open = i915_dsc_output_format_open,
> @@ -1434,6 +1485,15 @@ static const struct file_operations i915_dsc_output_format_fops = {
>  	.write = i915_dsc_output_format_write
>  };
>  
> +static const struct file_operations i915_bigjoiner_enable_fops = {
> +	.owner = THIS_MODULE,
> +	.open = i915_bigjoiner_enable_open,
> +	.read = seq_read,
> +	.llseek = seq_lseek,
> +	.release = single_release,
> +	.write = i915_bigjoiner_enable_fops_write
> +};
> +
>  /*
>   * Returns the Current CRTC's bpc.
>   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> @@ -1513,6 +1573,12 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
>  				    connector, &i915_dsc_output_format_fops);
>  	}
>  
> +	if (DISPLAY_VER(dev_priv) >= 11 &&
> +	    intel_connector->base.connector_type == DRM_MODE_CONNECTOR_DisplayPort) {

eDP missing

> +		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
> +				    &intel_connector->base, &i915_bigjoiner_enable_fops);
> +	}
> +
>  	if (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
>  	    connector->connector_type == DRM_MODE_CONNECTOR_eDP ||
>  	    connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8d8b2f8d37a9..e0de6eeaf59e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1753,6 +1753,8 @@ struct intel_dp {
>  	bool is_mst;
>  	int active_mst_links;
>  
> +	bool force_bigjoiner_enable;
> +
>  	/* connector directly attached - won't be use for modeset in mst world */
>  	struct intel_connector *attached_connector;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4f6835a7578e..6a9148232a9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1153,7 +1153,11 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
>  	if (!intel_dp_can_bigjoiner(intel_dp))
>  		return false;
>  
> -	return clock > i915->max_dotclk_freq || hdisplay > 5120;
> +	if (intel_dp->force_bigjoiner_enable)
> +		drm_dbg_kms(&i915->drm, "Forcing bigjoiner mode\n");

That's going to cause excessive dmesg spam.

> +
> +	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
> +	       intel_dp->force_bigjoiner_enable;
>  }
>  
>  static enum drm_mode_status
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
