Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CBDB932DA
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 22:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8E3710E50D;
	Mon, 22 Sep 2025 20:06:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O5MZJMDa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 124C810E50B;
 Mon, 22 Sep 2025 20:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758571584; x=1790107584;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dhOYu1hIfSvnV+eSX97/TKzTwLvscJdd4YUW2+ne5i4=;
 b=O5MZJMDaF4zKl+MmiiyAX1rRg4x9GkHuKeQALx3IhhXeEiuh9VmAtI3d
 fm5OhLhoYw3NtD2qqvoS6XErhAbXJIiwaf0lqmqscOVhJfBZeaep1CNvl
 ElCAlP/J/Q5s/Ksg6aksEYrhQ9hPtlk/MRhwxfivLNhrI3N8rTWWd+gJx
 56LOWfTVrMUwaBcajt7DoaJwFzqVXnPmZNGskphHkDOh7c1rdwhevSAXY
 6Fo2rJBF+c20xmLvo/OaBKvVJ/BoXkvrdtIGp2KGUpMAxqwqe4HRveC6p
 bhAn+J1QrhDc5e9rt93x6/32MrKN3bYWV6Mor14QIDDjL6GxcOABVG5tw A==;
X-CSE-ConnectionGUID: 9uWr/453SZWauXXEDA/i6Q==
X-CSE-MsgGUID: kd0DFKUfT9C5yAPbi+fOIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71950552"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="71950552"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 13:06:07 -0700
X-CSE-ConnectionGUID: 0fT7ACV9ReSMnEL1YDB7Aw==
X-CSE-MsgGUID: x/i2n+oSRi6IROVzlqtXTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="176943295"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 13:06:05 -0700
Date: Mon, 22 Sep 2025 23:06:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/dp: Verify branch devices' overall pixel
 throughput/line width
Message-ID: <aNGsKkxRqraLY5dw@intel.com>
References: <20250918211223.209674-1-imre.deak@intel.com>
 <20250918211223.209674-5-imre.deak@intel.com>
 <aNGlDi2n_C5pNFXk@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aNGlDi2n_C5pNFXk@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 22, 2025 at 10:35:42PM +0300, Ville Syrjälä wrote:
> On Fri, Sep 19, 2025 at 12:12:22AM +0300, Imre Deak wrote:
> > Read out the branch devices' maximum overall DSC pixel throughput and
> > line width and verify the mode's corresponding pixel clock and hactive
> > period against these.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  8 +++
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 62 +++++++++++++++++++
> >  2 files changed, 70 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 358ab922d7a76..73bdafae604f8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -552,6 +552,14 @@ struct intel_connector {
> >  
> >  		u8 dsc_hblank_expansion_quirk:1;
> >  		u8 dsc_decompression_enabled:1;
> > +
> > +		struct {
> > +			struct {
> > +				int rgb_yuv444;
> > +				int yuv422_420;
> > +			} overall_throughput;
> > +			int max_line_width;
> > +		} dsc_branch_caps;
> >  	} dp;
> >  
> >  	struct {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 8cc123b0fd752..dd082d2fcc968 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1042,6 +1042,20 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
> >  	int tp_yuv422_420;
> >  	u8 val;
> >  
> > +	/*
> > +	 * TODO: Use the throughput value specific to the actual RGB/YUV
> > +	 * format of the output.
> > +	 * The RGB/YUV444 throughput value should be always either equal
> > +	 * or smaller than the YUV422/420 value, but let's not depend on
> > +	 * this assumption.
> > +	 */
> > +	if (mode_clock > max(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
> > +			     connector->dp.dsc_branch_caps.overall_throughput.yuv422_420))
> > +		return 0;
> > +
> > +	if (mode_hdisplay > connector->dp.dsc_branch_caps.max_line_width)
> > +		return 0;
> 
> Looks like you only initialize these when the branch device supports
> decompression. What about a branch device that can do pass-through but
> no decompression? Should we even be checking these when doing
> pass-through?

Ah, we read them from the decompression_aux, which I presume is always
the thing that we want to do the decompression.

So in the passthrough case it will be the sink, and then we take the
early !is_branch exit from init_dsc_overall_throughput_limits().
Same for eDP.

> 
> > +
> >  	val = connector->dp.dsc_dpcd[DP_DSC_PEAK_THROUGHPUT - DP_DSC_SUPPORT];
> >  	tp_rgb_yuv444 = dsc_per_slice_throughput(display, mode_clock,
> >  						 REG_FIELD_GET8(DP_DSC_THROUGHPUT_MODE_0_MASK,
> > @@ -4204,6 +4218,44 @@ static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
> >  		    dsc_dpcd);
> >  }
> >  
> > +static int dsc_branch_overall_throughput(u8 bw_code)
> > +{
> > +	switch (bw_code) {
> > +	case 0:
> > +		return INT_MAX;
> > +	case 1:
> > +		return 680000;
> > +	default:
> > +		return 600000 + 50000 * bw_code;
> > +	}
> > +}
> > +
> > +static void init_dsc_overall_throughput_limits(struct intel_connector *connector, bool is_branch)
> > +{
> > +	u8 branch_caps[3];
> > +
> > +	connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444 = INT_MAX;
> > +	connector->dp.dsc_branch_caps.overall_throughput.yuv422_420 = INT_MAX;
> > +	connector->dp.dsc_branch_caps.max_line_width = INT_MAX;
> > +
> > +	if (!is_branch)
> > +		return;
> > +
> > +	if (drm_dp_dpcd_read_data(connector->dp.dsc_decompression_aux,
> > +				  DP_DSC_BRANCH_OVERALL_THROUGHPUT_0, branch_caps,
> > +				  sizeof(branch_caps)) != 0)
> > +		return;
> > +
> > +	connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444 =
> > +		dsc_branch_overall_throughput(branch_caps[0]);
> > +
> > +	connector->dp.dsc_branch_caps.overall_throughput.yuv422_420 =
> > +		dsc_branch_overall_throughput(branch_caps[1]);
> > +
> > +	if (branch_caps[2] != 0)
> > +		connector->dp.dsc_branch_caps.max_line_width = branch_caps[2] * 320;
> 
> That max line width calculation should probably be a function as well
> so that it can later be moved into some drm helper file along with the
> other functions.
> 
> > +}
> > +
> >  void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
> >  			       const struct drm_dp_desc *desc, bool is_branch,
> >  			       struct intel_connector *connector)
> > @@ -4219,6 +4271,8 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
> >  	/* Clear fec_capable to avoid using stale values */
> >  	connector->dp.fec_capability = 0;
> >  
> > +	memset(&connector->dp.dsc_branch_caps, 0, sizeof(connector->dp.dsc_branch_caps));
> > +
> >  	if (dpcd_rev < DP_DPCD_REV_14)
> >  		return;
> >  
> > @@ -4233,6 +4287,11 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
> >  
> >  	drm_dbg_kms(display->drm, "FEC CAPABILITY: %x\n",
> >  		    connector->dp.fec_capability);
> > +
> > +	if (!(connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED))
> > +		return;
> > +
> > +	init_dsc_overall_throughput_limits(connector, is_branch);
> >  }
> >  
> >  static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *connector)
> > @@ -4241,6 +4300,9 @@ static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *
> >  		return;
> >  
> >  	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux, connector->dp.dsc_dpcd);
> > +
> > +	if (connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED)
> > +		init_dsc_overall_throughput_limits(connector, false);
> >  }
> >  
> >  static void
> > -- 
> > 2.49.1
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
