Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BBF5785DD
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 16:53:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E1F8D884;
	Mon, 18 Jul 2022 14:53:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FBD38D8A7;
 Mon, 18 Jul 2022 14:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658156029; x=1689692029;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=78xemzPCUI/4kxWFtP0k04XS3LWuQwD6Qr+VBmkqHuQ=;
 b=XViFgAt0GMyONuh4VyA9YpDm5BjAn3jpogbJ9EDX1SYowpGTBDXDrUl8
 oRkZVjRxLtFoJ3QdthN5RzWgeFtfeGth15GlPB+yI7z/dIstqGiGWJq++
 VrBtsOJ/P2Nxe8gcUtPFB9gAD7bQT6Fj7KGjOPChAB8bBv5rl/aA8tEsk
 QFTzsyv/PZ8SEpuHmMfdm829xE98t+pq3BijS/mFIuY6E7whA9GGIe6JE
 DbGJNOjb6Yff+Us3igEwYYlhsFSP6pqyCiH6nw22763Xb+hBCFUIsBpJl
 LRvIXrWQkx6/NtmTZQEZt1vue1ihOpBP5W+keUZkNmy3lbSJbubXclqx1 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="266645802"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="266645802"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 07:53:48 -0700
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="624758442"
Received: from maurocar-mobl2.ger.corp.intel.com (HELO maurocar-mobl2)
 ([10.249.35.85])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 07:53:44 -0700
Date: Mon, 18 Jul 2022 16:53:41 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220718165341.30ee6e31@maurocar-mobl2>
In-Reply-To: <76318fe1-37dc-8a1e-317e-76333995b8ca@linux.intel.com>
References: <cover.1657800199.git.mchehab@kernel.org>
 <c014a1d743fa46a6b57f02bffb7badf438136442.1657800199.git.mchehab@kernel.org>
 <76318fe1-37dc-8a1e-317e-76333995b8ca@linux.intel.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 01/21] drm/i915/gt: Ignore TLB
 invalidations on idle engines
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
Cc: Thomas =?UTF-8?B?SGVsbHN0csO2bQ==?= <thomas.hellstrom@linux.intel.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris.p.wilson@intel.com>, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave Airlie <airlied@redhat.com>,
 stable@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 18 Jul 2022 14:16:10 +0100
Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:

