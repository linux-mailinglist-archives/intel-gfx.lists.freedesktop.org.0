Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7857B1F8EED
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 08:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6D2289FD1;
	Mon, 15 Jun 2020 06:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3CDB89FD1
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 06:59:09 +0000 (UTC)
IronPort-SDR: fLcXKwqkWjGHa2xX4zJ/8fG9w7sc+KQpNMX4cfsxejk9dInWaZvCt1czLSRKZV6tJbu3MB2yN5
 k9JLjLl6GWNQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2020 23:59:09 -0700
IronPort-SDR: oic9DtRS/u/aAmXolUgNJg6D4j8JcEGeDTwsgVaArHwcIYnmEfIeobd+MKIYIiqtr8o0s9dQ38
 WPDeQhMjkwdA==
X-IronPort-AV: E=Sophos;i="5.73,514,1583222400"; d="scan'208";a="298418308"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2020 23:59:08 -0700
Date: Mon, 15 Jun 2020 09:59:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200615065901.GA16626@ideak-desk.fi.intel.com>
References: <20200612121731.19596-1-imre.deak@intel.com>
 <20200612131848.GH6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612131848.GH6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl+: Fix hotplug interrupt
 disabling after storm detection
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, Kunal Joshi <kunal1.joshi@intel.com>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 12, 2020 at 04:18:48PM +0300, Ville Syrj=E4l=E4 wrote:
> On Fri, Jun 12, 2020 at 03:17:31PM +0300, Imre Deak wrote:
> > Atm, hotplug interrupts on TypeC ports are left enabled after detecting
> > an interrupt storm, fix this.
> > =

> > Reported-by: Kunal Joshi <kunal1.joshi@intel.com>
> > References: https://gitlab.freedesktop.org/drm/intel/-/issues/351
> > Bugzilla: https://gitlab.freedesktop.org/drm/intel/-/issues/1964
> > Cc: Kunal Joshi <kunal1.joshi@intel.com>
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_irq.c | 1 +
> >  1 file changed, 1 insertion(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i91=
5_irq.c
> > index 8e823ba25f5f..710224d930c5 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -3132,6 +3132,7 @@ static void gen11_hpd_irq_setup(struct drm_i915_p=
rivate *dev_priv)
> >  =

> >  	val =3D I915_READ(GEN11_DE_HPD_IMR);
> >  	val &=3D ~hotplug_irqs;
> > +	val |=3D ~enabled_irqs & hotplug_irqs;
> >  	I915_WRITE(GEN11_DE_HPD_IMR, val);
> >  	POSTING_READ(GEN11_DE_HPD_IMR);
> =

> Wondering if we should add a function for this just for consistency
> with all the other platforms.

Yes makes sense, or even abstract the hpd interrupt enabling using the
hpd pin -> interrupt flag table. I think we could even extend that table
with the pulse detection bits and register addresses. I'll check if
something like this would work for all platforms.

> Alhthough we don't strictly need one since we have no other users of
> this register. So maybe not.
> =

> Anyways, patch is
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

> =

> >  =

> > -- =

> > 2.23.1
> > =

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
