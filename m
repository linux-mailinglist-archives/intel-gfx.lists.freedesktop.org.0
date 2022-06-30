Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA67756134B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 09:33:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33A2A112666;
	Thu, 30 Jun 2022 07:33:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0744E112666;
 Thu, 30 Jun 2022 07:33:06 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 78666615DD;
 Thu, 30 Jun 2022 07:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC2DAC34115;
 Thu, 30 Jun 2022 07:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1656574385;
 bh=qdJ1ojG9FqadeWBXMNSsSNxd/lwx2dqBZ2YeAVl+g+Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MbZL5eKqEHaju7VKRVwNDolxeozHoNlnAdtBglMqRVbabNDh6BljVGTbCDAP+o+kh
 IDnCn8rOZoBW7dWJnrmPULuCm4BDXD5Bx6lYEeeQ0pGJfh+LneIb4Q8xUn6wqvw79L
 4gJKcCb7roY+QtUGUH2OzZr4OgTR7srfsOBMQRh4Lb25x14bRjWtjDNWBvEgqG1p8H
 S8coVw117PyBR2iNMzGWkTQ4hRa0cMj+QAcNY2Fi1zmfA/7ty1WgCSU8ibpPagLyCP
 HEJ6B6B+bYeplk1KzYVF+6SsUhPhuKz8OXND7AohryRw1kMumpSIy1t3wbopRNb7xH
 egX77JL8hr5Ng==
Date: Thu, 30 Jun 2022 08:32:56 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220630083256.35a56cb1@sal.lan>
In-Reply-To: <7e6a9a27-7286-7f21-7fec-b9832b93b10c@linux.intel.com>
References: <cover.1655306128.git.mchehab@kernel.org>
 <5ee647f243a774927ec328bfca8212abc4957909.1655306128.git.mchehab@kernel.org>
 <YrRLyg1IJoZpVGfg@intel.intel>
 <160e613f-a0a8-18ff-5d4b-249d4280caa8@linux.intel.com>
 <20220627110056.6dfa4f9b@maurocar-mobl2>
 <d79492ad-b99a-f9a9-f64a-52b94db68a3b@linux.intel.com>
 <20220629172955.64ffb5c3@maurocar-mobl2>
 <7e6a9a27-7286-7f21-7fec-b9832b93b10c@linux.intel.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/gt: Serialize GRDOM access
 between multiple engine resets
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
 Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dave Airlie <airlied@redhat.com>, stable@vger.kernel.org,
 Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Em Wed, 29 Jun 2022 17:02:59 +0100
Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> escreveu:

> On 29/06/2022 16:30, Mauro Carvalho Chehab wrote:
> > On Tue, 28 Jun 2022 16:49:23 +0100
> > Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> >  =20
> >> .. which for me means a different patch 1, followed by patch 6 (moved
> >> to be patch 2) would be ideal stable material.
> >>
> >> Then we have the current patch 2 which is open/unknown (to me at least=
).
> >>
> >> And the rest seem like optimisations which shouldn't be tagged as fixe=
s.
> >>
> >> Apart from patch 5 which should be cc: stable, but no fixes as agreed.
> >>
> >> Could you please double check if what I am suggesting here is feasible
> >> to implement and if it is just send those minimal patches out alone? =
=20
> >=20
> > Tested and porting just those 3 patches are enough to fix the Broadwell
> > bug.
> >=20
> > So, I submitted a v2 of this series with just those. They all need to
> > be backported to stable. =20
>=20
> I would really like to give even a smaller fix a try. Something like, alt=
hough not even compile tested:
>=20
> commit 4d5e94aef164772f4d85b3b4c1a46eac9a2bd680
> Author: Chris Wilson <chris.p.wilson@intel.com>
> Date:   Wed Jun 29 16:25:24 2022 +0100
>=20
>      drm/i915/gt: Serialize TLB invalidates with GT resets
>     =20
>      Avoid trying to invalidate the TLB in the middle of performing an
>      engine reset, as this may result in the reset timing out. Currently,
>      the TLB invalidate is only serialised by its own mutex, forgoing the
>      uncore lock, but we can take the uncore->lock as well to serialise
>      the mmio access, thereby serialising with the GDRST.
>     =20
>      Tested on a NUC5i7RYB, BIOS RYBDWi35.86A.0380.2019.0517.1530 with
>      i915 selftest/hangcheck.
>     =20
>      Cc: stable@vger.kernel.org
>      Fixes: 7938d61591d3 ("drm/i915: Flush TLBs before releasing backing =
store")
>      Reported-by: Mauro Carvalho Chehab <mchehab@kernel.org>
>      Tested-by: Mauro Carvalho Chehab <mchehab@kernel.org>
>      Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
>      Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
>      Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>      Acked-by: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
>      Reviewed-by: Andi Shyti <andi.shyti@intel.com>
>      Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
>      Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt=
/intel_gt.c
> index 8da3314bb6bf..aaadd0b02043 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -952,7 +952,23 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
>          mutex_lock(&gt->tlb_invalidate_lock);
>          intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
>  =20
> +       spin_lock_irq(&uncore->lock); /* serialise invalidate with GT res=
et */
> +
> +       for_each_engine(engine, gt, id) {
> +               struct reg_and_bit rb;
> +
> +               rb =3D get_reg_and_bit(engine, regs =3D=3D gen8_regs, reg=
s, num);
> +               if (!i915_mmio_reg_offset(rb.reg))
> +                       continue;
> +
> +               intel_uncore_write_fw(uncore, rb.reg, rb.bit);
> +       }
> +
> +       spin_unlock_irq(&uncore->lock);
> +
>          for_each_engine(engine, gt, id) {
> +               struct reg_and_bit rb;
> +
>                  /*
>                   * HW architecture suggest typical invalidation time at =
40us,
>                   * with pessimistic cases up to 100us and a recommendati=
on to
> @@ -960,13 +976,11 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
>                   */
>                  const unsigned int timeout_us =3D 100;
>                  const unsigned int timeout_ms =3D 4;
> -               struct reg_and_bit rb;
>  =20
>                  rb =3D get_reg_and_bit(engine, regs =3D=3D gen8_regs, re=
gs, num);
>                  if (!i915_mmio_reg_offset(rb.reg))
>                          continue;
>  =20
> -               intel_uncore_write_fw(uncore, rb.reg, rb.bit);
>                  if (__intel_wait_for_register_fw(uncore,
>                                                   rb.reg, rb.bit, 0,
>                                                   timeout_us, timeout_ms,
>=20

This won't work, as it is not serializing TLB cache invalidation with
i915 resets. Besides that, this is more or less merging patches 1 and 3,
placing patches with different rationales altogether. Upstream rule is
to have one logical change per patch.

> If this works it would be least painful to backport. The other improvemen=
ts can then be devoid of the fixes tag.

=46rom backport PoV, it wouldn't make any difference applying one patch
or two. See, intel_gt_invalidate_tlbs() function doesn't exist before
changeset 7938d61591d3 ("drm/i915: Flush TLBs before releasing backing stor=
e"),
so, it shouldn't have merge conflicts while backporting it, maybe except
if some functions it calls (or parameters) have changed. On such case,
the backport fix should be trivial, and the end result of backporting
one folded patch or two would be the same.

If any conflict happens, I can help doing the backports.

> > I still think that other TLB patches are needed/desired upstream, but
> > I'll submit them on a separate series. Let's fix the regression first ;=
-) =20
>=20
> Yep, that's exactly right.
>=20
> Regards,
>=20
> Tvrtko
