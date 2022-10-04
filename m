Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5BD5F42D6
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 14:18:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BA0A10E5BF;
	Tue,  4 Oct 2022 12:18:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ABE110E5BF
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 12:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664885902; x=1696421902;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Pt1Zz+gB5dG6HcC/LNmiJg1XieFmHjgLmZYAFh6jS0c=;
 b=NGnk1SsyWKAylIYwfxjAMxq2tk94VxEhkHNRHznb4eLzvbtoYasD9raU
 789Ua4ot5sZjrdkYeihwkppRhkUvpKUT5w51zKtELUP3d5MVZAEoidzsx
 /RyD2Jnk4m2QC4uOTlCKT2RGMEstA41toRuV3uUnjGBIH2tCu9JaTN+h1
 JihnPMi8tYE7rI/9eArGfab7XR8faGmQLw1jeIUe8buJ82frBV/eqBeDE
 q3uHo1cr8ACbvKJpd8roiKIxFF/kVvkkk+Nue2DocGoHWX8zYOQwtWdA5
 N3ng0VqlxBTmtcPeiBj2bvBwRdo6dxAoyx5L2fmTU4VCdh8XfanbCs2rH g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="366990920"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="366990920"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 05:17:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="952754516"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="952754516"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga005.fm.intel.com with SMTP; 04 Oct 2022 05:17:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Oct 2022 15:17:52 +0300
Date: Tue, 4 Oct 2022 15:17:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YzwkcEzbnPG5mMO6@intel.com>
References: <20221004103311.194409-1-matthew.auld@intel.com>
 <20221004103311.194409-4-matthew.auld@intel.com>
 <YzwY47axVOqKGgav@intel.com>
 <66ea1196-61e9-fe80-42e6-95e11d749f90@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <66ea1196-61e9-fe80-42e6-95e11d749f90@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 4/5] drm/i915/display: consider
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

On Tue, Oct 04, 2022 at 12:51:11PM +0100, Matthew Auld wrote:
> On 04/10/2022 12:28, Ville Syrjälä wrote:
> > On Tue, Oct 04, 2022 at 11:33:10AM +0100, Matthew Auld wrote:
> >> For these types of display buffers, we need to able to CPU access some
> >> part of the backing memory in prepare_plane_clear_colors(). As a result
> >> we need to ensure we always place in the mappable part of lmem, which
> >> becomes necessary on small-bar systems.
> >>
> >> v2(Nirmoy & Ville):
> >>   - Add some commentary for why we need to CPU access the buffer.
> >>   - Split out the other changes, so we just consider the display change
> >>     here.
> >> v3:
> >>   - Handle this in the dpt path.
> >>
> >> Fixes: eb1c535f0d69 ("drm/i915: turn on small BAR support")
> >> Reported-by: Jianshui Yu <jianshui.yu@intel.com>
> >> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> >> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> Cc: Nirmoy Das <nirmoy.das@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_fb_pin.c | 24 +++++++++++++++++++--
> >>   1 file changed, 22 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> >> index 32206bd359da..8197343300ee 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> >> @@ -50,7 +50,18 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
> >>   			continue;
> >>   
> >>   		if (HAS_LMEM(dev_priv)) {
> >> -			ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
> >> +			unsigned int flags = obj->flags;
> >> +
> >> +			/*
> >> +			 * For this type of buffer we need to able to read from the CPU
> >> +			 * the clear color value found in the buffer, hence we need to
> >> +			 * ensure it is always in the mappable part of lmem, if this is
> >> +			 * a small-bar device.
> >> +			 */
> >> +			if (intel_fb_rc_ccs_cc_plane(fb) >= 0)
> >> +				flags &= ~I915_BO_ALLOC_GPU_ONLY;
> >> +			ret = __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
> >> +							flags);
> >>   			if (ret)
> >>   				continue;
> >>   		}
> >> @@ -156,8 +167,17 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
> >>   	ret = i915_gem_object_lock(obj, &ww);
> >>   	if (!ret && phys_cursor)
> >>   		ret = i915_gem_object_attach_phys(obj, alignment);
> >> -	else if (!ret && HAS_LMEM(dev_priv))
> >> +	else if (!ret && HAS_LMEM(dev_priv)) {
> >> +		/*
> >> +		 * For this type of ccs buffer we need to able to read from the
> >> +		 * CPU the clear color value found in the buffer, which might
> >> +		 * require moving to the mappable part of lmem first, but here
> >> +		 * we should be using dpt for this.
> >> +		 */
> >> +		WARN_ON_ONCE(intel_fb_rc_ccs_cc_plane(fb) >= 0);
> > 
> > DPT isn't availalable on DG1.
> 
> Hmm, does it also support the DG2_RC_CCS_CC modifier?

I believe it should support I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC.

> 
> > 
> >> +
> >>   		ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
> >> +	}
> >>   	if (!ret)
> >>   		ret = i915_gem_object_pin_pages(obj);
> >>   	if (ret)
> >> -- 
> >> 2.37.3
> > 

-- 
Ville Syrjälä
Intel
