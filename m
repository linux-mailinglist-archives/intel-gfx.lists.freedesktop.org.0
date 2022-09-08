Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B95B5B10DE
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 02:17:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B66910E589;
	Thu,  8 Sep 2022 00:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7289F10E589
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 00:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662596237; x=1694132237;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BKz5kjCC1qfKxaKtPggFvr7AtKxgk+gVJbn1ljDbcMk=;
 b=SaAdIh1HS5Dg+aMa14udZvjKxmifSqpjkGx9JxQSXjMCBGrKPxgsrWey
 fqWf7lNf5N5qrkCgzZ0CoMwjveH6qmsr2UCQySwJ4VB34EoPEZJm9EaxS
 xC1bY37I5xcbdl2gCNHZWpoxNjHPOzZGUwVL0uJ9tBnftuO3lTSb6GJMx
 2bPQGOT1sLmnRtqQsCWQTh6tbY/TaGIX6KsG5kazojahI1NtIDhqdjyv/
 ZpeKTfKmn6LpRFdtPRh/SmG378XlSINWjd0+nqEa0o1S8X8D/AZM0RWnt
 c6/fsn+K8F33VWmnj8kte62UPtO3Xk/CFFrv9ohLnTEKALIJwJv7+MQcJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="294611860"
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="294611860"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 17:17:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="591931444"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 17:17:16 -0700
Date: Wed, 7 Sep 2022 17:17:17 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>
Message-ID: <20220908001717.GA584290@mdnavare-mobl1.jf.intel.com>
References: <20220902190658.9459-1-swati2.sharma@intel.com>
 <20220902190658.9459-2-swati2.sharma@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220902190658.9459-2-swati2.sharma@intel.com>
Subject: Re: [Intel-gfx] [v2][PATCH 1/1] drm/i915/dsc: convert dsc debugfs
 entry from output_bpp to input_bpc
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

On Sat, Sep 03, 2022 at 12:36:58AM +0530, Swati Sharma wrote:
> Convert dsc debugfs entry from output_bpp to input_bpc. The rationale
> is to validate different input bpc across various platforms.
> 
> v2: -improved commit message (Jani N)
>     -styling fixes (Jani N)
> 
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>

Thanks for the patch Swati.
This makes sense to test different input bpcs from IGT rather than
forcing compressed bpp so that we leave the proper compressed bpp
calculation to the driver which is the right way.

Make sure this patch and corresponding IGT change gets merged at the
same time else IGT will throw err

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 27 +++++++++----------
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 21 ++++-----------
>  3 files changed, 19 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 5dc364e9db49..0bd916fd9fec 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2140,7 +2140,7 @@ static const struct file_operations i915_dsc_fec_support_fops = {
>  	.write = i915_dsc_fec_support_write
>  };
>  
> -static int i915_dsc_bpp_show(struct seq_file *m, void *data)
> +static int i915_dsc_bpc_show(struct seq_file *m, void *data)
>  {
>  	struct drm_connector *connector = m->private;
>  	struct drm_device *dev = connector->dev;
> @@ -2163,14 +2163,14 @@ static int i915_dsc_bpp_show(struct seq_file *m, void *data)
>  	}
>  
>  	crtc_state = to_intel_crtc_state(crtc->state);
> -	seq_printf(m, "Compressed_BPP: %d\n", crtc_state->dsc.compressed_bpp);
> +	seq_printf(m, "Input_BPC: %d\n", crtc_state->dsc.config.bits_per_component);
>  
>  out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
>  
>  	return ret;
>  }
>  
> -static ssize_t i915_dsc_bpp_write(struct file *file,
> +static ssize_t i915_dsc_bpc_write(struct file *file,
>  				  const char __user *ubuf,
>  				  size_t len, loff_t *offp)
>  {
> @@ -2178,33 +2178,32 @@ static ssize_t i915_dsc_bpp_write(struct file *file,
>  		((struct seq_file *)file->private_data)->private;
>  	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> -	int dsc_bpp = 0;
> +	int dsc_bpc = 0;
>  	int ret;
>  
> -	ret = kstrtoint_from_user(ubuf, len, 0, &dsc_bpp);
> +	ret = kstrtoint_from_user(ubuf, len, 0, &dsc_bpc);
>  	if (ret < 0)
>  		return ret;
>  
> -	intel_dp->force_dsc_bpp = dsc_bpp;
> +	intel_dp->force_dsc_bpc = dsc_bpc;
>  	*offp += len;
>  
>  	return len;
>  }
>  
> -static int i915_dsc_bpp_open(struct inode *inode,
> +static int i915_dsc_bpc_open(struct inode *inode,
>  			     struct file *file)
>  {
> -	return single_open(file, i915_dsc_bpp_show,
> -			   inode->i_private);
> +	return single_open(file, i915_dsc_bpc_show, inode->i_private);
>  }
>  
> -static const struct file_operations i915_dsc_bpp_fops = {
> +static const struct file_operations i915_dsc_bpc_fops = {
>  	.owner = THIS_MODULE,
> -	.open = i915_dsc_bpp_open,
> +	.open = i915_dsc_bpc_open,
>  	.read = seq_read,
>  	.llseek = seq_lseek,
>  	.release = single_release,
> -	.write = i915_dsc_bpp_write
> +	.write = i915_dsc_bpc_write
>  };
>  
>  /*
> @@ -2274,8 +2273,8 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
>  		debugfs_create_file("i915_dsc_fec_support", 0644, root,
>  				    connector, &i915_dsc_fec_support_fops);
>  
> -		debugfs_create_file("i915_dsc_bpp", 0644, root,
> -				    connector, &i915_dsc_bpp_fops);
> +		debugfs_create_file("i915_dsc_bpc", 0644, root,
> +				    connector, &i915_dsc_bpc_fops);
>  	}
>  
>  	if (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 0da9b208d56e..dbda845030bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1712,7 +1712,7 @@ struct intel_dp {
>  
>  	/* Display stream compression testing */
>  	bool force_dsc_en;
> -	int force_dsc_bpp;
> +	int force_dsc_bpc;
>  
>  	bool hobl_failed;
>  	bool hobl_active;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index d4e037450ac5..c4e1ceb5743f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1474,6 +1474,11 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  
>  	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
>  
> +	if (intel_dp->force_dsc_bpc) {
> +		pipe_bpp = intel_dp->force_dsc_bpc * 3;
> +		drm_dbg_kms(&dev_priv->drm, "Input DSC BPP forced to %d", pipe_bpp);
> +	}
> +
>  	/* Min Input BPC for ICL+ is 8 */
>  	if (pipe_bpp < 8 * 3) {
>  		drm_dbg_kms(&dev_priv->drm,
> @@ -1525,22 +1530,6 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		pipe_config->dsc.slice_count = dsc_dp_slice_count;
>  	}
>  
> -	/* As of today we support DSC for only RGB */
> -	if (intel_dp->force_dsc_bpp) {
> -		if (intel_dp->force_dsc_bpp >= 8 &&
> -		    intel_dp->force_dsc_bpp < pipe_bpp) {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "DSC BPP forced to %d",
> -				    intel_dp->force_dsc_bpp);
> -			pipe_config->dsc.compressed_bpp =
> -						intel_dp->force_dsc_bpp;
> -		} else {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "Invalid DSC BPP %d",
> -				    intel_dp->force_dsc_bpp);
> -		}
> -	}
> -
>  	/*
>  	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
>  	 * is greater than the maximum Cdclock and if slice count is even
> -- 
> 2.25.1
> 
