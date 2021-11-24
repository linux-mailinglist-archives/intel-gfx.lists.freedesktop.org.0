Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE29D45B868
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 11:33:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604386E9FD;
	Wed, 24 Nov 2021 10:33:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE5E36E9FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 10:33:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="259138135"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="259138135"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:33:20 -0800
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="475071010"
Received: from unknown (HELO intel.com) ([10.237.72.167])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:33:19 -0800
Date: Wed, 24 Nov 2021 12:33:00 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20211124103300.GA4169@intel.com>
References: <20211118093907.18510-1-stanislav.lisovskiy@intel.com>
 <87wnkxlunn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87wnkxlunn.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Implement WM0 cursor WA for
 DG2
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

On Wed, Nov 24, 2021 at 12:23:08PM +0200, Jani Nikula wrote:
> On Thu, 18 Nov 2021, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> > Bug in the register unit which results in WM1 register
> > used when only WM0 is enabled on cursor.
> > Software workaround is when only WM0 enabled on cursor,
> > copy contents of CUR_WM_0[30:0] (exclude the enable bit)
> > into CUR_WM_1[30:0].
> >
> > v2:  - s/dev_priv/i915/ (Ville Syrjälä)
> >      - Removed unneeded brackets (Ville Syrjälä)
> >
> > HSDES: 14012656716
> >
> > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 18 +++++++++++++-----
> >  1 file changed, 13 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index 89dc7f69baf3..01fa3fac1b57 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -5095,6 +5095,18 @@ skl_check_nv12_wm_level(struct skl_wm_level *wm, struct skl_wm_level *uv_wm,
> >  	}
> >  }
> >  
> > +static bool icl_need_wm1_wa(struct drm_i915_private *i915,
> > +			    enum plane_id plane_id)
> 
> Commit subject having "WM0 cursor WA" and the function saying "wm1_wa"
> looks like a discrepancy to the casual reader.

Agree, not the best naming. Should be either WM0 or WM1.
Thing is that due to nature of that W/A both can be correct.
Patch has been pushed week ago, after r-b from Ville.

I will send a fix anyway.

Stan

> 
> BR,
> Jani.
> 
> > +{
> > +	/*
> > +	 * Wa_1408961008:icl, ehl
> > +	 * Wa_14012656716:tgl, adl
> > +	 * Underruns with WM1+ disabled
> > +	 */
> > +	return DISPLAY_VER(i915) == 11 ||
> > +	       (IS_DISPLAY_VER(i915, 12, 13) && plane_id == PLANE_CURSOR);
> > +}
> > +
> >  static int
> >  skl_allocate_plane_ddb(struct intel_atomic_state *state,
> >  		       struct intel_crtc *crtc)
> > @@ -5265,11 +5277,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
> >  			skl_check_nv12_wm_level(&wm->wm[level], &wm->uv_wm[level],
> >  						total[plane_id], uv_total[plane_id]);
> >  
> > -			/*
> > -			 * Wa_1408961008:icl, ehl
> > -			 * Underruns with WM1+ disabled
> > -			 */
> > -			if (DISPLAY_VER(dev_priv) == 11 &&
> > +			if (icl_need_wm1_wa(dev_priv, plane_id) &&
> >  			    level == 1 && wm->wm[0].enable) {
> >  				wm->wm[level].blocks = wm->wm[0].blocks;
> >  				wm->wm[level].lines = wm->wm[0].lines;
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
