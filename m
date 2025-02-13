Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D444DA339C9
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 09:18:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B57810E2B1;
	Thu, 13 Feb 2025 08:18:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bkANszfb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE7D110E2B1;
 Thu, 13 Feb 2025 08:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739434731; x=1770970731;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=k3O/Y0DO/c8KsGvt8R1bIM1gDmZ5t64jFdWzWNlpVJc=;
 b=bkANszfbClJG7DmiaBgP2exhOOXjpIkQw7hxJUX5V21cKlX/XwAwEi6A
 O0O9T/nGUJPFHYLzISsIYm0Gxc8KqN1cSDKuIYFmfrJyZWAnQCXr8pBDm
 +vcL5df/7FDp8+IEqd4aLR6/WaeCQEqOjPHp/tPDeN5AUikyj6GTyAG99
 P9EFiMSzGvppi74+Y1DDF4DnvxErLsIENV9dDqn/gymcCMQ1ocQykml7G
 jKEXrE1Yj8Gr5xvnG7ypa6buHwMPlrOh+0KR3Q+//S81wZPtmxyZYig77
 Lo9tPFgkRW+Vv/9nqU0/TeNfEBZW+Po/6rqcUXgElxCU5HUq8zzzjS/n5 A==;
X-CSE-ConnectionGUID: fDiZQ/4ZQcu8DseqvDRaUw==
X-CSE-MsgGUID: QiSzz2JwSv+yshxFXtwPXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="40240694"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="40240694"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 00:18:50 -0800
X-CSE-ConnectionGUID: EuLxP35GS7+EqdOXqQtUNg==
X-CSE-MsgGUID: iitCH6gcQoC6CCyaA3BRUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="150240324"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.243])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 00:18:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, santhosh.reddy.guddati@intel.com, Suraj
 Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Create force_hdcp14 debug fs entry
In-Reply-To: <20250213060259.3768384-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250213060259.3768384-1-suraj.kandpal@intel.com>
Date: Thu, 13 Feb 2025 10:18:45 +0200
Message-ID: <871pw2z28q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 13 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Testing HDCP 1.4 becomes tough since the only way our code comes to
> HDCP 1.4 pathway is if the monitor only supports HDCP 1.4 which
> becomes tough to find sometimes.
> Setting this debug_fs entry will force use to use the HDCP 1.4 path
> so that more robust HDCP 1.4 testing can take place.
>
> --v2
> -Move the code to intel_hdcp.c [Jani]
> -Remove useless debug logging [Jani]

That's still there.

BR,
Jani.


> -Remove Force_HDCP from the debug file [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 79 ++++++++++++++++++-
>  2 files changed, 80 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 6a82c6ade549..c78dd77ef74c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -496,6 +496,8 @@ struct intel_hdcp {
>  	enum transcoder cpu_transcoder;
>  	/* Only used for DP MST stream encryption */
>  	enum transcoder stream_transcoder;
> +	/* Used to force HDCP 1.4 bypassing HDCP 2.x */
> +	bool force_hdcp14;
>  };
>  
>  struct intel_connector {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 1aa4c0fd216f..bbf553205c7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2472,13 +2472,16 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
>  	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
>  	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>  	 */
> -	if (intel_hdcp2_get_capability(connector)) {
> +	if (!hdcp->force_hdcp14 && intel_hdcp2_get_capability(connector)) {
>  		ret = _intel_hdcp2_enable(state, connector);
>  		if (!ret)
>  			check_link_interval =
>  				DRM_HDCP2_CHECK_PERIOD_MS;
>  	}
>  
> +	if (hdcp->force_hdcp14)
> +		drm_dbg_kms(display->drm, "Forcing HDCP 1.4\n");
> +
>  	/*
>  	 * When HDCP2.2 fails and Content Type is not Type1, HDCP1.4 will
>  	 * be attempted.
> @@ -2797,6 +2800,78 @@ static int intel_hdcp_sink_capability_show(struct seq_file *m, void *data)
>  }
>  DEFINE_SHOW_ATTRIBUTE(intel_hdcp_sink_capability);
>  
> +static ssize_t intel_hdcp_force_14_write(struct file *file,
> +					 const char __user *ubuf,
> +					 size_t len, loff_t *offp)
> +{
> +	struct seq_file *m = file->private_data;
> +	struct intel_connector *connector = m->private;
> +	struct intel_display *display = to_intel_display(connector);
> +	struct intel_hdcp *hdcp = &connector->hdcp;
> +	bool force_hdcp14 = false;
> +	int ret;
> +
> +	if (len == 0)
> +		return 0;
> +
> +	drm_dbg(display->drm,
> +		"Copied %zu bytes from user to force DSC\n", len);
> +
> +	ret = kstrtobool_from_user(ubuf, len, &force_hdcp14);
> +	if (ret < 0)
> +		return ret;
> +
> +	hdcp->force_hdcp14 = force_hdcp14;
> +
> +	*offp += len;
> +	return len;
> +}
> +
> +static int intel_hdcp_force_14_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector = m->private;
> +	struct intel_display *display = to_intel_display(connector);
> +	struct intel_encoder *encoder = intel_attached_encoder(connector);
> +	struct intel_hdcp *hdcp = &connector->hdcp;
> +	struct drm_crtc *crtc;
> +	int ret;
> +
> +	if (!encoder)
> +		return -ENODEV;
> +
> +	ret = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> +	if (ret)
> +		return ret;
> +
> +	crtc = connector->base.state->crtc;
> +	if (connector->base.status != connector_status_connected || !crtc) {
> +		ret = -ENODEV;
> +		goto out;
> +	}
> +
> +	seq_printf(m, "%s\n",
> +		   str_yes_no(hdcp->force_hdcp14));
> +out:
> +	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> +	return ret;
> +}
> +
> +static int intel_hdcp_force_14_open(struct inode *inode,
> +				    struct file *file)
> +{
> +	return single_open(file, intel_hdcp_force_14_show,
> +			   inode->i_private);
> +}
> +
> +static const struct file_operations intel_hdcp_force_14_fops = {
> +	.owner = THIS_MODULE,
> +	.open = intel_hdcp_force_14_open,
> +	.read = seq_read,
> +	.llseek = seq_lseek,
> +	.release = single_release,
> +	.write = intel_hdcp_force_14_write
> +};
> +
>  void intel_hdcp_connector_debugfs_add(struct intel_connector *connector)
>  {
>  	struct dentry *root = connector->base.debugfs_entry;
> @@ -2807,5 +2882,7 @@ void intel_hdcp_connector_debugfs_add(struct intel_connector *connector)
>  	    connector_type == DRM_MODE_CONNECTOR_HDMIB) {
>  		debugfs_create_file("i915_hdcp_sink_capability", 0444, root,
>  				    connector, &intel_hdcp_sink_capability_fops);
> +		debugfs_create_file("i915_force_hdcp14", 0644, root,
> +				    connector, &intel_hdcp_force_14_fops);
>  	}
>  }

-- 
Jani Nikula, Intel
