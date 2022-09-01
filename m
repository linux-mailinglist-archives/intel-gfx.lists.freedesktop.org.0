Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8DB5A91BE
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 10:12:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFE8510E652;
	Thu,  1 Sep 2022 08:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C496810E651
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 08:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662019923; x=1693555923;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=MZZVD2DEwar1sxedASDD/G0Gk3iM7UFduKZiJi9prkA=;
 b=NaYn6dWJT3b39OQ44RUB1KwTO/i79l+IO/To9eQ2hCnytLrMC76GpG4N
 DjySZN8owjS72pzdwgqetxgtNhZ1BLdHmseVW2HfTlGLihKEWwmPxtsVK
 JyvexPqIlyTclNORRUJ2kT8Fv3X6Fso+J/KEGVbaaSqCSm4zeZHUtHizV
 lUZmwzyH7rB2CZsTsIyXML7iGZkHaJH0UOrXLY02s/SRlfPcei1VnpkYm
 L6OdIm9L2UgX3fROL+bk8K3Lvlt9WHGdo7Hxe5F7w7GWwoV+tDnNed7pw
 nsJWR5jXg0Ao9o2CYkgWoavV6r6IsxedJWrYBaxgHsaApCGc+dybtf2Vj g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="293229615"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="293229615"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 01:11:49 -0700
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="673741907"
Received: from fmerten-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.44.118])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 01:11:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220831160536.2131-2-swati2.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220831160536.2131-1-swati2.sharma@intel.com>
 <20220831160536.2131-2-swati2.sharma@intel.com>
Date: Thu, 01 Sep 2022 11:11:38 +0300
Message-ID: <8735dbcy4l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/display: convert dsc debugfs
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 31 Aug 2022, Swati Sharma <swati2.sharma@intel.com> wrote:
> With this patch, converting DSC debugfs entry from output_bpp to input_bpc.

Please drop phrases like "With this patch", and just use imperative
mood, "Convert DSC debugfs ...". Once it's committed and you look at git
log, it's no longer a patch.

The subject prefix could have "drm/i915/dsc".

> Corresponding changes are done in i-g-t to validate DSC with different
> input bpc supported per platform.

The commit message should convey the "why". I guess the rationale is to
be able to test input bpc? That should be the main thing, not the igt
changes.

Okay, let's say this and the igt changes get merged in lock step. We
still have CI running new IGT on older kernels such as
drm-intel-fixes. What happens?

>
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 26 +++++++++----------
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 23 +++++-----------
>  3 files changed, 21 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 225b6bfc783c..23627ed3beb1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2138,7 +2138,7 @@ static const struct file_operations i915_dsc_fec_support_fops = {
>  	.write = i915_dsc_fec_support_write
>  };
>  
> -static int i915_dsc_bpp_show(struct seq_file *m, void *data)
> +static int i915_dsc_bpc_show(struct seq_file *m, void *data)
>  {
>  	struct drm_connector *connector = m->private;
>  	struct drm_device *dev = connector->dev;
> @@ -2161,14 +2161,14 @@ static int i915_dsc_bpp_show(struct seq_file *m, void *data)
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
> @@ -2176,33 +2176,33 @@ static ssize_t i915_dsc_bpp_write(struct file *file,
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
> +	return single_open(file, i915_dsc_bpc_show,
>  			   inode->i_private);

Bikeshed, while here, the modified lines could be reflowed to fit on one
line.

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
> @@ -2272,8 +2272,8 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
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
> index 8d1559323412..0d75b00d3e5d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1474,6 +1474,13 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  
>  	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
>  
> +	if (intel_dp->force_dsc_bpc) {
> +		pipe_bpp = intel_dp->force_dsc_bpc * 3;
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Input DSC BPP forced to %d",
> +			    pipe_bpp);

Bikeshed, this would also fit on fewer lines.

Other than the nitpicks, this seems to make everything simpler and
exercise the regular code paths better also with forced dsc bpc.

BR,
Jani.

> +	}
> +
>  	/* Min Input BPC for ICL+ is 8 */
>  	if (pipe_bpp < 8 * 3) {
>  		drm_dbg_kms(&dev_priv->drm,
> @@ -1525,22 +1532,6 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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

-- 
Jani Nikula, Intel Open Source Graphics Center
