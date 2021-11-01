Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D63AA441A0C
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 11:40:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93CF3897C5;
	Mon,  1 Nov 2021 10:40:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42CDD897C5
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 10:40:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="217902020"
X-IronPort-AV: E=Sophos;i="5.87,199,1631602800"; d="scan'208";a="217902020"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 03:40:39 -0700
X-IronPort-AV: E=Sophos;i="5.87,199,1631602800"; d="scan'208";a="467267016"
Received: from vkubarev-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.249.254.35])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 03:40:37 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <42d4ab18-97b7-bb80-cef9-0d779007b9e2@linux.intel.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <20211025042623.3876-1-cooper.chiou@intel.com>
 <42d4ab18-97b7-bb80-cef9-0d779007b9e2@linux.intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Cooper Chiou <cooper.chiou@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <163576323499.3344.4388287606987057365@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 01 Nov 2021 12:40:34 +0200
Subject: Re: [Intel-gfx] [PATCH v8] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 William Tseng <william.tseng@intel.com>, Pawel Wilma <pawel.wilma@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-11-01 12:15:19)
>=20
> On 25/10/2021 05:26, Cooper Chiou wrote:
> > This implements WaProgramMgsrForCorrectSliceSpecificMmioReads which
> > was omitted by mistake from Gen9 documentation, while it is actually
> > applicable to fused off parts.
> >=20
> > Workaround consists of making sure MCR packet control register is
> > programmed to point to enabled slice/subslice pair before doing any
> > MMIO reads from the affected registers.
> >=20
> > Failure do to this can result in complete system hangs when running
> > certain workloads. Two known cases which can cause system hangs are:
> >=20
> > 1. "test_basic progvar_prog_scope_uninit" test which is part of
> >      Khronos OpenCL conformance suite
> >      (https://github.com/KhronosGroup/OpenCL-CTS) with the Intel
> >      OpenCL driver (https://github.com/intel/compute-runtime).
> >=20
> > 2. VP8 media hardware encoding using the full-feature build of the
> >      Intel media-driver (https://github.com/intel/media-driver) and
> >      ffmpeg.
> >=20
> > For the former case patch was verified to fix the hard system hang
> > when executing the OCL test on Intel Pentium CPU 6405U which contains
> > fused off GT1 graphics.
> >=20
> > Reference: HSD#1508045018,1405586840, BSID#0575
> >=20
> > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Cc: William Tseng <william.tseng@intel.com>
> > Cc: Shawn C Lee <shawn.c.lee@intel.com>
> > Cc: Pawel Wilma <pawel.wilma@intel.com>
> > Signed-off-by: Cooper Chiou <cooper.chiou@intel.com>
>=20
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Thanks for following through with all the testing and validation for the
patch!

Acked-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas

>=20
> Regards,
>=20
> Tvrtko
>=20
> P.S. You could have preserved my r-b from an earlier version since it is =

> the same code, just different commit message.
>=20
> > ---
> >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 41 +++++++++++++++++++++
> >   1 file changed, 41 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/=
drm/i915/gt/intel_workarounds.c
> > index e1f362530889..8ae24da601b0 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -877,11 +877,52 @@ hsw_gt_workarounds_init(struct intel_gt *gt, stru=
ct i915_wa_list *wal)
> >       wa_write_clr(wal, GEN7_FF_THREAD_MODE, GEN7_FF_VS_REF_CNT_FFME);
> >   }
> >  =20
> > +static void
> > +gen9_wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *w=
al)
> > +{
> > +     const struct sseu_dev_info *sseu =3D &i915->gt.info.sseu;
> > +     unsigned int slice, subslice;
> > +     u32 mcr, mcr_mask;
> > +
> > +     GEM_BUG_ON(GRAPHICS_VER(i915) !=3D 9);
> > +
> > +     /*
> > +      * WaProgramMgsrForCorrectSliceSpecificMmioReads:gen9,glk,kbl,cml
> > +      * Before any MMIO read into slice/subslice specific registers, M=
CR
> > +      * packet control register needs to be programmed to point to any
> > +      * enabled s/ss pair. Otherwise, incorrect values will be returne=
d.
> > +      * This means each subsequent MMIO read will be forwarded to an
> > +      * specific s/ss combination, but this is OK since these registers
> > +      * are consistent across s/ss in almost all cases. In the rare
> > +      * occasions, such as INSTDONE, where this value is dependent
> > +      * on s/ss combo, the read should be done with read_subslice_reg.
> > +      */
> > +     slice =3D ffs(sseu->slice_mask) - 1;
> > +     GEM_BUG_ON(slice >=3D ARRAY_SIZE(sseu->subslice_mask));
> > +     subslice =3D ffs(intel_sseu_get_subslices(sseu, slice));
> > +     GEM_BUG_ON(!subslice);
> > +     subslice--;
> > +
> > +     /*
> > +      * We use GEN8_MCR..() macros to calculate the |mcr| value for
> > +      * Gen9 to address WaProgramMgsrForCorrectSliceSpecificMmioReads
> > +      */
> > +     mcr =3D GEN8_MCR_SLICE(slice) | GEN8_MCR_SUBSLICE(subslice);
> > +     mcr_mask =3D GEN8_MCR_SLICE_MASK | GEN8_MCR_SUBSLICE_MASK;
> > +
> > +     drm_dbg(&i915->drm, "MCR slice:%d/subslice:%d =3D %x\n", slice, s=
ubslice, mcr);
> > +
> > +     wa_write_clr_set(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
> > +}
> > +
> >   static void
> >   gen9_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wa=
l)
> >   {
> >       struct drm_i915_private *i915 =3D gt->i915;
> >  =20
> > +     /* WaProgramMgsrForCorrectSliceSpecificMmioReads:glk,kbl,cml,gen9=
 */
> > +     gen9_wa_init_mcr(i915, wal);
> > +
> >       /* WaDisableKillLogic:bxt,skl,kbl */
> >       if (!IS_COFFEELAKE(i915) && !IS_COMETLAKE(i915))
> >               wa_write_or(wal,
> >=20
