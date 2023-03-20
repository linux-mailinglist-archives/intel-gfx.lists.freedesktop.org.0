Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EE96C0C34
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 09:27:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D2310E283;
	Mon, 20 Mar 2023 08:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E32510E283
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 08:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679300822; x=1710836822;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1SFYq2tb/Dz7/U3/pM00s6AdKyQDZFwoNhyUr8kx6hA=;
 b=fA6RC/qttv95zIQA2Aiii/2znPcF3yaxKo3J7ZgpJqq66L0vQI7FtVoV
 eCDPgWd3IRUcRz9OWeRokzRIu29z9xUATZNgzsZOtPxnN6bI3cYvjdPep
 uEvwLg/0sENq/lQ5WD+4XjqXcXj1lRJV6VC+jwzdWuMnmoYOZj0BYAy/h
 h/r1qnqmIduicYqFO9d2bN3vasIX85SC2PeaNzZqJ0PrxgkZK1L6RfI8L
 LhILI0Du9NPmrcB7rf0CGXXZ33TheEcQeL6V9rZc4XuxW5CrH28k2SOCK
 3eTjbYwt5cYB0PKToTPxX66CNxMpruMLZlX9woMm6ghz1Bx5VuV4hwvdp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="326974331"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="326974331"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 01:27:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="770111544"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="770111544"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Mar 2023 01:26:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 10:26:58 +0200
Date: Mon, 20 Mar 2023 10:26:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <ZBgY0qtd2liVZt8q@intel.com>
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
 <20230314110415.2882484-7-ankit.k.nautiyal@intel.com>
 <ZBO7vvuob0AHHmwZ@intel.com>
 <3abeb6b7-18b4-26cd-be4e-2644bfe18dc9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3abeb6b7-18b4-26cd-be4e-2644bfe18dc9@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v11 06/11] drm/i915/dp: Consider
 output_format while computing dsc bpp for mode_valid
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

