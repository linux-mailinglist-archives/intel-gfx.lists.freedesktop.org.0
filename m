Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08797178427
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 21:38:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 914256E94D;
	Tue,  3 Mar 2020 20:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 997C76E054
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 20:38:46 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 12:38:46 -0800
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="386914677"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 12:38:45 -0800
Date: Tue, 3 Mar 2020 12:39:35 -0800
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.de.marchi@gmail.com>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200303203935.GF645250@intel.com>
References: <20200218230822.66801-1-jose.souza@intel.com>
 <CAKi4VAL-f=p18JtZQjgc9J+KsSGFZ5VQXB3Cb1AYXMC9G-1-qA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKi4VAL-f=p18JtZQjgc9J+KsSGFZ5VQXB3Cb1AYXMC9G-1-qA@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Remove require_force_probe
 protection
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 03, 2020 at 12:26:34PM -0800, Lucas De Marchi wrote:
> On Tue, Feb 18, 2020 at 3:07 PM Jos=E9 Roberto de Souza
> <jose.souza@intel.com> wrote:
> >
> > We have a few TGL machines in our CI and it is mostly green with
> > failures in tests that will not impact future Linux installations.
> > Also there is no warnings, errors, flickering or any visual defects
> > while doing ordinary tasks like browsing and editing documents in a
> > dual monitor setup.
> >
> > As a reminder i915.require_force_probe was created to protect
> > future Linux installation's iso images that might contain a
> > kernel from the enabling time of the new platform. Without this
> > protection most of linux installation was recommending
> > nomodeset option during installation that was getting stick
> > there after installation.
> >
> > Reference: https://intel-gfx-ci.01.org/tree/drm-tip/fi-tgl-u.html
> > Reference: https://intel-gfx-ci.01.org/tree/drm-tip/shard-tglb.html
> > Cc: James Ausmus <james.ausmus@intel.com>
> > Cc: Jani Saarinen <jani.saarinen@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> =

> Also, I think it would be good to have this in 5.6 rather than 5.7.
> Yes, it's late in the merge window, but it falls in the case of "New
> device IDs and quirks are also accepted." of the stable kernel rules,
> so could as well just go directly to this kernel. Rodrigo, is it
> possible?

Jani is on charge of the 5.6 so I will defer this decision to him.

But in general we always refused to do this because this is a enabling
kind of thing and not a fix per say. Okay, you might argue that it is
a device ID and that would be accepted on stable so why not also on
fixes cycle, but my fear is that we haven't properly validated that
on 5.6 without the many changes, fixes and workarounds that are
only going towards 5.7 and not 5.6.

> =

> thanks
> Lucas De Marchi
> =

> > ---
> >  drivers/gpu/drm/i915/i915_pci.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i91=
5_pci.c
> > index 24b1f0ce8743..2146b9a865ba 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -822,7 +822,6 @@ static const struct intel_device_info tgl_info =3D {
> >         GEN12_FEATURES,
> >         PLATFORM(INTEL_TIGERLAKE),
> >         .pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PI=
PE_D),
> > -       .require_force_probe =3D 1,
> >         .display.has_modular_fia =3D 1,
> >         .engine_mask =3D
> >                 BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VC=
S2),
> > --
> > 2.25.1
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> =

> =

> -- =

> Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
