Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AC786C90E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 13:21:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7969610E364;
	Thu, 29 Feb 2024 12:21:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m02BocVD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32D110E4BD
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 12:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709209263; x=1740745263;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pXz+sHF6YVtRR2Lqu+H45xyALKEPjW6aiXYaQ4w9x4U=;
 b=m02BocVDWuC/87l6cAMX04WZrwGveV43AdA0EcteIwx5KrH1UdGDMnm5
 xB3Kkbv8ZE7p1v7QklKfs2ebKlX/FMrOjgYgAMlu4kNDxomjcdyhz8SO/
 DZYYpwp8VRHTDKBYflAyPPmz3RkXV4MjA8ylhfjXQoziPpPEV8VGcEFDS
 fe2YDGQZTRX9O+FKztQ334YKfHF26RorIM+MeRw42q47c/uB3kwtrdoAt
 +qY0lw5R+UNo+qE1wcc1bXs1gY5OWwWDC43aRe9rxkIGrjoHiPmviFhwi
 mqohHAd7wR7ZfkCT9PbR6Hq5a5h0204Jn6Fdc0EO1H9XyC4Amt4Zta52M g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="4254753"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="4254753"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 04:21:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="827771466"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="827771466"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 29 Feb 2024 04:20:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Feb 2024 14:20:58 +0200
Date: Thu, 29 Feb 2024 14:20:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 3/3] drm/i915/bios: abstract child device expected size
Message-ID: <ZeB2quRtvZ-eQTWN@intel.com>
References: <20240226175854.287871-1-jani.nikula@intel.com>
 <20240226175854.287871-3-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240226175854.287871-3-jani.nikula@intel.com>
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

On Mon, Feb 26, 2024 at 07:58:54PM +0200, Jani Nikula wrote:
> Add a function to return the expected child device size. Flip the if
> ladder around and use the same versions as in documentation to make it
> easier to verify. Return an error for unknown versions. No functional
> changes.
> 
> v2: Move BUILD_BUG_ON() next to the expected sizes
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 40 ++++++++++++++---------
>  1 file changed, 24 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index c0f41bd1f946..343726de9aa7 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2699,27 +2699,35 @@ static void parse_ddi_ports(struct drm_i915_private *i915)
>  		print_ddi_port(devdata);
>  }
>  
> +static int child_device_expected_size(u16 version)
> +{
> +	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);

Should we make that !=40 perhaps?

Anyways, series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
> +	if (version > 256)
> +		return -ENOENT;
> +	else if (version >= 256)
> +		return 40;
> +	else if (version >= 216)
> +		return 39;
> +	else if (version >= 196)
> +		return 38;
> +	else if (version >= 195)
> +		return 37;
> +	else if (version >= 111)
> +		return LEGACY_CHILD_DEVICE_CONFIG_SIZE;
> +	else if (version >= 106)
> +		return 27;
> +	else
> +		return 22;
> +}
> +
>  static bool child_device_size_valid(struct drm_i915_private *i915, int size)
>  {
>  	int expected_size;
>  
> -	if (i915->display.vbt.version < 106) {
> -		expected_size = 22;
> -	} else if (i915->display.vbt.version < 111) {
> -		expected_size = 27;
> -	} else if (i915->display.vbt.version < 195) {
> -		expected_size = LEGACY_CHILD_DEVICE_CONFIG_SIZE;
> -	} else if (i915->display.vbt.version == 195) {
> -		expected_size = 37;
> -	} else if (i915->display.vbt.version <= 215) {
> -		expected_size = 38;
> -	} else if (i915->display.vbt.version <= 255) {
> -		expected_size = 39;
> -	} else if (i915->display.vbt.version <= 256) {
> -		expected_size = 40;
> -	} else {
> +	expected_size = child_device_expected_size(i915->display.vbt.version);
> +	if (expected_size < 0) {
>  		expected_size = sizeof(struct child_device_config);
> -		BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>  		drm_dbg(&i915->drm,
>  			"Expected child device config size for VBT version %u not known; assuming %d\n",
>  			i915->display.vbt.version, expected_size);
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
