Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DB63B746C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 16:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10DBA89DC0;
	Tue, 29 Jun 2021 14:35:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8122389DC0
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jun 2021 14:35:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="206335080"
X-IronPort-AV: E=Sophos;i="5.83,309,1616482800"; d="scan'208";a="206335080"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 07:35:41 -0700
X-IronPort-AV: E=Sophos;i="5.83,309,1616482800"; d="scan'208";a="456799415"
Received: from cuzum-mobl.ger.corp.intel.com (HELO localhost) ([10.249.36.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 07:35:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: venkata.sai.patnana@intel.com, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210629065156.30301-2-venkata.sai.patnana@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210629065156.30301-1-venkata.sai.patnana@intel.com>
 <20210629065156.30301-2-venkata.sai.patnana@intel.com>
Date: Tue, 29 Jun 2021 17:35:35 +0300
Message-ID: <875yxwspqg.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/display/dsc: Add Per
 connector debugfs node for DSC BPP enable
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 29 Jun 2021, venkata.sai.patnana@intel.com wrote:
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
>
> DSC can be supported per DP connector. This patch creates
> a per connector debugfs node to expose the Input and
> Compressed BPP.
>
> The same node can be used from userspace to force
> DSC to a certain BPP.
>
> force_dsc_bpp is written through this debugfs
> node to force DSC BPP to all accepted values

This commit message only describes the "what". It's nice and helpful to
summarize the code changes.

But the key question the commit message must answer is "why". Why are
you doing this? Why do we need this?

This looks like it complicates code that is already complicated to add a
debugfs. There needs to be a justification if it isn't obvious.

A couple of comments inline.

>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Navare Manasi D <manasi.d.navare@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Patnana Venkata Sai <venkata.sai.patnana@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 103 +++++++++++++++++-
>  .../drm/i915/display/intel_display_types.h    |   1 +
>  2 files changed, 103 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index af9e58619667d..6dc223227eeaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2389,6 +2389,100 @@ static const struct file_operations i915_dsc_fec_support_fops = {
>  	.write = i915_dsc_fec_support_write
>  };
>  
> +static int i915_dsc_bpp_support_show(struct seq_file *m, void *data)
> +{
> +	struct drm_connector *connector = m->private;
> +	struct drm_device *dev = connector->dev;
> +	struct drm_crtc *crtc;
> +	struct intel_dp *intel_dp;
> +	struct drm_modeset_acquire_ctx ctx;
> +	struct intel_crtc_state *crtc_state = NULL;
> +	int ret = 0;
> +	bool try_again = false;
> +
> +	drm_modeset_acquire_init(&ctx, DRM_MODESET_ACQUIRE_INTERRUPTIBLE);
> +
> +	do {
> +		try_again = false;
> +		ret = drm_modeset_lock(&dev->mode_config.connection_mutex,
> +				       &ctx);
> +		if (ret) {
> +			ret = -EINTR;
> +			break;
> +		}
> +		crtc = connector->state->crtc;
> +		if (connector->status != connector_status_connected || !crtc) {
> +			ret = -ENODEV;
> +			break;
> +		}
> +		ret = drm_modeset_lock(&crtc->mutex, &ctx);
> +		if (ret == -EDEADLK) {
> +			ret = drm_modeset_backoff(&ctx);
> +			if (!ret) {
> +				try_again = true;
> +				continue;
> +			}
> +			break;
> +		} else if (ret) {
> +			break;
> +		}
> +		intel_dp = intel_attached_dp(to_intel_connector(connector));
> +		crtc_state = to_intel_crtc_state(crtc->state);
> +		seq_printf(m, "Input_BPP: %d\n", crtc_state->pipe_bpp);
> +		seq_printf(m, "Compressed_BPP: %d\n",
> +				crtc_state->dsc.compressed_bpp);
> +	} while (try_again);
> +
> +	drm_modeset_drop_locks(&ctx);
> +	drm_modeset_acquire_fini(&ctx);
> +
> +	return ret;

Looks like copy-paste from i915_dsc_fec_support_show() which already
makes me cringe. We can't keep accumulating this kind of code in
debugfs.

> +}
> +
> +static ssize_t i915_dsc_bpp_support_write(struct file *file,
> +						const char __user *ubuf,
> +						size_t len, loff_t *offp)
> +{
> +	int dsc_bpp = 0;
> +	int ret;
> +	struct drm_connector *connector =
> +		((struct seq_file *)file->private_data)->private;
> +	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
> +	if (len == 0)
> +		return 0;
> +
> +	drm_dbg(&i915->drm,
> +		"Copied %zu bytes from user to force BPP\n", len);

Just no. Again, copy-paste from the fec stuff that we shouldn't have to
begin with.

> +
> +	ret = kstrtoint_from_user(ubuf, len, 0, &dsc_bpp);
> +
> +	intel_dp->force_dsc_bpp = dsc_bpp;
> +	if (ret < 0)
> +		return ret;

Check the errors before using the data!

Also, how are you prepared for fractional bpp?

> +
> +	*offp += len;
> +	return len;
> +}
> +
> +static int i915_dsc_bpp_support_open(struct inode *inode,
> +					   struct file *file)
> +{
> +	return single_open(file, i915_dsc_bpp_support_show,
> +			   inode->i_private);
> +}
> +
> +static const struct file_operations i915_dsc_bpp_support_fops = {
> +	.owner = THIS_MODULE,
> +	.open = i915_dsc_bpp_support_open,
> +	.read = seq_read,
> +	.llseek = seq_lseek,
> +	.release = single_release,
> +	.write = i915_dsc_bpp_support_write
> +};
> +
>  /**
>   * intel_connector_debugfs_add - add i915 specific connector debugfs files
>   * @connector: pointer to a registered drm_connector
> @@ -2427,9 +2521,16 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
>  				    connector, &i915_hdcp_sink_capability_fops);
>  	}
>  
> -	if ((DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) && ((connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort && !to_intel_connector(connector)->mst_port) || connector->connector_type == DRM_MODE_CONNECTOR_eDP))
> +	if ((DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) &&
> +	    ((connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort &&
> +	      !to_intel_connector(connector)->mst_port) ||
> +	     connector->connector_type == DRM_MODE_CONNECTOR_eDP)) {
>  		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
>  				    connector, &i915_dsc_fec_support_fops);
> +		debugfs_create_file("i915_dsc_bpp_support", S_IRUGO,
> +				    root, connector,
> +				    &i915_dsc_bpp_support_fops);
> +	}
>  
>  	/* Legacy panels doesn't lpsp on any platform */
>  	if ((DISPLAY_VER(dev_priv) >= 9 || IS_HASWELL(dev_priv) ||
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index d94f361b548b7..19d8d3eefbc27 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1612,6 +1612,7 @@ struct intel_dp {
>  
>  	/* Display stream compression testing */
>  	bool force_dsc_en;
> +	int force_dsc_bpp;
>  
>  	bool hobl_failed;
>  	bool hobl_active;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