> On 14/07/2022 13:06, Mauro Carvalho Chehab wrote:
> > From: Chris Wilson <chris.p.wilson@intel.com>
> >=20
> > Check if the device is powered down prior to any engine activity,
> > as, on such cases, all the TLBs were already invalidated, so an
> > explicit TLB invalidation is not needed, thus reducing the
> > performance regression impact due to it.
> >=20
> > This becomes more significant with GuC, as it can only do so when
> > the connection to the GuC is awake.
> >=20
> > Cc: stable@vger.kernel.org
> > Fixes: 7938d61591d3 ("drm/i915: Flush TLBs before releasing backing sto=
re") =20
>=20
> Patch itself looks fine but I don't think we closed on the issue of=20
> stable/fixes on this patch?

No, because TLB cache invalidation takes time and causes time outs, which
in turn affects applications and produce Kernel warnings.

There's even open bugs due to TLB timeouts, like this one:

	[424.370996] i915 0000:00:02.0: [drm] *ERROR* rcs0 TLB invalidation did no=
t complete in 4ms!

See:
	https://gitlab.freedesktop.org/drm/intel/-/issues/6424

So, while this is a performance regression, it ends causing a
functional regression.

The first part of this series (patches 1-7) are meant to reduce the
risk of such timeouts by doing TLB invalidation in batch and only=20
when really needed (userspace-exposed TLBs for GTs that are powered-on
and non-edged).

As they're fixing such regressions, it makes sense c/c stable and having
a fixes tag.

> My position here is that, if the functional issue is only with GuC=20
> invalidations, then the tags shouldn't be there (and the huge CC list).
>=20
> Regards,
>=20
> Tvrtko
>=20
> > Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> > Cc: Fei Yang <fei.yang@intel.com>
> > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> > Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> > ---
> >=20
> > To avoid mailbombing on a large number of people, only mailing lists we=
re C/C on the cover.
> > See [PATCH v2 00/21] at: https://lore.kernel.org/all/cover.1657800199.g=
it.mchehab@kernel.org/
> >=20
> >   drivers/gpu/drm/i915/gem/i915_gem_pages.c | 10 ++++++----
> >   drivers/gpu/drm/i915/gt/intel_gt.c        | 17 ++++++++++-------
> >   drivers/gpu/drm/i915/gt/intel_gt_pm.h     |  3 +++
> >   3 files changed, 19 insertions(+), 11 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/dr=
m/i915/gem/i915_gem_pages.c
> > index 97c820eee115..6835279943df 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> > @@ -6,14 +6,15 @@
> >  =20
> >   #include <drm/drm_cache.h>
> >  =20
> > +#include "gt/intel_gt.h"
> > +#include "gt/intel_gt_pm.h"
> > +
> >   #include "i915_drv.h"
> >   #include "i915_gem_object.h"
> >   #include "i915_scatterlist.h"
> >   #include "i915_gem_lmem.h"
> >   #include "i915_gem_mman.h"
> >  =20
> > -#include "gt/intel_gt.h"
> > -
> >   void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
> >   				 struct sg_table *pages,
> >   				 unsigned int sg_page_sizes)
> > @@ -217,10 +218,11 @@ __i915_gem_object_unset_pages(struct drm_i915_gem=
_object *obj)
> >  =20
> >   	if (test_and_clear_bit(I915_BO_WAS_BOUND_BIT, &obj->flags)) {
> >   		struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> > +		struct intel_gt *gt =3D to_gt(i915);
> >   		intel_wakeref_t wakeref;
> >  =20
> > -		with_intel_runtime_pm_if_active(&i915->runtime_pm, wakeref)
> > -			intel_gt_invalidate_tlbs(to_gt(i915));
> > +		with_intel_gt_pm_if_awake(gt, wakeref)
> > +			intel_gt_invalidate_tlbs(gt);
> >   	}
> >  =20
> >   	return pages;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/=
gt/intel_gt.c
> > index 68c2b0d8f187..c4d43da84d8e 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > @@ -12,6 +12,7 @@
> >  =20
> >   #include "i915_drv.h"
> >   #include "intel_context.h"
> > +#include "intel_engine_pm.h"
> >   #include "intel_engine_regs.h"
> >   #include "intel_ggtt_gmch.h"
> >   #include "intel_gt.h"
> > @@ -924,6 +925,7 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
> >   	struct drm_i915_private *i915 =3D gt->i915;
> >   	struct intel_uncore *uncore =3D gt->uncore;
> >   	struct intel_engine_cs *engine;
> > +	intel_engine_mask_t awake, tmp;
> >   	enum intel_engine_id id;
> >   	const i915_reg_t *regs;
> >   	unsigned int num =3D 0;
> > @@ -947,26 +949,31 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
> >  =20
> >   	GEM_TRACE("\n");
> >  =20
> > -	assert_rpm_wakelock_held(&i915->runtime_pm);
> > -
> >   	mutex_lock(&gt->tlb_invalidate_lock);
> >   	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
> >  =20
> >   	spin_lock_irq(&uncore->lock); /* serialise invalidate with GT reset =
*/
> >  =20
> > +	awake =3D 0;
> >   	for_each_engine(engine, gt, id) {
> >   		struct reg_and_bit rb;
> >  =20
> > +		if (!intel_engine_pm_is_awake(engine))
> > +			continue;
> > +
> >   		rb =3D get_reg_and_bit(engine, regs =3D=3D gen8_regs, regs, num);
> >   		if (!i915_mmio_reg_offset(rb.reg))
> >   			continue;
> >  =20
> >   		intel_uncore_write_fw(uncore, rb.reg, rb.bit);
> > +		awake |=3D engine->mask;
> >   	}
> >  =20
> >   	spin_unlock_irq(&uncore->lock);
> >  =20
> > -	for_each_engine(engine, gt, id) {
> > +	for_each_engine_masked(engine, gt, awake, tmp) {
> > +		struct reg_and_bit rb;
> > +
> >   		/*
> >   		 * HW architecture suggest typical invalidation time at 40us,
> >   		 * with pessimistic cases up to 100us and a recommendation to
> > @@ -974,12 +981,8 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
> >   		 */
> >   		const unsigned int timeout_us =3D 100;
> >   		const unsigned int timeout_ms =3D 4;
> > -		struct reg_and_bit rb;
> >  =20
> >   		rb =3D get_reg_and_bit(engine, regs =3D=3D gen8_regs, regs, num);
> > -		if (!i915_mmio_reg_offset(rb.reg))
> > -			continue;
> > -
> >   		if (__intel_wait_for_register_fw(uncore,
> >   						 rb.reg, rb.bit, 0,
> >   						 timeout_us, timeout_ms,
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i9=
15/gt/intel_gt_pm.h
> > index bc898df7a48c..a334787a4939 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> > @@ -55,6 +55,9 @@ static inline void intel_gt_pm_might_put(struct intel=
_gt *gt)
> >   	for (tmp =3D 1, intel_gt_pm_get(gt); tmp; \
> >   	     intel_gt_pm_put(gt), tmp =3D 0)
> >  =20
> > +#define with_intel_gt_pm_if_awake(gt, wf) \
> > +	for (wf =3D intel_gt_pm_get_if_awake(gt); wf; intel_gt_pm_put_async(g=
t), wf =3D 0)
> > +
> >   static inline int intel_gt_pm_wait_for_idle(struct intel_gt *gt)
> >   {
> >   	return intel_wakeref_wait_for_idle(&gt->wakeref); =20
