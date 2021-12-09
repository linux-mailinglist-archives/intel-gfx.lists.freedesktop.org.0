Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 494E146F26D
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:46:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D538289C1A;
	Thu,  9 Dec 2021 17:46:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E108589C1A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 17:46:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="218189471"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="218189471"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 09:46:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="463335690"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 09 Dec 2021 09:46:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Dec 2021 19:46:32 +0200
Date: Thu, 9 Dec 2021 19:46:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YbJA+NyOdTHuxBZV@intel.com>
References: <cover.1639068649.git.jani.nikula@intel.com>
 <f7e7e7fb91eae2b49a0ab5d982a235cec34e3320.1639068649.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f7e7e7fb91eae2b49a0ab5d982a235cec34e3320.1639068649.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/cdclk: hide struct
 intel_cdclk_vals
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

On Thu, Dec 09, 2021 at 06:51:24PM +0200, Jani Nikula wrote:
> The definition is not needed outside of intel_cdclk.c.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 8 ++++++++
>  drivers/gpu/drm/i915/display/intel_cdclk.h | 8 --------
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 84674a4f7226..56f40d9430b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1219,6 +1219,14 @@ static bool has_cdclk_squasher(struct drm_i915_private *i915)
>  	return IS_DG2(i915);
>  }
>  
> +struct intel_cdclk_vals {
> +	u32 cdclk;
> +	u16 refclk;
> +	u16 waveform;
> +	u8 divider;	/* CD2X divider * 2 */
> +	u8 ratio;
> +};
> +
>  static const struct intel_cdclk_vals bxt_cdclk_table[] = {
>  	{ .refclk = 19200, .cdclk = 144000, .divider = 8, .ratio = 60 },
>  	{ .refclk = 19200, .cdclk = 288000, .divider = 4, .ratio = 60 },
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index 77e8c8e1708f..50b93226517e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -16,14 +16,6 @@ struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_crtc_state;
>  
> -struct intel_cdclk_vals {
> -	u32 cdclk;
> -	u16 refclk;
> -	u16 waveform;
> -	u8 divider;	/* CD2X divider * 2 */
> -	u8 ratio;
> -};
> -
>  struct intel_cdclk_state {
>  	struct intel_global_state base;
>  
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
