Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9390E629692
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 12:00:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3AF110E12A;
	Tue, 15 Nov 2022 11:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3540910E12A
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 11:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668510051; x=1700046051;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=P65ZuIj2sdMIpCRlybj5SjBVuOqobLKy4oZ2gl0fcWQ=;
 b=bgVo45QothTojlOnLnFKXdIu/rTsBYMkpJDDiGCSgtewSZIidUiOHb9E
 TVg6zjs5UNqCQ7LssPnLHNrI8Y526ulRLIRPvHtXnGmHtbXS6g5EGQq/t
 t7UOgVuBCrCV4zQCCsVmoAqEMkNjQjIJCJe5ln4pxESH+uGXUMfOpQfHe
 7d2OurXoso6Gfw3/rXsShcXFb6rxHVlTRiW8eTVVKui2HHGyv6LMPMhMv
 CV5Ir6QvZs7xPhSVk/Ztv7IoFD/ZhQi1MaisUPIHyVau2jsSN91jVGVTw
 NdQp2kEKPuYj39ZO72d8QUDgqw4BAHNZqtYWm6ZMIsdMAK9ueIFvlx7pD g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="313373216"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="313373216"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 03:00:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="702394112"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="702394112"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 15 Nov 2022 03:00:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Nov 2022 13:00:46 +0200
Date: Tue, 15 Nov 2022 13:00:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <Y3NxXuHncySq1aok@intel.com>
References: <20221028094411.3673476-1-ankit.k.nautiyal@intel.com>
 <20221028094411.3673476-4-ankit.k.nautiyal@intel.com>
 <Y21nzJlANRVahZ0+@intel.com>
 <c8d47583-2bd6-7383-14f4-d622b9eefa36@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c8d47583-2bd6-7383-14f4-d622b9eefa36@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v5 3/9] drm/i915/dp: Replace intel_dp.dfp
 members with the new crtc_state sink_format
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

On Tue, Nov 15, 2022 at 12:23:53PM +0530, Nautiyal, Ankit K wrote:
> 
> On 11/11/2022 2:36 AM, Ville Syrjälä wrote:
> > On Fri, Oct 28, 2022 at 03:14:05PM +0530, Ankit Nautiyal wrote:
> >> The decision to use DFP output format conversion capabilities should be
> >> during compute_config phase.
> >>
> >> This patch uses the members of intel_dp->dfp to only store the
> >> format conversion capabilities of the DP device and uses the crtc_state
> >> sink_format member, to program the protocol-converter for
> >> colorspace/format conversion.
> >>
> >> v2: Use sink_format to determine the color conversion config for the
> >> pcon (Ville).
> >>
> >> v3: Fix typo: missing 'break' in switch case (lkp kernel test robot).
> >>
> >> v4: Add helper to check if DP supports YCBCR420.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_dp.c | 122 ++++++++++++++++--------
> >>   1 file changed, 84 insertions(+), 38 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 0e4f7b467970..95d0c653db7f 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -790,6 +790,7 @@ intel_dp_output_format(struct intel_connector *connector,
> >>   		       enum intel_output_format sink_format)
> >>   {
> >>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
> >> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >>   
> >>   	if (!connector->base.ycbcr_420_allowed ||
> >>   	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
> >> @@ -799,6 +800,10 @@ intel_dp_output_format(struct intel_connector *connector,
> >>   	    intel_dp->dfp.ycbcr_444_to_420)
> >>   		return INTEL_OUTPUT_FORMAT_RGB;
> >>   
> >> +	/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
> >> +	if (DISPLAY_VER(i915) >= 11 && intel_dp->dfp.ycbcr420_passthrough)
> >> +		return INTEL_OUTPUT_FORMAT_YCBCR420;
> >> +
> >>   	if (intel_dp->dfp.ycbcr_444_to_420)
> >>   		return INTEL_OUTPUT_FORMAT_YCBCR444;
> >>   	else
> > The else branch here is also 420, so the whole logic
> > here doesn't seem to flow entirely sensibly.
> >
> > Thinking a bit more abstractly, could we restate
> > this whole problem as something more like this?
> >
> > if (source_can_output(sink_format))
> > 	return sink_format;
> >
> > if (source_can_output(RGB) &&
> >      dfp_can_convert_from_rgb(sink_format))
> > 	return RGB;
> >
> > if (source_can_output(YCBCR444) &&
> >      dfp_can_convert_from_ycbcr444(sink_format))
> > 	return YCBCR444;
> 
> This make sense and will also help to add 422 support easier.
> 
> I am only seeing one problem: about how to have DSC considerations 
> during source_can_output( ).
> 
> Gen 11+ should support YCBCR420. So for any ycbcr420_only mode we should 
> have sink_format, and output_format : YCbCr420.
> 
> This works well for cases where DSC doesn't get in picture. When higher 
> modes like 8k60 ycbcr420_only are involved, we need to use DSC.
> 
> Currently, our DSC1.1 does not support YCbCr420. The problem is that we 
> go for, dsc_compute_config at a later time.
> 
> This issue might have been masked, due to the messy order of checks in  
> intel_dp_output_format.
> 
> Specifically With HDMI2.1 PCONs supporting color conv, for such a case 
> we can have output_format as RGB, and sink_format as YCbCr420.
> 
> The DSC compression with RGB and then configure PCON to Decompress, 
> conv. to YCbCr420.
> 
> So can we put a check in source_can_output for Gen11+ where DSC might be 
> required, so that with source_can_output(YCBCR420) returns false in such 
> case, where DSC is the only way?

I'm thinking it should work well enough without any extra checks
since we'll always try RGB before YCbC4 4:2:0. I guess the only
case where it could fail is if the sink only supports 4:2:0 for
that particular mode. Then we'd also try direct YCbC4 4:2:0 output
on icl+. Dunno if such sinks are still a thing when DSC is in the
picture.

Hmm. Do PCONs even support DSC + color conversion/etc. at the
same time? They'd have to decompress and potentially recompress
the data in that case.

The problem with adding DSC checks into source_can_output() is
that we'd need to express those in a way that is also usable in
.mode_valid() since we'd want to use the same code there I think.
Looks like we do have some DSC stuff in there already, but it
doesn't seem to take that into account in the link bandwidth
check. So to me it looks like the whole DSC support is incomplete
anyway.

-- 
Ville Syrjälä
Intel
