Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6785C868B3D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 09:51:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE90910E8AF;
	Tue, 27 Feb 2024 08:51:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M3cP9gDq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 443EC10E8AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 08:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709023866; x=1740559866;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=FO/SmpRQmQy5e2yNHyHkNQIa0EsD6Vu009z5laXfpYg=;
 b=M3cP9gDqD81i2zE4agD77/K5IrCMujNuelVYvQ8uggTAr75UFLq9oICr
 fsz7pJJbghkjf6ix2lLVtDfZoP3xbpVHaQCDiv+hZLceozLRLI399N6ph
 nbQW2eSn/C7BidRLL+ANDcTTPYt6cRewkPQqD9FLZCZYZtXwJ9+QxeVB8
 AnCI+ZQ5Qkn3Yhlrl1E4VKg6ZLtwscQspULoitEnK/mTZSsEO7dRV3drZ
 e7tLIz6c+342h9NBWkF5MakLnw0nF1p4LiiGxJ6OCsPfmNkHAs4UbzeCE
 dO5jXYtfaFcSpIhP4LCARGwCGjKAifdknC+bA9EYPdTFv6uwwRZKdV9BS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="6301399"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6301399"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 00:51:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="37997231"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.187])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 00:51:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>
Subject: Re: [PATCH] drm/i915: Reuse rplu cdclk fns for mtl/lnl
In-Reply-To: <20240226213018.592290-1-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240226213018.592290-1-radhakrishna.sripada@intel.com>
Date: Tue, 27 Feb 2024 10:50:59 +0200
Message-ID: <874jdul28c.fsf@intel.com>
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


Subject: drm/i915/cdclk: Re-use RPL-U functions for MTL+

On Mon, 26 Feb 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> MTL/LNL use the same cdclk functions as rplu albeit with different
> tables. Having separate tables not explicit special handling for the
> platforms reuse rplu cdclk functions.

I'm unable to parse the last sentence.

s/rplu/RPL-U/g

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index ed89b86ea625..6d2d32f7890d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3534,13 +3534,6 @@ void intel_cdclk_debugfs_register(struct drm_i915_private *i915)
>  			    i915, &i915_cdclk_info_fops);
>  }
>  
> -static const struct intel_cdclk_funcs mtl_cdclk_funcs = {
> -	.get_cdclk = bxt_get_cdclk,
> -	.set_cdclk = bxt_set_cdclk,
> -	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
> -	.calc_voltage_level = rplu_calc_voltage_level,
> -};
> -
>  static const struct intel_cdclk_funcs rplu_cdclk_funcs = {
>  	.get_cdclk = bxt_get_cdclk,
>  	.set_cdclk = bxt_set_cdclk,
> @@ -3684,10 +3677,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
>  void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  {
>  	if (DISPLAY_VER(dev_priv) >= 20) {
> -		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
>  		dev_priv->display.cdclk.table = lnl_cdclk_table;
>  	} else if (DISPLAY_VER(dev_priv) >= 14) {
> -		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
>  		dev_priv->display.cdclk.table = mtl_cdclk_table;
>  	} else if (IS_DG2(dev_priv)) {
>  		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;

-- 
Jani Nikula, Intel
