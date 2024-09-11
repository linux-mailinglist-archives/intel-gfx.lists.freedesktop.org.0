Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22863975B37
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 22:01:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51C6E10E9B1;
	Wed, 11 Sep 2024 20:01:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XIfIESMI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B52E710E9B1
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 20:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726084862; x=1757620862;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2L2rctikpKnaoy5AYOMPhiATHBiNocfrXLLmb83/zpA=;
 b=XIfIESMI8gS/lNgku6nmAkjz1PSoc7mm+G8Exgjr+pLl6nq331JmG8IZ
 rabg2SCX4wU+DS6bvucxiDJoAwI6xQ/UqJRivEEgp5AMqxNOe1mudQuQs
 t0vSYc7jXsXMbcW042CcHFFEfGLRlneEKZW9iWUmT6S9PnA+5k2ntTE4C
 Y07FnhtapgIbYgA41oyl1l5oZtdH+XudoUwOvr1spcxEk66lFQhQTi6c+
 DGPU1pHBqrzy6WCCc9dm4iwiRUuXKleCqpzDXNi05SvtVKuBD/Q9i74jE
 G+YqxKsGruVv7DxKN6Hx+XE5haRA4R4QqqEUBSq6IA608nee4k4z3XFyj Q==;
X-CSE-ConnectionGUID: cihh5rghRxWnGA+nrN07HQ==
X-CSE-MsgGUID: IItPAdPgTWadrWdr1+/mUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="42426793"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="42426793"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 13:01:01 -0700
X-CSE-ConnectionGUID: vq0vvOLRRsWUN+ozyhiZ0g==
X-CSE-MsgGUID: Nnn1VgFVRdCMJatEK1u54w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67534345"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 13:00:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2024 23:00:58 +0300
Date: Wed, 11 Sep 2024 23:00:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 03/19] drm/i915/display_debugfs: Allow force joiner only
 if supported
Message-ID: <ZuH2-tjGzURPYwvV@intel.com>
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

That won't work for MST. You'll want to use intel_attached_dp().

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

We shouldn't be adding the debugfs file to a non-DP connector so this
seems redundant.

> +
> +	intel_dp = enc_to_intel_dp(intel_encoder);
> +
> +	connector->force_joined_pipes = 0;
> +
>  	switch (force_join_pipes) {
>  	case 0:
> -		fallthrough;
> +		break;
>  	case 2:
> -		connector->force_joined_pipes = force_join_pipes;
> +		if (intel_dp_has_joiner(intel_dp))
> +			connector->force_joined_pipes = force_join_pipes;
> +		else
> +			drm_dbg(display->drm, "Force joiner not supported for the config\n");

That should return an error. Hmm, or perhaps even better to not
even create the debugfs file in the first place?

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
