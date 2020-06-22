Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5978F203D91
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 19:14:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5A789FDD;
	Mon, 22 Jun 2020 17:14:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02A6A89FDD
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 17:13:58 +0000 (UTC)
IronPort-SDR: zBDSkzzrITWeJTbiRwfiKis8AwqJNICsWjls38BYVQYMwz4bsTPry5+nz3w25MJ+C+Jl8jvvsz
 x2KhrDZStNKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="142868824"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="142868824"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 10:06:55 -0700
IronPort-SDR: i0uVBn4SC4ZS0OZ4ykecZYUcxkQi+swAePW+h1gl8hXSLNLIjdZdJp4jIe1iy04TBWJdR4v2RW
 Hwghepzwir2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="292911433"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 22 Jun 2020 10:06:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Jun 2020 20:06:51 +0300
Date: Mon, 22 Jun 2020 20:06:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200622170651.GQ6112@intel.com>
References: <20200618000124.29036-1-manasi.d.navare@intel.com>
 <20200622154921.GA25163@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200622154921.GA25163@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/dp: Helper for checking
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

On Mon, Jun 22, 2020 at 06:49:26PM +0300, Imre Deak wrote:
> On Wed, Jun 17, 2020 at 05:01:23PM -0700, Manasi Navare wrote:
> > Modify the helper to add a fixed delay or poll with timeout
> > based on platform specification in bothe enable and disable
> > cases so check for either Idle bit set (DDI_BUF_CTL is idle
> > for disable case) or check for Idle bit =3D 0 (non idle for
> > DDI BUF enable case)
> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 34 +++++++++++++++---------
> >  1 file changed, 21 insertions(+), 13 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
> > index ca7bb2294d2b..e4738c3b6d44 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -1182,18 +1182,26 @@ static void intel_prepare_hdmi_ddi_buffers(stru=
ct intel_encoder *encoder,
> >  }
> >  =

> >  static void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
> > -				    enum port port)
> =

> maybe intel_ddi_wait_for_ddi_buf(i915, port, active) ?

I'd just make it two functions. Avoids that stupid boolean
parameter.

> =

> > +				    enum port port, bool idle)
> >  {
> > -	i915_reg_t reg =3D DDI_BUF_CTL(port);
> > -	int i;
> > -
> > -	for (i =3D 0; i < 16; i++) {
> > -		udelay(1);
> > -		if (intel_de_read(dev_priv, reg) & DDI_BUF_IS_IDLE)
> > -			return;
> > +	if (idle) {
> > +		if (IS_BROXTON(dev_priv))
> > +			udelay(16);
> > +		else
> > +			if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> > +					 DDI_BUF_IS_IDLE), 16))
> > +				drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c idle bit\n=
",
> > +					port_name(port));
> > +	} else {
> > +		if (INTEL_GEN(dev_priv) < 10)
> > +			udelay(600);
> > +		else
> > +			if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> > +					  DDI_BUF_IS_IDLE), 600))
> > +				drm_err(&dev_priv->drm, "DDI port:%c buffer idle\n",
> > +					port_name(port));
> >  	}
> > -	drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c idle bit\n",
> > -		port_name(port));
> > +
> =

> since we can only guarantee a minimum delay or timeout, imo it could be j=
ust:
> =

> 	if (BXT && !active || GEN <=3D 9 && active) {
> 		usleep_range(600, 1000);
> 		return;
> 	}
> =

> 	if (wait_for_us(!(read(BUF_CTL) & IS_IDLE) =3D=3D active, 600))
> 		drm_err("Port %c: Timeout waiting for DDI BUF to get %s\n",
> 			port, active ? "active" : "idle"));
> 		=

> =

> >  }
> >  =

> >  static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
> > @@ -1373,7 +1381,7 @@ void hsw_fdi_link_train(struct intel_encoder *enc=
oder,
> >  		intel_de_write(dev_priv, DP_TP_CTL(PORT_E), temp);
> >  		intel_de_posting_read(dev_priv, DP_TP_CTL(PORT_E));
> >  =

> > -		intel_wait_ddi_buf_idle(dev_priv, PORT_E);
> > +		intel_wait_ddi_buf_idle(dev_priv, PORT_E, true);
> >  =

> >  		/* Reset FDI_RX_MISC pwrdn lanes */
> >  		temp =3D intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
> > @@ -3495,7 +3503,7 @@ static void intel_disable_ddi_buf(struct intel_en=
coder *encoder,
> >  	intel_ddi_disable_fec_state(encoder, crtc_state);
> >  =

> >  	if (wait)
> > -		intel_wait_ddi_buf_idle(dev_priv, port);
> > +		intel_wait_ddi_buf_idle(dev_priv, port, true);
> >  }
> >  =

> >  static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
> > @@ -4004,7 +4012,7 @@ static void intel_ddi_prepare_link_retrain(struct=
 intel_dp *intel_dp)
> >  		intel_de_posting_read(dev_priv, intel_dp->regs.dp_tp_ctl);
> >  =

> >  		if (wait)
> > -			intel_wait_ddi_buf_idle(dev_priv, port);
> > +			intel_wait_ddi_buf_idle(dev_priv, port, true);
> >  	}
> >  =

> >  	dp_tp_ctl =3D DP_TP_CTL_ENABLE |
> =

> The DSI code could also use the new helper.
> =

> > -- =

> > 2.19.1
> > =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
