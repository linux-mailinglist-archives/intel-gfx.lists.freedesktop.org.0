Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9967BF843
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 12:14:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3064710E1C6;
	Tue, 10 Oct 2023 10:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D057410E1C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 10:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696932874; x=1728468874;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=srx1uehkhz5agaywj5fJb1iaX/A7nujsZo126uvIGtQ=;
 b=dzPNIk0pgV+xKNIunQLWAVc4UirC99RHHwpG61jXk8S5Jdm3qbyTMLnu
 sRKlFFi9zCqBimZfjhVyGn74tDchew46PTIz02utcaZhGSmNwF46zNCyt
 UHm9i/W0QbSJrqMp8cof7mW25IJaXt/bBPnJAEv4yefT5pHeJtpWyV1Eo
 BZKuxQxHiGn4hpIp9OYJfRkiomjvgtD53WQQ7mNjXFC3yd0BKuJOehkCR
 DO8qWHThKodiVXYbRUxkkPLRJZ23bseyw0TBjE+24jD72LMUskgm4kGBR
 AWOcEwyij1YeAtrlWAzY4/LZG3sPwuxngn9+FYCnWPnLnoYYb32I0ZiON A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="381617572"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="381617572"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 03:14:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="897122589"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="897122589"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 03:12:50 -0700
Date: Tue, 10 Oct 2023 13:14:57 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <ZSUkIVqGSRlv5rtR@ideak-desk.fi.intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
 <20231006133727.1822579-2-imre.deak@intel.com>
 <ZSAgk6w0R1IZ4aHL@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZSAgk6w0R1IZ4aHL@intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/19] drm/i915/dp: Sanitize DPCD revision
 check in intel_dp_get_dsc_sink_cap()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 06, 2023 at 05:59:06PM +0300, Lisovskiy, Stanislav wrote:
> On Fri, Oct 06, 2023 at 04:37:09PM +0300, Imre Deak wrote:
> > Check only the eDP or the DP specific DPCD revision depending on the
> > sink type. Pass the corresponding revision to the function, which allows
> > getting the DSC caps of a branch device (in an MST topology, which has
> > its own DPCD and so DPCD revision).
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 12 +++++++-----
> >  1 file changed, 7 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 0ef7cb8134b66..1bd11f9e308c1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3467,7 +3467,7 @@ bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
> >  	return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
> >  }
> >  
> > -static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
> > +static void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp)
> >  {
> >  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >  
> > @@ -3481,8 +3481,8 @@ static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
> >  	intel_dp->fec_capable = 0;
> >  
> >  	/* Cache the DSC DPCD if eDP or DP rev >= 1.4 */
> > -	if (intel_dp->dpcd[DP_DPCD_REV] >= 0x14 ||
> > -	    intel_dp->edp_dpcd[0] >= DP_EDP_14) {
> > +	if ((intel_dp_is_edp(intel_dp) && dpcd_rev >= DP_EDP_14) ||
> > +	    (!intel_dp_is_edp(intel_dp) && dpcd_rev >= 0x14)) {
> 
> A bit curious whether could we use some macro for 0x14, just as for DP_EDP_14?

Yes, make sense to make it more uniform, will use DP_DPCD_REV_14. The
driver uses the open-coded DPCD revisions elsewhere as well, those
could be also changed in a follow-up.

> Because otherwise we are combining some values with macros, which seems like a bit
> non-uniform approach.
> 
> However that is a minor thing anyway..
> 
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> 
> >  		if (drm_dp_dpcd_read(&intel_dp->aux, DP_DSC_SUPPORT,
> >  				     intel_dp->dsc_dpcd,
> >  				     sizeof(intel_dp->dsc_dpcd)) < 0)
> > @@ -3674,7 +3674,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
> >  
> >  	/* Read the eDP DSC DPCD registers */
> >  	if (HAS_DSC(dev_priv))
> > -		intel_dp_get_dsc_sink_cap(intel_dp);
> > +		intel_dp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
> > +					  intel_dp);
> >  
> >  	/*
> >  	 * If needed, program our source OUI so we can make various Intel-specific AUX services
> > @@ -5384,7 +5385,8 @@ intel_dp_detect(struct drm_connector *connector,
> >  
> >  	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
> >  	if (HAS_DSC(dev_priv))
> > -		intel_dp_get_dsc_sink_cap(intel_dp);
> > +		intel_dp_get_dsc_sink_cap(intel_dp->dpcd[DP_DPCD_REV],
> > +					  intel_dp);
> >  
> >  	intel_dp_configure_mst(intel_dp);
> >  
> > -- 
> > 2.39.2
> > 
