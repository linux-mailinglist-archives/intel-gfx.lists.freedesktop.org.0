Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBE15F446E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 15:39:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D479E10E5FE;
	Tue,  4 Oct 2022 13:39:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44D0C10E5FE
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 13:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664890783; x=1696426783;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hbPn/7R/Qmf9KFnMDfkI3ChGwnyYizujkC1rcN32IGs=;
 b=ng15USKfO2jtm+VIoSyeLiLAvh13cPAVA8YNz2ngHIPHGRz12mHsI29v
 SwlUUydlv6M38YkdVi8gXfsTt9ASPkzBrQgp9SqQ9k1DoMoNYAWb/J+Wo
 9kIt1fa+hj1QXQbxQENt1LVsw9iFceqk1ijnb6b3GkL+tn/X/36phqIFZ
 u0fzXdvHKGAsuBwiekyVbk+BiJBwdJJR9//Fa6B99CzwZ0FMRcsKZlApo
 ifew6fWHaXXdkNFVWL/9SDc1FhHZQVnYa1MiCWC7RFy6b1bR9VJX61tOY
 v5IoA5RC/zmIE7cPdd6mMOVM0si2jPK2mKkDronLgynUovxweXkS56BYS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="283277237"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="283277237"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:39:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="713012611"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="713012611"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 04 Oct 2022 06:39:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Oct 2022 16:39:39 +0300
Date: Tue, 4 Oct 2022 16:39:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Yzw3m1lUeSMl0Q1S@intel.com>
References: <20221004131916.233474-1-matthew.auld@intel.com>
 <20221004131916.233474-4-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221004131916.233474-4-matthew.auld@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v5 4/5] drm/i915/display: consider
 DG2_RC_CCS_CC when migrating buffers
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>,
 Jianshui Yu <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 04, 2022 at 02:19:15PM +0100, Matthew Auld wrote:
> For these types of display buffers, we need to able to CPU access some
> part of the backing memory in prepare_plane_clear_colors(). As a result
> we need to ensure we always place in the mappable part of lmem, which
> becomes necessary on small-bar systems.
> 
> v2(Nirmoy & Ville):
>  - Add some commentary for why we need to CPU access the buffer.
>  - Split out the other changes, so we just consider the display change
>    here.
> v3:
>  - Handle this in the dpt path.
> v4(Ville):
>  - Drop the intel_fb_rc_ccs_cc_plane() sanity check in
>    pin_and_fence_fb_obj(), since we can also trigger this on DG1 it
>    seems.

On some hw I think there was also a chicken bit to disable DPT,
and the DPT simulation situation was always a mess (you had
to enable it using some custom config). So in theory someone
might have the need to use the non-DPT path on more modern hw
as well, but I'm OK not considering it here. If someone thinks
that small-bar+no-DPT is important they can deal with it in a 
separate patch.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> Fixes: eb1c535f0d69 ("drm/i915: turn on small BAR support")
> Reported-by: Jianshui Yu <jianshui.yu@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index 5031ee5695dd..e12339f46640 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -50,7 +50,18 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>  			continue;
>  
>  		if (HAS_LMEM(dev_priv)) {
> -			ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
> +			unsigned int flags = obj->flags;
> +
> +			/*
> +			 * For this type of buffer we need to able to read from the CPU
> +			 * the clear color value found in the buffer, hence we need to
> +			 * ensure it is always in the mappable part of lmem, if this is
> +			 * a small-bar device.
> +			 */
> +			if (intel_fb_rc_ccs_cc_plane(fb) >= 0)
> +				flags &= ~I915_BO_ALLOC_GPU_ONLY;
> +			ret = __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
> +							flags);
>  			if (ret)
>  				continue;
>  		}
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
