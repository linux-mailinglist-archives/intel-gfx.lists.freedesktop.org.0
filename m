Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6248A465142
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:17:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6D256ECBE;
	Wed,  1 Dec 2021 15:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 250E46ECBE
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:16:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="260454763"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="260454763"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:16:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="596353621"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 01 Dec 2021 07:16:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:16:52 +0200
Date: Wed, 1 Dec 2021 17:16:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YaeR5LKWQD8grC+L@intel.com>
References: <cover.1638366969.git.jani.nikula@intel.com>
 <ed6c43455d13c90ebfed442b196625af5e6ede88.1638366969.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ed6c43455d13c90ebfed442b196625af5e6ede88.1638366969.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 09/10] drm/i915/display: convert
 dp_to_i915() to a macro
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 01, 2021 at 03:57:11PM +0200, Jani Nikula wrote:
> Avoid looking into the guts of struct drm_i915_private in
> headers. Again, converting an inline function to a macro is less than
> ideal, but avoids having to pull in i915_drv.h just for the to_i915()
> part.

Ugly, but gets the job done.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 14b4c3bb6030..f6e76b4d377d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1883,11 +1883,7 @@ dp_to_lspcon(struct intel_dp *intel_dp)
>  	return &dp_to_dig_port(intel_dp)->lspcon;
>  }
>  
> -static inline struct drm_i915_private *
> -dp_to_i915(struct intel_dp *intel_dp)
> -{
> -	return to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
> -}
> +#define dp_to_i915(__intel_dp) to_i915(dp_to_dig_port(__intel_dp)->base.base.dev)
>  
>  #define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
>  			   (intel_dp)->psr.source_support)
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
