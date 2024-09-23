Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B3797ED82
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 16:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05B0110E40A;
	Mon, 23 Sep 2024 14:58:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fBBhOOpC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4141310E40A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 14:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727103484; x=1758639484;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=37xgOCVevp/AGmVemNcE7ym2Qf2PktyI5cNUyIWlCB4=;
 b=fBBhOOpCD+dueuOjeif7v0x/TMcjruoZUM3EdNHyMgJrgHbLIyNNPEMu
 6qW9h/90CXtJa8gI75ZMIxEJhpBmDS0ao4/TCQmzpmJEU8nL4PBhC6Bq1
 XO0G8Ljvkn2q5tOFvh6SQ4j+JihL5GEVsbC4RD2E0/8AgAmOu9ee0Fncc
 SWHLg8DlJPkzK+TKydVVnRhpCEWjtEXPtrLN0WJMYLUuh0lhn4rok1rGQ
 V5J6XAyIQ5MyTXd/wnVuTVucU2GTVuwPJi5tZ5lYtYxkxICuVRPGPVlzc
 XrspoqMVFHnfqo91yho4siQ+JgOjZ2bX5MkdxfK4WcAupLR6aiLk4pEt0 Q==;
X-CSE-ConnectionGUID: XXseR6cPTNKti9oZ90fgfw==
X-CSE-MsgGUID: eO6NtzB8RMKfD6rbNG/AcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26245539"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="26245539"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 07:58:04 -0700
X-CSE-ConnectionGUID: HEgJkqzwQFm70HnA+v6ivg==
X-CSE-MsgGUID: eUTF0SxMQbiAsb/HJbYfmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71132282"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 07:58:03 -0700
Date: Mon, 23 Sep 2024 17:58:28 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/7] drm/i915: Set clear color block size to 0x0
Message-ID: <ZvGCFOXpK7GelTCr@ideak-desk.fi.intel.com>
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918144445.5716-2-ville.syrjala@linux.intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 18, 2024 at 05:44:39PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We don't use the block size information for the clear color
> plane. Technically the entire fb is the single block for the
> single 64B clear color surface, so there is just no way to
> delcare that as a constant since the fb size can be anything.
> 
> Define the clear color block size as 0x0 to make things less
> confusing. We already declared that cpp/chars_per_block=0 for
> the clear color as well. That also causes the drm core code
> to mostly ignore the clear color plane, which is exactly
> what we want since that code doesn't know how to deal with
> the clear color plane.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Yes, not sure what the 2x1 dimension would mean for a fixed size data
item and didn't think of this when gen12_flat_ccs_cc_formats was added
(which in turn was copied from gen12_flat_ccs_cc_formats). Looks ok to
change W/H to 0:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index d2ff21e98545..bcf0d016f499 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -102,31 +102,31 @@ static const struct drm_format_info gen12_ccs_formats[] = {
>   */
>  static const struct drm_format_info gen12_ccs_cc_formats[] = {
>  	{ .format = DRM_FORMAT_XRGB8888, .depth = 24, .num_planes = 3,
> -	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
>  	  .hsub = 1, .vsub = 1, },
>  	{ .format = DRM_FORMAT_XBGR8888, .depth = 24, .num_planes = 3,
> -	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
>  	  .hsub = 1, .vsub = 1, },
>  	{ .format = DRM_FORMAT_ARGB8888, .depth = 32, .num_planes = 3,
> -	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
>  	  .hsub = 1, .vsub = 1, .has_alpha = true },
>  	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 3,
> -	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
>  	  .hsub = 1, .vsub = 1, .has_alpha = true },
>  };
>  
>  static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
>  	{ .format = DRM_FORMAT_XRGB8888, .depth = 24, .num_planes = 2,
> -	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
>  	  .hsub = 1, .vsub = 1, },
>  	{ .format = DRM_FORMAT_XBGR8888, .depth = 24, .num_planes = 2,
> -	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
>  	  .hsub = 1, .vsub = 1, },
>  	{ .format = DRM_FORMAT_ARGB8888, .depth = 32, .num_planes = 2,
> -	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
>  	  .hsub = 1, .vsub = 1, .has_alpha = true },
>  	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
> -	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
>  	  .hsub = 1, .vsub = 1, .has_alpha = true },
>  };
>  
> -- 
> 2.44.2
> 
