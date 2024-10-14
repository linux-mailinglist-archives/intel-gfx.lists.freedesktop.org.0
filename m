Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF8599CD1F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 16:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A628A88EFF;
	Mon, 14 Oct 2024 14:29:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DInmgRuB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 115B7898F5
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2024 14:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728916150; x=1760452150;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Crg+quxpFjrHkhkLrVUgmtmPcQeTJpXH9tL5Uww203w=;
 b=DInmgRuBvRgI5kK9QvrG1ZXOjxK815u0KcJM32BhsOYf7ly0tPlD5Fdm
 k3fBB+ha+M9xnmNc7ceJokhuPb672es+dZu/meQVuahPEBfxYaBy/Bacr
 Ag6L1EzZzHGnDQzV2ZtKINjDEKzVodizHpuCPNN5LFM166YsXwRm0f7YM
 i37sX8C2BIpTISbci1bowYXxhp+veKNkJrKn2RTpcwvVBfUDuPWe0kkD3
 9SB2HfnNbPOyTx6WfGRPA9nO6P5H7kz2TsTeLLODywQ80SGV44l4j5QsT
 GY1ltghVWxrGdECDgy5Z+kPgZkHpFndhNl+LA2QP/+1f4HJsQp+yrtNir A==;
X-CSE-ConnectionGUID: aOrTww9kTXmAOlBgqZ2R0Q==
X-CSE-MsgGUID: 5R149MvqQsGQw15mxyiF9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11224"; a="27758135"
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208";a="27758135"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 07:29:10 -0700
X-CSE-ConnectionGUID: 9u4G4I0KQjGme8hczPyd2g==
X-CSE-MsgGUID: BD7uTLGXRe2sP08pPXkM9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208";a="77929094"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 07:29:08 -0700
Date: Mon, 14 Oct 2024 17:29:38 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/dp_mst: Handle error during DSC BW
 overhead/slice calculation
Message-ID: <Zw0q0kuJHv_RaQb4@ideak-desk.fi.intel.com>
References: <20241009110135.1216498-1-imre.deak@intel.com>
 <SN7PR11MB6750AC5A239CA75AEE7467BCE3782@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN7PR11MB6750AC5A239CA75AEE7467BCE3782@SN7PR11MB6750.namprd11.prod.outlook.com>
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

On Thu, Oct 10, 2024 at 06:54:24AM +0300, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre
> > Deak
> > Sent: Wednesday, October 9, 2024 4:32 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 1/2] drm/i915/dp_mst: Handle error during DSC BW
> > overhead/slice calculation
> >
> > The MST branch device may not support the number of DSC slices a mode
> > requires, handle the error in this case.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> I feel this is a better implementation of the fix I had sent

Yes, noticed the same issue a while ago, but didn't want to send a fix
until figuring out how to handle modes for which DSC was force-enabled.
Simply returning an error from here would've left those not working at
all with some docks.

Thanks for the patch and review, pushed this patchset now to
drm-intel-next, Cc'ing stable and adding the Fixes: lines.

> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 39 ++++++++++++++-------
> >  1 file changed, 27 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 4765bda154c15..2822ae1160034 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -90,27 +90,19 @@ static int intel_dp_mst_max_dpt_bpp(const struct
> > intel_crtc_state *crtc_state,
> >
> >  static int intel_dp_mst_bw_overhead(const struct intel_crtc_state
> > *crtc_state,
> >                                   const struct intel_connector *connector,
> > -                                 bool ssc, bool dsc, int bpp_x16)
> > +                                 bool ssc, int dsc_slice_count, int bpp_x16)
> >  {
> >       const struct drm_display_mode *adjusted_mode =
> >               &crtc_state->hw.adjusted_mode;
> >       unsigned long flags = DRM_DP_BW_OVERHEAD_MST;
> > -     int dsc_slice_count = 0;
> >       int overhead;
> >
> >       flags |= intel_dp_is_uhbr(crtc_state) ?
> > DRM_DP_BW_OVERHEAD_UHBR : 0;
> >       flags |= ssc ? DRM_DP_BW_OVERHEAD_SSC_REF_CLK : 0;
> >       flags |= crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
> >
> > -     if (dsc) {
> > -             int num_joined_pipes =
> > intel_crtc_num_joined_pipes(crtc_state);
> > -
> > +     if (dsc_slice_count)
> >               flags |= DRM_DP_BW_OVERHEAD_DSC;
> > -             dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
> > -                                                            adjusted_mode-
> > >clock,
> > -                                                            adjusted_mode-
> > >hdisplay,
> > -
> > num_joined_pipes);
> > -     }
> >
> >       overhead = drm_dp_bw_overhead(crtc_state->lane_count,
> >                                     adjusted_mode->hdisplay,
> > @@ -156,6 +148,19 @@ static int intel_dp_mst_calc_pbn(int pixel_clock, int
> > bpp_x16, int bw_overhead)
> >       return DIV_ROUND_UP(effective_data_rate * 64, 54 * 1000);  }
> >
> > +static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector
> > *connector,
> > +                                         const struct intel_crtc_state
> > *crtc_state) {
> > +     const struct drm_display_mode *adjusted_mode =
> > +             &crtc_state->hw.adjusted_mode;
> > +     int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
> > +
> > +     return intel_dp_dsc_get_slice_count(connector,
> > +                                         adjusted_mode->clock,
> > +                                         adjusted_mode->hdisplay,
> > +                                         num_joined_pipes);
> > +}
> > +
> >  static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder
> > *encoder,
> >                                               struct intel_crtc_state
> > *crtc_state,
> >                                               int max_bpp,
> > @@ -175,6 +180,7 @@ static int
> > intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> >       const struct drm_display_mode *adjusted_mode =
> >               &crtc_state->hw.adjusted_mode;
> >       int bpp, slots = -EINVAL;
> > +     int dsc_slice_count = 0;
> >       int max_dpt_bpp;
> >       int ret = 0;
> >
> > @@ -206,6 +212,15 @@ static int
> > intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> >       drm_dbg_kms(&i915->drm, "Looking for slots in range min bpp %d
> > max bpp %d\n",
> >                   min_bpp, max_bpp);
> >
> > +     if (dsc) {
> > +             dsc_slice_count =
> > intel_dp_mst_dsc_get_slice_count(connector, crtc_state);
> > +             if (!dsc_slice_count) {
> > +                     drm_dbg_kms(&i915->drm, "Can't get valid DSC slice
> > count\n");
> > +
> > +                     return -ENOSPC;
> > +             }
> > +     }
> > +
> >       for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
> >               int local_bw_overhead;
> >               int remote_bw_overhead;
> > @@ -219,9 +234,9 @@ static int
> > intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> >                                              intel_dp_output_bpp(crtc_state-
> > >output_format, bpp));
> >
> >               local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
> > connector,
> > -                                                          false, dsc,
> > link_bpp_x16);
> > +                                                          false,
> > dsc_slice_count, link_bpp_x16);
> >               remote_bw_overhead =
> > intel_dp_mst_bw_overhead(crtc_state, connector,
> > -                                                           true, dsc,
> > link_bpp_x16);
> > +                                                           true,
> > dsc_slice_count, link_bpp_x16);
> >
> >               intel_dp_mst_compute_m_n(crtc_state, connector,
> >                                        local_bw_overhead,
> > --
> > 2.44.2
> 
