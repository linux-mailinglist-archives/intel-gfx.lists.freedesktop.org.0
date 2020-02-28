Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C8F1735D4
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 12:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 274B46E158;
	Fri, 28 Feb 2020 11:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34EA16E158
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 11:10:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 03:10:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,495,1574150400"; d="scan'208";a="272600281"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 28 Feb 2020 03:10:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Feb 2020 13:10:45 +0200
Date: Fri, 28 Feb 2020 13:10:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200228111045.GA13686@intel.com>
References: <20200227193954.5585-1-ville.syrjala@linux.intel.com>
 <87a753qdwe.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87a753qdwe.fsf@intel.com>
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

On Fri, Feb 28, 2020 at 11:06:41AM +0200, Jani Nikula wrote:
> On Thu, 27 Feb 2020, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > gmbus/aux may be clocked by cdclk, thus we should make sure no
> > transfers are ongoing while the cdclk frequency is being changed.
> > We do that by simply grabbing all the gmbus/aux mutexes. No one
> > else should be holding any more than one of those at a time so
> > the lock ordering here shouldn't matter.
> >
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 23 ++++++++++++++++++++++
> >  1 file changed, 23 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/d=
rm/i915/display/intel_cdclk.c
> > index 0741d643455b..f69bf4a4eb1c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1868,6 +1868,9 @@ static void intel_set_cdclk(struct drm_i915_priva=
te *dev_priv,
> >  			    const struct intel_cdclk_config *cdclk_config,
> >  			    enum pipe pipe)
> >  {
> > +	struct intel_encoder *encoder;
> > +	unsigned int aux_mutex_lockclass =3D 0;
> > +
> >  	if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
> >  		return;
> >  =

> > @@ -1876,8 +1879,28 @@ static void intel_set_cdclk(struct drm_i915_priv=
ate *dev_priv,
> >  =

> >  	intel_dump_cdclk_config(cdclk_config, "Changing CDCLK to");
> >  =

> > +	/*
> > +	 * Lock aux/gmbus while we change cdclk in case those
> > +	 * functions use cdclk. Not all platforms/ports do,
> > +	 * but we'll lock them all for simplicity.
> > +	 */
> > +	mutex_lock(&dev_priv->gmbus_mutex);
> > +	for_each_intel_dp(&dev_priv->drm, encoder) {
> > +		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > +
> > +		mutex_lock_nested(&intel_dp->aux.hw_mutex,
> > +				  aux_mutex_lockclass++);
> > +	}
> > +
> >  	dev_priv->display.set_cdclk(dev_priv, cdclk_config, pipe);
> >  =

> > +	for_each_intel_dp(&dev_priv->drm, encoder) {
> > +		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > +
> > +		mutex_unlock(&intel_dp->aux.hw_mutex);
> > +	}
> > +	mutex_unlock(&dev_priv->gmbus_mutex);
> > +
> =

> I'm becoming increasingly sensitive to directly touching the private
> parts of other modules... gmbus_mutex is really for intel_gmbus.c and
> aux.hw_mutex for drm_dp_helper.c.
> =

> One could also argue that the cdclk is a lower level function used by
> higher level functions aux/gmbus, and it seems like the higher level
> function should lock the cdclk while it depends on it, not the other way
> around.

That would require a rwsem. Otherwise it all gets serialized needlessly.
Not sure what's the state of rwsems these days, but IIRC at some point
the rt patches converted them all to normal mutexes.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
