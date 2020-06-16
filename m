Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2DC1FBFB7
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 22:06:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 007CF6E92F;
	Tue, 16 Jun 2020 20:06:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D9E26E92F
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 20:06:45 +0000 (UTC)
IronPort-SDR: CAOFhAIN4BdxYzMBKqh8uRZoT4tYVpG8B3YojH6laIevs4TTZorl1c+8M+Odc+3QQveND4X4bX
 mqJ91izCUzjQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 13:06:43 -0700
IronPort-SDR: bbWZ+92uXYrCUTAKsPNGoGHPNa5AJsgjti1tvZ8F5TnPN3HZjip3a7Xe113bC1shztRqrDzzwp
 Ot3hcIU90TAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,519,1583222400"; d="scan'208";a="261522432"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jun 2020 13:06:43 -0700
Date: Tue, 16 Jun 2020 13:07:53 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200616200753.GA4903@intel.com>
References: <20200616193056.4817-1-manasi.d.navare@intel.com>
 <20200616194244.GJ6112@intel.com> <20200616195422.GK6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616195422.GK6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Poll for DDI Idle status to be
 0 after enabling DDI Buf
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

On Tue, Jun 16, 2020 at 10:54:22PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Jun 16, 2020 at 10:42:44PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Tue, Jun 16, 2020 at 12:30:56PM -0700, Manasi Navare wrote:
> > > The Bspec sequence expects us to poll for DDI Idle status
> > > to be 0 (not idle) with a timeout of 600usecs after enabling the
> > > DDI BUF CTL.
> > =

> > It only says that for newer platforms. We need to either keep
> > the fixed delay before starting to poll, or someone needs confirm =

> > how the idle bit really behaves on the older platforms.
> =

> In fact it says not to use this bit at all on BXT. So even our disable
> sequence is potentially borked on BXT. Unfortunately the spec doesn't
> say which way the bit is broken, so not clear if that's the case or
> not.
>

I double checked on Gen 9, it is > 518 usecs timeout and Gen 10+
it is 500usecs and then gen 12, it is 600 usecs timeout.

Should we add this max timeout for Gen >=3D10, we def need this for
platforms starting Gen 10+

Manasi
 =

> > =

> > > But currently in the driver we just wait for 600usecs
> > > without polling so add that.
> > > =

> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: Imre Deak <imre.deak@intel.com>
> > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++++-
> > >  1 file changed, 5 insertions(+), 1 deletion(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/d=
rm/i915/display/intel_ddi.c
> > > index ca7bb2294d2b..de7e15de0bc5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -4023,7 +4023,11 @@ static void intel_ddi_prepare_link_retrain(str=
uct intel_dp *intel_dp)
> > >  	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> > >  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
> > >  =

> > > -	udelay(600);
> > > +	if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> > > +			  DDI_BUF_IS_IDLE),
> > > +			600))
> > > +		drm_err(&dev_priv->drm, "DDI port:%c buffer idle\n",
> > > +			port_name(port));
> > >  }
> > >  =

> > >  static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
> > > -- =

> > > 2.19.1
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
