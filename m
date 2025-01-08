Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21973A062E4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 18:03:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C03E910E90A;
	Wed,  8 Jan 2025 17:03:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lU2nvy1J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FF4B10E90A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 17:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736355781; x=1767891781;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=92Lth/2K2//hAoUv/rBsmtDeQCxCohX2PAJxyjJkfhk=;
 b=lU2nvy1JcRAhzu4kkp8YTDiNskLDiI3wWWjyGsnT6WyYXI9DIdgDymz4
 uwNSLEETSlp63JP8PASrL9SXaNwzFTKuqVNp9L51EEnQZUVAl0ErtU11W
 2h1GNvoRK6G2o+O0yIQl8athrydGLfhI/s8UFcVokuyKNvxCH25llHynh
 7m51oT7dBQ6S3jfdCLh0RnVOTDJ++uK/jOOu64RNlvSQn1b2lccZgmpEn
 KO+HXVvpVZkadw47JmOrrpzCLOENbXAvjYt3yfbeWnFAxFzKlLEKL5hTh
 +ZB6PLfuPa7nnp8eCwxi5EsBxoRL2J+btqiwCG56PGcKWyJcES4oULCFL Q==;
X-CSE-ConnectionGUID: kwpmkz1gS5GL54IEU0WyHw==
X-CSE-MsgGUID: Uk544eYSTCqUAh6cpVdDrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="40359585"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="40359585"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 09:03:01 -0800
X-CSE-ConnectionGUID: YE982MFIT6uGfApi/AjDDA==
X-CSE-MsgGUID: QgYRISbzTv2IZWalW1biDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107757551"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 09:03:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 5/5] drm/i915/dp_mst: Use
 intel_display::platform.alderlake_p instead of IS_ALDERLAKE_P()
In-Reply-To: <20250108151916.491113-6-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250108151916.491113-1-imre.deak@intel.com>
 <20250108151916.491113-6-imre.deak@intel.com>
Date: Wed, 08 Jan 2025 19:02:57 +0200
Message-ID: <8734htkzlq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 08 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> Use the driver's standard intel_display::platform.alderlake_p instead of
> IS_ALDERLAKE_P().
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index fbc504037a969..e422e4ee9d280 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1219,11 +1219,10 @@ static void mst_stream_pre_enable(struct intel_atomic_state *state,
>  static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> -	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>  	u32 clear = 0;
>  	u32 set = 0;
>  
> -	if (!IS_ALDERLAKE_P(i915))
> +	if (!display->platform.alderlake_p)
>  		return;
>  
>  	if (!IS_DISPLAY_STEP(display, STEP_D0, STEP_FOREVER))

-- 
Jani Nikula, Intel
