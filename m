Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5018D928C76
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 18:49:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1976210EC22;
	Fri,  5 Jul 2024 16:49:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PC9moRou";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A8E810EC22
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2024 16:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720198171; x=1751734171;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=h/eMiAvdnbziRJFW7hy11n10QTINlFhZOhasV7MzLoo=;
 b=PC9moRouMJj2M6CHwwjjNPR0e6y4nFx3g7ItrLXJMnBcXxEtOcDQo6T3
 nZAa2f8r6JtNHds2F7/v+r+jYQ30IoWzr5MIXQJE3ljb/4cHZzhd2e/cX
 T9+Ve44AbDnvdMZpNoS/549bdB3McyCfHshN35oS3kE7pKVr3ethBEZRw
 KTmuGUb0uDlE2dsyLGHD2k/szQVzjm4oLl7rd7sjsoz0b++Fs384ZIVlp
 xi+v+jI3ypkoaHi8gIyoZbxM3T7IHPA/xqEkcfZ0b+OZ6fgm6uN3S4CtM
 WoUcKpCfi5LbRNErKyYLV/Pe3V+KHhz14h6yL8vVVjgw8d/sLUWVdF+Mh A==;
X-CSE-ConnectionGUID: rrE5BbydQRK1BdIUphuHLw==
X-CSE-MsgGUID: c1ICZxd/TVqpYchVHBR1AA==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17628187"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17628187"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 09:49:31 -0700
X-CSE-ConnectionGUID: DFwITB3WS+m7PiDfRJrWVA==
X-CSE-MsgGUID: RB6e1s9iSBynDdUPjI8csQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="47570766"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 09:49:30 -0700
Date: Fri, 5 Jul 2024 19:49:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 5/5] drm/i915/dp: Dump the LTTPR PHY descriptors
Message-ID: <ZogkJSPR0a8KLYHb@ideak-desk.fi.intel.com>
References: <20240703155937.1674856-1-imre.deak@intel.com>
 <20240703155937.1674856-6-imre.deak@intel.com>
 <ZogO4ijb5t0rRm02@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZogO4ijb5t0rRm02@intel.com>
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

On Fri, Jul 05, 2024 at 06:18:58PM +0300, Ville Syrjälä wrote:
> On Wed, Jul 03, 2024 at 06:59:37PM +0300, Imre Deak wrote:
> > Dump the descriptor of the detected LTTPRs in non-transparent mode to
> > help the debugging related to LTTPRs easier.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_link_training.c | 22 ++++++++++++++++++-
> >  1 file changed, 21 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 31089f1b316d2..52b149793f3d0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -199,6 +199,24 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
> >  	return 0;
> >  }
> >  
> > +static void intel_dp_dump_lttpr_phy_desc(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy)
> > +{
> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +	struct drm_dp_dpcd_ident ident;
> > +
> > +	if (drm_dp_dpcd_read(&intel_dp->aux, DP_OUI_PHY_REPEATER(dp_phy),
> > +			     &ident, sizeof(ident)) < 0)
> > +		return;
> > +
> > +	drm_dbg_kms(&i915->drm,
> > +		    "%s: %s: OUI %*phD dev-ID %*pE HW-rev %d.%d SW-rev %d.%d\n",
> > +		    intel_dp->aux.name, drm_dp_phy_name(dp_phy),
> > +		    (int)sizeof(ident.oui), ident.oui,
> > +		    (int)strnlen(ident.device_id, sizeof(ident.device_id)), ident.device_id,
> > +		    ident.hw_rev >> 4, ident.hw_rev & 0xf,
> > +		    ident.sw_major_rev, ident.sw_minor_rev);
> 
> Dunno if we could share some code with drm_dp_read_desc()...

Ok, can add
drm_dp_dump_desc(aux, const char *device_name, const struct drm_dp_desc *desc)

This will also print the quirks mask not relevant to LTTPRs atm, but
that could change later.

> > +}
> > +
> >  static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEIVER_CAP_SIZE])
> >  {
> >  	int lttpr_count;
> > @@ -206,8 +224,10 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
> >  
> >  	lttpr_count = intel_dp_init_lttpr_phys(intel_dp, dpcd);
> >  
> > -	for (i = 0; i < lttpr_count; i++)
> > +	for (i = 0; i < lttpr_count; i++) {
> >  		intel_dp_read_lttpr_phy_caps(intel_dp, dpcd, DP_PHY_LTTPR(i));
> > +		intel_dp_dump_lttpr_phy_desc(intel_dp, DP_PHY_LTTPR(i));
> > +	}
> >  
> >  	return lttpr_count;
> >  }
> > -- 
> > 2.43.3
> 
> -- 
> Ville Syrjälä
> Intel
