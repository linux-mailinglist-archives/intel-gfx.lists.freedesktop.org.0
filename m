Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14597220F19
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 16:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D7D36EB70;
	Wed, 15 Jul 2020 14:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CE976EB72
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 14:22:28 +0000 (UTC)
IronPort-SDR: yab9FTOKh5g4LeEmz1czn/cMoRGRvQ8jhHTNgDgPMkwhlio5FtyKoVCuki+D/RXum3SQyIeuKs
 3UXk2OvB7ByA==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="167273175"
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="167273175"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 07:22:27 -0700
IronPort-SDR: lodFMOV3GZcaHEodMlk3E22Enrn7MlkAVq/EFP7+DkxJ+CcOGX6JhuY10TCqcsB+1BPiA9I84+
 /3YsWE6B9VQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="286118354"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 15 Jul 2020 07:22:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jul 2020 17:22:24 +0300
Date: Wed, 15 Jul 2020 17:22:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200715142224.GS6112@intel.com>
References: <20200714185128.18616-1-ville.syrjala@linux.intel.com>
 <20200714201945.18959-1-ville.syrjala@linux.intel.com>
 <159475877439.3188.13441765978982805094@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159475877439.3188.13441765978982805094@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/fbc: Limit cfb to the first
 256MiB of stolen on g4x+
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

On Tue, Jul 14, 2020 at 09:32:54PM +0100, Chris Wilson wrote:
> Quoting Ville Syrjala (2020-07-14 21:19:45)
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Since g4x the CFB base only takes a 28bit offset into stolen.
> > Not sure if the CFB is allowed to start below that limit but
> > then extend beyond it. Let's assume not and just restrict the
> > allocation to the first 256MiB (in the unlikely case
> > we have more stolen than that).
> > =

> > v2: s/BIT/BIT_ULL/ (Chris)
> > =

> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm=
/i915/display/intel_fbc.c
> > index 85723fba6002..3a4f980788a6 100644
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
> > +               return BIT_ULL(28);
> > +       else
> > +               return BIT_ULL(32);
> > +}
> =

> Confirmed that ilk uses 23:12. I trust g4x is the same.

I guess you mean 27:12? Or did you find a some docs saying it's only
24 bits? All the docs I have say 27:12.

And just for the heck of it I tested on real hw by writing ~0
to the register. This gave me the following results:
snb/ivb/kbl: 0x0ffff000 -> agrees with the docs
g4x/ilk: 0xfffff0f0 -> kinda looks like it's trying to be a 36bit address
cl: 0xffffffff -> can't make any real conclusions

So the g4x/ilk case is a bit strange. Maybe they initially planned to
make it take 36bit physical addresses and then changed their minds and
just made it an offset into stolen. Would need actual testing to confirm
whether >28bit offsets work. Too lazy to do that atm so limiting to
28bits as per the docs is the safe route. Also >32bits would seem
rather pointless anyway as I don't think stolen can live above 4GiB on
these platforms.

> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> =

> I didn't find the others quickly, but it's not going to harm.
> -Chris

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
