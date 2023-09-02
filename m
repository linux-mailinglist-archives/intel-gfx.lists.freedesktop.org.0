Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 072DA79235B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 16:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF8E10E033;
	Tue,  5 Sep 2023 14:14:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mslow1.mail.gandi.net (mslow1.mail.gandi.net [217.70.178.240])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF61A10E032
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 Sep 2023 15:17:58 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (unknown [IPv6:2001:4b98:dc4:8::228])
 by mslow1.mail.gandi.net (Postfix) with ESMTP id A287DC88F2
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 Sep 2023 15:00:58 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id E42A81BF205;
 Sat,  2 Sep 2023 15:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=otheo.eu; s=gm1;
 t=1693666853;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+S38coWq3m/m/YV3cRo4Hp7mNzZLey5FCp657+1AbpM=;
 b=MglkVGClQbBS8SUcIVpvaw40odncjGGqpmkuTzCjxStaOM9Wu7QcorOzsD9rEsbXKdVQWx
 2sQiRXZ+NOPvqd+AyEOudZS6mBHTExQCcy1wopn94/TjHHN3uzKUVdMaSIWbnSvah147CN
 TVrEayURYWoqRI0rG6rmIU93wiy+3KW4QORgawNBX1A+RuPifiP98NAIwnT5i5YjkGnjCH
 4elQi1kEXs6R2+4mrlb11a/ZpKgiUOuoj8eYBb55w8ktJ98G0ceEETOJ0rJTbqmGE1Gp2r
 HM+M57K05w2lmLXFfptsB381mVWA2JKzYqbKTaghGQCFzoZDAGJo8JsNmZKDGg==
Date: Sat, 2 Sep 2023 17:00:29 +0200
From: Javier Pello <devel@otheo.eu>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Message-Id: <20230902170029.4d21920fe1a9224c1547a4a6@otheo.eu>
In-Reply-To: <d1a82d5e-8c86-645d-031c-a0243c94bef4@intel.com>
References: <20230825163343.e2fc7eb70db106edc6df3c4c@otheo.eu>
 <d1a82d5e-8c86-645d-031c-a0243c94bef4@intel.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: #01#@otheo.eu
X-Mailman-Approved-At: Tue, 05 Sep 2023 14:14:03 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix reservation address in
 ggtt_reserve_guc_top
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Fernando Pacheco <fernando.pacheco@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 31 Aug 2023 15:49:28 -0700
"Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com> wrote:

> On 8/25/2023 7:33 AM, Javier Pello wrote:
> > There is an assertion in ggtt_reserve_guc_top that the global GTT
> > is of size at least GUC_GGTT_TOP, which is not the case on a 32-bit
> > platform; see commit 562d55d991b39ce376c492df2f7890fd6a541ffc
> > ("drm/i915/bdw: Only use 2g GGTT for 32b platforms"). If GEM_BUG_ON
> > is enabled, this triggers a BUG(); if GEM_BUG_ON is disabled, the
> > subsequent reservation fails and the driver fails to initialise
> > the device:
> >
> > i915 0000:00:02.0: [drm:i915_init_ggtt [i915]] Failed to reserve top of=
 GGTT for GuC
> > i915 0000:00:02.0: Device initialization failed (-28)
> > i915 0000:00:02.0: Please file a bug on drm/i915; see https://gitlab.fr=
eedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs for details.
> > i915: probe of 0000:00:02.0 failed with error -28
> >
> > Make the reservation at the top of the available space, whatever
> > that is, instead of assuming that the top will be GUC_GGTT_TOP.
> >
> > Fixes: 911800765ef6 ("drm/i915/uc: Reserve upper range of GGTT")
>=20
> For tracking, it might be good to also add:
>=20
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/9080

Sure.

> > Signed-off-by: Javier Pello <devel@otheo.eu>
> > Cc: intel-gfx@lists.freedesktop.org
> > Cc: stable@vger.kernel.org # v5.3+
>=20
> Need the full CC list here, so that when the patch gets back-ported the=20
> relevant developers get automatically added.

I was unsure if I should add them from the start or wait for a review.

> > ---
> >   drivers/gpu/drm/i915/gt/intel_ggtt.c | 21 +++++++++++++++------
> >   1 file changed, 15 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i91=
5/gt/intel_ggtt.c
> > index e9328e1a..0157bebb 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > @@ -511,20 +511,29 @@ void intel_ggtt_unbind_vma(struct i915_address_sp=
ace *vm,
> >   	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
> >   }
> >  =20
> > +/* Reserve the top of the GuC address space for firmware images. Addre=
sses
> > + * beyond GUC_GGTT_TOP in the GuC address space are inaccessible by Gu=
C,
> > + * which makes for a suitable range to hold GuC/HuC firmware images if=
 the
> > + * size of the GGTT is 4G. However, on a 32-bit platform the size of t=
he GGTT
> > + * is limited to 2G, which is less than GUC_GGTT_TOP, but we reserve a=
 chunk
> > + * of the same size anyway, which is far more than needed, to keep the=
 logic
> > + * in uc_fw_ggtt_offset() simple. */
>=20
> Style: multi-line comment should be formatted as:
>=20
> /*
>  =A0* Text
>  =A0* more text
>  =A0*/

Yes, I realised that after I sent the patch, but I thought I would
wait for replies rather than resending with only a style change.

> > +#define GUC_TOP_RESERVE_SIZE (SZ_4G - GUC_GGTT_TOP)
> > +
> >   static int ggtt_reserve_guc_top(struct i915_ggtt *ggtt)
> >   {
> > -	u64 size;
> > +	u64 offset;
> >   	int ret;
> >  =20
> >   	if (!intel_uc_uses_guc(&ggtt->vm.gt->uc))
> >   		return 0;
> >  =20
> > -	GEM_BUG_ON(ggtt->vm.total <=3D GUC_GGTT_TOP);
> > -	size =3D ggtt->vm.total - GUC_GGTT_TOP;
> > +	GEM_BUG_ON(ggtt->vm.total <=3D GUC_TOP_RESERVE_SIZE);
> > +	offset =3D ggtt->vm.total - GUC_TOP_RESERVE_SIZE;
> >  =20
> > -	ret =3D i915_gem_gtt_reserve(&ggtt->vm, NULL, &ggtt->uc_fw, size,
> > -				   GUC_GGTT_TOP, I915_COLOR_UNEVICTABLE,
> > -				   PIN_NOEVICT);
> > +	ret =3D i915_gem_gtt_reserve(&ggtt->vm, NULL, &ggtt->uc_fw,
> > +				   GUC_TOP_RESERVE_SIZE, offset,
> > +				   I915_COLOR_UNEVICTABLE, PIN_NOEVICT);
>=20
> The code change looks good to me, so with the style fix and the=20
> additions to the commit message this is:
>=20
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Thank you.

Javier
