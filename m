Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC2442CAD7
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 22:18:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E586EAD4;
	Wed, 13 Oct 2021 20:18:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F61C6EAD4
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 20:18:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="227482306"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="227482306"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 13:18:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="441783007"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 13 Oct 2021 13:18:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Oct 2021 23:18:27 +0300
Date: Wed, 13 Oct 2021 23:18:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YWc/Eyut1LsW5NBO@intel.com>
References: <20211007203517.3364336-1-imre.deak@intel.com>
 <20211007203517.3364336-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211007203517.3364336-4-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915: Add tiling attribute to the
 modifier descriptor
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

On Thu, Oct 07, 2021 at 11:35:09PM +0300, Imre Deak wrote:
> Add a tiling atttribute to the modifier descriptor, which let's us
> get the tiling without listing the modifiers twice.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 20 ++++++++------------
>  1 file changed, 8 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 2543232580885..ef3cd375c9942 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -115,6 +115,7 @@ const struct intel_modifier_desc {
>  	u64 display_versions;
>  	const struct drm_format_info *formats;
>  	int format_count;
> +	u8 tiling;
>  
>  	struct {
>  #define INTEL_CCS_RC		BIT(0)
> @@ -132,10 +133,12 @@ const struct intel_modifier_desc {
>  	{
>  		.id = I915_FORMAT_MOD_X_TILED,
>  		.display_versions = DISPLAY_VER_MASK_ALL,
> +		.tiling = I915_TILING_X,
>  	},
>  	{
>  		.id = I915_FORMAT_MOD_Y_TILED,
>  		.display_versions = DISPLAY_VER_MASK(9, 13),
> +		.tiling = I915_TILING_Y,
>  	},
>  	{
>  		.id = I915_FORMAT_MOD_Yf_TILED,
> @@ -144,6 +147,7 @@ const struct intel_modifier_desc {
>  	{
>  		.id = I915_FORMAT_MOD_Y_TILED_CCS,
>  		.display_versions = DISPLAY_VER_MASK(9, 11),
> +		.tiling = I915_TILING_Y,
>  
>  		.ccs.type = INTEL_CCS_RC,
>  
> @@ -160,6 +164,7 @@ const struct intel_modifier_desc {
>  	{
>  		.id = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
>  		.display_versions = DISPLAY_VER_MASK(12, 13),
> +		.tiling = I915_TILING_Y,
>  
>  		.ccs.type = INTEL_CCS_RC,
>  
> @@ -168,6 +173,7 @@ const struct intel_modifier_desc {
>  	{
>  		.id = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
>  		.display_versions = DISPLAY_VER_MASK(12, 13),
> +		.tiling = I915_TILING_Y,
>  
>  		.ccs.type = INTEL_CCS_RC_CC,
>  
> @@ -176,6 +182,7 @@ const struct intel_modifier_desc {
>  	{
>  		.id = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
>  		.display_versions = DISPLAY_VER_MASK(12, 13),
> +		.tiling = I915_TILING_Y,
>  
>  		.ccs.type = INTEL_CCS_MC,
>  
> @@ -556,18 +563,7 @@ intel_fb_align_height(const struct drm_framebuffer *fb,
>  
>  static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
>  {
> -	switch (fb_modifier) {
> -	case I915_FORMAT_MOD_X_TILED:
> -		return I915_TILING_X;
> -	case I915_FORMAT_MOD_Y_TILED:
> -	case I915_FORMAT_MOD_Y_TILED_CCS:
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> -		return I915_TILING_Y;
> -	default:
> -		return I915_TILING_NONE;

Had to double check that I915_TILING_NONE is really 0. It is.

> -	}
> +	return lookup_modifier(fb_modifier)->tiling;
>  }
>  
>  unsigned int intel_cursor_alignment(const struct drm_i915_private *i915)
> -- 
> 2.27.0

-- 
Ville Syrjälä
Intel