On Mon, Mar 20, 2023 at 09:06:25AM +0530, Nautiyal, Ankit K wrote:
> 
> On 3/17/2023 6:30 AM, Ville Syrjälä wrote:
> > On Tue, Mar 14, 2023 at 04:34:10PM +0530, Ankit Nautiyal wrote:
> >> During modevalid step, the pipe bpp is computed assuming RGB output
> >> format. When checking with DSC, consider the output_format and compute
> >> the input bpp for DSC appropriately.
> >>
> >> v2: For DP-MST we currently use RGB output format only, so continue
> >> using RGB while computing dsc_bpp for MST case.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_dp.c     | 28 ++++++++++++++++-----
> >>   drivers/gpu/drm/i915/display/intel_dp.h     |  4 ++-
> >>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
> >>   3 files changed, 26 insertions(+), 8 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index dcb3c2519041..499390c519ca 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -1110,11 +1110,21 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> >>   
> >>   	if (HAS_DSC(dev_priv) &&
> >>   	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
> >> +		int pipe_bpp;
> >> +		enum intel_output_format output_format, sink_format;
> >> +		const struct drm_display_info *info = &connector->base.display_info;
> >> +
> >> +		if (	(info, mode))
> >> +			sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> >> +		else
> >> +			sink_format = INTEL_OUTPUT_FORMAT_RGB;
> > I think I saw this same code duplicated somewhere else already.
> > Time for a intel_dp_sink_format()?
> 
> Yes this can be made as a common function, also used in 
> intel_dp_mode_min_output_bpp.
> 
> Will add the helper intel_dp_sink_format for this.
> 
> >
> >> +
> >> +		output_format = intel_dp_output_format(connector, sink_format);
> >>   		/*
> >>   		 * TBD pass the connector BPC,
> >>   		 * for now U8_MAX so that max BPC on that platform would be picked
> >>   		 */
> >> -		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
> >> +		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, output_format, U8_MAX);
> >>   
> >>   		/*
> >>   		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> >> @@ -1454,12 +1464,15 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
> >>   	return -EINVAL;
> >>   }
> >>   
> >> -int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
> >> +int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp,
> >> +			     enum intel_output_format output_format,
> >> +			     u8 max_req_bpc)
> >>   {
> >>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >>   	int i, num_bpc;
> >>   	u8 dsc_bpc[3] = {0};
> >>   	u8 dsc_max_bpc;
> >> +	int pipe_bpp = 0;
> >>   
> >>   	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
> >>   	if (DISPLAY_VER(i915) >= 12)
> >> @@ -1470,11 +1483,13 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
> >>   	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
> >>   						       dsc_bpc);
> >>   	for (i = 0; i < num_bpc; i++) {
> >> -		if (dsc_max_bpc >= dsc_bpc[i])
> >> -			return dsc_bpc[i] * 3;
> >> +		if (dsc_max_bpc >= dsc_bpc[i]) {
> >> +			pipe_bpp = dsc_bpc[i] * 3;
> >> +			break;
> >> +		}
> >>   	}
> >>   
> >> -	return 0;
> >> +	return intel_dp_output_bpp(output_format, pipe_bpp);
> > The pipe_bpp vs. output_bpp terms seem a bit confused now in the dsc
> > code.
> >
> > In the non-compressed cases pipe_bpp does not include any
> > subsampling, output_bpp is the subsampled version.
> >
> > What this dsc code seems to want is an intermediate value which
> > is the subsampled pipe_bpp that is the input to dsc compressor?
> > And output_bpp/dsc.compressed_bpp is then the final bpp coming
> > out of the compressor.
> 
> 
> Yes I now realize, this is wrong, it should have been pipe_bpp not the 
> subsampled pipe_bpp.
> 
> As I understand, we are using subsampled pipe_bpp only to compute the 
> bandwidth/clock checks.
> 
> You are right, we need use pipe_bpp for programming, and the same is 
> input to DSC, and not the subsampled pipe_bpp.
> 
> I Will remove this line from the function.
> 
> >
> > I think we should invent a consistent set of names for each so that
> > it's clear which value the code is concerned with.
> 
> Yes you are right output_bpp is used as compressed_bpp in some places, 
> functions.
> 
> We can go with something like this perhaps:
> 
> pipe_bpp : the actual bits_per_pixel, that we program
> 
> output_bpp : In case of YcbCr420,422 output format bytes_per_pixel will 
> be half the number of bytes of RGB pixel.
> 
> compressed_bpp : (Only for DSC case) the target BPP for the DSC encoder, 
> after compression.
> 
> Does this make sense? I can try to have a separate patch for this.

Then I think we need a new name for the final bpp in
intel_dp_compute_config() at least. Hmm, maybe link_bpp?
intel_dp_compute_link_config_wide() should perhaps use that
same name as well.

> 
> 
> >>   }
> >>   
> >>   static int intel_dp_source_dsc_version_minor(struct intel_dp *intel_dp)
> >> @@ -1588,7 +1603,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> >>   		return -EINVAL;
> >>   
> >>   	if (compute_pipe_bpp)
> >> -		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
> >> +		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, pipe_config->output_format,
> >> +						    conn_state->max_requested_bpc);
> > This pipe_bpp gets plugged back into crtc_state->pipe_bpp later and
> > then it'll be the subsampled version. I don't think that is what we want
> > eg. for dithering setup and whatnot.
> 
> You  are right, this is incorrect. Removing the line as mentioned above 
> will fix this.
> 
> Thanks for pointing out this issue. I will fix this in next version of 
> the patch.
> 
> 
> Regards,
> 
> Ankit
> 
> >
> >>   	else
> >>   		pipe_bpp = pipe_config->pipe_bpp;
> >>   
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> >> index ef39e4f7a329..2f4136e43f38 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> >> @@ -102,7 +102,9 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
> >>   		       struct intel_crtc_state *crtc_state,
> >>   		       unsigned int type);
> >>   bool intel_digital_port_connected(struct intel_encoder *encoder);
> >> -int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
> >> +int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp,
> >> +			     enum intel_output_format output_format,
> >> +			     u8 dsc_max_bpc);
> >>   u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
> >>   				u32 link_clock, u32 lane_count,
> >>   				u32 mode_clock, u32 mode_hdisplay,
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> index ff0b821a901a..bdc5c53ccd75 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> @@ -917,7 +917,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> >>   		 * TBD pass the connector BPC,
> >>   		 * for now U8_MAX so that max BPC on that platform would be picked
> >>   		 */
> >> -		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
> >> +		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, INTEL_OUTPUT_FORMAT_RGB, U8_MAX);
> >>   
> >>   		if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
> >>   			dsc_max_output_bpp =
> >> -- 
> >> 2.25.1

-- 
Ville Syrjälä
Intel
