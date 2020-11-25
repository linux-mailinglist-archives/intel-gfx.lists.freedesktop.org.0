Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B17202C4801
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 20:02:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DFD56E8EF;
	Wed, 25 Nov 2020 19:02:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 372686E8EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 19:02:06 +0000 (UTC)
IronPort-SDR: 4XqQr6Yo9eEvs/JleoiCVN8Nwj7u+ZC2IjUfHRjCMk2sHVsr5DyDbO/GVbg+AjzI7Lr9cJ9Sx9
 F4wI/VEtl2xA==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="168676505"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="168676505"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 11:02:05 -0800
IronPort-SDR: Zo+25X5c5H9LblLvXR/d+2C/tusg/qlgqRZQqE0N8Z2IS4qHujUhluPqdpMWE2A3uFwg87AU9+
 wY4CbNgtlemw==
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="370977834"
Received: from sowmyave-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.29.185])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 11:01:55 -0800
Date: Wed, 25 Nov 2020 11:01:50 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201125190150.ibkjsgwzk2fj4ocu@ldmartin-desk1>
References: <20201125003108.156110-1-aditya.swarup@intel.com>
 <87360xmzgr.fsf@intel.com>
 <160631840326.26272.537878967385128182@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160631840326.26272.537878967385128182@build.alporthouse.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Fix REVID macros for TGL to
 fetch correct stepping
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 25, 2020 at 03:33:23PM +0000, Chris Wilson wrote:
>Quoting Jani Nikula (2020-11-25 11:45:56)
>> On Tue, 24 Nov 2020, Aditya Swarup <aditya.swarup@intel.com> wrote:
>> > Fix TGL REVID macros to fetch correct display/gt stepping based
>> > on SOC rev id from INTEL_REVID() macro. Previously, we were just
>> > returning the first element of the revid array instead of using
>> > the correct index based on SOC rev id.
>> >
>> > Also, add array bound checks for TGL REV ID array. Since, there
>> > might be a possibility of using older kernels on latest platform
>> > revision, resulting in out of bounds access for rev ID array.
>> > In this scenario, print message for unsupported rev ID and apply
>> > settings for latest rev ID available.
>> >
>> > Fixes: ("drm/i915/tgl: Fix stepping WA matching")
>> > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>> > Cc: Matt Roper <matthew.d.roper@intel.com>
>> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> > Cc: Jani Nikula <jani.nikula@intel.com>
>> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> > Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/i915_drv.h | 35 +++++++++++++++++++++++++++------
>> >  1 file changed, 29 insertions(+), 6 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i9=
15_drv.h
>> > index 15be8debae54..29d55b7017be 100644
>> > --- a/drivers/gpu/drm/i915/i915_drv.h
>> > +++ b/drivers/gpu/drm/i915/i915_drv.h
>> > @@ -1572,16 +1572,37 @@ enum {
>> >       TGL_REVID_D0,
>> >  };
>> >
>> > -extern const struct i915_rev_steppings tgl_uy_revids[];
>> > -extern const struct i915_rev_steppings tgl_revids[];
>> > +extern const struct i915_rev_steppings tgl_uy_revids[4];
>> > +extern const struct i915_rev_steppings tgl_revids[2];
>>
>> Just a quick note, the compiler does not check that the size in the
>> extern declaration matches the size in the array definition. So you
>> might end up with a mismatch without noticing.
>
>What surprised me is that this defeated the __must_be_array() check.
>I thought these were just pointers to C

it doesn't complain because it actually works. The extern is declaring
that amount of storage size... I think people here are confusing with
accepting an array as a parameter, in which case it decays to a
pointer.

Since this is all obscure semantics of C, for the quick fix here maybe
better to just define the size and reuse it both in header and .c?

and then work in the refactor that will actually remove all of this.

Lucas De Marchi

>
>> > +#define TGL_UY_REVID_RANGE(revid) \
>> > +     ((revid) < ARRAY_SIZE(tgl_uy_revids))
>> > +
>> > +#define TGL_REVID_RANGE(revid) \
>> > +     ((revid) < ARRAY_SIZE(tgl_revids))
>> >
>> >  static inline const struct i915_rev_steppings *
>> >  tgl_revids_get(struct drm_i915_private *dev_priv)
>> >  {
>> > -     if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv))
>> > -             return tgl_uy_revids;
>> > -     else
>> > -             return tgl_revids;
>> > +     const u8 revid =3D INTEL_REVID(dev_priv);
>> > +
>> > +     if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
>> > +             if (TGL_UY_REVID_RANGE(revid)) {
>> > +                     return tgl_uy_revids + revid;
>> > +             } else {
>> > +                     drm_dbg_kms(&dev_priv->drm,
>> > +                                 "Unsupported SOC stepping found %u, =
using %lu instead\n",
>> > +                                 revid, ARRAY_SIZE(tgl_uy_revids) - 1=
);
>
>Also please don't have a dbg for every single IS_TGL_*_REVID
>invocation. And this is not _kms, but driver; better yet, don't bother
>with a drm_dbg_kms here at all.
>
>If you want to actually check, add something like
>intel_detect_preproduction_hw() and warn about unknown future revids.
>Or include the info when we print the revid in the caps.
>-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
