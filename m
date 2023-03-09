Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA8B6B2135
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 11:21:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E8410E7DC;
	Thu,  9 Mar 2023 10:21:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A89B10E7DC
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 10:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678357265; x=1709893265;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=q8o+YoCsxSKwBlMbn79D+CWE2Rj2ExEemGKmqcqOb1s=;
 b=jCqLPF0nSCaq8Vv/Eumr4JDZ67vHDnWg1ZIPHW5F05ubpzvpk88DyAXq
 UxKivfw8/RjecdoLmQY84Iy6KmB16y8ZgltqaL3EHDxZGou7zrQEM+CGS
 xHfpTv4/DNBCQaHH69TmN1lxJrkgF9vMP5ZGlP0N2V50I8LlveVlRKVeC
 LVfAuxCajUFHlmrlPJ8QS8LO3hqeNf9AbXb9XEEVxdmuCnWUYh14JLHl0
 82yoCPfHzxbaffHnw7MdryZyZSI2xJBRRHIZ+uOQiXVV/6PIZmwizZP5g
 GzcGzIyjko1yVDlmybeM4ptNv99gw3A+siwZb17PtbhvaDPT1YTmcLQ8w g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="316804612"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="316804612"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 02:21:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="820553783"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="820553783"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 09 Mar 2023 02:21:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Mar 2023 12:21:01 +0200
Date: Thu, 9 Mar 2023 12:21:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <ZAmzDWtv1DrR68I6@intel.com>
References: <20230227040324.130811-1-ankit.k.nautiyal@intel.com>
 <20230227040324.130811-4-ankit.k.nautiyal@intel.com>
 <ZAilganP5W3sCgG1@intel.com> <ZAipD8UzhW3dOUGW@intel.com>
 <885ac9ea-97cf-b35d-c75a-6f1d28c27386@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <885ac9ea-97cf-b35d-c75a-6f1d28c27386@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v10 03/13] drm/i915/dp: Add Scaler
 constraint for YCbCr420 output
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

On Thu, Mar 09, 2023 at 02:01:06PM +0530, Nautiyal, Ankit K wrote:
> Hi Ville,
> 
> Thanks for the comments and suggestions. Please find my response inline:
> 
> On 3/8/2023 8:56 PM, Ville Syrjälä wrote:
> > On Wed, Mar 08, 2023 at 05:10:57PM +0200, Ville Syrjälä wrote:
> >> On Mon, Feb 27, 2023 at 09:33:14AM +0530, Ankit Nautiyal wrote:
> >>> For YCbCr420 output, scaler is required for downsampling.
> >>> Scaler can be used only when source size smaller than max_src_w and
> >>> max_src_h as defined by for the platform.
> >>> So go for native YCbCr420 only if there are no scaler constraints.
> >>>
> >>> v2: Corrected max-width based on Display Version.
> >>>
> >>> v3: Updated max-width as per latest Bspec change.
> >>>
> >>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>> ---
> >>>   drivers/gpu/drm/i915/display/intel_dp.c | 41 ++++++++++++++++++++++---
> >>>   1 file changed, 37 insertions(+), 4 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >>> index 1a30cc021b25..e95fc0f0d13a 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >>> @@ -804,11 +804,36 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
> >>>   	return 0;
> >>>   }
> >>>   
> >>> +static bool
> >>> +ycbcr420_scaler_constraints(struct drm_i915_private *i915,
> >>> +			    const struct drm_display_mode *mode)
> >>> +{
> >>> +	int max_src_w, max_src_h;
> >>> +
> >>> +	if (DISPLAY_VER(i915) < 11) {
> >>> +		max_src_w = 4096;
> >>> +		max_src_h = 4096;
> >>> +	} else if (DISPLAY_VER(i915) < 12) {
> >>> +		max_src_w = 5120;
> >>> +		max_src_h = 4096;
> >>> +	} else if (DISPLAY_VER(i915) < 14) {
> >>> +		max_src_w = 5120;
> >>> +		max_src_h = 8192;
> >>> +	} else {
> >>> +		max_src_w = 4096;
> >>> +		max_src_h = 8192;
> >>> +	}
> >>> +
> >>> +	return mode->hdisplay > max_src_w || mode->vdisplay > max_src_h;
> >>> +}
> >>> +
> >> I don't really like this. If we do something like this
> >> then it should be the scaler code that checks this stuff.
> 
> Makes sense, this does belong to the scaler file and scaler checks.
> 
> 
> >>
> >> However, after pondering about this more I'm actually
> >> leaning towards using 4:4:4 output whenever possible,
> >> only going for 4:2:0 if absolutely necessary. That
> >> avoids having to deal with all the annoying scaler/etc
> >> limitations.
> > In fact perhaps best to try RGB first (also avoids the whole
> > pipe CSC mess on glk), then YCbCr 4:4:4 (still avoids the
> > scaler mess), and finally accepting that we need to do
> > native YCbCr 4:2:0 output.
> 
> Ok so if I understand correctly, in intel_dp_output_format()
> 
> If sink_format is YCBCR420:
> 
> -first try with output_format as RGB and RGB->YCBCR420 conv via DFP (if 
> conv supported)
> 
> -Or else try with output_format as YCBCR444 and use YCBCR444->YCBCR420 
> conv via DFP (if conv supported)
> 
> -else try with output_format YCBCR420.

Yeah something along those lines. Maybe it can be expressed
in a pretty generic way even:

if (sink_format=RGB||dfp_can_convert_from_rgb(sink_format))
	return RGB;
if (sink_format=YCbCr444||dfp_can_convert_from_ycbcr444(sink_format))
	return YCbCr444;
return sink_format;

> 
> If there are indeed scaler constraints, those are to be taken care in 
> scaler check code.
> 
> Shall I drop the scaler constraint for now and have that as a separate 
> series?

Don't we already have sufficient checks in the scaler code?
Well, if not a separate series for that seems better.

-- 
Ville Syrjälä
Intel
