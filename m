Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 561B497F0AA
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E36610E462;
	Mon, 23 Sep 2024 18:34:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DJRcgvvf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 547D810E462;
 Mon, 23 Sep 2024 18:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727116475; x=1758652475;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ap6StqrQ7piZ3rWnqc2ifBkna4G995cIwIgPucmwvns=;
 b=DJRcgvvfgvXQ+JWgnlC/7UTRmMEifCQZ6hUrN3WXTTfN05C2jdliGUmA
 t4ySrkzR0VnypOmF30BQQ7hyBnpDaFT4L0Uls+RkHUfXjGD/R6mBsyQor
 ry18f7pwT2iptfmP1Uj1Ws8WYfXWy3ok8YhQKImbEmCI3gJ7Iui28tcuZ
 L0qhdw7yZhG7IymSTFzUKYXx9rsfNgP7fEbyPUGbZugfI1MJzPThgA7GG
 +0sW/D/AtEYNQ8x3Mtn8gF00u8jy7uhX3c+z53w7PMGOMm0+I0J35h3Hc
 vxoqq019r17bIVTkaHW6G8eRr8Uh4+38BUlc0OlICM+NtPnfUGUTCQ33s A==;
X-CSE-ConnectionGUID: 83ezqW+CSS6v6EtHfijWAA==
X-CSE-MsgGUID: SPN+k/DIRH+3Ln1f7OPebg==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26035458"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="26035458"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:34:35 -0700
X-CSE-ConnectionGUID: jA/fESpFSrimkaFcCLlOsw==
X-CSE-MsgGUID: vOlOk72PQZ6J092Hk0luiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71298932"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 11:34:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 21:34:31 +0300
Date: Mon, 23 Sep 2024 21:34:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 02/16] drm/i915/display_debugfs: Allow force joiner only
 if supported
Message-ID: <ZvG0tygU424kEgMt@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
 <20240923181336.3303940-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923181336.3303940-3-ankit.k.nautiyal@intel.com>
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

On Mon, Sep 23, 2024 at 11:43:22PM +0530, Ankit Nautiyal wrote:
> Currently we support joiner only for DP encoder.
> Do not create the debugfs for joiner if DP does not support the joiner.
> This will also help avoiding cases where config has eDP MSO, with which
> we do not support joiner.
> 
> v2: Check for intel_dp_has_joiner and avoid creating debugfs if not
> supported. (Ville)
> v3 : Remove HAS_BIGJOINER check. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 890ef7067b77..6ded0a22d401 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1328,6 +1328,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct dentry *root = connector->base.debugfs_entry;
>  	int connector_type = connector->base.connector_type;
> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
>  
>  	/* The connector must have been registered beforehands. */
>  	if (!root)
> @@ -1362,7 +1363,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  				    connector, &i915_dsc_fractional_bpp_fops);
>  	}
>  
> -	if (HAS_BIGJOINER(i915) &&
> +	if (intel_dp_has_joiner(intel_dp) &&
>  	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
>  	     connector_type == DRM_MODE_CONNECTOR_eDP)) {

I think you need to reverse the connector type vs. intel_dp_has_joiner()
checks, otherwise we already assume it's DP when calling
intel_dp_has_joiner().

>  		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
