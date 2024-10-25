Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EAD9AF9DD
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 08:21:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29E1410E9FA;
	Fri, 25 Oct 2024 06:21:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T6uH4wY+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D5E010E9FA;
 Fri, 25 Oct 2024 06:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729837272; x=1761373272;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zPZu5cmTrGEO1O1bwd2kkn0rQiQ2g7OXK2lJ1jXm2tU=;
 b=T6uH4wY+cCcGOu8jT295MrOKU/hEtotVvqdNTDXq7dErDImsmuXUVHEy
 jexkWtKBBmhg/yV9lcbnjsqCEka0PfOmQOj1HUD5dPZ73q34tqTnV6h8l
 W7TIf1c+lcNEnBs8dzXO2r9PQQ8LWvJ0Ot4BhbPE6kNjKTXyIU3/GtGMY
 wniAgoQzs1dCfkOA2PtkAfufF+aniG52Si8sdtIPsuN8edDa5ey/No20X
 5AmTyjg5kNkyAXlImie/HW5snqhDHWK/YO482AcxY/h3JbITO74ogSLft
 IWrUJ2zPOkTcPUiWzybcftf49ffGxGipBWMkjkrrh6OmMsaWR/qsCCJ8W w==;
X-CSE-ConnectionGUID: yxRXmJZfTz2ppNmcnf9tSg==
X-CSE-MsgGUID: ZX6BWyZUSamg0LQC7QAbMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29437037"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29437037"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 23:21:12 -0700
X-CSE-ConnectionGUID: frgMnMwzSTO+6CLg9CwYBw==
X-CSE-MsgGUID: jFOhc0sPTMe3Sejrn7YgZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80925568"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Oct 2024 23:21:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Oct 2024 09:21:07 +0300
Date: Fri, 25 Oct 2024 09:21:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com
Subject: Re: [PATCH 1/5] drm/i915/display: Fix the plane max height and width
 limits
Message-ID: <Zxs40xP4Bo33fqe8@intel.com>
References: <20241025060136.9884-1-suraj.kandpal@intel.com>
 <20241025060136.9884-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241025060136.9884-2-suraj.kandpal@intel.com>
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

On Fri, Oct 25, 2024 at 11:31:32AM +0530, Suraj Kandpal wrote:
> Fix the plane max height and width limits taking into account the
> joined pipe limits too.
> 
> Bspec: 28692, 49199, 68858
> Fixes: 63dc014e37b9 ("drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 19 ++++++++++++++++---
>  1 file changed, 16 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ef1436146325..fc578af4f394 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8450,9 +8450,22 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>  	 * plane so let's not advertize modes that are
>  	 * too big for that.
>  	 */
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> -		plane_width_max = 5120 * num_joined_pipes;
> -		plane_height_max = 4320;
> +	if (DISPLAY_VER(dev_priv) >= 20) {
> +		if (num_joined_pipes > 1) {
> +			plane_width_max = 8192;
> +			plane_height_max = 4800;
> +		} else {
> +			plane_width_max = 5120;
> +			plane_height_max = 4096;

The joiner operates on horizontal lines. Why would the
vertical resolution change here?

And this is breaking ultrajoiner now.

Frankly I have a hard time believing that there are any extra
limits on plane size imposed by the hardware for joined pipes.
If there is some kind of maximum width limit then it must be
coming from the joiner itself (eg. max line buffer width) and
not from the planes. So I think this is the wrong place to
handle that.

> +		}
> +	} else if (DISPLAY_VER(dev_priv) >= 11) {
> +		if (num_joined_pipes > 1) {
> +			plane_width_max = 7680;
> +			plane_height_max = 4320;
> +		} else {
> +			plane_width_max = 5120;
> +			plane_height_max = 4096;
> +		}
>  	} else {
>  		plane_width_max = 5120;
>  		plane_height_max = 4096;
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
