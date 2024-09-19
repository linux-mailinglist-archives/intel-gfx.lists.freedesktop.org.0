Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F38F97CB4C
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 17:04:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66FB210E2BE;
	Thu, 19 Sep 2024 15:04:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dI+NjL2u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49BCB10E09C;
 Thu, 19 Sep 2024 15:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726758269; x=1758294269;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qUPT5xAMUq1NazD/3XsQW89gmeL3mCERxRxC9rLlNU0=;
 b=dI+NjL2ufBy6hR6YRKef7qK2uOp9QYMiDvScvriiAJ7faSPRSooTvJ3B
 PP639rzO+nOMYzsoa4eBVT21d9Kz3Y3MOfcEEyC2ZlJEhhgYvbzyFSVmB
 Rp47cZYBvylfOp1o5YP00UtraR6N9gmedvvoXG8z0OXAtaLSEDfPQbmtu
 ZzY8rDpxDJhwKElwlbhTrh0K17T7MtbExkvyUjjdamVG+mGAMxtFbgty1
 d9McNVYijJEl9FLVWjbElevetJzmKAyIIycWsmcwpW1/++EuxmBkJ08tT
 23cw5QhSmmxZYaJ7AJm/3RjP10H/rQk4V+BMZsOZ/CMjuKc3GSO4v0gVt w==;
X-CSE-ConnectionGUID: /ZRxD6AVTyqZUkJu3sGrwA==
X-CSE-MsgGUID: fgt6bBh+S3yXDfrPgCOkvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25870909"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="25870909"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 08:04:14 -0700
X-CSE-ConnectionGUID: ASgwTtEMQ4exx6Lg7PEjKw==
X-CSE-MsgGUID: JSeWO7A3TJe4bWMJEWkRqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70089654"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 08:04:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 18:04:11 +0300
Date: Thu, 19 Sep 2024 18:04:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 03/15] drm/i915/display_debugfs: Allow force joiner only
 if supported
Message-ID: <Zuw9a6MqrbQ-qcL4@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
 <20240918144343.2876184-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918144343.2876184-4-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 18, 2024 at 08:13:31PM +0530, Ankit Nautiyal wrote:
> Currently we support joiner only for DP encoder.
> Do not create the debugfs for joiner if DP does not support the joiner.
> This will also help avoiding cases where config has eDP MSO, with which
> we do not support joiner.
> 
> v2: Check for intel_dp_has_joiner and avoid creating debugfs if not
> supported. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 86403a9318b0..cda3f6cf724d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1516,6 +1516,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct dentry *root = connector->base.debugfs_entry;
>  	int connector_type = connector->base.connector_type;
> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
>  
>  	/* The connector must have been registered beforehands. */
>  	if (!root)
> @@ -1550,7 +1551,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  				    connector, &i915_dsc_fractional_bpp_fops);
>  	}
>  
> -	if (HAS_BIGJOINER(i915) &&
> +	if (HAS_BIGJOINER(i915) && intel_dp_has_joiner(intel_dp) &&

Can't we drop the HAS_BIGJOINER() check now?

>  	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
>  	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
>  		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
