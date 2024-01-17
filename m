Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C2983044F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 12:13:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 407D610E1B1;
	Wed, 17 Jan 2024 11:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCCC910E1B1
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705489973; x=1737025973;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Sf5wFpGPjFB61z9CopNGrSG0KGgIM+KGsr71cF6yZtU=;
 b=Fiy12pFLB+7HOEqT0HcSFkkmK2qY1vk+WL/hp/OAYO4XgDpVOnrq2vQi
 65p+vEUHaWKx6WHbTm2u2nsQASBSVjLVwP7djJ372DwzAMhb/PblPbCW/
 wr2qWNOsNV0BRTQ66pAPkgZlRO+8QNO4eNhRlsNUvnksKnDQevvkaB+VG
 MOLUvMuv+pUKvV762x1E4BlKowAkraVm+gfbnR7RRhuD0EMcdZ7nJUcUN
 HmDqNvK4Xt6+GSl5zhgAq7hu+8XdVyee4seQOFZ++8plvqkfNzF1fmNa4
 KxOUuuFZRSUFpssiQKfR5DCX+ZWLK/jOGUGTLRCBL/21aua70hqP3SFEC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="397299272"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="397299272"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 03:12:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="777423807"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="777423807"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Jan 2024 03:12:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Jan 2024 13:12:49 +0200
Date: Wed, 17 Jan 2024 13:12:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 2/3] drm/i915: Extract code required to calculate max
 qgv/psf gv point
Message-ID: <Zae2MYYnpOoRh2rC@intel.com>
References: <20231128083754.20096-1-stanislav.lisovskiy@intel.com>
 <20231128083754.20096-3-stanislav.lisovskiy@intel.com>
 <ZaF4XLoYDDmcJcbE@intel.com> <ZaeoAsQXzZi9HqgP@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZaeoAsQXzZi9HqgP@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Jan 17, 2024 at 12:12:18PM +0200, Lisovskiy, Stanislav wrote:
