Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E29152177
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 21:26:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B89696E8E7;
	Tue,  4 Feb 2020 20:26:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 583436E8E7
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 20:26:24 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 12:26:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,403,1574150400"; d="scan'208";a="235305219"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 04 Feb 2020 12:26:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 22:26:20 +0200
Date: Tue, 4 Feb 2020 22:26:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200204202620.GE13686@intel.com>
References: <20200204154803.25403-1-ville.syrjala@linux.intel.com>
 <b587253bd7d48edbce7b678a0d7fbf5958f2284a.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b587253bd7d48edbce7b678a0d7fbf5958f2284a.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix the docs for
 intel_set_cdclk_post_plane_update()
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

On Tue, Feb 04, 2020 at 06:18:09PM +0000, Souza, Jose wrote:
> On Tue, 2020-02-04 at 17:48 +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > s/before/after/ again after accidentally changing it the
> > other way in commit 5604e9ceaed5 ("drm/i915: Simplify
> > intel_set_cdclk_{pre,post}_plane_update() calling convention")
> > =

> > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 7154a2288310..3ad5f36447e9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1895,7 +1895,7 @@ intel_set_cdclk_pre_plane_update(struct
> > intel_atomic_state *state)
> >   * intel_set_cdclk_post_plane_update - Push the CDCLK state to the
> > hardware
> >   * @state: intel atomic state
> >   *
> > - * Program the hardware before updating the HW plane state based on
> > the
> > + * Program the hardware after updating the HW plane state based on
> > the
> >   * new CDCLK state, if necessary.
> =

> But the HW plane state will be updated later in dev_priv-
> >display.commit_modeset_enables().

That comes before intel_set_cdclk_post_plane_update().

> =

> >   */
> >  void

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
