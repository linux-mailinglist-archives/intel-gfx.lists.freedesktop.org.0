Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3241D7118
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 08:33:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8AAF6E11C;
	Mon, 18 May 2020 06:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 933D96E11C
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 06:33:33 +0000 (UTC)
IronPort-SDR: QTAFeCrO5mj6jToo78hcwxhGIZBAhd7h6bnDD7aN73+JpQuMtRnsdq/GZW/qFAZNKTcubLj/k+
 /sWxehpNadsw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2020 23:33:33 -0700
IronPort-SDR: KIE4eUOm/OA2bvkXrOOL24yT0+EKJC1emx1eNX3aPOUqk9yN4XaS7l1zJObT1MU6QYUPImFvaL
 ODrr6n7EtPPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,406,1583222400"; d="scan'208";a="252795439"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 17 May 2020 23:33:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 May 2020 09:33:29 +0300
Date: Mon, 18 May 2020 09:33:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200518063329.GR6112@intel.com>
References: <20200516161542.8032-1-ville.syrjala@linux.intel.com>
 <20200517121234.GA7704@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200517121234.GA7704@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix dbuf slice mask when turning
 off all the pipes
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, May 17, 2020 at 03:12:49PM +0300, Lisovskiy, Stanislav wrote:
> On Sat, May 16, 2020 at 07:15:42PM +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > The current dbuf slice computation only happens when there are
> > active pipes. If we are turning off all the pipes we just leave
> > the dbuf slice mask at it's previous value, which may be something
> > other that BIT(S1). If runtime PM will kick in it will however
> > turn off everything but S1. Then on the next atomic commit (if
> > the new dbuf slice mask matches the stale value we left behind)
> > the code will not turn on the other slices we now need. This will
> > lead to underruns as the planes are trying to use a dbuf slice
> > that's not powered up.
> > =

> > To work around let's just just explicitly set the dbuf slice mask
> > to BIT(S1) when we are turning off all the pipes. Really the code
> > should just calculate this stuff the same way regardless whether
> > the pipes are on or off, but we're not quite there yet (need a
> > bit more work on the dbuf state for that).
> > =

> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Fixes: 3cf43cdc63fb ("drm/i915: Introduce proper dbuf state")
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/int=
el_pm.c
> > index a21e36ed1a77..4a523d8b881f 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -4071,6 +4071,22 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i9=
15_private *dev_priv,
> >  	*num_active =3D hweight8(active_pipes);
> >  =

> >  	if (!crtc_state->hw.active) {
> > +		/*
> > +		 * FIXME hack to make sure we compute this sensibly when
> > +		 * turning off all the pipes. Otherwise we leave it at
> > +		 * whatever we had previously, and then runtime PM will
> > +		 * mess it up by turning off all but S1. Remove this
> > +		 * once the dbuf state computation flow becomes sane.
> > +		 */
> > +		if (active_pipes =3D=3D 0) {
> > +			new_dbuf_state->enabled_slices =3D BIT(DBUF_S1);
> > +
> > +			if (old_dbuf_state->enabled_slices !=3D new_dbuf_state->enabled_sli=
ces) {
> > +				ret =3D intel_atomic_serialize_global_state(&new_dbuf_state->base);
> > +				if (ret)
> > +					return ret;
> > +			}
> > +		}
> =

> Rather weird, why we didnt have that issue before..
> Just trying to figure out what's the reason - aren't we recovering the la=
st
> state of enabled slices from hw in gen9_dbuf_enable?
> =

> As I understand you modify enabled_slices in dbuf global object recovering
> the actual hw state there. =

> =

> Also from your patches I don't see the actual logic difference with what =

> was happening before dbuf_state in that sense.
> I.e we were also bailing out in skl_get_pipe_alloc_limits, without modify=
ing
> dbuf_state before, however there was no issue.

We didn't have the old state so the pre/post update hooks were comparing
the new value against the value that was mangled by the display core init
to match the actual hw state.

The reason why it bit tgl so hard is that we tend to use two slices
on tgl all the time, whereas on icl we use just the first slice most
of the time.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