> On Fri, Jan 12, 2024 at 07:35:24PM +0200, Ville Syrjälä wrote:
> > On Tue, Nov 28, 2023 at 10:37:53AM +0200, Stanislav Lisovskiy wrote:
> > > We need that in order to force disable SAGV in next patch.
> > > Also it is beneficial to separate that code, as in majority cases,
> > > when SAGV is enabled, we don't even need those calculations.
> > > Also we probably need to determine max PSF GV point as well, however
> > > currently we don't do that when we disable SAGV, which might be
> > > actually causing some issues in that case.
> > > 
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_bw.c | 82 ++++++++++++++++++++-----
> > >  1 file changed, 65 insertions(+), 17 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > > index 583cd2ebdf89..efd408e96e8a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > > @@ -805,6 +805,64 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
> > >  	return to_intel_bw_state(bw_state);
> > >  }
> > >  
> > > +static unsigned int icl_max_bw_qgv_point(struct drm_i915_private *i915,
> > > +					 int num_active_planes)
> > > +{
> > > +	unsigned int max_bw_point = 0;
> > > +	unsigned int max_bw = 0;
> > > +	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
> > > +	int i;
> > > +
> > > +	for (i = 0; i < num_qgv_points; i++) {
> > > +		unsigned int idx;
> > > +		unsigned int max_data_rate;
> > > +
> > > +		if (DISPLAY_VER(i915) > 11)
> > > +			idx = tgl_max_bw_index(i915, num_active_planes, i);
> > > +		else
> > > +			idx = icl_max_bw_index(i915, num_active_planes, i);
> > > +
> > > +		if (idx >= ARRAY_SIZE(i915->display.bw.max))
> > > +			continue;
> > > +
> > > +		max_data_rate = i915->display.bw.max[idx].deratedbw[i];
> > 
> > Looks like that that part could be extracted to a helper
> > to be used by both codepaths (would be a natural counterpart
> > to adl_psf_bw()).
> > 
> > > +
> > > +		/*
> > > +		 * We need to know which qgv point gives us
> > > +		 * maximum bandwidth in order to disable SAGV
> > > +		 * if we find that we exceed SAGV block time
> > > +		 * with watermarks. By that moment we already
> > > +		 * have those, as it is calculated earlier in
> > > +		 * intel_atomic_check,
> > > +		 */
> > > +		if (max_data_rate > max_bw) {
> > > +			max_bw_point = i;
> > > +			max_bw = max_data_rate;
> > > +		}
> > > +	}
> > > +
> > > +	return max_bw_point;
> > > +}
> > > +
> > > +unsigned int icl_max_bw_psf_gv_point(struct drm_i915_private *i915)
> > > +{
> > > +	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
> > > +	unsigned int max_bw = 0;
> > > +	unsigned int max_bw_point = 0;
> > > +	int i;
> > > +
> > > +	for (i = 0; i < num_psf_gv_points; i++) {
> > > +		unsigned int max_data_rate = adl_psf_bw(i915, i);
> > > +
> > > +		if (max_data_rate > max_bw) {
> > > +			max_bw_point = i;
> > > +			max_bw = max_data_rate;
> > > +		}
> > > +	}
> > > +
> > > +	return max_bw_point;
> > > +}
> > > +
> > >  static int mtl_find_qgv_points(struct drm_i915_private *i915,
> > >  			       unsigned int data_rate,
> > >  			       unsigned int num_active_planes,
> > > @@ -882,8 +940,6 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
> > >  			       const struct intel_bw_state *old_bw_state,
> > >  			       struct intel_bw_state *new_bw_state)
> > >  {
> > > -	unsigned int max_bw_point = 0;
> > > -	unsigned int max_bw = 0;
> > >  	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
> > >  	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
> > >  	u16 psf_points = 0;
> > > @@ -909,18 +965,6 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
> > >  
> > >  		max_data_rate = i915->display.bw.max[idx].deratedbw[i];
> > >  
> > > -		/*
> > > -		 * We need to know which qgv point gives us
> > > -		 * maximum bandwidth in order to disable SAGV
> > > -		 * if we find that we exceed SAGV block time
> > > -		 * with watermarks. By that moment we already
> > > -		 * have those, as it is calculated earlier in
> > > -		 * intel_atomic_check,
> > > -		 */
> > > -		if (max_data_rate > max_bw) {
> > > -			max_bw_point = i;
> > > -			max_bw = max_data_rate;
> > > -		}
> > >  		if (max_data_rate >= data_rate)
> > >  			qgv_points |= BIT(i);
> > >  
> > > @@ -964,9 +1008,13 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
> > >  	 * cause.
> > >  	 */
> > >  	if (!intel_can_enable_sagv(i915, new_bw_state)) {
> > > -		qgv_points = BIT(max_bw_point);
> > > -		drm_dbg_kms(&i915->drm, "No SAGV, using single QGV point %d\n",
> > > -			    max_bw_point);
> > > +		unsigned int max_bw_qgv_point = icl_max_bw_qgv_point(i915, num_active_planes);
> > > +		unsigned int max_bw_psf_gv_point = icl_max_bw_psf_gv_point(i915);
> > > +
> > > +		qgv_points = BIT(max_bw_qgv_point);
> > > +		psf_points = BIT(max_bw_psf_gv_point);
> > 
> > We didn't restrict the PSF here previously.
> 
> Yep, but I really suspect we should. BSpec states that we should restrict all the GV points
> except highest one, also that some PSF GV points aren't same or usable, depending on BW reqs.
> So I would restrict that as well, in case if SAGV is off, just to be on safe side.

Pretty sure it's explicitly noted that PSF doesn't cause issues with
latency and hence doesn't need this.

In any case, a change like this has no business being in a patch
that's just supposed to refactor code.

-- 
Ville Syrjälä
Intel
