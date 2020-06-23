Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E20205BC7
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 21:25:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E93F6E37C;
	Tue, 23 Jun 2020 19:25:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A35946E37C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 19:25:19 +0000 (UTC)
IronPort-SDR: mO21YN3StVSus9H1KQgINxeohOUwsjk615XPwX3+MpBpPRgy+Fs6k81O9BmZKYVoM5tykA5cv9
 ZtaUznbB9vdw==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="205702889"
X-IronPort-AV: E=Sophos;i="5.75,272,1589266800"; d="scan'208";a="205702889"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 12:25:19 -0700
IronPort-SDR: X7b6IOlN+T8UIRduENTfO3sWzwtSECm8KZ75XMH2tEicNSVNKxJbc/DVakTqEEfVrA66Rsg4CA
 59wrjrzkf81w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,272,1589266800"; d="scan'208";a="287520588"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga007.jf.intel.com with ESMTP; 23 Jun 2020 12:25:18 -0700
Date: Tue, 23 Jun 2020 12:26:41 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200623192641.GA22294@intel.com>
References: <20200618000124.29036-1-manasi.d.navare@intel.com>
 <20200622154921.GA25163@ideak-desk.fi.intel.com>
 <20200622170651.GQ6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200622170651.GQ6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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

On Mon, Jun 22, 2020 at 08:06:51PM +0300, Ville Syrj=E4l=E4 wrote:
> On Mon, Jun 22, 2020 at 06:49:26PM +0300, Imre Deak wrote:
> > On Wed, Jun 17, 2020 at 05:01:23PM -0700, Manasi Navare wrote:
> > > Modify the helper to add a fixed delay or poll with timeout
> > > based on platform specification in bothe enable and disable
> > > cases so check for either Idle bit set (DDI_BUF_CTL is idle
> > > for disable case) or check for Idle bit =3D 0 (non idle for
> > > DDI BUF enable case)
> > > =

> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: Imre Deak <imre.deak@intel.com>
> > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c | 34 +++++++++++++++-------=
--
> > >  1 file changed, 21 insertions(+), 13 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/d=
rm/i915/display/intel_ddi.c
> > > index ca7bb2294d2b..e4738c3b6d44 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -1182,18 +1182,26 @@ static void intel_prepare_hdmi_ddi_buffers(st=
ruct intel_encoder *encoder,
> > >  }
> > >  =

> > >  static void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_pri=
v,
> > > -				    enum port port)
> > =

> > maybe intel_ddi_wait_for_ddi_buf(i915, port, active) ?
> =

> I'd just make it two functions. Avoids that stupid boolean
> parameter.

Just have 2 functions: 1. intel_ddi_wait_for_ddi_buf_idle()
2. intel_ddi_wait_for_ddi_buf_active or _non_idle()?

Hmm but wouldnt it be more readable if we pass that bool and use =

the same function?

Manasi

> =

> > =

> > > +				    enum port port, bool idle)
> > >  {
> > > -	i915_reg_t reg =3D DDI_BUF_CTL(port);
> > > -	int i;
> > > -
> > > -	for (i =3D 0; i < 16; i++) {
> > > -		udelay(1);
> > > -		if (intel_de_read(dev_priv, reg) & DDI_BUF_IS_IDLE)
> > > -			return;
> > > +	if (idle) {
> > > +		if (IS_BROXTON(dev_priv))
> > > +			udelay(16);
> > > +		else
> > > +			if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> > > +					 DDI_BUF_IS_IDLE), 16))
> > > +				drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c idle bit=
\n",
> > > +					port_name(port));
> > > +	} else {
> > > +		if (INTEL_GEN(dev_priv) < 10)
> > > +			udelay(600);
> > > +		else
> > > +			if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> > > +					  DDI_BUF_IS_IDLE), 600))
> > > +				drm_err(&dev_priv->drm, "DDI port:%c buffer idle\n",
> > > +					port_name(port));
> > >  	}
> > > -	drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c idle bit\n",
> > > -		port_name(port));
> > > +
> > =

> > since we can only guarantee a minimum delay or timeout, imo it could be=
 just:
> > =

> > 	if (BXT && !active || GEN <=3D 9 && active) {
> > 		usleep_range(600, 1000);
> > 		return;
> > 	}
> > =

> > 	if (wait_for_us(!(read(BUF_CTL) & IS_IDLE) =3D=3D active, 600))
> > 		drm_err("Port %c: Timeout waiting for DDI BUF to get %s\n",
> > 			port, active ? "active" : "idle"));
> > 		=

> > =

> > >  }
> > >  =

> > >  static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pl=
l)
> > > @@ -1373,7 +1381,7 @@ void hsw_fdi_link_train(struct intel_encoder *e=
ncoder,
> > >  		intel_de_write(dev_priv, DP_TP_CTL(PORT_E), temp);
> > >  		intel_de_posting_read(dev_priv, DP_TP_CTL(PORT_E));
> > >  =

> > > -		intel_wait_ddi_buf_idle(dev_priv, PORT_E);
> > > +		intel_wait_ddi_buf_idle(dev_priv, PORT_E, true);
> > >  =

> > >  		/* Reset FDI_RX_MISC pwrdn lanes */
> > >  		temp =3D intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
> > > @@ -3495,7 +3503,7 @@ static void intel_disable_ddi_buf(struct intel_=
encoder *encoder,
> > >  	intel_ddi_disable_fec_state(encoder, crtc_state);
> > >  =

> > >  	if (wait)
> > > -		intel_wait_ddi_buf_idle(dev_priv, port);
> > > +		intel_wait_ddi_buf_idle(dev_priv, port, true);
> > >  }
> > >  =

> > >  static void intel_ddi_post_disable_dp(struct intel_atomic_state *sta=
te,
> > > @@ -4004,7 +4012,7 @@ static void intel_ddi_prepare_link_retrain(stru=
ct intel_dp *intel_dp)
> > >  		intel_de_posting_read(dev_priv, intel_dp->regs.dp_tp_ctl);
> > >  =

> > >  		if (wait)
> > > -			intel_wait_ddi_buf_idle(dev_priv, port);
> > > +			intel_wait_ddi_buf_idle(dev_priv, port, true);
> > >  	}
> > >  =

> > >  	dp_tp_ctl =3D DP_TP_CTL_ENABLE |
> > =

> > The DSI code could also use the new helper.
> > =

> > > -- =

> > > 2.19.1
> > > =

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
