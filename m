Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63858975B64
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 22:11:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48BB910EA89;
	Wed, 11 Sep 2024 20:11:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oGMMrd05";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A288B10EA89
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 20:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726085502; x=1757621502;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Fcu0bD5/ubw5teXtifhP7/G/wPB4HGB/z3IIclpeV0M=;
 b=oGMMrd05wuravgG8zCnndvnhJn2wySasK6Ivz7jg6DxTDxC6lpitO6Vx
 butVkf4QFdpSFrmss54NbRWCf/xkKQFLZw6vuI54CUZ1+nCXwG/khRmP/
 zCMjmZhZ/ghTMcrVmERBpMSnhq0Gs9pINUYDVfaoweyvPLxNAaoUO6zxv
 F/4LPhRkswK7adCWiSsDBYH/cIi/5j9+6C5HFcqmQ70aWvUmy5nakgitE
 rbjpMFJFcASYE1sovjnVe+wHX/q0fOCzkry65nCUCgncyCfUX7bDn9QGc
 HhNM+wf76YzeFLf3Caq/eElI6wcnjydW+MLFMwWvfRWSCJfIQJeuAIbNe A==;
X-CSE-ConnectionGUID: dm/hhFjWROSwrrW20kr3kA==
X-CSE-MsgGUID: uD72fqSTSHmBKClpTerQug==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="42427990"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="42427990"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 13:11:41 -0700
X-CSE-ConnectionGUID: Rtzgk2hxSky1sFvvP0qRbg==
X-CSE-MsgGUID: E/KInAAgQu2mALca/JDe1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67538307"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 13:11:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2024 23:11:37 +0300
Date: Wed, 11 Sep 2024 23:11:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 03/19] drm/i915/display_debugfs: Allow force joiner only
 if supported
Message-ID: <ZuH5eQ9XFJ3cfa4R@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240911131349.933814-4-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 11, 2024 at 06:43:33PM +0530, Ankit Nautiyal wrote:
> Currently joiner is only supported for DP encoder.
> Allow force joiner only for DP for supported platforms.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 20 ++++++++++++++++---
>  1 file changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index d7651f6f80e1..7ceaf01a884a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1520,6 +1520,9 @@ static ssize_t i915_joiner_write(struct file *file,
>  	struct seq_file *m = file->private_data;
>  	struct intel_connector *connector = m->private;
>  	struct intel_display *display = to_intel_display(connector);
> +	struct intel_encoder *intel_encoder = intel_attached_encoder(connector);
> +	struct intel_dp *intel_dp;
> +	int connector_type = connector->base.connector_type;
>  	int force_join_pipes = 0;
>  	int ret;
>  
> @@ -1530,16 +1533,27 @@ static ssize_t i915_joiner_write(struct file *file,
>  	if (ret < 0)
>  		return ret;
>  
> +	/* Currently joiner is only supported for eDP/DP */
> +	if (connector_type != DRM_MODE_CONNECTOR_DisplayPort &&
> +	    connector_type != DRM_MODE_CONNECTOR_eDP)
> +		return 0;
> +
> +	intel_dp = enc_to_intel_dp(intel_encoder);
> +
> +	connector->force_joined_pipes = 0;
> +
>  	switch (force_join_pipes) {
>  	case 0:
> -		fallthrough;
> +		break;

That 'break' looks wrong.

>  	case 2:
> -		connector->force_joined_pipes = force_join_pipes;
> +		if (intel_dp_has_joiner(intel_dp))
> +			connector->force_joined_pipes = force_join_pipes;
> +		else
> +			drm_dbg(display->drm, "Force joiner not supported for the config\n");
>  		break;
>  	default:
>  		drm_dbg(display->drm, "Ignoring Invalid num of pipes %d for force joining\n",
>  			force_join_pipes);
> -		connector->force_joined_pipes = 0;
>  	}
>  
>  	*offp += len;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
