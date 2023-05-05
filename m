Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C01F6F8113
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 12:54:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C2DB10E5BD;
	Fri,  5 May 2023 10:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBFE210E5BD
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 10:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683284058; x=1714820058;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pWxkuGF0MXhkwQfdlwGjaaJUYIC824VjZxqHC3Qlc4A=;
 b=Luh2DMmdImMLhkeuB7Ys8nPOfOctbctEdMg7LLimTHWjYxTV8sZ1JlK1
 83tP5kH1BtPBub4xN04MRCXr1V8ZqUWsMGf29q2Iknl5v/+utJ4wEOvmW
 OoqhrHKnf34QYUJwqFOa7vljxFvBT8RJMadrt4YrEB6G38pVgfxVuJsF8
 oeSw/u03OwtBgPRHRee75XfKy6B15Ch90I1aN88BVMYABuiZpPFjEIbeB
 G2f2uiFrL+R4ZqYOiW80IQEamEwTovYb/ucp7xu2Yyw5/Y3OBsDjXxu5D
 WcTYiJ6bSKqZBOiGnuLNaLcW7FP2bnZFCubHkTyGB6HokDViosl47poHE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="351320557"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="351320557"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 03:54:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="841684822"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="841684822"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 05 May 2023 03:54:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 May 2023 13:54:14 +0300
Date: Fri, 5 May 2023 13:54:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <ZFTgVqioUZnEbfyV@intel.com>
References: <20230505082212.27089-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230505082212.27089-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix NULL ptr deref by checking
 new_crtc_state
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

On Fri, May 05, 2023 at 11:22:12AM +0300, Stanislav Lisovskiy wrote:
> intel_atomic_get_new_crtc_state can return NULL, unless crtc state wasn't
> obtained previously with intel_atomic_get_crtc_state, so we must check it
> for NULLness here, just as in many other places, where we can't guarantee
> that intel_atomic_get_crtc_state was called.
> We are currently getting NULL ptr deref because of that, so this fix was
> confirmed to help.
> 
> Fixes: 74a75dc90869 ("drm/i915/display: move plane prepare/cleanup to intel_atomic_plane.c")
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 9f670dcfe76e..4125ee07a271 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -1029,7 +1029,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>  	int ret;
>  
>  	if (old_obj) {
> -		const struct intel_crtc_state *crtc_state =
> +		const struct intel_crtc_state *new_crtc_state =
>  			intel_atomic_get_new_crtc_state(state,
>  							to_intel_crtc(old_plane_state->hw.crtc));
>  
> @@ -1044,7 +1044,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>  		 * This should only fail upon a hung GPU, in which case we
>  		 * can safely continue.
>  		 */
> -		if (intel_crtc_needs_modeset(crtc_state)) {
> +		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {

NAK. We need to fix the bug instead of paparing over it.

>  			ret = i915_sw_fence_await_reservation(&state->commit_ready,
>  							      old_obj->base.resv,
>  							      false, 0,
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
