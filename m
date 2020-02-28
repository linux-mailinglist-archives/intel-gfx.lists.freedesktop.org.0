Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A43617387C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 14:38:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83C4A6E197;
	Fri, 28 Feb 2020 13:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 110A56E197
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 13:37:59 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 05:37:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,496,1574150400"; d="scan'208";a="227546594"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 28 Feb 2020 05:37:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Feb 2020 15:37:56 +0200
Date: Fri, 28 Feb 2020 15:37:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200228133756.GC13686@intel.com>
References: <20200227193954.5585-1-ville.syrjala@linux.intel.com>
 <158287851663.19174.2013462831358055362@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158287851663.19174.2013462831358055362@skylake-alporthouse-com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Lock gmbus/aux mutexes while
 changing cdclk
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

On Fri, Feb 28, 2020 at 08:28:36AM +0000, Chris Wilson wrote:
> Quoting Ville Syrjala (2020-02-27 19:39:54)
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > gmbus/aux may be clocked by cdclk, thus we should make sure no
> > transfers are ongoing while the cdclk frequency is being changed.
> > We do that by simply grabbing all the gmbus/aux mutexes. No one
> > else should be holding any more than one of those at a time so
> > the lock ordering here shouldn't matter.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 23 ++++++++++++++++++++++
> >  1 file changed, 23 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/d=
rm/i915/display/intel_cdclk.c
> > index 0741d643455b..f69bf4a4eb1c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1868,6 +1868,9 @@ static void intel_set_cdclk(struct drm_i915_priva=
te *dev_priv,
> >                             const struct intel_cdclk_config *cdclk_conf=
ig,
> >                             enum pipe pipe)
> >  {
> > +       struct intel_encoder *encoder;
> > +       unsigned int aux_mutex_lockclass =3D 0;
> > +
> >         if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
> >                 return;
> >  =

> > @@ -1876,8 +1879,28 @@ static void intel_set_cdclk(struct drm_i915_priv=
ate *dev_priv,
> >  =

> >         intel_dump_cdclk_config(cdclk_config, "Changing CDCLK to");
> >  =

> > +       /*
> > +        * Lock aux/gmbus while we change cdclk in case those
> > +        * functions use cdclk. Not all platforms/ports do,
> > +        * but we'll lock them all for simplicity.
> > +        */
> > +       mutex_lock(&dev_priv->gmbus_mutex);
> > +       for_each_intel_dp(&dev_priv->drm, encoder) {
> > +               struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > +
> > +               mutex_lock_nested(&intel_dp->aux.hw_mutex,
> > +                                 aux_mutex_lockclass++);
> =

> mutex_lock_nest_lock(&intel_dp->aux.hw_mutex, &dev_priv->gmbus_mutex);
> ?

That does seems to work. Not sure what it means though since no docs
and I was too lazy to read the code. Does it say "as long as we hold
nest_lock the order doesn't matter"?

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
