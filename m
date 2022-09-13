Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D35FE5B6949
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 10:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5254E10E63E;
	Tue, 13 Sep 2022 08:15:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AB8610E63E
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 08:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663056920; x=1694592920;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nQCBh+2FSQu+UIA/WNCCupn3V10Ntl3lCTfgIBi+nG8=;
 b=GLjy5oRvRw0vezGjSLVJ9MSEx5yKwzNwz5n1DJT+sZ8vFjNDLSBv+ikS
 zAffNzEX/t7d8lZake6z5S1d6sZuovPVLiaLiOrSGBb9OBukkftzqqvAJ
 4E1u1Iw9mjYsolBRLT7h4CHj2sk4O5wUbWp1CqDVhdtszZ/LhmFGsF5QP
 Axq60RcJqNkl7WHJmXIi+wNQy9gv5Wd6eCkW6wJZJBdaHdhAum6+/EiEU
 ujoN0OUJBvjvg3bG6h0WC236XNfYmEYNqKcA83/fffeCwJumBEG4k87Fx
 P8CShqZAdlfTUzXw3E1inLe9h89nMWd8/LWVrlVjGUzmS0o8B+sH91ZJg A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="278470266"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="278470266"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 01:15:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="593844906"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 13 Sep 2022 01:15:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 Sep 2022 11:15:15 +0300
Date: Tue, 13 Sep 2022 11:15:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <YyA8E0ZtOpR9hml4@intel.com>
References: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
 <20220901060101.1000290-5-ankit.k.nautiyal@intel.com>
 <Yx+AjCFEwgUGEfTC@intel.com>
 <cb75d799-1275-def2-ecc6-ecf082d66d53@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cb75d799-1275-def2-ecc6-ecf082d66d53@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915/display: Add new members to
 configure PCON color conversion
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

On Tue, Sep 13, 2022 at 10:55:24AM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/13/2022 12:25 AM, Ville Syrjälä wrote:
> > On Thu, Sep 01, 2022 at 11:30:56AM +0530, Ankit Nautiyal wrote:
> >> The decision to use DFP output format conversion capabilities should be
> >> during compute_config phase.
> >>
> >> This patch adds new members to crtc_state to help configure the DFP
> >> output related conversions. Also adds a member to intel_dp to store
> >> ycbcr420 pass through capability.
> >>
> >> This will help to store only the format conversion capabilities of the
> >> DP device in intel_dp->dfp, and use crtc_state to compute and store the
> >> configuration for color/format conversion for a given mode.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_display_types.h | 7 +++++++
> >>   1 file changed, 7 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> index 0da9b208d56e..065ed19a5dd3 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> @@ -1311,6 +1311,12 @@ struct intel_crtc_state {
> >>   
> >>   	/* for loading single buffered registers during vblank */
> >>   	struct drm_vblank_work vblank_work;
> >> +
> >> +	/* DP DFP color configuration */
> >> +	struct {
> >> +		bool rgb_to_ycbcr;
> >> +		bool ycbcr_444_to_420;
> >> +	} dp_dfp_config;
> > Hmm. I'm thinking just something like
> >   enum intel_output_format sink_format;
> > might be easier to deal with.
> 
> Thanks Ville for looking into this.
> 
> We indeed can compute the final sink_format during compute config (based 
> on pcon color conversion capability + platform capability)
> 
> IIUC, then during config_protocol_converter we need to compute what 
> conversion need to be done based on crtc->output_format and 
> crtc->sink_format
> 
> eg. For sink_format YCBCR420:
> 
> 1. if output_format is RGB -> configure  : rgb_to_ycbcr420 and 
> ycbcr444_to_420
> 
> 2. if output_format is YCBCR444 -> configure  : ycbcr444_to_420
> 
> 3. if output_format is YCBCR420 -> configure : Do nothing YCBCR420 
> passthrough
> 
> So we store the sink_format and configuration is implicit in this case.
> 
> The idea with the dp_dfp_config was to store the conversion config to be 
> done by PCON with given output_format.
> 
> The sink_format in that case is implicit.
> 
> I am open to storing the sink_format too.
> 
> Can this be handy for other encoder as well, or this will be used for DP 
> DFPs only?

If other output types end up getting some kind of converterts
then yeah sink_format would work there as well. I think initally
we should just populate it the same as output_format for all
encoder types, and add it to the crtc state dump. Unfortunately
I don't think we can add it to the state checker on account of
the user being able to yank out the dongle mid-modeset.

> 
> Regards,
> 
> Ankit
> 
> 
> 
> >>   };
> >>   
> >>   enum intel_pipe_crc_source {
> >> @@ -1704,6 +1710,7 @@ struct intel_dp {
> >>   		int pcon_max_frl_bw;
> >>   		u8 max_bpc;
> >>   		bool ycbcr_444_to_420;
> >> +		bool ycbcr420_passthrough;
> >>   		bool rgb_to_ycbcr;
> >>   	} dfp;
> >>   
> >> -- 
> >> 2.25.1

-- 
Ville Syrjälä
Intel
