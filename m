Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B98195F371
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 16:01:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08A8E89151;
	Mon, 26 Aug 2024 14:01:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EGxwlFJO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D56989151;
 Mon, 26 Aug 2024 14:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724680908; x=1756216908;
 h=message-id:subject:from:to:cc:in-reply-to:references:
 content-transfer-encoding:mime-version:date;
 bh=FiW2uqSmPJe9uz26eyIB/3Z2OsLoO5ub+QBqMdoSd3U=;
 b=EGxwlFJOFF6NPWsMLU6GvNBuoRVai6aBO1rRNKl36YlkYELIY2q93Kat
 1pT2DhVwHNQKCgGnGkpcQANbHSs87njZRbRRTDXsMyXHHjrFvjz2jqjaN
 q8Hmx3IMqwvxIJFvqgP9GP0cvUSdAU2eTbkE230opJx4H0E58jcPHeP89
 VECjgVUWNbki6jn/H6hLUEFlPKKBcTOvVyB2qNDbJqo74sbU8VB/xzfoA
 rREbYrEeRwvxnXeesH3cKqECvwdUx8hM/k/5i7nIylv6H8ZdCv61JDqJr
 VhGqqRgnDOPClnaRTH4gaiHpktFEv3+j6gDdVpjrlbVvxXexjVG0k90cC w==;
X-CSE-ConnectionGUID: asZveDdzRj6c5BwdKbYN5w==
X-CSE-MsgGUID: z70FZJJYSAuGVW4y29h1hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="22698924"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="22698924"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 07:01:48 -0700
X-CSE-ConnectionGUID: XgRNkLutTPykQsztx1vX8Q==
X-CSE-MsgGUID: oAcDqjxBQGmPUVknFW5pgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="85713533"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [10.245.245.212])
 ([10.245.245.212])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 07:01:46 -0700
Message-ID: <842ab9855da28b5556a915d2ac3cf0353e9d7e8f.camel@linux.intel.com>
Subject: Re: [PATCH v5 1/2] drm/xe: Align all VRAM scanout buffers to 64k
 physical pages when needed.
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Zbigniew =?UTF-8?Q?Kempczy=C5=84ski?=
 <zbigniew.kempczynski@intel.com>, Matthew Auld <matthew.auld@intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Juha-Pekka
 =?ISO-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>
In-Reply-To: <20240826095041.75416-2-maarten.lankhorst@linux.intel.com>
References: <20240826095041.75416-1-maarten.lankhorst@linux.intel.com>
 <20240826095041.75416-2-maarten.lankhorst@linux.intel.com>
Autocrypt: addr=thomas.hellstrom@linux.intel.com; prefer-encrypt=mutual;
 keydata=mDMEZaWU6xYJKwYBBAHaRw8BAQdAj/We1UBCIrAm9H5t5Z7+elYJowdlhiYE8zUXgxcFz360SFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCBMaW51eCBlbWFpbCkgPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPoiTBBMWCgA7FiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQuBaTVQrGBr/yQAD/Z1B+Kzy2JTuIy9LsKfC9FJmt1K/4qgaVeZMIKCAxf2UBAJhmZ5jmkDIf6YghfINZlYq6ixyWnOkWMuSLmELwOsgPuDgEZaWU6xIKKwYBBAGXVQEFAQEHQF9v/LNGegctctMWGHvmV/6oKOWWf/vd4MeqoSYTxVBTAwEIB4h4BBgWCgAgFiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwwACgkQuBaTVQrGBr/P2QD9Gts6Ee91w3SzOelNjsus/DcCTBb3fRugJoqcfxjKU0gBAKIFVMvVUGbhlEi6EFTZmBZ0QIZEIzOOVfkaIgWelFEH
