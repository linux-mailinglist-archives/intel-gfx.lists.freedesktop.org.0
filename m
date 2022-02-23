Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C04864C1073
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 11:40:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DD5510E400;
	Wed, 23 Feb 2022 10:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37A2410E3D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 10:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645612823; x=1677148823;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HlovV/Dk9KZ4U+ic4RE9ygMe7y6eqe2ZvKuutlm06P4=;
 b=gCYIqJLZytFdZ/zZ/Pya4KYPnFjg4hYsa/8OACcv12cCL5EFnMzvKQmu
 Zn13VYDf27VZtuQ4T7Q8X5GDLER73jYWY/yeYugmH6SJ0KohlmiIBPopz
 Xs1gI+L/nHiM5oprS+uaKc9zV5cN37QPkNbv6TAs4qZMHkuSgFXz3axip
 un9Nc78x2oRb/rY7TygQXPKF4UQ2EwxLzI0VPeF0jn8TRgEUTNyIvd32e
 UF923nyr6idILRrLFGznKUYY6dCySFL57k7v0rnZMPEz4g5Dj5l1CEFet
 DkzRVajTwxU0Yu4SNVLtEhWgHqXKKvoBOvxz7NTAyqY7pI7qqZu+cmDAq Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="239325096"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="239325096"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 02:40:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="505866556"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 23 Feb 2022 02:40:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 12:40:19 +0200
Date: Wed, 23 Feb 2022 12:40:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YhYPE+sYRBeGiAab@intel.com>
References: <20220223101023.626698-1-jani.nikula@intel.com>
 <20220223103517.634229-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220223103517.634229-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/wm: use REG_FIELD_{PREP,
 GET} for PLANE_WM_BLOCKS_MASK
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

On Wed, Feb 23, 2022 at 12:35:17PM +0200, Jani Nikula wrote:
> Use REG_FIELD_{PREP,GET} for completeness, and to avoid bitwise
> operations with different sizes.
> 
> v2: Also use REG_FIELD_GET in skl_wm_level_from_reg_val() (Ville)
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 5af16ca4dabd..f7fabcabf805 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5930,7 +5930,7 @@ static void skl_write_wm_level(struct drm_i915_private *dev_priv,
>  		val |= PLANE_WM_EN;
>  	if (level->ignore_lines)
>  		val |= PLANE_WM_IGNORE_LINES;
> -	val |= level->blocks;
> +	val |= REG_FIELD_PREP(PLANE_WM_BLOCKS_MASK, level->blocks);
>  	val |= REG_FIELD_PREP(PLANE_WM_LINES_MASK, level->lines);
>  
>  	intel_de_write_fw(dev_priv, reg, val);
> @@ -6578,7 +6578,7 @@ static void skl_wm_level_from_reg_val(u32 val, struct skl_wm_level *level)
>  {
>  	level->enable = val & PLANE_WM_EN;
>  	level->ignore_lines = val & PLANE_WM_IGNORE_LINES;
> -	level->blocks = val & PLANE_WM_BLOCKS_MASK;
> +	level->blocks = REG_FIELD_GET(PLANE_WM_BLOCKS_MASK, val);
>  	level->lines = REG_FIELD_GET(PLANE_WM_LINES_MASK, val);
>  }
>  
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
