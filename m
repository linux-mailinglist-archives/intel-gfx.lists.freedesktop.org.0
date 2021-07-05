Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C14A3BC25E
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jul 2021 19:47:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACC3E899DB;
	Mon,  5 Jul 2021 17:47:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B54E4899DB
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jul 2021 17:47:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10036"; a="272859467"
X-IronPort-AV: E=Sophos;i="5.83,326,1616482800"; d="scan'208";a="272859467"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 10:47:47 -0700
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="485586956"
Received: from elang-mobl.ger.corp.intel.com (HELO localhost) ([10.252.59.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 10:47:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: venkata.sai.patnana@intel.com, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210705094201.26018-2-venkata.sai.patnana@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210705094201.26018-1-venkata.sai.patnana@intel.com>
 <20210705094201.26018-2-venkata.sai.patnana@intel.com>
Date: Mon, 05 Jul 2021 20:47:42 +0300
Message-ID: <87o8bg8xfl.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v6 1/2] drm/i915/display/dsc: Add Per
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

On Mon, 05 Jul 2021, venkata.sai.patnana@intel.com wrote:
> From: Patnana Venkata Sai <venkata.sai.patnana@intel.com>
>
> [What]:
> This patch creates a per connector debugfs node to expose
> the Input and Compressed BPP.
>
> The same node can be used from userspace to force
> DSC to a certain BPP(all accepted values).
>
> [Why]:
> Useful to verify all supported/requested compression bpp's
> through IGT
>
> v2: Remove unnecessary logic (Jani)
> v3: Drop pipe bpp in debugfs node (Vandita)
> v4: Minor cleanups (Vandita)
> v5: Fix NULL pointer dereference
> v6: Fix dim tool checkpatch errors
>     Release the lock before return (Vandita)

This is difficult to review because there is so much that should be
fixed in intel_display_debugfs.c in general and in this patch
specifically.

I think the first thing here is... have you actually tried this and
verified it works?

Just by reading the code, I don't think it is usable.

>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Navare Manasi D <manasi.d.navare@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Patnana Venkata Sai <venkata.sai.patnana@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 106 +++++++++++++++++-
>  .../drm/i915/display/intel_display_types.h    |   1 +
>  2 files changed, 106 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index af9e58619667d..daa4018224b83 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2389,6 +2389,103 @@ static const struct file_operations i915_dsc_fec_support_fops = {
>  	.write = i915_dsc_fec_support_write
>  };
>  
> +static int i915_dsc_bpp_support_show(struct seq_file *m, void *data)
> +{
> +	struct drm_connector *connector = m->private;

General: I don't understand why we keep passing drm_connector instead of
intel_connector as private data.

> +	struct drm_device *dev = connector->dev;
> +	struct drm_crtc *crtc;
> +	struct intel_crtc_state *crtc_state = NULL;

Unnecessary initialization.

> +	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
> +	int ret = 0;

Unnecessary initialization.

> +
> +	if (!encoder)
> +		return -ENODEV;
> +
> +	ret = drm_modeset_lock_single_interruptible(&dev->mode_config.connection_mutex);
> +	if (ret)
> +		return ret;
> +
> +	crtc = connector->state->crtc;
> +	if (connector->status != connector_status_connected || !crtc) {
> +		drm_modeset_unlock(&dev->mode_config.connection_mutex);
> +		return -ENODEV;

In general we use

	ret = -ENODEV;
        goto out;

with the unlock and other cleanup at the end, same unlock for both
success and fail paths. It's the prevalent style in kernel. Same all
over.

> +	}
> +
> +	crtc_state = to_intel_crtc_state(crtc->state);
> +	seq_printf(m, "Compressed_BPP: %d\n", crtc_state->dsc.compressed_bpp);
> +
> +	drm_modeset_unlock(&dev->mode_config.connection_mutex);
> +
> +	return ret;
> +}
> +
> +static ssize_t i915_dsc_bpp_support_write(struct file *file,
> +					  const char __user *ubuf,
> +					  size_t len, loff_t *offp)
> +{
> +	int dsc_bpp = 0;
> +	int ret;

Usually the more "context" style variables go first.

> +	struct drm_connector *connector =
> +		((struct seq_file *)file->private_data)->private;
> +	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	struct drm_crtc *crtc;
> +	struct intel_crtc_state *crtc_state = NULL;

Unnecessary initialization.

> +
> +	if (len == 0)
> +		return 0;

Should be unnecessary.

> +
> +	ret = kstrtoint_from_user(ubuf, len, 0, &dsc_bpp);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
> +	if (ret)
> +		return ret;
> +
> +	crtc = connector->state->crtc;
> +	if (connector->status != connector_status_connected || !crtc) {
> +		drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> +		return -ENODEV;

Ditto here about failure path.

> +	}
> +
> +	crtc_state = to_intel_crtc_state(crtc->state);
> +
> +	if (dsc_bpp <= 8 || dsc_bpp >= crtc_state->pipe_bpp) {

This is odd. In order to have crtc_state->pipe_bpp, or crtc state, you
must have done a modeset. That modeset must have been done without the
force_dsc_bpp. So in order to use this code, the test needs to:

- do a modeset
- set the force bpp
- do another modeset for the change to take effect

I don't think it makes sense to make that a requirement. Maybe we
shouldn't even require connector_status_connected. Just find intel_dp
and set ->force_dsc_bpp. Next modeset will use it. Have the value check
there.

This code also prevents you from resetting the force_dsc_bpp. If you set
it once, you can't set it back to 0 afterwards.

> +		drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> +		drm_dbg(&i915->drm, "Compressed_BPP should be with in the limits\n");
> +
> +		return -EINVAL;
> +	}
> +
> +	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> +
> +	drm_dbg(&i915->drm,
> +		"Copied %zu bytes from user to force BPP\n", len);

This is a completely useless debug message.

> +
> +	intel_dp->force_dsc_bpp = dsc_bpp;
> +	*offp += len;
> +
> +	return len;
> +}
> +
> +static int i915_dsc_bpp_support_open(struct inode *inode,
> +				     struct file *file)
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

Maybe this should use DEFINE_SEQ_ATTRIBUTE() to avoid some boilerplate.

> +
>  /**
>   * intel_connector_debugfs_add - add i915 specific connector debugfs files
>   * @connector: pointer to a registered drm_connector
> @@ -2427,9 +2524,16 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
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
> +		debugfs_create_file("i915_dsc_bpp_support", 0444,
> +				    root, connector,
> +				    &i915_dsc_bpp_support_fops);
> +	}

I don't understand how either i915_dsc_fec_support or
i915_dsc_bpp_support (which is an odd name for something to set an
integer value to!) can work if their mode is read-only 0444.

Has either been tested?

BR,
Jani.

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
