Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF4031128E
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 21:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 104706F4CB;
	Fri,  5 Feb 2021 20:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD7C16F4CB
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 20:36:21 +0000 (UTC)
IronPort-SDR: 5wK+e40yIic5/4nLsDC6SoPIzcVrGj87k9Cs2zpyl30IuAeicXnghJDFmDUyPzkgCf3xXTvKNX
 zfefsvAH4VHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="180709895"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="180709895"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 12:36:21 -0800
IronPort-SDR: lFja7Hw6okzVc3wa6UP7kGtY87Y01gHdTrFZuUDmdhS+61m1Jgf/AxrYv4ldtx538OZ/XcHVkP
 bcjuc7bWZ0Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="373510191"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 05 Feb 2021 12:36:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Feb 2021 22:36:17 +0200
Date: Fri, 5 Feb 2021 22:36:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YB2sQX8VgJ9MH8lh@intel.com>
References: <cover.1612536383.git.jani.nikula@intel.com>
 <7a9463a87517fc5cbb5d4cbf395531b7fc0713d0.1612536383.git.jani.nikula@intel.com>
 <YB1fmmHXYdg/A8iK@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YB1fmmHXYdg/A8iK@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v12 8/8] drm/i915: move ddi pll state get to
 dpll mgr
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
Cc: Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 05, 2021 at 05:09:14PM +0200, Ville Syrj=E4l=E4 wrote:
> On Fri, Feb 05, 2021 at 04:48:43PM +0200, Jani Nikula wrote:
> > From: Dave Airlie <airlied@redhat.com>
> > =

> > This just migrates the hsw+ code to a better place.
> > =

> > Signed-off-by: Dave Airlie <airlied@redhat.com>
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 219 +----------------
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 223 ++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   2 +
> >  3 files changed, 226 insertions(+), 218 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index beed08c00b6c..f7c1f036d38f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6520,212 +6520,6 @@ static bool ilk_get_pipe_config(struct intel_cr=
tc *crtc,
> >  	return ret;
> >  }
> >  =

> > -static void dg1_get_ddi_pll(struct drm_i915_private *dev_priv, enum po=
rt port,
> > -			    struct intel_crtc_state *pipe_config)
> > -{
> > -	enum icl_port_dpll_id port_dpll_id =3D ICL_PORT_DPLL_DEFAULT;
> > -	enum phy phy =3D intel_port_to_phy(dev_priv, port);
> > -	struct icl_port_dpll *port_dpll;
> > -	struct intel_shared_dpll *pll;
> > -	enum intel_dpll_id id;
> > -	bool pll_active;
> > -	u32 clk_sel;
> > -
> > -	clk_sel =3D intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy)) & DG1_DPC=
LKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
> > -	id =3D DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_DPLL_MAP(clk_sel, phy);
> =

> Hmm. Since this mostly about DPCLKA_CFGCR/PORT_CLK_SEL/etc.
> I think intel_ddi.c would the more approriate place, especially
> when considering my recent DDI clock routing refactoring.
> I guess we could even consider intel_ddi_clock.c or
> somesuch to stuff all of it into. Now I'm also tempted
> to turn this stuff into vfuncs as well, to partner up
> with the new encoder->{enable,disable}_clock().

Temptation turned into code. I think I have a decent way forward
with this idea on top of my other refactorings, so I'd just drop
this patch.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
