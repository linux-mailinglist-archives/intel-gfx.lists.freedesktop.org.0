Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C527633AEB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 12:13:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2578E10E3C9;
	Tue, 22 Nov 2022 11:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34BDA10E3C9
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 11:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669115618; x=1700651618;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1zDMVEPV164mo+DWUJhnS1t7fFX6jEXvhU2f7lazCZw=;
 b=lOTF1Z57dJU6Z4ICzfRcEiId0noAGTT18MIIobabv3rufm3m/bopHVfI
 2RJs42bt/v0wq0nzRU2DY2xIl/5vxDYwLEdTHTAsvwOxfuXYkaGhBQwKF
 rvbuRsHJyZTmQuO0r9hDheJ2q1PYjZjMHKLLBTMw6ECTvFB2R0ti5t/hr
 mfR8u3foDYzq33zIsG6Uo80LfbGQ2abJ1AyrpKeDyma3/2/WnSVmGhZk/
 LjluVkieB3QKg/VhkaCm7RSM7rEguF2IkbyYnPn19E2ku7LalnHpDJTsa
 FqriTx5s8h8tmPk8uaWdAyLpV5i8sek9NVOBPchTkxnMs16dFMm9bCuXc Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="294181791"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="294181791"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 03:13:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="816067831"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="816067831"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga005.jf.intel.com with SMTP; 22 Nov 2022 03:13:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Nov 2022 13:13:34 +0200
Date: Tue, 22 Nov 2022 13:13:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Message-ID: <Y3yu3lbs6mnzgXv7@intel.com>
References: <20221121091855.3562288-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221121091855.3562288-1-arun.r.murthy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: Disable FBC when VT-d is
 enabled for Gen9
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

On Mon, Nov 21, 2022 at 02:48:55PM +0530, Arun R Murthy wrote:
> The WaFbcTurnOffFbcWhenHyperVisorIsUsed is applicable for all GEN9
> platforms as per BspecID: 0852

No. It says it was broken on kbl/cnl A-step.

> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index b5ee5ea0d010..efd5659b3b60 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1652,9 +1652,9 @@ static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
>  
>  static bool need_fbc_vtd_wa(struct drm_i915_private *i915)
>  {
> -	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
> +	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt,cnl,kbl */
>  	if (i915_vtd_active(i915) &&
> -	    (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
> +	    (DISPLAY_VER(i915) == 9) || DISPLAY_VER(i915) == 10) {
>  		drm_info(&i915->drm,
>  			 "Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
>  		return true;
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