Organization: Intel Sweden AB, Registration Number: 556189-6027
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Date: Mon, 26 Aug 2024 16:01:07 +0200
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2024-08-26 at 11:50 +0200, Maarten Lankhorst wrote:
> For CCS formats on affected platforms, CCS can be used freely, but
> display engine requires a multiple of 64k physical pages. No other
> changes are needed.
>=20
> At the BO creation time we don't know if the BO will be used for CCS
> or not. If the scanout flag is set, and the BO is a multiple of 64k,
> we take the safe route and force the physical alignment of 64k pages.
>=20
> If the BO is not a multiple of 64k, or the scanout flag was not set
> at BO creation, we reject it for usage as CCS in display. The
> physical
> pages are likely not aligned correctly, and this will cause
> corruption
> when used as FB.
>=20
> The scanout flag and size being a multiple of 64k are used together
> to enforce 64k physical placement.
>=20
> VM_BIND is completely unaffected, mappings to a VM can still be
> aligned
> to 4k, just like for normal buffers.
>=20
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Co-developed-by: Zbigniew Kempczy=C5=84ski
> <zbigniew.kempczynski@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Juha-Pekka Heikkil=C3=A4 <juha-pekka.heikkila@intel.com>
> ---
> =C2=A0drivers/gpu/drm/xe/display/intel_fb_bo.c |=C2=A0 5 +++++
> =C2=A0drivers/gpu/drm/xe/xe_bo.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 7 +++++++
> =C2=A0drivers/gpu/drm/xe/xe_vm.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 11 ++++++++++-
> =C2=A03 files changed, 22 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c
> b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> index f835492f73fb4..6775c2557b9df 100644
> --- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
> +++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> @@ -28,6 +28,11 @@ int intel_fb_bo_framebuffer_init(struct
> intel_framebuffer *intel_fb,
> =C2=A0	struct xe_device *xe =3D to_xe_device(bo->ttm.base.dev);
> =C2=A0	int ret;
> =C2=A0
> +	/* Only this specific format is affected, and it's only
> available on VRAM */

A first time reader would wonder "Affected by what". Could we rephrase
like "This specific format, only available with DGFX needs .." or
something similar self-contained?

> +	if (XE_IOCTL_DBG(xe, mode_cmd->modifier[0] =3D=3D
> I915_FORMAT_MOD_4_TILED_BMG_CCS &&
> +			=C2=A0=C2=A0=C2=A0=C2=A0 !(bo->flags & XE_BO_FLAG_NEEDS_64K)))
> +		return -EINVAL;
> +
> =C2=A0	xe_bo_get(bo);
> =C2=A0
> =C2=A0	ret =3D ttm_bo_reserve(&bo->ttm, true, false, NULL);
> diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
> index cbe7bf098970f..41297b5797173 100644
> --- a/drivers/gpu/drm/xe/xe_bo.c
> +++ b/drivers/gpu/drm/xe/xe_bo.c
> @@ -2019,6 +2019,13 @@ int xe_gem_create_ioctl(struct drm_device
> *dev, void *data,
> =C2=A0
> =C2=A0	bo_flags |=3D args->placement << (ffs(XE_BO_FLAG_SYSTEM) - 1);
> =C2=A0
> +	/* CCS formats need physical placement at a 64K alignment in
> VRAM. */
> +	if ((bo_flags & XE_BO_FLAG_VRAM_MASK) &&
> +	=C2=A0=C2=A0=C2=A0 (bo_flags & XE_BO_FLAG_SCANOUT) &&
> +	=C2=A0=C2=A0=C2=A0 !(xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K) &&
> +	=C2=A0=C2=A0=C2=A0 !(args->size % SZ_64K))

This might probably fail on 32-bit compiles? Can we use the IS_ALIGNED
macro?


> +		bo_flags |=3D XE_BO_FLAG_NEEDS_64K;
> +
> =C2=A0	if (args->flags & DRM_XE_GEM_CREATE_FLAG_NEEDS_VISIBLE_VRAM)
> {
> =C2=A0		if (XE_IOCTL_DBG(xe, !(bo_flags &
> XE_BO_FLAG_VRAM_MASK)))
> =C2=A0			return -EINVAL;
> diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
> index 4cc13eddb6b32..3eb76d874eb28 100644
> --- a/drivers/gpu/drm/xe/xe_vm.c
> +++ b/drivers/gpu/drm/xe/xe_vm.c
> @@ -2878,7 +2878,16 @@ static int xe_vm_bind_ioctl_validate_bo(struct
> xe_device *xe, struct xe_bo *bo,
> =C2=A0		return -EINVAL;
> =C2=A0	}
> =C2=A0
> -	if (bo->flags & XE_BO_FLAG_INTERNAL_64K) {
> +	/*
> +	 * Some platforms require 64k VM_BIND alignment,
> +	 * specifically those with XE_VRAM_FLAGS_NEED64K.
> +	 *
> +	 * Other platforms may have BO's set to 64k physical
> placement,
> +	 * but can be mapped at 4k offsets anyway. This check is
> only
> +	 * there for the former case.
> +	 */
> +	if ((bo->flags & XE_BO_FLAG_INTERNAL_64K) &&
> +	=C2=A0=C2=A0=C2=A0 (xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K)) {
> =C2=A0		if (XE_IOCTL_DBG(xe, obj_offset &
> =C2=A0				 XE_64K_PAGE_MASK) ||
> =C2=A0		=C2=A0=C2=A0=C2=A0 XE_IOCTL_DBG(xe, addr & XE_64K_PAGE_MASK) ||

Otherwise LGTM.
/Thomas

