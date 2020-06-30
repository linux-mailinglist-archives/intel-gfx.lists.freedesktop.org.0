Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DE020FE15
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 22:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E10F89F24;
	Tue, 30 Jun 2020 20:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B75B589F24
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 20:47:47 +0000 (UTC)
IronPort-SDR: XIM9hrXWE09OaKICytwU6Vh7bunJm2D21WyB6yFceLIP5VTcPLnJxt47eRQt7AQrONJL7eIwIw
 5lPV9uCKRlYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="134670110"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="134670110"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 13:47:46 -0700
IronPort-SDR: hD1L4im71gIVIjmexrBmQSP1kG/DXFLCqGaqcSCaXwU0Qsl7LLmgaCCTtX9WLwWKwr2khAW6/c
 EP8mK3ijrFjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="425334507"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 30 Jun 2020 13:47:46 -0700
Date: Tue, 30 Jun 2020 13:49:22 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200630204922.GB20459@intel.com>
References: <20200626232641.4557-1-manasi.d.navare@intel.com>
 <20200630153016.GK6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200630153016.GK6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/dp: Helper for checking
 DDI_BUF_CTL Idle status
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

On Tue, Jun 30, 2020 at 06:30:16PM +0300, Ville Syrj=E4l=E4 wrote:
> On Fri, Jun 26, 2020 at 04:26:40PM -0700, Manasi Navare wrote:
> > Modify the helper to add a fixed delay or poll with timeout
> > based on platform specification to check for either Idle bit
> > set (DDI_BUF_CTL is idle for disable case)
> > =

> > v3:
> > * Change the timeout to 16usecs (Ville)
> > v2:
> > * Use 2 separate functions or idle and active (Ville)
> =

> Missing changelog? Did somehting change?
>

No its a v3 for thsi patch, but patch 2/2 is a v4 so published
both patches with a v4,

does this now look good with v3, timeout changed to 16 usecs?

Manasi
 =

> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 17 ++++++++---------
> >  1 file changed, 8 insertions(+), 9 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
> > index 884b507c5f55..052a74625a61 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -1184,16 +1184,15 @@ static void intel_prepare_hdmi_ddi_buffers(stru=
ct intel_encoder *encoder,
> >  static void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
> >  				    enum port port)
> >  {
> > -	i915_reg_t reg =3D DDI_BUF_CTL(port);
> > -	int i;
> > -
> > -	for (i =3D 0; i < 16; i++) {
> > -		udelay(1);
> > -		if (intel_de_read(dev_priv, reg) & DDI_BUF_IS_IDLE)
> > -			return;
> > +	if (IS_BROXTON(dev_priv)) {
> > +		udelay(16);
> > +		return;
> >  	}
> > -	drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c idle bit\n",
> > -		port_name(port));
> > +
> > +	if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> > +			 DDI_BUF_IS_IDLE), 16))
> > +		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get idle\=
n",
> > +			port_name(port));
> >  }
> >  =

> >  static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
> > -- =

> > 2.19.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
