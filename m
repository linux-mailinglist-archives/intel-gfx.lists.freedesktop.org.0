Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F07A21FC134
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 23:54:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 581686E1E5;
	Tue, 16 Jun 2020 21:54:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68326E1E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 21:54:02 +0000 (UTC)
IronPort-SDR: UEKtzHjwERdkMaetWT2y5qmO+YdQQrYkI7klIAJ80RpnAd4MwJwQ2UGl+lRtUXd0dY5FsSPFhQ
 uQS8xmT4VnPA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 14:54:00 -0700
IronPort-SDR: LjbqtTlT0JwxQaSE9EVQVLYAtDnluGS9Xx/rGILfSsm85NXoDYGG5DWrlWyIKD98gXJwwYaGWf
 yw1zXaCKXk6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,520,1583222400"; d="scan'208";a="449999168"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga005.jf.intel.com with ESMTP; 16 Jun 2020 14:54:00 -0700
Date: Tue, 16 Jun 2020 14:55:10 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200616215510.GB4903@intel.com>
References: <20200616193056.4817-1-manasi.d.navare@intel.com>
 <20200616202232.GL6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616202232.GL6112@intel.com>
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

On Tue, Jun 16, 2020 at 11:22:32PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Jun 16, 2020 at 12:30:56PM -0700, Manasi Navare wrote:
> > The Bspec sequence expects us to poll for DDI Idle status
> > to be 0 (not idle) with a timeout of 600usecs after enabling the
> > DDI BUF CTL. But currently in the driver we just wait for 600usecs
> > without polling so add that.
> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
> > index ca7bb2294d2b..de7e15de0bc5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4023,7 +4023,11 @@ static void intel_ddi_prepare_link_retrain(struc=
t intel_dp *intel_dp)
> >  	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> >  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
> >  =

> > -	udelay(600);
> > +	if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> > +			  DDI_BUF_IS_IDLE),
> > +			600))
> > +		drm_err(&dev_priv->drm, "DDI port:%c buffer idle\n",
> > +			port_name(port));
> =

> Another thing I just noticed is that icl+ need this for HDMI as well.
> The slightly odd thing is that glk is documented to need this for
> DP but not HDMI. But I'm thinking doing it also for glk HDMI should
> be fine.
> =

> So I guess to line up with the spec we should:
> - fixed >518us enable delay for pre-glk (not sure if polling
>   would be ok for hsw/bdw/skl)
> - poll for enable on glk+
> - fixed 16us disable delay for bxt
> - poll for disable on !bxt
> =

> And do it for both DP and HDMI for consistency.

So since its different one each platform, should we create a per platform h=
ook
like wait_for_non_idle_status or something per platform?

Manasi

> =

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
