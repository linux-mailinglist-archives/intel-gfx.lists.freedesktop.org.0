Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5588518AB2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 19:05:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A30CB1120CB;
	Tue,  3 May 2022 17:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8DFE1120CB
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 17:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651597512; x=1683133512;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DhOxNFejKJtvtE4K2wh/vbNcDR35q4Y4QUI8TaXZzyI=;
 b=gO93Cc56zBYv/8QiofceqcL/ZaFBAOyh/AWEFoKSKK9xHUgdX2k+1upX
 Jp2ukhgL4X7Q3mcZ8Wksp5mXB/B/RuKE5hOp3F0WCc+t7nxlxkC6tRxZN
 /Vej6ENupwjfu4Kfr3wfaAJVhxY+jhSx75zZT9DkExl//IRF2hLnUAvWj
 AYB1y8Tw0HdhdF54NSkhaPg2/p91AnhikbTZI9cAMptwvway1wwThVN+d
 hfGh0BWsNiICk+pK8QH8w3DVtTaAkIV0mIsP38hQzppGAs41pI2l8BmwU
 eHRGYsj97xyFbZukVI54Q4F8fz7IvLEsLBAXuT6c1qFzKe9iThtl1y1py w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="266375969"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="266375969"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 10:05:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="584283724"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga008.jf.intel.com with SMTP; 03 May 2022 10:05:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 20:05:08 +0300
Date: Tue, 3 May 2022 20:05:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YnFgxIVnyNdrg48A@intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
 <20220426193222.3422-11-ville.syrjala@linux.intel.com>
 <878rrirg84.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <878rrirg84.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 10/18] drm/i915/pps: Reinit PPS delays
 after VBT has been fully parsed
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

On Tue, May 03, 2022 at 02:46:35PM +0300, Jani Nikula wrote:
> On Tue, 26 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > During the eDP probe we may not yet know the panel_type used
> > to index the VBT panel tables. So the initial eDP probe will have
> > to be done without that, and thus we won't yet have the PPS delays
> > from the VBT. Once the VBT has been fully parse we should reinit
> > the PPS delays to make sure it's fully accounted for.
> >
> > TODO: I wonder if we should do the eDP probe with some super safe
> > PPS delayes (eg. max of all VBT PPS delays) just to make sure we
> > don't violate the timings. Though typically the VBIOS/GOP do leave
> > VDD enabled after boot in which case we don't actually have to care
> > about the delays at all.
> 
> The trouble here is that the first init writes the registers, and the
> second init reads them back as "bios set values", and never goes lower
> than them. The late init can only increase the values based on VBT data.

Hmm. I thought we just took the max of hw,VBT,spec, but looks like
the spec stuff has some other magic going on :(

> 
> So I'm holding off on the r-b on both the PPS changes for now because I
> think this will need some kind of a redesign. Maybe we'll need to keep
> track of the origins of the values at each step, and choose the right
> ones at late init and skip the register writes if there are no
> changes. I don't know.
> 
> BR,
> Jani.
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_pps.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> > index 0ae2be5c5318..15cbdc465a86 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -1396,6 +1396,11 @@ void intel_pps_init_late(struct intel_dp *intel_dp)
> >  	intel_wakeref_t wakeref;
> >  
> >  	with_intel_pps_lock(intel_dp, wakeref) {
> > +		/* Reinit delays after per-panel info has been parsed from VBT */
> > +		memset(&intel_dp->pps.pps_delays, 0, sizeof(intel_dp->pps.pps_delays));
> > +		pps_init_delays(intel_dp);
> > +		pps_init_registers(intel_dp, false);
> > +
> >  		if (edp_have_panel_vdd(intel_dp))
> >  			edp_panel_vdd_schedule_off(intel_dp);
> >  	}
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
