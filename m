Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B6A346533
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 17:30:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24C916EC5A;
	Tue, 23 Mar 2021 16:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7E6D6EC5A
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 16:30:37 +0000 (UTC)
IronPort-SDR: pNe33tD1aZxktEJd4BfPdF/xM87fSs+l/3OCZgOFxviVbWlrSJJFt/k8+NsY7ik9hog5810Qt5
 OygocPs3wOCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="275612748"
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="275612748"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 09:30:37 -0700
IronPort-SDR: UoNs5nXDlcUOWBy/8CXMOBYI3YNZWS2NTZjwTcGc8JTSFhQrtIkTc8mTEKRNWRXXT5yFLZ7GXr
 wuXkbbQ2qyeQ==
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="604356327"
Received: from abdulla1-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.251.23.100])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 09:30:35 -0700
Date: Tue, 23 Mar 2021 12:30:33 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <YFoXqUwauXc+NifS@intel.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <20210305125835.12207-1-cooper.chiou@intel.com>
 <1868bc2a-ccee-b812-b135-f52bb61b202b@linux.intel.com>
 <161546110762.9434.1949460248954190360@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161546110762.9434.1949460248954190360@jlahtine-mobl.ger.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Enable
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 11, 2021 at 01:11:48PM +0200, Joonas Lahtinen wrote:
> Quoting Tvrtko Ursulin (2021-03-11 12:45:54)
> > =

> > On 05/03/2021 12:58, Cooper Chiou wrote:
> > > WaProgramMgsrForCorrectSliceSpecificMmioReads applies for Gen9 to
> > > resolve VP8 hardware encoding system hang up on GT1 sku for
> > > ChromiumOS projects
> > > =

> > > Slice specific MMIO read inaccurate so MGSR needs to be programmed
> > > appropriately to get correct reads from these slicet-related MMIOs.
> > > =

> > > It dictates that before any MMIO read into Slice/Subslice specific
> > > registers, MCR packet control register(0xFDC) needs to be programmed
> > > to point to any enabled slice/subslice pair, especially GT1 fused sku
> > > since this issue can be reproduced on VP8 hardware encoding via ffmpeg
> > > on ChromiumOS devices.
> > > When exit PC7, MGSR will reset so that we have to skip fused subslice=
 ID.
> > > =

> > > Reference: HSD#1508045018,1405586840, BSID#0575
> > > =

> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > > Cc: William Tseng <william.tseng@intel.com>
> > > Cc: Lee Shawn C <shawn.c.lee@intel.com>
> > > =

> > > Signed-off-by: Cooper Chiou <cooper.chiou@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 37 ++++++++++++++++++=
+++
> > >   1 file changed, 37 insertions(+)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gp=
u/drm/i915/gt/intel_workarounds.c
> > > index 3b4a7da60f0b..eb2a587b06b8 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -878,9 +878,46 @@ hsw_gt_workarounds_init(struct drm_i915_private =
*i915, struct i915_wa_list *wal)
> > >       wa_write_clr(wal, GEN7_FF_THREAD_MODE, GEN7_FF_VS_REF_CNT_FFME);
> > >   }
> > >   =

