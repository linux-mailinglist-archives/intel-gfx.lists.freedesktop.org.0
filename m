Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B66AA062F4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 18:04:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC93010EC1E;
	Wed,  8 Jan 2025 17:04:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jtdHMaeg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD6AA10EC1E;
 Wed,  8 Jan 2025 17:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736355873; x=1767891873;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=64F6s2UH7AzImKGIlRffG2b225lKyeFHreWoAH/cMfU=;
 b=jtdHMaeg7NHsUeSM2s3GtGezopOUGRC05fvYSE/ntrpgJfQrRH7UVvhM
 I7X7OZ8AsZFGzNrT1UgDc+QiyWYYQl2ZC1GokUgnytcFbhR0RRnqzPdfn
 l2/eWPeil+vv2D44UWO8/PdGL9OlWza6VDMp7tHJy3pd6IypkadrnreHP
 yoNZ4mXhgpvQj/3B/lL9wC1I76X2ATDz9ANPc+zNrQtAQZcGXuOV0leD0
 rw7PTZdEO4Lk3hAr18la9vUiGx+Yf/ViPYLWukHWqwItnIqS1WFflLsj6
 7AsfEAAtndfVLba/uQX5Gz3VcGvIm/Z6zCkV8w7HXyaHinzjBIssFiR0E w==;
X-CSE-ConnectionGUID: 8Wtst64OQbadxrKJevJFOQ==
X-CSE-MsgGUID: dEu3S4U1TaOLDBuX0KjgYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36613845"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="36613845"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 09:04:33 -0800
X-CSE-ConnectionGUID: ZjlCcF/8QUGYPa33ejGFsw==
X-CSE-MsgGUID: bq9qRLLPS5m+M49xsgNChA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="102959985"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 09:04:31 -0800
Date: Wed, 8 Jan 2025 19:05:19 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/cx0: Fix SSC enablement in PORT_CLOCK_CTL
Message-ID: <Z36wT9M6kUToR1r-@ideak-desk.fi.intel.com>
References: <20250106040821.251114-1-suraj.kandpal@intel.com>
 <20250106040821.251114-2-suraj.kandpal@intel.com>
 <Z31CF9QeIe7erRqE@ideak-desk.fi.intel.com>
 <MW4PR11MB6761744B96F87D810286FAC8E3122@MW4PR11MB6761.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB6761744B96F87D810286FAC8E3122@MW4PR11MB6761.namprd11.prod.outlook.com>
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

On Wed, Jan 08, 2025 at 08:04:58AM +0200, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Tuesday, January 7, 2025 8:33 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Nautiyal,
> > Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>
> > Subject: Re: [PATCH 1/2] drm/i915/cx0: Fix SSC enablement in
> > PORT_CLOCK_CTL
> >
> > On Mon, Jan 06, 2025 at 09:38:20AM +0530, Suraj Kandpal wrote:
> > > SSC for PLL_A is enabled for UHBR10 or UHBR20 regardless of the need
> > > for SSC. This means the ssc_enabled variable had no say to determine
> > > enablement of SSC on PLL A.
> >
> > I don't see the above in the spec. It suggests that SSC should be enabled on
> > PLL A for MFD, but in any case SSC can only be enabled if the sink supports
> > SSC, as indicated by dpll_hw_state.cx0pll.ssc_enabled.
> 
> Hi Imre,
>
> You are right In Bspec 74489 under Non-thunderbolt PLL Enable Sequence
> It says SSC enable to be done on PLLA  for MFD when on UHBR10 or
> UHBR20 (PLLA is only used for C20 PHY UHBR10 and 20.) and check for
> ssc_enabled for Native mode to enable SSC but now the issue is that we
> aren't checking for MFD mode any particular reason for this ? and how
> would we go about checking if we are in MFD mode or not ?  Also the
> ssc_enabled bool variable never actually gets set for C20 Phy which
> makes checking the ssc_enabled Useless, which I fix in the next patch.

Enabling SSC for DP outputs would require more changes than enabling SSC
in the PLL, AFAICS at least:

- Check the sink if it supports SSC.
- Check VBT if it requires SSC to be enabled.
- If enabling SSC, also enable it in the sink's spread control DPCD register.
- If enabling SSC, adjust the MST BW calculation.

In fact I'm not sure how this works atm on the DG2 SNPS and C10 PHYs,
where SSC is enabled w/o checking/handling all the above.

> Would be great if you could also have a look at that.
> 
> Regards,
> Suraj Kandpal
> 
> >
> > > Bspec: 64568, 74165, 74489, 74491
> > > Fixes: 237e7be0bf57 ("drm/i915/mtl: For DP2.0 10G and 20G rates use
> > > MPLLA")
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > index e768dc6a15b3..3fd959a2773c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > @@ -2747,7 +2747,7 @@ static void intel_program_port_clock_ctl(struct
> > intel_encoder *encoder,
> > >     /* TODO: HDMI FRL */
> > >     /* DP2.0 10G and 20G rates enable MPLLA*/
> > >     if (crtc_state->port_clock == 1000000 || crtc_state->port_clock ==
> > 2000000)
> > > -           val |= crtc_state->dpll_hw_state.cx0pll.ssc_enabled ?
> > XELPDP_SSC_ENABLE_PLLA : 0;
> > > +           val |= XELPDP_SSC_ENABLE_PLLA;
> > >     else
> > >             val |= crtc_state->dpll_hw_state.cx0pll.ssc_enabled ?
> > > XELPDP_SSC_ENABLE_PLLB : 0;
> > >
> > > --
> > > 2.34.1
> > >
