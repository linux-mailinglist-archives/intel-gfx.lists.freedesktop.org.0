Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCFD987296
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 13:15:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C940D10E2E6;
	Thu, 26 Sep 2024 11:15:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gcjan0Xi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EF8310E2E8;
 Thu, 26 Sep 2024 11:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727349301; x=1758885301;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9vEToxEylJXejWdzuuLn0L50u3A95d7dPhJSY4m75OY=;
 b=gcjan0XiAb0AnaC+nTZsDM1QgSfVKAuUxx10m3mB3RUtIKN2UNqstsNV
 FULiBP+sxLi3XBi6JKouepJx6hvp/DLBdyW75uTJRuf6x1/5O0RGfbKO0
 gZz7x418E0Ayt5tyw3hzYYd7UF/WFV10Eq3Z5dSy2yLrIl5s45+FcyyJU
 ygX1j52U+tO7/tLHgc95wMV4E8j+/YgKcwQpSkoUgXqU2Y3O64KFR9oFN
 H7Q0ECxi15nULVimd1cFskahcZ03o7YHGoWWnXO9oqQrZag4jyW+l+Qf/
 r3C7zxLFE/74LSawu28+kEnm4w7hE8EqQnAaToHJFfgZmupIxJehwsEig g==;
X-CSE-ConnectionGUID: O247uaXlQtGFi3vnyhKeyw==
X-CSE-MsgGUID: khafDHH1TRmY8nziGI0wVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="51852096"
X-IronPort-AV: E=Sophos;i="6.10,155,1719903600"; d="scan'208";a="51852096"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 04:15:00 -0700
X-CSE-ConnectionGUID: xVuN0XCXSGy9rm3PiMif8g==
X-CSE-MsgGUID: qn9YF5wTQDufxlUNzPZncw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,155,1719903600"; d="scan'208";a="72255291"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Sep 2024 04:14:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Sep 2024 14:14:56 +0300
Date: Thu, 26 Sep 2024 14:14:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 02/15] drm/i915/display_debugfs: Allow force joiner only
 if supported
Message-ID: <ZvVCMMoVowdWfrAz@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
 <20240926072638.3689367-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240926072638.3689367-3-ankit.k.nautiyal@intel.com>
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

On Thu, Sep 26, 2024 at 12:56:25PM +0530, Ankit Nautiyal wrote:
> Currently we support joiner only for DP encoder.
> Do not create the debugfs for joiner if DP does not support the joiner.
> This will also help avoiding cases where config has eDP MSO, with which
> we do not support joiner.
> 
> v2: Check for intel_dp_has_joiner and avoid creating debugfs if not
> supported. (Ville)
> v3: Remove HAS_BIGJOINER check. (Ville)
> v4: Reverse checks for connector type and intel_dp_has_joiner(). (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 890ef7067b77..08adeaa2e87f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1328,6 +1328,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct dentry *root = connector->base.debugfs_entry;
>  	int connector_type = connector->base.connector_type;
> +	struct intel_dp *intel_dp = intel_attached_dp(connector);

I'd probably drop the local variable entirely since it
can give us garbage for non-dp stuff.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  
>  	/* The connector must have been registered beforehands. */
>  	if (!root)
> @@ -1362,9 +1363,9 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  				    connector, &i915_dsc_fractional_bpp_fops);
>  	}
>  
> -	if (HAS_BIGJOINER(i915) &&
> -	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> -	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
> +	if ((connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> +	     connector_type == DRM_MODE_CONNECTOR_eDP) &&
> +	    intel_dp_has_joiner(intel_dp)) {
>  		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
>  				    &connector->force_bigjoiner_enable);
>  	}
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
