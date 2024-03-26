Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D53A88C1A8
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 13:10:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3810110E7CF;
	Tue, 26 Mar 2024 12:10:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kTv5z/gS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D7010E7CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 12:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711455047; x=1742991047;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Rcm63eeKU+vVYya6u2qw/VN8bkgJALeiVBKbiy2pGRo=;
 b=kTv5z/gShhPAnkFV2JYbbjZ+XhYuHphTnS9HK2PvWRIv5fXMd3z6qL7N
 QXaD05uYw5WR5mTiKH/svDGKmoXpo1kOYajWWVG2Oioa1qiyc5Web8fhY
 +pBlzm6XnKd3QSL+PzxHvCN/0PYDzmArbGM+kBWJeh2Mys0icgQRUtSsg
 OVJxsGsBnXjkKhXAAaneAYmdQilC+0tS3zxFPkwKCvSQPiIYF5pazisps
 SSrzZ7l1HRBBaot+TV7TO7jCkIj9kqRUo4m40Pl3rDezmXZotL/7DS+OU
 pps2CwL5GPGGnY6aGOEkTUjtYb6JC60AdgvPlK95+d0KLbm8jKODCc3+V g==;
X-CSE-ConnectionGUID: BiN7CMPVR1WDLxAMtV0tyQ==
X-CSE-MsgGUID: JOaXtx3rTAeWksDWfqm/YQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6396010"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6396010"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 05:10:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16026174"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 05:10:43 -0700
Date: Tue, 26 Mar 2024 14:11:13 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 05/11] drm/i915/dp_mst: Account with the DSC DPT bpp
 limit on MTL
Message-ID: <ZgK7YZnmwJBGcKsF@ideak-desk.fi.intel.com>
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-6-imre.deak@intel.com>
 <32c89f1b-852b-4d49-8439-45fddc80c5db@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <32c89f1b-852b-4d49-8439-45fddc80c5db@intel.com>
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

On Tue, Mar 26, 2024 at 03:47:05PM +0530, Nautiyal, Ankit K wrote:
> 
> On 3/21/2024 1:41 AM, Imre Deak wrote:
> > The DPT/DSC bpp limit should be accounted for on MTL platforms as well,
> > do so.
> > 
> > Bspec: 49259
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 79f34be5c89da..40660dc5edb45 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -56,7 +56,7 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
> >   					  struct intel_crtc_state *crtc_state,
> >   					  bool dsc)
> >   {
> > -	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc) {
> 
> Should this be DISPLAY_VER() <= 14 to include MTL?

The actual change is the DISPLAY_VER() < 20 below, which is the usual
way in the driver (AFAIU) to check for an upper bound.

> For DISPLAY_VER 20, is there another check?
> 
> in Bspec:68912 it mentions output bpp * pixel clock < DDICLK * 144 bits

Yes LNL is different, but there this DPT limit should never be a
bottleneck. Ville has an idea to abstract this more, but this patchset
keeps things as-is, skipping the check on LNL+.

> Regards,
> 
> Ankit
> 
> > +	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 20 && dsc) {
> >   		int output_bpp = bpp;
> >   		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
> >   		int available_bw = mul_u32_u32(symbol_clock * 72,
