Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 221408952BC
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 14:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE5BB10E2A0;
	Tue,  2 Apr 2024 12:17:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ISq90M2e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BACEF10E2A0
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 12:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712060257; x=1743596257;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=c7MXbiOJTYQFyQ0POvr9mmc8fwI7hx6Bk64GQ+JFJr4=;
 b=ISq90M2eADwHMQ04xBeEjnV9xvSuQlbVWNpp/fJFh20gHIWBb1t0EzdO
 aaD33eVU39EcOwjT+8UfifvJtrJl6CLZ15m5ZEptzZV/Ne3ZPsnscWsOB
 Oli1DAklhxSsELrNe1LP/zBWS2fZyJmh1ILgk2Giqn5Oq04AiVTC9g15Z
 xyqbH6kRjZoHTiGr/NwibYEWdf09XAZhUjPEx7S/JQnoP3u+y/o9lKSSm
 7C8JpWT2FkT1i+hu1FcdUH1wqLq7lR01UKCKv4f1071M/kbAAC9B4KFm3
 P0D9g3zQGp971HyPpdLoHrCjuSS45ibos8dltf2MCLWHr6yo6EIWGZev+ Q==;
X-CSE-ConnectionGUID: 1lLhbi/tTu68/LpCcqeT6w==
X-CSE-MsgGUID: +TRZztbZQ2WMw/s3U2uVSg==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="17843735"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="17843735"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 05:17:36 -0700
X-CSE-ConnectionGUID: kdmbZkDSTpWmCOrEZXhVnw==
X-CSE-MsgGUID: oXwBGH5fS0WdAxuqsNP6yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="18137248"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 05:17:35 -0700
Date: Tue, 2 Apr 2024 15:18:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: Manasi Navare <navaremanasi@chromium.org>
Cc: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 05/11] drm/i915/dp_mst: Account with the DSC DPT bpp
 limit on MTL
Message-ID: <Zgv3IdFcw4pCLomx@ideak-desk.fi.intel.com>
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-6-imre.deak@intel.com>
 <32c89f1b-852b-4d49-8439-45fddc80c5db@intel.com>
 <ZgK7YZnmwJBGcKsF@ideak-desk.fi.intel.com>
 <9b4dc2d9-f110-4585-8968-87eb8d605af4@intel.com>
 <CAE72mNmnKc84dCZtNJWEoQXMq4j+m-0ohOdfiBZea4aqb9kWWA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAE72mNmnKc84dCZtNJWEoQXMq4j+m-0ohOdfiBZea4aqb9kWWA@mail.gmail.com>
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

On Fri, Mar 29, 2024 at 11:39:39AM -0700, Manasi Navare wrote:
> Hi Imre,
> 
> While we are adding these checks here for DSC for MST, I see that in
> intel_dp_mst_mode_valid_ctx() we still check against DISPLAY_VER() >
> 10 for checking for DSC where as in all other places we rely on
> runtime has_dsc and check for HAS_DSC(), can we fix that and use
> HAS_DSC() in this function as well as part of this series that in
> general fixes some DSC issues?

The check in intel_dp_mst_check_constraints() this patch changes is not
about whether a platform supports DSC or not, rather if the platform has
a DSC/DPT interface limit that needs to be checked. The caller has
already determined that DSC is supported by the platform and it's needed
for the given mode being computed (dsc==true).

> 
> Manasi
> 
> On Tue, Mar 26, 2024 at 5:59 AM Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com> wrote:
> >
> >
> > On 3/26/2024 5:41 PM, Imre Deak wrote:
> > > On Tue, Mar 26, 2024 at 03:47:05PM +0530, Nautiyal, Ankit K wrote:
> > >> On 3/21/2024 1:41 AM, Imre Deak wrote:
> > >>> The DPT/DSC bpp limit should be accounted for on MTL platforms as well,
> > >>> do so.
> > >>>
> > >>> Bspec: 49259
> > >>>
> > >>> Signed-off-by: Imre Deak <imre.deak@intel.com>
> > >>> ---
> > >>>    drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
> > >>>    1 file changed, 1 insertion(+), 1 deletion(-)
> > >>>
> > >>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > >>> index 79f34be5c89da..40660dc5edb45 100644
> > >>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > >>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > >>> @@ -56,7 +56,7 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
> > >>>                                       struct intel_crtc_state *crtc_state,
> > >>>                                       bool dsc)
> > >>>    {
> > >>> -   if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc) {
> > >> Should this be DISPLAY_VER() <= 14 to include MTL?
> > > The actual change is the DISPLAY_VER() < 20 below, which is the usual
> > > way in the driver (AFAIU) to check for an upper bound.
> >
> > Makes sense.
> >
> > >
> > >> For DISPLAY_VER 20, is there another check?
> > >>
> > >> in Bspec:68912 it mentions output bpp * pixel clock < DDICLK * 144 bits
> > > Yes LNL is different, but there this DPT limit should never be a
> > > bottleneck. Ville has an idea to abstract this more, but this patchset
> > > keeps things as-is, skipping the check on LNL+.
> >
> > Agreed. Bspec indeed mentions the same thing, and its mentioned
> > appropriately in the next patch.
> >
> > Regards,
> >
> > Ankit
> >
> > >
> > >> Regards,
> > >>
> > >> Ankit
> > >>
> > >>> +   if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 20 && dsc) {
> > >>>             int output_bpp = bpp;
> > >>>             int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
> > >>>             int available_bw = mul_u32_u32(symbol_clock * 72,
