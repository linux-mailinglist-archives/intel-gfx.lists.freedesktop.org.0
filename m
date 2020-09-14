Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07024268E3A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 16:48:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE546E4B7;
	Mon, 14 Sep 2020 14:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C44E86E14D
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 14:48:47 +0000 (UTC)
IronPort-SDR: oIqnpDj65CPzu2OdlWZQDWj5f0mEo+H4UCwrubIzkUG8G5q61craQ+wly1NwwRNtzl65If4+Bj
 Hm7shZf3mk+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="177148323"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="177148323"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 07:48:44 -0700
IronPort-SDR: ZQ2ZksFx+Hh3n+Vrc7UO4s1IYFlenuvDeA0b006nmPG1gC2ZyE5ZBDdt3ktkK2++tNXcxdZ/hr
 x3bE1qXhVfOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="345453318"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 14 Sep 2020 07:48:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Sep 2020 17:48:41 +0300
Date: Mon, 14 Sep 2020 17:48:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200914144841.GP6112@intel.com>
References: <20200630215601.28557-11-ville.syrjala@linux.intel.com>
 <339a1180e5fb4d762b15aa7bce90da9db6cd8cdb.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <339a1180e5fb4d762b15aa7bce90da9db6cd8cdb.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [10/12] drm/i915: Introduce HPD_PORT_TC<n>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Sep 12, 2020 at 01:30:23AM +0000, Souza, Jose wrote:
> On Wed, 2020-07-01 at 00:55 +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <
> > ville.syrjala@linux.intel.com
> > >
> > =

> > Make a clean split between hpd pins for DDI vs. TC. This matches
> > how the actual hardware is split.
> > =

> > And with this we move the DDI/PHY->HPD pin mapping into the encoder
> > init instead of having to remap yet again in the interrupt code.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <
> > ville.syrjala@linux.intel.com
> > >
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c     |  65 +++++++++-
> >  drivers/gpu/drm/i915/display/intel_hotplug.c |  25 +---
> >  drivers/gpu/drm/i915/i915_drv.h              |  17 +--
> >  drivers/gpu/drm/i915/i915_irq.c              | 121 +++++--------------
> >  4 files changed, 102 insertions(+), 126 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
> > index d024491738b3..a2c9815c5abc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4847,6 +4847,57 @@ intel_ddi_max_lanes(struct intel_digital_port *i=
ntel_dport)
> >  	return max_lanes;
> >  }
> >  =

> > +static enum hpd_pin tgl_hpd_pin(struct drm_i915_private *dev_priv,
> > +				enum port port)
> > +{
> > +	if (port >=3D PORT_D)
> > +		return HPD_PORT_TC1 + port - PORT_D;
> > +	else
> > +		return HPD_PORT_A + port - PORT_A;
> > +}
> > +
> > +static enum hpd_pin rkl_hpd_pin(struct drm_i915_private *dev_priv,
> > +				enum port port)
> > +{
> > +	if (HAS_PCH_TGP(dev_priv))
> > +		return tgl_hpd_pin(dev_priv, port);
> > +
> > +	if (port >=3D PORT_D)
> > +		return HPD_PORT_C + port - PORT_D;
> =

> The above looks wrong, for it would match with only the return bellow.

On rkl+tgp we want:
PORT_A (DDI A)   -> HPD_PORT_A
PORT_B (DDI B)   -> HPD_PORT_B
PORT_D (DDI TC1) -> HPD_PORT_TC1
PORT_E (DDI TC2) -> HPD_PORT_TC2

On rkl+cmp we want:
PORT_A (DDI A)   -> HPD_PORT_A
PORT_B (DDI B)   -> HPD_PORT_B
PORT_D (DDI TC1) -> HPD_PORT_C
PORT_E (DDI TC2) -> HPD_PORT_D

> =

> > +	else
> > +		return HPD_PORT_A + port - PORT_A;
> > +}
> > +
> > +static enum hpd_pin icl_hpd_pin(struct drm_i915_private *dev_priv,
> > +				enum port port)
> > +{
> > +	if (port >=3D PORT_C)
> > +		return HPD_PORT_TC1 + port - PORT_C;
> > +	else
> > +		return HPD_PORT_A + port - PORT_A;
> > +}
> > +
> > +static enum hpd_pin ehl_hpd_pin(struct drm_i915_private *dev_priv,
> > +				enum port port)
> > +{
> > +	if (port =3D=3D PORT_D)
> > +		return HPD_PORT_A;
> > +
> > +	if (HAS_PCH_MCC(dev_priv))
> > +		return icl_hpd_pin(dev_priv, port);
> =

> Maybe call tgl_hpd_pin() for HAS_PCH_MCC()? The code bellow will match bu=
t just for consistency.

On jsl+mcc we want:
PORT_A/D (DDI A/D) -> HPD_PORT_A
PORT_B   (DDI B)   -> HPD_PORT_B
PORT_C   (DDI C)   -> HPD_PORT_TC1

on jsl+icp we want:
PORT_A/D (DDI A/D) -> HPD_PORT_A
PORT_B   (DDI B)   -> HPD_PORT_B
PORT_C   (DDI C)   -> HPD_PORT_C

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
