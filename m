Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA882976716
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 12:58:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 531AD10E215;
	Thu, 12 Sep 2024 10:58:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CY0ecURw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FFB110E215
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 10:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726138710; x=1757674710;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8UqAIn+49D6dbSx7jR/Oz4CPkSWVBPEwISMJOTZTqdM=;
 b=CY0ecURwrsU70ako1e6dikXkNcc3eHiYcG3PLIDe7UVEQ/JgnMJokX7L
 5F3xZshI1E1X0KbbVbHo4PQEPKPoR9pxKVcY+Ckv44EOCYRfSLA3e9WRt
 0JeKbbow/1fyBt24ORzTPLCBGJCQn0zL0zoJ4KnGg++5zMSpXMuf5kR3W
 b9Y2EQvy5XrtUyWfqtRS3wSG+N/y0hKGZKMiQ+dQjJvCGz9lHCMHkBPfa
 P121MZe6FwX+1ooIMLRqpzu7E4NyRMGQq92zf5ZOsIsLdQlcel+1tHcsU
 FP77swJ16VaNJUxvXQHCZGd79yM1LxAOkWoUjwl7tgevGR8cPfIJuFk+v Q==;
X-CSE-ConnectionGUID: kYMh6JugQbS8TgcJfENB5Q==
X-CSE-MsgGUID: djlPiwXSTM2ltV0yMnxqxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="36365535"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="36365535"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 03:58:30 -0700
X-CSE-ConnectionGUID: mWcuif7QTmKPk4tewTXHoQ==
X-CSE-MsgGUID: bnYlo8UyQISxRiYnTb7oKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67737499"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Sep 2024 03:58:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Sep 2024 13:58:27 +0300
Date: Thu, 12 Sep 2024 13:58:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 07/19] drm/i915/display: Use joined pipes in
 intel_dp_joiner_needs_dsc
Message-ID: <ZuLJU88Vqrzd_XX9@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-8-ankit.k.nautiyal@intel.com>
 <ZuH6v1ysrM5zp4rN@intel.com>
 <98619708-7750-4a4c-a1d1-8e67965a6909@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <98619708-7750-4a4c-a1d1-8e67965a6909@intel.com>
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

On Thu, Sep 12, 2024 at 03:50:34PM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/12/2024 1:47 AM, Ville Syrjälä wrote:
> > On Wed, Sep 11, 2024 at 06:43:37PM +0530, Ankit Nautiyal wrote:
> >> In preparation of ultrajoiner, use number of joined pipes in the
> >> intel_dp_joiner_needs_dsc helper, instead of joiner flag.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_dp.c     | 9 +++++----
> >>   drivers/gpu/drm/i915/display/intel_dp.h     | 3 ++-
> >>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++--
> >>   3 files changed, 10 insertions(+), 7 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 65044f63d1f5..6c503b5968d2 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -1412,7 +1412,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> >>   		dsc = dsc_max_compressed_bpp && dsc_slice_count;
> >>   	}
> >>   
> >> -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc)
> >> +	if (intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes) && !dsc)
> >>   		return MODE_CLOCK_HIGH;
> >>   
> >>   	if (mode_rate > max_rate && !dsc)
> >> @@ -2520,14 +2520,15 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
> >>   	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
> >>   }
> >>   
> >> -bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner)
> >> +bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
> >> +			       int num_joined_pipes)
> >>   {
> >>   	/*
> >>   	 * Pipe joiner needs compression up to display 12 due to bandwidth
> >>   	 * limitation. DG2 onwards pipe joiner can be enabled without
> >>   	 * compression.
> >>   	 */
> >> -	return DISPLAY_VER(i915) < 13 && use_joiner;
> >> +	return DISPLAY_VER(i915) < 13 && (num_joined_pipes == 2);
> > Pointless parens.
> 
> Noted. Will remove these.
> 
> Besides this, I am wondering if I should change the variable 
> num_joined_pipes to num_pipes or num_pipes_used? So its values 1, 2, 4 
> make more sense?

I think 'num_joined_pipes' might be the best since it reminds the
casual reader that this can have something do with joining, as
opposed to just about the number of pipes generally available on
the platform/etc.

-- 
Ville Syrjälä
Intel
