Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B105454510
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 11:36:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 450C26E4F3;
	Wed, 17 Nov 2021 10:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE2876E51C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 10:35:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="233868115"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="233868115"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 02:35:56 -0800
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="506858473"
Received: from sorenthe-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.254.159])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 02:35:53 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20211117100223.52c7460a@canb.auug.org.au>
References: <20211117100223.52c7460a@canb.auug.org.au>
To: Stephen Rothwell <sfr@canb.auug.org.au>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <163714535048.4529.4694769143307309201@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Wed, 17 Nov 2021 12:35:50 +0200
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the
 drm-intel-gt tree
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
Cc: thomas.hellstrom@linux.intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Matthew Auld <matthew.auld@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+ intel-gfx mailing list (Stephen, can you include this going forward?)

Adding Thomas for this specific patch.

Regards, Joonas

Quoting Stephen Rothwell (2021-11-17 01:02:23)
> Hi all,
>=20
> After merging the etnaviv tree, today's linux-next build (x86_64
> allmodconfig) failed like this:
>=20
> drivers/gpu/drm/i915/gem/i915_gem_ttm.c: In function 'vm_fault_ttm':
> drivers/gpu/drm/i915/gem/i915_gem_ttm.c:862:9: error: too many arguments =
to function 'ttm_bo_vm_fault_reserved'
>   862 |   ret =3D ttm_bo_vm_fault_reserved(vmf, vmf->vma->vm_page_prot,
>       |         ^~~~~~~~~~~~~~~~~~~~~~~~
> In file included from include/drm/ttm/ttm_bo_driver.h:42,
>                  from drivers/gpu/drm/i915/gem/i915_gem_ttm.c:6:
> include/drm/ttm/ttm_bo_api.h:585:12: note: declared here
>   585 | vm_fault_t ttm_bo_vm_fault_reserved(struct vm_fault *vmf,
>       |            ^~~~~~~~~~~~~~~~~~~~~~~~
>=20
> Caused by commit
>=20
>   ebd4a8ec7799 ("drm/i915/ttm: move shrinker management into adjust_lru")
>=20
> interacting with commit
>=20
>   0d979509539e ("drm/ttm: remove ttm_bo_vm_insert_huge()")
>=20
> from Linus' tree.
>=20
> I applied the following merge fix patch.
>=20
> From: Stephen Rothwell <sfr@canb.auug.org.au>
> Date: Wed, 17 Nov 2021 09:57:09 +1100
> Subject: [PATCH] fix up for "drm/ttm: remove ttm_bo_vm_insert_huge()"
>=20
> Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i9=
15/gem/i915_gem_ttm.c
> index d08a270b0921..68cfe6e9ceab 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -860,7 +860,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
> =20
>         if (drm_dev_enter(dev, &idx)) {
>                 ret =3D ttm_bo_vm_fault_reserved(vmf, vmf->vma->vm_page_p=
rot,
> -                                              TTM_BO_VM_NUM_PREFAULT, 1);
> +                                              TTM_BO_VM_NUM_PREFAULT);
>                 drm_dev_exit(idx);
>         } else {
>                 ret =3D ttm_bo_vm_dummy_page(vmf, vmf->vma->vm_page_prot);
> --=20
> 2.33.0
>=20
> --=20
> Cheers,
> Stephen Rothwell
