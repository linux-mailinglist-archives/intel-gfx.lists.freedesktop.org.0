Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87776780D72
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 16:06:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE8C10E528;
	Fri, 18 Aug 2023 14:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CADF510E528
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 14:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692367569; x=1723903569;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=mvFFnUjuMUAAMa2KnemVYyXyghr+O0VXEtnO9W2HowM=;
 b=HMGwprvwzE0YHsAGkRazdqZP3qr9OdGDyzOmqnUKreOkN9W8XnDjociZ
 zizvnKTjsFsu/9Oq+KU+eyqgPG3z4tlWJxrTAvNdw/w+SBYbPBHlaOjQ3
 Q2uiRyoqrMneDMotbPU4gffJLbx5/KL0WL+PybMB0/1QuAKY8UQmYb4iF
 mBWYjtChW3Dxtklhhc8rvfk5bPK7r9jWi99xltAA2JbALRg1D2jJHbvl0
 /eX66PPfq63RdGdTiIsJAg3pPfgyafDuUoRzx/1BKz3JVjcfyn66tS9J8
 ofjYdWIhfTsefwPeoSz3L7jcXm3CsMl3M0kcBjz9WWgasXZPcs0RhLa2w Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="437018335"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="437018335"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 07:06:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="735107975"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="735107975"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 07:06:07 -0700
Date: Fri, 18 Aug 2023 17:06:21 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Message-ID: <ZN96vA/rwN5MLeW3@ideak-desk.fi.intel.com>
References: <20230817161456.3857111-1-imre.deak@intel.com>
 <20230817161456.3857111-3-imre.deak@intel.com>
 <87fs4h8wib.fsf@intel.com>
 <SN7PR11MB6750FEB6F3106D3FB71B26BEE31BA@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN7PR11MB6750FEB6F3106D3FB71B26BEE31BA@SN7PR11MB6750.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH 02/17] drm/i915/dp: Track the pipe and link
 bpp limits separately
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

On Fri, Aug 18, 2023 at 11:24:26AM +0300, Kandpal, Suraj wrote:
> [...]
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> > > b/drivers/gpu/drm/i915/display/intel_dp.h
> > > index 22099de3ca458..a1789419c0d19 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > > @@ -26,7 +26,14 @@ struct intel_encoder;  struct link_config_limits {
> > >     int min_rate, max_rate;
> > >     int min_lane_count, max_lane_count;
> > > -   int min_bpp, max_bpp;
> > > +   struct {
> > > +           /* Uncompressed DSC input or link output bpp in 1 bpp units */
> > > +           int min_bpp, max_bpp;
> > > +   } pipe;
> > > +   struct {
> > > +           /* Compressed or uncompressed link output bpp in 1/16 bpp units */
> > > +           int min_bpp, max_bpp;
> >
> > The 1/16 bpp units is a source of confusion, and I think we should start
> > denoting them in naming.
> >
> > min_bpp_x16, max_bpp_x16
> >
> > > +   } link;
> > >  };
> 
> Also a small question here do we need to track both pipe and link bpp
> separately When we can have the helper mentioned above maybe we can
> call it pipe_to_link_bpp
>
> Also if it is really required to track link bpp for dsc and non dsc
> scenario won't it be Better to have link_dsc and link_non_dsc structs
> rather than pipe and link since both are bpp for link with dsc
> enablement differentiation.

They are separate things, which can be set independently within their
own valid range. pipe bpp is about the format pixels are handled by the
display engine (pipe) internally, while link bpp is about the format of
pixels on the link.

For instance for DSC a given link bpp (which is limited by the BW on the
link) could be used with different pipe bpp settings (limited by other
platform specific constraints).

> 
> Regards,
> Suraj Kandpal
> 
> 
> > >
> > >  void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int
> > > pipe_bpp); diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index 998d8a186cc6f..1809643538d08 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -156,8 +156,10 @@ static int
> > intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
> > >             &crtc_state->hw.adjusted_mode;
> > >     int slots = -EINVAL;
> > >
> > > -   slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
> > limits->max_bpp,
> > > -                                                limits->min_bpp, limits,
> > > +   slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
> > > +                                                limits->link.max_bpp >> 4,
> > > +                                                limits->link.min_bpp >> 4,
> > > +                                                limits,
> > >                                                  conn_state, 2 * 3, false);
> > >
> > >     if (slots < 0)
> > > @@ -200,8 +202,8 @@ static int
> > intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> > >     else
> > >             dsc_max_bpc = min_t(u8, 10, conn_state-
> > >max_requested_bpc);
> > >
> > > -   max_bpp = min_t(u8, dsc_max_bpc * 3, limits->max_bpp);
> > > -   min_bpp = limits->min_bpp;
> > > +   max_bpp = min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
> > > +   min_bpp = limits->pipe.min_bpp;
> > >
> > >     num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp-
> > >dsc_dpcd,
> > >                                                    dsc_bpc);
> > > @@ -318,7 +320,7 @@ intel_dp_mst_compute_config_limits(struct
> > intel_dp *intel_dp,
> > >     limits->min_lane_count = limits->max_lane_count =
> > >             intel_dp_max_lane_count(intel_dp);
> > >
> > > -   limits->min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> > > +   limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state-
> > >output_format);
> > >     /*
> > >      * FIXME: If all the streams can't fit into the link with
> > >      * their current pipe_bpp we should reduce pipe_bpp across @@ -
> > 327,9
> > > +329,12 @@ intel_dp_mst_compute_config_limits(struct intel_dp
> > *intel_dp,
> > >      * MST streams previously. This hack should be removed once
> > >      * we have the proper retry logic in place.
> > >      */
> > > -   limits->max_bpp = min(crtc_state->pipe_bpp, 24);
> > > +   limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
> > >
> > >     intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
> > > +
> > > +   limits->link.min_bpp = limits->pipe.min_bpp << 4;
> > > +   limits->link.max_bpp = limits->pipe.max_bpp << 4;
> > >  }
> > >
> > >  static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
