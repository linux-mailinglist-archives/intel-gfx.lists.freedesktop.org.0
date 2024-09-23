Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E5297F0BF
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9612110E463;
	Mon, 23 Sep 2024 18:36:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LMnlV0wT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E83D10E463;
 Mon, 23 Sep 2024 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727116613; x=1758652613;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=f4FaUsn1cfmzqlKI9iJLGONc8n3gnD4QUSDK8wdbgwM=;
 b=LMnlV0wTLFVwGLBzUIyjw9txrMB4VfsFU2uJHJZjsYRX7E33zZiDuFfS
 9EXmfLqqdhUCjpOJsjKriw6DEshyb7FBG3FIe85VA8CdMOi/u0BSgSv+C
 yeQG7FeKJGDTdF/7shzSiJd6WxOWot7scllJ3TX3ISEWTydIobw81GX6w
 MO2XGkx5IBvmQWxIFRwOItxuuWJ1ZJCG9nWvEtxUDTb1NhcdVDEySvvEQ
 iK0v8X9cmygWvKwAk5tlpqJ4ELLco2uF8IQ8Usv5N9GfRG42OkqgKi+kO
 SYxK0HyyLMrURBXLnMhvu8EBsiubVbtCaS+0sx1IH/TRjToFerMcJbME4 Q==;
X-CSE-ConnectionGUID: X0uAl+JpSAiUKj6QSY6vew==
X-CSE-MsgGUID: aYg4+N70T2KbiT6G0pJ1eQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="13712488"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="13712488"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:36:52 -0700
X-CSE-ConnectionGUID: rNhTzS/zTeGaLQ+MsGh1pQ==
X-CSE-MsgGUID: aFVTFd6UQi65Jn67RxQU7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71299397"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 11:36:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 21:36:49 +0300
Date: Mon, 23 Sep 2024 21:36:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 03/16] drm/i915/display: Modify debugfs for joiner to
 force n pipes
Message-ID: <ZvG1QcolBpk4EGp6@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
 <20240923181336.3303940-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923181336.3303940-4-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Mon, Sep 23, 2024 at 11:43:23PM +0530, Ankit Nautiyal wrote:
> At the moment, the debugfs for joiner allows only to force enable/disable
> pipe joiner for 2 pipes. Modify it to force join 'n' number of pipes,
> where n is a valid pipe joiner configuration.
> This will help in case of ultra joiner where 4 pipes are joined.
> 
> v2:
> -Fix commit message to state that only valid joiner config can be
> forced. (Suraj)
> -Rename the identifiers to have INTEL_BIG/NONE_JOINER_PIPES. (Suraj)
> v3:
> -Avoid enum for joiner pipe counts, use bare numbers for better
> readability. (Ville)
> -Remove redundant prints from debugfs. (Ville)
> v4: Return -EINVAL if joiner forced to an invalid value.
> v5: Remove extra debug message. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 58 ++++++++++++++++++-
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  3 files changed, 58 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 6ded0a22d401..80c499d642dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1316,6 +1316,60 @@ static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
>  }
>  DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
>  
> +static int i915_joiner_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector = m->private;
> +
> +	seq_printf(m, "%d\n", connector->force_joined_pipes);
> +
> +	return 0;
> +}
> +
> +static ssize_t i915_joiner_write(struct file *file,
> +				 const char __user *ubuf,
> +				 size_t len, loff_t *offp)
> +{
> +	struct seq_file *m = file->private_data;
> +	struct intel_connector *connector = m->private;
> +	int force_joined_pipes = 0;
> +	int ret;
> +
> +	if (len == 0)
> +		return 0;
> +
> +	ret = kstrtoint_from_user(ubuf, len, 0, &force_joined_pipes);
> +	if (ret < 0)
> +		return ret;
> +
> +	switch (force_joined_pipes) {
> +	case 0:
> +		break;

The break shouldn't be here. We want to set connector->force_joined_pipes
for both values.

With that fixed
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	case 2:
> +		connector->force_joined_pipes = force_joined_pipes;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	*offp += len;
> +
> +	return len;
> +}
> +
> +static int i915_joiner_open(struct inode *inode, struct file *file)
> +{
> +	return single_open(file, i915_joiner_show, inode->i_private);
> +}
> +
> +static const struct file_operations i915_joiner_fops = {
> +	.owner = THIS_MODULE,
> +	.open = i915_joiner_open,
> +	.read = seq_read,
> +	.llseek = seq_lseek,
> +	.release = single_release,
> +	.write = i915_joiner_write
> +};
> +
>  /**
>   * intel_connector_debugfs_add - add i915 specific connector debugfs files
>   * @connector: pointer to a registered intel_connector
> @@ -1366,8 +1420,8 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  	if (intel_dp_has_joiner(intel_dp) &&
>  	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
>  	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
> -		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
> -				    &connector->force_bigjoiner_enable);
> +		debugfs_create_file("i915_joiner_force_enable", 0644, root,
> +				    connector, &i915_joiner_fops);
>  	}
>  
>  	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index b1eed230285a..2a9806f93e63 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -524,7 +524,7 @@ struct intel_connector {
>  
>  	struct intel_dp *mst_port;
>  
> -	bool force_bigjoiner_enable;
> +	int force_joined_pipes;
>  
>  	struct {
>  		struct drm_dp_aux *dsc_decompression_aux;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 16dc1d26d2a2..a1a64758d30d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1274,7 +1274,7 @@ bool intel_dp_need_joiner(struct intel_dp *intel_dp,
>  		return false;
>  
>  	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120 ||
> -	       connector->force_bigjoiner_enable;
> +	       connector->force_joined_pipes == 2;
>  }
>  
>  bool intel_dp_has_dsc(const struct intel_connector *connector)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
