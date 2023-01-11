Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FF5665062
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 01:32:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4222310E1B4;
	Wed, 11 Jan 2023 00:32:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AC2210E1B4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 00:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673397122; x=1704933122;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=D8Ztv5qOQv2vM7tXk3jVi69GM77BG+iZC9cwKFWKS1o=;
 b=TL0w/QvHo+euL/d77EHwC4aJJMaFqzhsnJ71FPyyxxPOoaY6Gq1FJLRG
 jyIjDYfuzFkscgj8t2Y1I0Ui2kxeWvW0DS3cdA6AgC+wsX2uqQlWPtNBw
 4lDhGTHP5ufyqrYiYP7N0pnbj1Bt1FbtTe9ieS//RxyPvuK41O0Qc3V5h
 +iHYCR42z1ZeYcjk9OVYgslXL8MepSyrXhl8VApfmRZeOV56mouz1NXHG
 E1pDkc1FcCoQ3iUtTjGvhUokGu1XRfBPlboUR7QKLmjBd3gAEMuSasC06
 aEEShRvVMGg7YqXYCgXp8H3eRcK35LXa6xkZxYYBzw5+POV/vPzAitzAr A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="306809676"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="306809676"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 16:32:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="689593839"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="689593839"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 16:31:59 -0800
Date: Wed, 11 Jan 2023 02:31:56 +0200
From: Imre Deak <imre.deak@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <Y74DfBEgCv3C45wI@ideak-desk.fi.intel.com>
References: <20230104124448.7418-1-juhapekka.heikkila@gmail.com>
 <20230108113044.3528-1-juhapekka.heikkila@gmail.com>
 <Y73YAEN+LOtNOlhy@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y73YAEN+LOtNOlhy@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: assume some pixelrate
 for src smaller than 1
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

On Tue, Jan 10, 2023 at 11:27:33PM +0200, Imre Deak wrote:
> On Sun, Jan 08, 2023 at 01:30:44PM +0200, Juha-Pekka Heikkila wrote:
> > intel_adjusted_rate() didn't take into account src rectangle
> > can be less than 1 in with or height.
> 
> Thanks for catching this.
> 
> > Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index 10e1fc9d0698..cd24d069b6eb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -144,7 +144,7 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
> >  				 const struct drm_rect *dst,
> >  				 unsigned int rate)
> >  {
> > -	unsigned int src_w, src_h, dst_w, dst_h;
> > +	unsigned int src_w, src_h, dst_w, dst_h, dst_wh;
> >  
> >  	src_w = drm_rect_width(src) >> 16;
> >  	src_h = drm_rect_height(src) >> 16;
> > @@ -155,8 +155,10 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
> >  	dst_w = min(src_w, dst_w);
> >  	dst_h = min(src_h, dst_h);
> >  
> > -	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h),
> > -				dst_w * dst_h);
> > +	/* in case src contained only fractional part */
> > +	dst_wh = max(dst_w * dst_h, 1U);
> > +
> > +	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h), dst_wh);
> 
> The div-by-zero is avoided, but we'd return a 0 rate which doesn't look
> ok to me. I'd round up instead of down when converting src_w/h from
> fixed point to int above.

Looking at this more, src height < 1 isn't supported by the HW. I think
this config should be rejected already by skl_check_main_surface(), as
it's done on all other platforms.

> >  }
> >  
> >  unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
> > -- 
> > 2.39.0
> > 