> > > +static void
> > > +gen9_wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list =
*wal)
> > > +{
> > > +     const struct sseu_dev_info *sseu =3D &i915->gt.info.sseu;
> > > +     unsigned int slice, subslice;
> > > +     u32 mcr, mcr_mask;
> > > +
> > > +     GEM_BUG_ON(INTEL_GEN(i915) < 9);
> > > +
> > > +     /*
> > > +      * WaProgramMgsrForCorrectSliceSpecificMmioReads:glk,kbl,cml
> > > +      * Before any MMIO read into slice/subslice specific registers,=
 MCR
> > > +      * packet control register needs to be programmed to point to a=
ny
> > > +      * enabled s/ss pair. Otherwise, incorrect values will be retur=
ned.
> > > +      * This means each subsequent MMIO read will be forwarded to an
> > > +      * specific s/ss combination, but this is OK since these regist=
ers
> > > +      * are consistent across s/ss in almost all cases. In the rare
> > > +      * occasions, such as INSTDONE, where this value is dependent
> > > +      * on s/ss combo, the read should be done with read_subslice_re=
g.
> > > +      */
> > > +     slice =3D ffs(sseu->slice_mask) - 1;
> > > +     GEM_BUG_ON(slice >=3D ARRAY_SIZE(sseu->subslice_mask));
> > > +     subslice =3D ffs(intel_sseu_get_subslices(sseu, slice));
> > > +     GEM_BUG_ON(!subslice);
> > > +     subslice--;
> > > +
> > > +     mcr =3D GEN8_MCR_SLICE(slice) | GEN8_MCR_SUBSLICE(subslice);
> > > +     mcr_mask =3D GEN8_MCR_SLICE_MASK | GEN8_MCR_SUBSLICE_MASK;
> > > +
> > > +     drm_dbg(&i915->drm, "MCR slice:%d/subslice:%d =3D %x\n", slice,=
 subslice, mcr);
> > > +
> > > +     wa_write_clr_set(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
> > > +}
> > > +
> > >   static void
> > >   gen9_gt_workarounds_init(struct drm_i915_private *i915, struct i915=
_wa_list *wal)
> > >   {
> > > +     /* WaProgramMgsrForCorrectSliceSpecificMmioReads:glk,kbl,cml,ge=
n9 */
> > > +     gen9_wa_init_mcr(i915, wal);
> > > +
> > >       /* WaDisableKillLogic:bxt,skl,kbl */
> > >       if (!IS_COFFEELAKE(i915) && !IS_COMETLAKE(i915))
> > >               wa_write_or(wal,
> > > =

> > =

> > 1)
> > Patch mechanics are fine.
> > =

> > 2)
> > We have confirmation from the HW folks this actually needs doing on Gen=
9 =

> > even if docs fail to mention it.
> > =

> > So even if the immediate fix is for VP8 encode, which is not fully open=
, =

> > this is the right thing to do in general and would have been done if th=
e =

> > WA was properly documented from the start.
> > =

> > 3)
> > 3d performance regression cannot be reproduced on the machine where it =

> > was originally reported. (Or on other machines.)
> > =

> > So:
> > =

> > Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > =

> > + Joonas for ack to merge due the second point above.
> =

> If this does not effect any fully Open Source userspace, this needs to be
> carried downstream in the Chrome OS kernel tree.
> =

> Gen9 has been out there without this W/A for a long time. There is always
> potential for changing existing deployments' behaviour to the worse when
> adding W/As. If it had been implemented from the very beginning, then it
> would have undergone all the testing not to interfere with existing
> workloads. Merging it after the fact makes the risk much higher.
> =

> It's an unnecessary risk of regressions to merge a W/A with potential
> for regressions that gains nothing for the upstream driver perspective.
> =

> So in short, unless the VP8 encoding can be Open Sourced or lack of the W=
/A
> impacts otherwise the fully open stack, there is no path forward to merge
> this due to the DRM subsystem userspace requirement rules:
> =

> https://www.kernel.org/doc/html/latest/gpu/drm-uapi.html#open-source-user=
space-requirements

This is a very good point. We should never bypass this.

However, imho, in this case we shouldn't look to the userspace usage, but to
the hardware design. What started as an w/a on gen8 became a defacto
hw programming sequence on all the following platforms.

Looking to all the available spec and hsds database, I agree with Tvrtko th=
at
"this is the right thing to do in general"

If we don't do this, the hw doesn't behave well. Right now we are hitting w=
ith
V8 case, but we don't know what other cases we might be hitting or will be
hitting in the future and it is always hard to hunt for old missed hw
workarounds like this one.

So, I hope you reconsider this situation so we can get hw flow in place as
expected.

Thanks,
Rodrigo.

> =

> Regards, Joonas
> =

> > =

> > Regards,
> > =

> > Tvrtko
> > =

> > P.S. Many thanks for patiently dealing with requests to test on many =

> > platforms.
> > =

> > P.P.S. Sadly we are still not able to explain the whole details around =

> > 0xfdc behaviour on Gen9 vs Gen11.
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
