Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D672CA23F9E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 16:26:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A07D10E3A0;
	Fri, 31 Jan 2025 15:26:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SiZNd4Xf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7457310E393;
 Fri, 31 Jan 2025 15:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738337190; x=1769873190;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=XoTqNgGJK6DtUFz1OIDJf0+aWM3LTdr3maAdHLPXAzw=;
 b=SiZNd4Xf46IuI4s+/j7VnTZkgjPeaYW6bdRxp9Cw1SdTXLAcYreLa87Y
 UnzTFswDouuFt9gfIObvx0bTgnjmFFtNGnPTkDBPL1lDbWZuCMOVrrDlZ
 4E0Xpf0XtQ38UqyNQ0JZl18ujg1RsO85jvquDm+zXi3hmJVn/RTZQcDFW
 w0EcPjE2wnmQVKppL2fM2f+cDvZBjKY7iL8qMVKEkpMm5atZElM3bpNbK
 jSiVyuGdZJKcHkS+3oTyqjgZpMue28dy4e9l92fKBnW0hFtO9S+wcMNa0
 Ob4MGIg4yUuCYGHiRcRl0VJmOF+Ntrlvf0mE4YYecdLDv4w9X9Z+X2XZc g==;
X-CSE-ConnectionGUID: axWIqQvGS8O+Pr4dI8aAbQ==
X-CSE-MsgGUID: yob8DZv2TIGWNn+Vw1euAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38790287"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38790287"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 07:26:30 -0800
X-CSE-ConnectionGUID: pSUn7/H+RCCtfMYMeLM7xA==
X-CSE-MsgGUID: l3xkmzGlSHWep77Foer46A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114806661"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 07:26:29 -0800
Date: Fri, 31 Jan 2025 17:27:25 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/14] drm/i915/dp: Use int for compressed BPP in
 dsc_compute_link_config()
Message-ID: <Z5zr3W7aAWTXnlfT@ideak-desk.fi.intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
 <b8f9aebc4e40afeed3d723f98cae96c9c927a480.1738327620.git.jani.nikula@intel.com>
 <Z5zncd8R16GC1Lvf@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z5zncd8R16GC1Lvf@ideak-desk.fi.intel.com>
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

On Fri, Jan 31, 2025 at 05:08:33PM +0200, Imre Deak wrote:
> On Fri, Jan 31, 2025 at 02:50:04PM +0200, Jani Nikula wrote:
> > Just use ints unless there are actual reasons to do otherwise. Here,
> > there are not.
> > 
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 7a8a4df1bf1e..7c6d277729d0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1926,7 +1926,7 @@ static bool intel_dp_dsc_supports_format(const struct intel_connector *connector
> >  	return drm_dp_dsc_sink_supports_format(connector->dp.dsc_dpcd, sink_dsc_format);
> >  }
> >  
> > -static bool is_bw_sufficient_for_dsc_config(u16 compressed_bppx16, u32 link_clock,
> > +static bool is_bw_sufficient_for_dsc_config(int dsc_bpp_x16, u32 link_clock,
> >  					    u32 lane_count, u32 mode_clock,
> >  					    enum intel_output_format output_format,
> >  					    int timeslots)
> > @@ -1934,7 +1934,7 @@ static bool is_bw_sufficient_for_dsc_config(u16 compressed_bppx16, u32 link_cloc
> >  	u32 available_bw, required_bw;
> >  
> >  	available_bw = (link_clock * lane_count * timeslots * 16)  / 8;
> > -	required_bw = compressed_bppx16 * (intel_dp_mode_to_fec_clock(mode_clock));
> > +	required_bw = dsc_bpp_x16 * (intel_dp_mode_to_fec_clock(mode_clock));
> 
> This reduces the range for dsc_bpp_x16 and mode_clock where the above
> multiply won't overflow, but afaics with the current max values of those
> this is still ok:

Actually it doesn't reduce the range, since intel_dp_mode_to_fec_clock()
returns u32, so nvm the above comment.

> Reviewed-by: Imre Deak <imre.deak@intel.com>
> 
> >  
> >  	return available_bw > required_bw;
> >  }
> > @@ -1942,7 +1942,7 @@ static bool is_bw_sufficient_for_dsc_config(u16 compressed_bppx16, u32 link_cloc
> >  static int dsc_compute_link_config(struct intel_dp *intel_dp,
> >  				   struct intel_crtc_state *pipe_config,
> >  				   const struct link_config_limits *limits,
> > -				   u16 compressed_bppx16,
> > +				   int dsc_bpp_x16,
> >  				   int timeslots)
> >  {
> >  	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
> > @@ -1957,7 +1957,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
> >  		for (lane_count = limits->min_lane_count;
> >  		     lane_count <= limits->max_lane_count;
> >  		     lane_count <<= 1) {
> > -			if (!is_bw_sufficient_for_dsc_config(compressed_bppx16, link_rate,
> > +			if (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16, link_rate,
> >  							     lane_count, adjusted_mode->clock,
> >  							     pipe_config->output_format,
> >  							     timeslots))
> > -- 
> > 2.39.5
> > 
