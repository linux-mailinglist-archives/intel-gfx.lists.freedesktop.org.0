Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6F320A837
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 00:25:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 782736E358;
	Thu, 25 Jun 2020 22:25:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23ADE6E358
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 22:25:53 +0000 (UTC)
IronPort-SDR: b8oZH/2h5siqCDeK23gdUGcAF9xnBhmxFOG7VID1lMg/AYib3gtAzUEqsCg9+lHFSIdZtgnU+2
 GiwNUkc9P0pw==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="146605284"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="146605284"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 15:25:52 -0700
IronPort-SDR: tBxrsQl4pj5yITJYyQ9p0JdDiOBm12KVqu2m9pFQtzE37RjzBkJ0a7sh6Clx91HYzFQniV6Q9A
 fDyv261S9ahQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="354606051"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga001.jf.intel.com with ESMTP; 25 Jun 2020 15:25:52 -0700
Date: Thu, 25 Jun 2020 15:27:18 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200625222718.GD30431@intel.com>
References: <20200624221108.10038-1-manasi.d.navare@intel.com>
 <20200624221108.10038-2-manasi.d.navare@intel.com>
 <20200625212853.GX6112@intel.com>
 <20200625220432.GC30431@intel.com>
 <20200625221642.GY6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625221642.GY6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/dp: Helper to check for DDI
 BUF status to get active
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 26, 2020 at 01:16:42AM +0300, Ville Syrj=E4l=E4 wrote:
> On Thu, Jun 25, 2020 at 03:04:33PM -0700, Manasi Navare wrote:
> > On Fri, Jun 26, 2020 at 12:28:53AM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Wed, Jun 24, 2020 at 03:11:08PM -0700, Manasi Navare wrote:
> > > > Based on the platform, Bspec expects us to wait or poll with
> > > > timeout for DDI BUF IDLE bit to be set to 0 (non idle) or get active
> > > > after enabling DDI_BUF_CTL.
> > > > =

> > > > v3:
> > > > * Add a new function _active for DDI BUF CTL to be non idle (Ville)
> > > > v2:
> > > > * Based on platform, fixed delay or poll (Ville)
> > > > * Use a helper to do this (Imre, Ville)
> > > > =

> > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Cc: Imre Deak <imre.deak@intel.com>
> > > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_ddi.c | 16 +++++++++++++++-
> > > >  1 file changed, 15 insertions(+), 1 deletion(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu=
/drm/i915/display/intel_ddi.c
> > > > index 7d5c8ab88fc4..ff6b1e9d1b4e 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > @@ -1195,6 +1195,20 @@ static void intel_wait_ddi_buf_idle(struct d=
rm_i915_private *dev_priv,
> > > >  			port_name(port));
> > > >  }
> > > >  =

> > > > +static void intel_wait_ddi_buf_active(struct drm_i915_private *dev=
_priv,
> > > > +				      enum port port)
> > > > +{
> > > > +	if (INTEL_GEN(dev_priv) <=3D 9) {
> > > =

> > > Didn't we want the poll approach for glk+?
> > =

> > Actually in the bspec I only see Gen10+ has a 500usecs timeout
> =

> glk has (mostly) gen10 display.
> =

> Defacto standard form to write that test is
> 'GEN < 10 && !IS_GLK'.

Okay will update this and send in the next rev

Manasi

> =

> > =

> > Manasi
> > > =

> > > > +		usleep_range(600, 1000);
> > > > +		return;
> > > > +	}
> > > > +
> > > > +	if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> > > > +			  DDI_BUF_IS_IDLE), 600))
> > > > +		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get a=
ctive\n",
> > > > +			port_name(port));
> > > > +}
> > > > +
> > > >  static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *=
pll)
> > > >  {
> > > >  	switch (pll->info->id) {
> > > > @@ -4020,7 +4034,7 @@ static void intel_ddi_prepare_link_retrain(st=
ruct intel_dp *intel_dp)
> > > >  	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> > > >  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
> > > >  =

> > > > -	udelay(600);
> > > > +	intel_wait_ddi_buf_active(dev_priv, port);
> > > =

> > > Missed the FDI case.
> > > =

> > > Also we're still missing this for HDMI, on icl+ I think? Can't quite
> > > remember if that was where the spec started to demand it.
> > > =

> > > >  }
> > > >  =

> > > >  static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
> > > > -- =

> > > > 2.19.1
> > > =

> > > -- =

> > > Ville Syrj=E4l=E4
> > > Intel
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
