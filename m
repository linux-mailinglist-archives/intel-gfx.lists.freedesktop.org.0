Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8F5292AEF
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 17:58:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0A9D6EA09;
	Mon, 19 Oct 2020 15:58:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABEAA6EA09
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 15:58:52 +0000 (UTC)
IronPort-SDR: iv4AnUzWlNcdWRyerH22Uk3O8jQ7soeV1gUcVHQAukVhcj0QvmN6IZ8SDiGhJQ2n7TFqiUYLPB
 zt0bN6XUrWtQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="167167631"
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="167167631"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 08:58:47 -0700
IronPort-SDR: aGB1K4vEz3+JBPadjFvLHncBelsbT9enxWQ29Ej9LX81Gkzsl9llrgIBgM8bjoxYZONluMqAk4
 LczgxU6fj+gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="331927028"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 19 Oct 2020 08:58:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 19 Oct 2020 18:58:44 +0300
Date: Mon, 19 Oct 2020 18:58:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20201019155844.GS6112@intel.com>
References: <20201006185809.4655-1-ville.syrjala@linux.intel.com>
 <20201006185809.4655-2-ville.syrjala@linux.intel.com>
 <20201019153959.GH3199870@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019153959.GH3199870@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Do drm_mode_config_reset()
 after HPD init
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

On Mon, Oct 19, 2020 at 06:39:59PM +0300, Imre Deak wrote:
> On Tue, Oct 06, 2020 at 09:58:08PM +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > LSPCON requires HPD detection logic to be enabled when we call
> > its .reset() hook during resume, to check the live state of the
> > pin. To that end let's reorder the resume sequence such that
> > we do HPD init before the encoder reset.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Reviewed-by: Imre Deak <imre.deak@intel.com>

I think I'll just drop this patch entirely. AFAICS no longer needed
once the lspcon resume is moved out of .reset().

> =

> > ---
> >  drivers/gpu/drm/i915/i915_drv.c | 7 +++----
> >  1 file changed, 3 insertions(+), 4 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i91=
5_drv.c
> > index b2a050d916e3..66ddd4161885 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.c
> > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > @@ -1213,21 +1213,20 @@ static int i915_drm_resume(struct drm_device *d=
ev)
> >  	 * GPU will hang. i915_gem_init_hw() will initiate batches to
> >  	 * update/restore the context.
> >  	 *
> > -	 * drm_mode_config_reset() needs AUX interrupts.
> > -	 *
> >  	 * Modeset enabling in intel_modeset_init_hw() also needs working
> >  	 * interrupts.
> >  	 */
> >  	intel_runtime_pm_enable_interrupts(dev_priv);
> >  =

> > -	drm_mode_config_reset(dev);
> > -
> >  	i915_gem_resume(dev_priv);
> >  =

> >  	intel_modeset_init_hw(dev_priv);
> >  	intel_init_clock_gating(dev_priv);
> >  	intel_hpd_init(dev_priv);
> >  =

> > +	/* May need AUX interrupts and HPD detection enabled */
> > +	drm_mode_config_reset(dev);
> > +
> >  	/* MST sideband requires HPD interrupts enabled */
> >  	intel_dp_mst_resume(dev_priv);
> >  	intel_display_resume(dev);
> > -- =

> > 2.26.2
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
