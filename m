Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6104220FEAA
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:25:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7B956E2DA;
	Tue, 30 Jun 2020 21:25:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C626D6E2DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 21:25:41 +0000 (UTC)
IronPort-SDR: Urn/K6hXD9W18kW3vkDQhZ4PWGfkInbRyncOEzMskhVIhD8M2jdcBK7DtbDCvmywpLw/MbTgCm
 sPFyqo2xLrqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="126484240"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="126484240"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:25:41 -0700
IronPort-SDR: YBdhTgLczqmD7hqBnvyI8WoeILoTHEafqnGjcPwWklrr4g8WzgQQ+HIOd/1NdBdDYrnWRI6pUm
 EGISVhYJfHGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="321536516"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 30 Jun 2020 14:25:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jul 2020 00:25:38 +0300
Date: Wed, 1 Jul 2020 00:25:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200630212538.GW6112@intel.com>
References: <20200626232641.4557-1-manasi.d.navare@intel.com>
 <20200630210330.GU6112@intel.com>
 <20200630211045.GA21520@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200630211045.GA21520@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Tue, Jun 30, 2020 at 02:10:45PM -0700, Manasi Navare wrote:
> On Wed, Jul 01, 2020 at 12:03:30AM +0300, Ville Syrj=E4l=E4 wrote:
> > On Fri, Jun 26, 2020 at 04:26:40PM -0700, Manasi Navare wrote:
> > > Modify the helper to add a fixed delay or poll with timeout
> > > based on platform specification to check for either Idle bit
> > > set (DDI_BUF_CTL is idle for disable case)
> > > =

> > > v3:
> > > * Change the timeout to 16usecs (Ville)
> > > v2:
> > > * Use 2 separate functions or idle and active (Ville)
> > > =

> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: Imre Deak <imre.deak@intel.com>
> > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c | 17 ++++++++---------
> > >  1 file changed, 8 insertions(+), 9 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/d=
rm/i915/display/intel_ddi.c
> > > index 884b507c5f55..052a74625a61 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -1184,16 +1184,15 @@ static void intel_prepare_hdmi_ddi_buffers(st=
ruct intel_encoder *encoder,
> > >  static void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_pri=
v,
> > >  				    enum port port)
> > >  {
> > > -	i915_reg_t reg =3D DDI_BUF_CTL(port);
> > > -	int i;
> > > -
> > > -	for (i =3D 0; i < 16; i++) {
> > > -		udelay(1);
> > > -		if (intel_de_read(dev_priv, reg) & DDI_BUF_IS_IDLE)
> > > -			return;
> > > +	if (IS_BROXTON(dev_priv)) {
> > > +		udelay(16);
> > > +		return;
> > >  	}
> > > -	drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c idle bit\n",
> > > -		port_name(port));
> > > +
> > > +	if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> > > +			 DDI_BUF_IS_IDLE), 16))
> > =

> > 16 is the BXT number. IIRC the spec said 8 usec for the other platforms.
> >
> =

> Yes I see for HSW atleast yes it says 8usecs but i left it at 16 since th=
ats
> what we always had and the only change was that BXT add a fixed delay
> But if you prefer i will change it to 8us timeout?

My usual approach is to a) just use the spec value, b) if there's
a sane reason for not using it then include a comment documenting
the spec value.

Often b) is just for "spec say a few microseconds, let's just wait
a full millisecond to make it simple", or for "old platforms want
timeout N, new ones want M, just go with the larger of the two for
simplicity". Arguably the current code was trying to follow the
latter approach, except if was supposed to since bxt wasn't supposed
to poll at all.

Anyways, since the current code already used 16 usec without any
clarification I guess this is no worse than what we had.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> Manasi
>  =

> > > +		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get idl=
e\n",
> > > +			port_name(port));
> > >  }
> > >  =

> > >  static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pl=
l)
> > > -- =

> > > 2.19.1
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
