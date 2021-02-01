Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DCF30B040
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 20:21:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A1996E872;
	Mon,  1 Feb 2021 19:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 557F86E872
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 19:21:31 +0000 (UTC)
IronPort-SDR: DAyJaNoK/y+jlL2bZ5lPzQ7do/7pCwcY6OfVELlRXslcEgLl7vyAvd7Skrb2yszMJSsrFiKUbh
 lGk8JFY23HKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="199640827"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="199640827"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 11:21:29 -0800
IronPort-SDR: R/7tU3xnMiMIZ98VpQ60ZjSxbG+cwe2IUqld3JVe6OAbrlH7wOg9gC9M7BBrmbE+iQVogJZNLX
 UQUWuLLm6ydQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="354599906"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 01 Feb 2021 11:21:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Feb 2021 21:21:27 +0200
Date: Mon, 1 Feb 2021 21:21:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YBhUt+6qP4/0VNzQ@intel.com>
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
 <20210201183343.15292-11-ville.syrjala@linux.intel.com>
 <20210201191501.gazaowftjohnj5tw@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210201191501.gazaowftjohnj5tw@ldmartin-desk1>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 10/15] drm/i915: Sprinkle a few missing
 locks around shared DDI clock registers
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

On Mon, Feb 01, 2021 at 11:15:01AM -0800, Lucas De Marchi wrote:
> On Mon, Feb 01, 2021 at 08:33:38PM +0200, Ville Syrj=E4l=E4 wrote:
> >From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> >The current code attempts to protect the RMWs into global
> >clock routing registers with a mutex, but forgets to do so
> >in a few places. Let's remedy that.
> =

> Forgets or doesn't do on purpose? In the first patches in this series I
> was actually wondering why do we even have to take the lock you were
> adding for some platforms.
> =

> >
> >Note that at the moment we serialize all modesets onto single
> >wq, so this shouldn't actually matter. But maybe one day we
> >wish to attempt parallel modesets again...
> =

> and this answers that. But why don't we just stop getting the lock and
> reintroduce them if/when we attempt parallel modeset?

I suspect that will pretty much guarantee that it'll never
happen, because last time it was tried no one bothered to
do any kind of code review for these kinds of problems. So
I think we'll just have to keep sprinkling the locks as we
find such code, and then maybe one day we can attempt to
throw the switch again.

> =

> Lucas De Marchi
> =

> >
> >Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_ddi.c | 8 ++++++++
> > 1 file changed, 8 insertions(+)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
> >index 7137929f58bd..93552f3c2c43 100644
> >--- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >@@ -3463,8 +3463,12 @@ static void cnl_ddi_disable_clock(struct intel_en=
coder *encoder)
> > 	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > 	enum port port =3D encoder->port;
> >
> >+	mutex_lock(&dev_priv->dpll.lock);
> >+
> > 	intel_de_rmw(dev_priv, DPCLKA_CFGCR0,
> > 		     0, DPCLKA_CFGCR0_DDI_CLK_OFF(port));
> >+
> >+	mutex_unlock(&dev_priv->dpll.lock);
> > }
> >
> > static void skl_ddi_enable_clock(struct intel_encoder *encoder,
> >@@ -3493,8 +3497,12 @@ static void skl_ddi_disable_clock(struct intel_en=
coder *encoder)
> > 	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > 	enum port port =3D encoder->port;
> >
> >+	mutex_lock(&dev_priv->dpll.lock);
> >+
> > 	intel_de_rmw(dev_priv, DPLL_CTRL2,
> > 		     0, DPLL_CTRL2_DDI_CLK_OFF(port));
> >+
> >+	mutex_unlock(&dev_priv->dpll.lock);
> > }
> >
> > static void hsw_ddi_enable_clock(struct intel_encoder *encoder,
> >-- =

> >2.26.2
> >
> >_______________________________________________
> >Intel-gfx mailing list
> >Intel-gfx@lists.freedesktop.org
> >https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
