Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B1A7EC518
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 15:25:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F52010E02B;
	Wed, 15 Nov 2023 14:25:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E06AA10E047
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 14:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700058343; x=1731594343;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=WAIVs8+MhLWGM6Coc3f6TohjRZUb7MmOSQum3SB+vCQ=;
 b=mRpoY3z2sEeGZ/9Q7W49H4zlACuQK26OdnNF/NWEd2ppBRH8wEVXA/T+
 HZp9VG2iSFsH70vZg9UEVx3UeXg9jzeY8jtCl63GwBaEdGSbpTzfJrakk
 MKQ/PTMrUSLhXy4bVAN5wudIYCepQet3xGTH+0d4mk9Vl9gEErHMuYh5W
 OB/U5uvwn1mQvKSy26iZNcgCf6PJVjnbXDm9ovcIliiUMtdCT/W+mrZKb
 eBNw0lP/Wn0uGHiTgcApB0lrksJ/rqg77JL271tq7O9aQNXezeLt2wuWI
 ZInvClbHrR7Y42PPQtniN/FXYab4GR9St5UT8s7td8xCmolB2eyWNfUbn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="381277168"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="381277168"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 06:25:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="882404349"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="882404349"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 06:25:41 -0800
Date: Wed, 15 Nov 2023 16:25:40 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <ZVTU5DJDmqOCreRi@ideak-desk.fi.intel.com>
References: <20231113201110.510724-1-imre.deak@intel.com>
 <20231113201110.510724-3-imre.deak@intel.com>
 <ZVTJ0L37KLZLIWfu@ideak-desk.fi.intel.com>
 <DS0PR11MB8740BC7EB6F27C3B12E6910ABAB1A@DS0PR11MB8740.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS0PR11MB8740BC7EB6F27C3B12E6910ABAB1A@DS0PR11MB8740.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Fix PBN / MTP_TU size
 calculation for UHBR rates
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 15, 2023 at 03:41:08PM +0200, Murthy, Arun R wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre
> > Deak
> > Sent: Wednesday, November 15, 2023 7:08 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Fix PBN / MTP_TU size
> > calculation for UHBR rates
> >
> > On Mon, Nov 13, 2023 at 10:11:09PM +0200, Imre Deak wrote:
> > > Atm the allocated MST PBN value is calculated from the TU size (number
> > > of allocated MTP slots) as
> > >
> > >   PBN = TU * pbn_div
> > >
> > > pbn_div being the link BW for each MTP slot. For DP 1.4 link rates
> > > this worked, as pbn_div there is guraranteed to be an integer number,
> > > however on UHBR this isn't the case. To get a PBN, TU pair where TU is
> > > a properly rounded-up value covering all the BW corresponding to PBN,
> > > calculate first PBN and from PBN the TU value.
> > >
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++++--
> > >  1 file changed, 8 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index b943dbf394a22..a32ab0b4fc9d7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -170,6 +170,7 @@ static int
> > > intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> > >
> > >     for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
> > >             struct intel_link_m_n remote_m_n;
> > > +           int alloc_tu;
> > >             int link_bpp;
> > >
> > >             drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp); @@ -
> > 200,9 +201,14
> > > @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder
> > *encoder,
> > >              * crtc_state->dp_m_n.tu), provided that the driver doesn't
> > >              * enable SSC on the corresponding link.
> > >              */
> > > +           crtc_state->pbn =
> > DIV_ROUND_UP_ULL(mul_u32_u32(mst_state->pbn_div * 64,
> > > +
> > remote_m_n.data_m),
> > > +                                              remote_m_n.data_n);
> >
> > I realized this may allocate fewer PBNs than required, since the actual pbn_div
> > value is not an integer. Also PBN can be calculated in a more direct way from
> > the effective pixel data rate, so I'd like to do that instead.
> >
> > I'll send a new version with the above changes.
> >
> Also spec says about a constant value of 64 for TU size.

I suppose you refer to WA 14013163432 (Bspec / 54369), yes we considered
this with Ville. For that one data M/N needs to be configured for full
BW utilization, that is M=TU-size N=64. It's for the case where FEC is
enabled and applies to ADLP A0-C0 only (need to check other platforms).
The corresponding issue is supposed to be fixed on ADLP D0 (which
requires enabling some HW workarounds), so not sure if/how we should
enable this SW WA.

> Thanks and Regards,
> Arun R Murthy
> -------------------
> > > +
> > > +           alloc_tu = DIV_ROUND_UP_ULL(crtc_state->pbn, mst_state-
> > >pbn_div);
> >
> >
> > > +           drm_WARN_ON(&i915->drm, alloc_tu < remote_m_n.tu);
> > >             drm_WARN_ON(&i915->drm, remote_m_n.tu < crtc_state-
> > >dp_m_n.tu);
> > > -           crtc_state->dp_m_n.tu = remote_m_n.tu;
> > > -           crtc_state->pbn = remote_m_n.tu * mst_state->pbn_div;
> > > +           crtc_state->dp_m_n.tu = alloc_tu;
> > >
> > >             slots = drm_dp_atomic_find_time_slots(state, &intel_dp-
> > >mst_mgr,
> > >                                                   connector->port,
> > > --
> > > 2.39.2
> > >
