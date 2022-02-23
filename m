Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 974C94C1016
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 11:17:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95B9610EDDB;
	Wed, 23 Feb 2022 10:17:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33FDE10EDDB
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 10:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645611459; x=1677147459;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/mzXwETgIawpZppJ/f2/dUII/pO2GscqWIw1g+kcpqA=;
 b=jefJFzXbJESUADqxjlXHxYZfnpBVxcGvNADmd9UziXbKKza7xg0LwWAc
 ZQ5mJEtWo4mE1nR+PGK85meOWW/SYMJ49T3mvTlka+r854Er4HFMql8Vt
 ZdujrN2Y6eBbVd/3qs0cP/zEf4x4IgMQbgIo7sL2qAPQ/aYInPLpxiuJE
 1wMZzVnF9p5kpq6pU8ZPx7VOdFRqhooBPmXyaSMY8Xo6Vj5hlOoOZYXdw
 eR24C6swFKqsmO+EIF0k9GJWslXao3isDqlfxlWOI1LKvgsbQ8Rd4R9Gu
 rKIQvn3zBoJ4QPlLwitQHBOSy5nxkdOeZKe83giVtYfFZqeUA+icby+lz g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="239320260"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="239320260"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 02:17:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="573765081"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 23 Feb 2022 02:17:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 12:17:33 +0200
Date: Wed, 23 Feb 2022 12:17:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YhYJvZ/Qb/uvGln5@intel.com>
References: <20220223101023.626698-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220223101023.626698-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/wm: use REG_FIELD_PREP for
 PLANE_WM_BLOCKS_MASK
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

On Wed, Feb 23, 2022 at 12:10:23PM +0200, Jani Nikula wrote:
> Use REG_FIELD_PREP for completeness, and to avoid bitwise operations
> with different sizes.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 5af16ca4dabd..3411ebaa767f 100644
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
>  	intel_de_write_fw(dev_priv, reg, val);a

skl_wm_level_from_reg_val() could use similar treatment for symmetry.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
