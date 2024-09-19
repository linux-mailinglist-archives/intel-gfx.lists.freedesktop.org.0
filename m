Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7186897CB52
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 17:07:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9F8110E2BA;
	Thu, 19 Sep 2024 15:07:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zuztt2Mj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B4310E040;
 Thu, 19 Sep 2024 15:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726758431; x=1758294431;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=j8pBHyt1p9Gdd0RH6+EAAyNibUkF2q5kKG0uQeea97w=;
 b=Zuztt2MjUFDGpa9ife4aqZMeX1/eyu8XISvjVmsARdv5C0CQijTzgz+I
 d4ItX33yxpMav6qtOYXhxUpAHdRryloJ1dNxGVXn3NMvRNBs2qzUncYRN
 0j4Eypo5H6jpPr4QKcrAJ/w3Ek4/vmObFxnGSxLo/ME4gCe2v/HJbJ4to
 JsPCzU/0BZlRzQ76E134TB+iiPKedTPGoI0fwjUMJx5+3ceLSR3U/4ebU
 g4WV/VnybeQKj2rh69dWCu1ZFdqll1woSU/ItLK8kIeDZjHdpwZVyq4PY
 v6l44Zl8HZNBvpmA5QRieGDyz23WagPn0UcnnHJahlRbsoyB/+mxyjLtS Q==;
X-CSE-ConnectionGUID: arIP/PzwTlKD1AAQ+Mpm0g==
X-CSE-MsgGUID: SG+8dL7lQ+CM1FB/GrjVCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25871454"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="25871454"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 08:07:10 -0700
X-CSE-ConnectionGUID: Omt9MNCMS7aaMC9DqWjxIQ==
X-CSE-MsgGUID: BxMQuBgZQSW60q3+A/HhpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70090607"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 08:07:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 18:07:07 +0300
Date: Thu, 19 Sep 2024 18:07:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 04/15] drm/i915/display: Modify debugfs for joiner to
 force n pipes
Message-ID: <Zuw-G3QDm5DjqB1u@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
 <20240918144343.2876184-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918144343.2876184-5-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 18, 2024 at 08:13:32PM +0530, Ankit Nautiyal wrote:
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
> v4:
> -Return -EINVAL if joiner forced to an invalid value.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 63 ++++++++++++++++++-
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  3 files changed, 63 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index cda3f6cf724d..5775413c6763 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1504,6 +1504,65 @@ static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
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
> +	struct intel_display *display = to_intel_display(connector);
> +	int force_join_pipes = 0;

'force_joined_pipes' for consistency

> +	int ret;
> +
> +	if (len == 0)
> +		return 0;
> +
> +	ret = kstrtoint_from_user(ubuf, len, 0, &force_join_pipes);
> +	if (ret < 0)
> +		return ret;
> +
> +	switch (force_join_pipes) {
> +	case 0:
> +		fallthrough;
> +	case 2:
> +		connector->force_joined_pipes = force_join_pipes;
> +		break;
> +	default:
> +		drm_dbg(display->drm, "Ignoring Invalid num of pipes %d for force joining\n",
> +			force_join_pipes);
> +		connector->force_joined_pipes = 0;

I don't think we should do any of that. Just return the error.

> +
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
> @@ -1554,8 +1613,8 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  	if (HAS_BIGJOINER(i915) && intel_dp_has_joiner(intel_dp) &&
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
> index 000ab373c887..2ac2068aefa4 100644
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
> index 19f78432cc8f..2e35a81fa6d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1280,7 +1280,7 @@ bool intel_dp_need_joiner(struct intel_dp *intel_dp,
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
