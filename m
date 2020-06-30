Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC11210058
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 01:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0290F8924A;
	Tue, 30 Jun 2020 23:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38A598924A
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 23:12:31 +0000 (UTC)
IronPort-SDR: KY4NNGlrOuTHl2+9NPnCMlgtkvleP9tcld/TOTy4V3ZRdkCCg4d9BYRK1VzdRGuo7yLQB5tbVw
 isPtDa1qBqGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="143888810"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="143888810"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 16:12:30 -0700
IronPort-SDR: SZwmMpBHwf3Fln0x3RUk3Kb7StXAyF+/JMRa1JBWnEqUSAPm2ilqi8RFAvv+gNQi0/TdxBKmll
 DCMFblt+eQkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="277579158"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga003.jf.intel.com with ESMTP; 30 Jun 2020 16:12:30 -0700
Date: Tue, 30 Jun 2020 16:14:06 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200630231405.GA21950@intel.com>
References: <20200626232641.4557-1-manasi.d.navare@intel.com>
 <20200626232641.4557-2-manasi.d.navare@intel.com>
 <20200630212026.GV6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200630212026.GV6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/dp: Helper to check for DDI
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

On Wed, Jul 01, 2020 at 12:20:26AM +0300, Ville Syrj=E4l=E4 wrote:
> On Fri, Jun 26, 2020 at 04:26:41PM -0700, Manasi Navare wrote:
> > Based on the platform, Bspec expects us to wait or poll with
> > timeout for DDI BUF IDLE bit to be set to 0 (non idle) or get active
> > after enabling DDI_BUF_CTL.
> > =

> > v4:
> > * Use the timeout for GLK (Ville)
> > v3:
> > * Add a new function _active for DDI BUF CTL to be non idle (Ville)
> > v2:
> > * Based on platform, fixed delay or poll (Ville)
> > * Use a helper to do this (Imre, Ville)
> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 16 +++++++++++++++-
> >  1 file changed, 15 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
> > index 052a74625a61..94d57b57139b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -1195,6 +1195,20 @@ static void intel_wait_ddi_buf_idle(struct drm_i=
915_private *dev_priv,
> >  			port_name(port));
> >  }
> >  =

> > +static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_pri=
v,
> > +				      enum port port)
> > +{
> > +	if (INTEL_GEN(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv) ) {
> > +		usleep_range(600, 1000);
> =

> I would probably put a spec quote here to make it clear what this is:
> "Wait >518 us for buffers to enable..."
> =

> Or we could s/600/518/ to make it easier to figure out. But that could
> be a followup.

Yes I can change this to 518,1000 and add a comment in the next rev

> =

> > +		return;
> > +	}
> > +
> > +	if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> > +			  DDI_BUF_IS_IDLE), 600))
> =

> Spec says 500 usec for this. Is there a reason to not go with the spec
> value? I guess one argument is that we didn't do it before. But I'd
> probably change it, if not in this patch then as a followup.

Hmm yes probably the HSDs said 600 but since spec says 500usecs, I will cha=
nge
the timeout to 500

Manasi

> =

> > +		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get activ=
e\n",
> > +			port_name(port));
> > +}
> > +
> >  static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
> >  {
> >  	switch (pll->info->id) {
> > @@ -4020,7 +4034,7 @@ static void intel_ddi_prepare_link_retrain(struct=
 intel_dp *intel_dp)
> >  	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> >  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
> >  =

> > -	udelay(600);
> > +	intel_wait_ddi_buf_active(dev_priv, port);
> =

> Still can't see fdi anywhere.
> =

> Whatever
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> >  }
> >  =

> >  static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
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
