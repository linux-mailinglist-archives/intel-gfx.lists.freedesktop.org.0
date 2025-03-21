Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B1AA6C1D1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 18:45:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8453C10E030;
	Fri, 21 Mar 2025 17:45:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LvFSkQGk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC35610E030;
 Fri, 21 Mar 2025 17:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742579155; x=1774115155;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pHJUSf8+Secp7OfQGlj8BYHx0kM0zLaWBMoFwXZXLXs=;
 b=LvFSkQGkwu3CpjIrjcSL4Wf+k1gerJ9QNEaXzxHtqyS/hIWDHXtVOnWs
 YQsL3agtOX3LD+ls41uZbqikXbm80cHCMf551jCniF6uKkRpn5f+QbxVX
 9HU5mzbGjQIMS60TScGi5cmJ0EEq/vUCoaG2iw/biObJEr1LmTSfIKtJ9
 QpurZp6m34AmCqO7OqxJsI5JJVoaxqPVt/RBs1DtFwmkUINQjSW5/fBGj
 qoOHTb8JglFEJ9eyxUISxvVskko8NZ/Wo7v+s13km6biiE9plsYmBg+Go
 /ynQzeYkl5lbzyoGk9uyiCj/VsZJOD5+BAC7cgYFBfJb9kFFD9rmy4Jch g==;
X-CSE-ConnectionGUID: /BzFzypmS0ameSiWt3FVug==
X-CSE-MsgGUID: Y1F5nkCqSZqLND1/Dlzc5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43972182"
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="43972182"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 10:45:55 -0700
X-CSE-ConnectionGUID: Hub3u5w/Tj+cRYQHat8WNw==
X-CSE-MsgGUID: ZtbM03rsQviOOd72wtULKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="128684210"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 10:45:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Mar 2025 19:45:50 +0200
Date: Fri, 21 Mar 2025 19:45:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 02/16] drm/i915/vrr: Avoid reading vrr.enable based on
 fixed_rr check
Message-ID: <Z92lzs3Bagrgbyk6@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
 <20250318073540.2773890-3-ankit.k.nautiyal@intel.com>
 <Z92jIvuSzV257-VZ@intel.com>
 <f87ce829-e83f-4e5e-b9ae-bcb63cbf2fcf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f87ce829-e83f-4e5e-b9ae-bcb63cbf2fcf@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Mar 21, 2025 at 11:10:05PM +0530, Nautiyal, Ankit K wrote:
> 
> On 3/21/2025 11:04 PM, Ville Syrjälä wrote:
> > On Tue, Mar 18, 2025 at 01:05:26PM +0530, Ankit Nautiyal wrote:
> >> Currently, vrr.enable is intended only for variable refresh rate timings.
> >> At this point, we do not set fixed refresh rate timings, but the GOP can,
> >> which creates a problem during the readback of vrr.enable.
> >>
> >> The GOP enables the VRR timing generator with fixed timings, while the
> >> driver only recognizes the VRR timing generator as enabled with
> >> variable timings. This discrepancy causes an issue due to the
> >> fixed refresh rate check during readback. Since the VRR timing generator
> >> is enabled and we do not support fixed timings, the readback should set
> >> vrr.enable so that the driver can disable the VRR timing generator.
> >> However, the current check does not allow this.
> >>
> >> Therefore, remove the fixed refresh rate check during readback.
> >>
> >> Fixes: 27217f9d1856 ("drm/i915/vrr: Track vrr.enable only for variable timing")
> >> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_vrr.c | 3 +--
> >>   1 file changed, 1 insertion(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> >> index aa65a6933ddb..6bdcdfed4b9b 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> >> @@ -657,8 +657,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
> >>   		}
> >>   	}
> >>   
> >> -	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
> >> -				 !intel_vrr_is_fixed_rr(crtc_state);
> >> +	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> > Doesn't this break the state checker when we use the VRR timing
> > generator for fixed refresh modes?
> 
> Yes right, but currently those changes are not merged yet.
> 
> I have something like this [1], when we add support for VRR TG with 
> fixed refresh rate.
> 
> [1] https://patchwork.freedesktop.org/patch/643470/?series=134383&rev=16

Yeah, just saw it.

Given that, this is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> 
> Regards,
> 
> Ankit
> 
> 
> >
> >>   
> >>   	/*
> >>   	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
> >> -- 
> >> 2.45.2

-- 
Ville Syrjälä
Intel
