Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E9B20FE4E
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 995A16E217;
	Tue, 30 Jun 2020 21:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D09B6E217
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 21:00:12 +0000 (UTC)
IronPort-SDR: GFk/qiKI36QhNGuDnJzvX8KWjOfYccwxSD0WEkxCblslSj2SRVtF7PGbry+2INavjujV8ZxYIH
 NPjhceuqbrZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="133835717"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="133835717"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:00:11 -0700
IronPort-SDR: BtEZ20uUbq/FWSk8zg+d3JEG9aAn5Qn7u5Kg30BaJvW+AbnyiWnRPYqVH+5EItMdp1EhQHbQvk
 r4lg0gUEgIDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="321530423"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 30 Jun 2020 14:00:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jul 2020 00:00:07 +0300
Date: Wed, 1 Jul 2020 00:00:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200630210007.GT6112@intel.com>
References: <20200626232641.4557-1-manasi.d.navare@intel.com>
 <20200630153016.GK6112@intel.com>
 <20200630204922.GB20459@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200630204922.GB20459@intel.com>
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

On Tue, Jun 30, 2020 at 01:49:22PM -0700, Manasi Navare wrote:
> On Tue, Jun 30, 2020 at 06:30:16PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Fri, Jun 26, 2020 at 04:26:40PM -0700, Manasi Navare wrote:
> > > Modify the helper to add a fixed delay or poll with timeout
> > > based on platform specification to check for either Idle bit
> > > set (DDI_BUF_CTL is idle for disable case)
> > > =

> > > v3:
> > > * Change the timeout to 16usecs (Ville)
> > > v2:
> > > * Use 2 separate functions or idle and active (Ville)
> > =

> > Missing changelog? Did somehting change?
> >
> =

> No its a v3 for thsi patch, but patch 2/2 is a v4 so published
> both patches with a v4,

Doh. The changelog is backwards so didn't even notice.

> =

> does this now look good with v3, timeout changed to 16 usecs?
> =

> Manasi
>  =

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
