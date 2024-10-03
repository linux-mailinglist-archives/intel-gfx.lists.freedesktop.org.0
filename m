Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EB398ED47
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 12:46:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B327D10E7E7;
	Thu,  3 Oct 2024 10:46:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AleQnFOe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E379210E7E7
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2024 10:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727952402; x=1759488402;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=YDxGjzbKeZaYh5pum30NTeoURbvGhWmxW8Lq6HPBS7A=;
 b=AleQnFOeywCElaP/wXx9oFIt99vEcJ8u7a0EW3nB5UzQZBJGOyG2R+3h
 /Xa8QsDAg9D7cpg6NtyloPz2X62vVCJAMMwUQIThE6caOoPtIF2dc6kiw
 +lqs05gbzW0xnFAoiz5J62uJP/F97EFuV1C53j+5ZR6MoWC2J4lqwgDNv
 sZnJg9/RBHIupfN5grgYO6hTXbM40un/+hiXhyKcJo3a2nHtDIwoImgS7
 szllW6vg6K1g6CxmNEExlkyu9N4rNMIdk0AxpBW04Vlr8PjvYGuCgZqfl
 vLi9fYIFWl8vBErZXaINC5EfUbNwMryoManr5H8jvnKLr0qqFMkBSaYPe A==;
X-CSE-ConnectionGUID: e5lAeVDlTlaopSM3jTEjCQ==
X-CSE-MsgGUID: ZEhBeX7LQLeonj0KMHCayg==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="30933346"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="30933346"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:46:42 -0700
X-CSE-ConnectionGUID: gjBretEkTJGYmExgcSRf+g==
X-CSE-MsgGUID: hid3vesxSUS6Asgio8RHmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="74324477"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.186])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:46:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, ville.syrjala@intel.com, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>
Subject: Re: [PATCH] drm/i915/icl: Update csc and gamma enable checks
In-Reply-To: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
Date: Thu, 03 Oct 2024 13:46:35 +0300
Message-ID: <87ttdtsbuc.fsf@intel.com>
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

On Thu, 03 Oct 2024, Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com> wrote:
> With ICL, we have a way to check if gamma and csc are enabled on
> a pipe using bits in GAMMA_MODE and CSC_MODE. So, use them as well
> along with the existing BOTTOM_COLOR checks.

Why?

That's the most important question any commit message must answer.

The state checker is supposed to check that the hardware state matches
the software state exactly. AFAICT this change makes the write and read
asymmetric.

.gamma_mode and .csc_mode are already checked verbatim. What benefit
does this change bring?

BR,
Jani.


>
> BSpec: 7463, 7466
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 24 ++++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 50f41aeb3c28..1bf36898dc7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1076,6 +1076,26 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
>  		crtc_state->csc_enable = true;
>  }
>  
> +static void icl_get_config(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	u32 bottom_color;
> +
> +	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
> +	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
> +
> +	bottom_color = intel_de_read(i915, SKL_BOTTOM_COLOR(crtc->pipe));
> +
> +	if ((bottom_color & SKL_BOTTOM_COLOR_GAMMA_ENABLE) ||
> +	    (crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE))
> +		crtc_state->gamma_enable = true;
> +
> +	if ((bottom_color & SKL_BOTTOM_COLOR_CSC_ENABLE) ||
> +	    (crtc_state->csc_mode & ICL_CSC_ENABLE))
> +		crtc_state->csc_enable = true;
> +}
> +
>  static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -3811,7 +3831,7 @@ static const struct intel_color_funcs tgl_color_funcs = {
>  	.read_luts = icl_read_luts,
>  	.lut_equal = icl_lut_equal,
>  	.read_csc = icl_read_csc,
> -	.get_config = skl_get_config,
> +	.get_config = icl_get_config,
>  };
>  
>  static const struct intel_color_funcs icl_color_funcs = {
> @@ -3823,7 +3843,7 @@ static const struct intel_color_funcs icl_color_funcs = {
>  	.read_luts = icl_read_luts,
>  	.lut_equal = icl_lut_equal,
>  	.read_csc = icl_read_csc,
> -	.get_config = skl_get_config,
> +	.get_config = icl_get_config,
>  };
>  
>  static const struct intel_color_funcs glk_color_funcs = {

-- 
Jani Nikula, Intel
