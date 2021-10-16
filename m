Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEADF430073
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Oct 2021 07:50:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEA326E408;
	Sat, 16 Oct 2021 05:50:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF7A6E408
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Oct 2021 05:50:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10138"; a="228309201"
X-IronPort-AV: E=Sophos;i="5.85,377,1624345200"; d="scan'208";a="228309201"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 22:50:34 -0700
X-IronPort-AV: E=Sophos;i="5.85,377,1624345200"; d="scan'208";a="660738990"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 22:50:33 -0700
Date: Sat, 16 Oct 2021 08:50:29 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: "Souza, Jose" <jose.souza@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <20211016055029.GB1027064@ideak-desk.fi.intel.com>
References: <20211015121031.870282-1-imre.deak@intel.com>
 <b5ca89da3e8e7d3cff3c314e0b99807416b4e416.camel@intel.com>
 <87v91yt0dp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87v91yt0dp.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Skip the HW readout of DPCD on
 disabled encoders
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

On Sat, Oct 16, 2021 at 12:59:46AM +0300, Jani Nikula wrote:
> On Fri, 15 Oct 2021, "Souza, Jose" <jose.souza@intel.com> wrote:
> > On Fri, 2021-10-15 at 15:10 +0300, Imre Deak wrote:
> >> Reading out the DP encoders' DPCD during booting or resume is only
> >> required for enabled encoders: such encoders may be modesetted during
> >> the initial commit and the link training this involves depends on an
> >> initialized DPCD. For DDI encoders reading out the DPCD is skipped, do
> >> the same on pre-DDI platforms.
> >
> > Missing fixes tag
> >
> >> 
> >> Cc: José Roberto de Souza <jose.souza@intel.com>
> >> Signed-off-by: Imre Deak <imre.deak@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
> >>  1 file changed, 3 insertions(+)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 9d8132dd4cc5a..23de500d56b52 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -2007,6 +2007,9 @@ void intel_dp_sync_state(struct intel_encoder *encoder,
> >>  {
> >>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> >>  
> >> +	if (!crtc_state)
> >> +		return;
> >
> > crtc_state is not used
> 
> This is why it's so subtle. The commit a532cde31de3 ("drm/i915/tc: Fix
> TypeC port init/resume time sanitization") changes when the sync_state
> hook is called, and now it's also called for disabled encoders, and
> crtc_state != NULL is the way to check that now. Which absolutely must
> be documented in this fix! (And I'm not sure if even that is enough in
> the long term, it seems to me the change is just too subtle and we'll
> get it wrong again.)

The intention was to call the hook on TypeC platforms, where the
encoder/PHY state has to be synced even if the encoder is disabled. I
missed both the dsi and - as now turns out - the g4x dp hooks which I
intended in a532cde31de3 to keep behaving as before.

> I'm guessing the intel_dp_max_common_rate() call gets inlined in
> intel_dp_sync_state(), and it goes wrong with intel_dp->num_common_rates
> being 0 and the array index being -1.

Yes, I came to the same conclusion, see
https://gitlab.freedesktop.org/drm/intel/-/issues/4297

Luckily this doesn't cause an actual problem for regular users, since
the out-of-bound 

intel_dp->common_rates[intel_dp->num_common_rates - 1];

access in intel_dp_max_common_rate() in case num_common_rates is 0 will
just return the value of intel_dp->num_common_rates (0). If
KCONFIG_UBSAN is enabled this access will trigger a kernel crash assert
(again luckily for us, even though there could be an explanation message
for the assert).

I'll resend this patch with the root cause for 4297 explained, and
stable CC'd. Also I'll send related patches that will ensure that the
link config parameters derived from DPCD have a valid default value
even in the lack of a valid DPCD.

Imo we should also enable KCONFIG_UBSAN in CI.

> Anyway, having said that, we'll need to stop guessing and dig into the
> root cause.
> 
> BR,
> Jani.
> 
> >
> >> +
> >>  	/*
> >>  	 * Don't clobber DPCD if it's been already read out during output
> >>  	 * setup (eDP) or detect.
> >
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
