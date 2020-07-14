Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E21A21FDC5
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 21:50:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F7006E858;
	Tue, 14 Jul 2020 19:50:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A5846E858
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 19:50:25 +0000 (UTC)
IronPort-SDR: eqV/Iy6YGVo+DKxixdIi3sVwOUj5unB1ARdPqfKDxiElKEKE/CSsrmbJKK133CFZo8yGuspJRM
 atX6Boz99uSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="137150356"
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="137150356"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 12:50:24 -0700
IronPort-SDR: QbXa4m2yZJxvv95xHnMQE/Dwb/peyfDZuX9KpkgBl2u2rKckIgGLtSuGgiMB6EdDE+OP/nzq3L
 3CPKCMBOoYjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="324641530"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 14 Jul 2020 12:50:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Jul 2020 22:50:21 +0300
Date: Tue, 14 Jul 2020 22:50:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200714195021.GP6112@intel.com>
References: <20200714185128.18616-1-ville.syrjala@linux.intel.com>
 <159475398330.3188.2132224433232566770@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159475398330.3188.2132224433232566770@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: Limit cfb to the first 256MiB
 of stolen on g4x+
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

On Tue, Jul 14, 2020 at 08:13:03PM +0100, Chris Wilson wrote:
> Quoting Ville Syrjala (2020-07-14 19:51:28)
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Since g4x the CFB base only takes a 28bit offset into stolen.
> > Not sure if the CFB is allowed to start below that limit but
> > then extend beyond it. Let's assume not and just restrict the
> > allocation to the first 256MiB (in the unlikely case
> > we have more stolen than that).
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm=
/i915/display/intel_fbc.c
> > index 85723fba6002..448e966bad11 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -424,6 +424,14 @@ static void intel_fbc_deactivate(struct drm_i915_p=
rivate *dev_priv,
> >         fbc->no_fbc_reason =3D reason;
> >  }
> >  =

> > +static u64 intel_fbc_cfb_base_max(struct drm_i915_private *i915)
> > +{
> > +       if (INTEL_GEN(i915) >=3D 5 || IS_G4X(i915))
> > +               return BIT(28);
> > +       else
> > +               return BIT(32);
> =

> BIT_ULL(32)

Argh. I should stop being lazy and always test build 32bit
locally. Also, 'long' really is the most annoying type ever.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
