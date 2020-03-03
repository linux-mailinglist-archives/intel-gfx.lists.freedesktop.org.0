Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 220D3177E9D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 19:51:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FFC989F33;
	Tue,  3 Mar 2020 18:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94A1789F33
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 18:51:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 10:51:06 -0800
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="233731704"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 10:51:04 -0800
Date: Tue, 3 Mar 2020 20:50:21 +0200
From: Imre Deak <imre.deak@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200303185021.GB30299@ideak-desk.fi.intel.com>
References: <20200303182904.952445-1-matthew.d.roper@intel.com>
 <20200303183447.GN174531@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303183447.GN174531@mdroper-desk1.amr.corp.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Check PHY type before reading
 DPLL frequency
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 03, 2020 at 10:34:47AM -0800, Matt Roper wrote:
> On Tue, Mar 03, 2020 at 10:29:04AM -0800, Matt Roper wrote:
> > intel_ddi_clock_get() tests the DPLL ID against DPLL_ID_ICL_TBTPLL (2)
> > to determine whether to try to descend into a TBT-specific handler.
> > However this test will also be true when DPLL4 on EHL is used since that
> > shares the same DPLL ID (2).
> > =

> > Add an extra check to ensure the PHY is actually a Type-C PHY before
> > descending into the TBT handling.  This should ensure EHL still takes
> > the correct code path and somewhat future-proof the code as well.
> > =

> > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/1369
> =

> Fixes: 45e4728b87ad ("drm/i915: Move DPLL frequency calculation to intel_=
dpll_mgr.c")

Reviewed-by: Imre Deak <imre.deak@intel.com>

> Cc: Imre Deak <imre.deak@intel.com>
> =

> I think.
> =

> =

> Matt
> =

> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
> > index 284219da7df8..aa3cc42b0eb9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -1376,8 +1376,9 @@ static void intel_ddi_clock_get(struct intel_enco=
der *encoder,
> >  				struct intel_crtc_state *pipe_config)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > +	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> >  =

> > -	if (INTEL_GEN(dev_priv) >=3D 11 &&
> > +	if (INTEL_GEN(dev_priv) >=3D 11 && intel_phy_is_tc(dev_priv, phy) &&
> >  	    intel_get_shared_dpll_id(dev_priv, pipe_config->shared_dpll) =3D=
=3D
> >  	    DPLL_ID_ICL_TBTPLL)
> >  		pipe_config->port_clock =3D icl_calc_tbt_pll_link(dev_priv,
> > -- =

> > 2.24.1
> > =

> =

> -- =

> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
