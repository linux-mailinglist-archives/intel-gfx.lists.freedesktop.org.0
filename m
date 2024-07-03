Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B71C89256A7
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 11:24:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E69910E5F3;
	Wed,  3 Jul 2024 09:24:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OAWl4ydI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4206E10E312;
 Wed,  3 Jul 2024 09:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719998683; x=1751534683;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=qfWTDSvR56CPYzMzbGy9gwGnFi3YwhoIWJcu4OMzj/I=;
 b=OAWl4ydI4PmobNiKgHbNwVOXCmP2XxGFQvLIuF5b60+wNUH8ElF2vPwY
 WyO5MF+lF1HVDqcpyKXISqsYsYLrCw6NzzQbnTP8QobAEQh1bEpUt256N
 a4kf+gLwMZq9KTnHSx24UtZtUdtewePu/7mtWN3nKIsldJSJ27iQzAW1u
 yiC8Ak5OJfqo4sR0R30Q4EcBTjiEvm87rSpuqMnlsRCT5b7YcDV60x4rk
 inWTBpYiT1DFmL3xw+LNi2s2feAJB5vMT5vzt/KKPB2DDKUwv2Gq3+F/6
 tVjoXd9xLaQkcDgd2Muuq96WVHsq8/WoDCtiVVwXZBOKtRZFTA4NP5kas A==;
X-CSE-ConnectionGUID: FEVV8oigThms9Xx0fqR+DA==
X-CSE-MsgGUID: HN9tRpNvSYypa1W3/8AcXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="27821256"
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="27821256"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 02:24:42 -0700
X-CSE-ConnectionGUID: rBKox6QdRyOM7wvDB3fQGA==
X-CSE-MsgGUID: PG2ImMgkSrCptPKwaszgWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="46258950"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 [10.245.244.226]) ([10.245.244.226])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 02:24:40 -0700
Message-ID: <fd9d17462ad3aef9c4b5477a1a5ae7140842f105.camel@linux.intel.com>
Subject: Re: [PATCH v3 1/2] drm/xe/bmg: implement Wa_16023588340
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Jonathan Cavitt
 <jonathan.cavitt@intel.com>,  Matt Roper <matthew.d.roper@intel.com>, Lucas
 De Marchi <lucas.demarchi@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Date: Wed, 03 Jul 2024 11:24:37 +0200
In-Reply-To: <20240702150609.155245-3-matthew.auld@intel.com>
References: <20240702150609.155245-3-matthew.auld@intel.com>
Autocrypt: addr=thomas.hellstrom@linux.intel.com; prefer-encrypt=mutual;
 keydata=mDMEZaWU6xYJKwYBBAHaRw8BAQdAj/We1UBCIrAm9H5t5Z7+elYJowdlhiYE8zUXgxcFz360SFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCBMaW51eCBlbWFpbCkgPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPoiTBBMWCgA7FiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQuBaTVQrGBr/yQAD/Z1B+Kzy2JTuIy9LsKfC9FJmt1K/4qgaVeZMIKCAxf2UBAJhmZ5jmkDIf6YghfINZlYq6ixyWnOkWMuSLmELwOsgPuDgEZaWU6xIKKwYBBAGXVQEFAQEHQF9v/LNGegctctMWGHvmV/6oKOWWf/vd4MeqoSYTxVBTAwEIB4h4BBgWCgAgFiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwwACgkQuBaTVQrGBr/P2QD9Gts6Ee91w3SzOelNjsus/DcCTBb3fRugJoqcfxjKU0gBAKIFVMvVUGbhlEi6EFTZmBZ0QIZEIzOOVfkaIgWelFEH
Organization: Intel Sweden AB, Registration Number: 556189-6027
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
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

Hi, Matt

On Tue, 2024-07-02 at 16:06 +0100, Matthew Auld wrote:
> This involves enabling l2 caching of host side memory access to VRAM
> through the CPU BAR. The main fallout here is with display since VRAM
> writes from CPU can now be cached in GPU l2, and display is never
> coherent with caches, so needs various manual flushing.=C2=A0 In the case
> of
> fbc we disable it due to complications in getting this to work
> correctly (in a later patch).

What about user-space accesses to framebuffers?

/Thomas


>=20
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
> =C2=A0drivers/gpu/drm/xe/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +
> =C2=A0drivers/gpu/drm/xe/display/xe_dsb_buffer.c |=C2=A0 8 ++++
> =C2=A0drivers/gpu/drm/xe/display/xe_fb_pin.c=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0 3 ++
> =C2=A0drivers/gpu/drm/xe/regs/xe_gt_regs.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0 8 ++++
> =C2=A0drivers/gpu/drm/xe/xe_device.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 30 ++++++++++++
> =C2=A0drivers/gpu/drm/xe/xe_device.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
> =C2=A0drivers/gpu/drm/xe/xe_gt.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 54
> ++++++++++++++++++++++
> =C2=A0drivers/gpu/drm/xe/xe_pat.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 11 ++++-
> =C2=A0drivers/gpu/drm/xe/xe_wa_oob.rules=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 |=C2=A0 1 +
> =C2=A09 files changed, 117 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/xe/Makefile
> b/drivers/gpu/drm/xe/Makefile
> index b1e03bfe4a68..970c5c09e20a 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -25,12 +25,14 @@ $(obj)/generated/%_wa_oob.c
> $(obj)/generated/%_wa_oob.h: $(obj)/xe_gen_wa_oob \
> =C2=A0
> =C2=A0uses_generated_oob :=3D \
> =C2=A0	$(obj)/xe_ggtt.o \
> +	$(obj)/xe_device.o \
> =C2=A0	$(obj)/xe_gsc.o \
> =C2=A0	$(obj)/xe_gt.o \
> =C2=A0	$(obj)/xe_guc.o \
> =C2=A0	$(obj)/xe_guc_ads.o \
> =C2=A0	$(obj)/xe_guc_pc.o \
> =C2=A0	$(obj)/xe_migrate.o \
> +	$(obj)/xe_pat.o \
> =C2=A0	$(obj)/xe_ring_ops.o \
> =C2=A0	$(obj)/xe_vm.o \
> =C2=A0	$(obj)/xe_wa.o \
> diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> index 9e860c61f4b3..ccd0d87d438a 100644
> --- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> +++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> @@ -7,6 +7,8 @@
> =C2=A0#include "intel_display_types.h"
> =C2=A0#include "intel_dsb_buffer.h"
> =C2=A0#include "xe_bo.h"
> +#include "xe_device.h"
> +#include "xe_device_types.h"
> =C2=A0#include "xe_gt.h"
> =C2=A0
> =C2=A0u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
> @@ -16,7 +18,10 @@ u32 intel_dsb_buffer_ggtt_offset(struct
> intel_dsb_buffer *dsb_buf)
> =C2=A0
> =C2=A0void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32
> idx, u32 val)
> =C2=A0{
> +	struct xe_device *xe =3D dsb_buf->vma->bo->tile->xe;
> +
> =C2=A0	iosys_map_wr(&dsb_buf->vma->bo->vmap, idx * 4, u32, val);
> +	xe_device_l2_flush(xe);
> =C2=A0}
> =C2=A0
> =C2=A0u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx=
)
> @@ -26,9 +31,12 @@ u32 intel_dsb_buffer_read(struct intel_dsb_buffer
> *dsb_buf, u32 idx)
> =C2=A0
> =C2=A0void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32
> idx, u32 val, size_t size)
> =C2=A0{
> +	struct xe_device *xe =3D dsb_buf->vma->bo->tile->xe;
> +
> =C2=A0	WARN_ON(idx > (dsb_buf->buf_size - size) / sizeof(*dsb_buf-
> >cmd_buf));
> =C2=A0
> =C2=A0	iosys_map_memset(&dsb_buf->vma->bo->vmap, idx * 4, val,
> size);
> +	xe_device_l2_flush(xe);
> =C2=A0}
> =C2=A0
> =C2=A0bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct
> intel_dsb_buffer *dsb_buf, size_t size)
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 423f367c7065..d7db44e79eaf 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -10,6 +10,7 @@
> =C2=A0#include "intel_fb.h"
> =C2=A0#include "intel_fb_pin.h"
> =C2=A0#include "xe_bo.h"
> +#include "xe_device.h"
> =C2=A0#include "xe_ggtt.h"
> =C2=A0#include "xe_gt.h"
> =C2=A0#include "xe_pm.h"
> @@ -304,6 +305,8 @@ static struct i915_vma *__xe_pin_fb_vma(const
> struct intel_framebuffer *fb,
> =C2=A0	if (ret)
> =C2=A0		goto err_unpin;
> =C2=A0
> +	/* Ensure DPT writes are flushed */
> +	xe_device_l2_flush(xe);
> =C2=A0	return vma;
> =C2=A0
> =C2=A0err_unpin:
> diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> index d44564bad009..fd9d94174efb 100644
> --- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> +++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> @@ -80,6 +80,9 @@
> =C2=A0#define=C2=A0=C2=A0 LE_CACHEABILITY_MASK			REG_GENMASK(1, 0)
> =C2=A0#define=C2=A0=C2=A0
> LE_CACHEABILITY(value)		REG_FIELD_PREP(LE_CACHEABILITY_MASK, value)
> =C2=A0
> +#define XE2_GAMREQSTRM_CTRL			XE_REG(0x4194)
> +#define=C2=A0=C2=A0 CG_DIS_CNTLBUS			REG_BIT(6)
> +
> =C2=A0#define CCS_AUX_INV				XE_REG(0x4208)
> =C2=A0
> =C2=A0#define VD0_AUX_INV				XE_REG(0x4218)
> @@ -372,6 +375,11 @@
> =C2=A0
> =C2=A0#define XEHPC_L3CLOS_MASK(i)			XE_REG_MCR(0xb194 +
> (i) * 8)
> =C2=A0
> +#define XE2_GLOBAL_INVAL			XE_REG(0xb404)
> +
> +#define SCRATCH1LPFC				XE_REG(0xb474)
> +#define=C2=A0=C2=A0 EN_L3_RW_CCS_CACHE_FLUSH		REG_BIT(0)
> +
> =C2=A0#define XE2LPM_L3SQCREG5			XE_REG_MCR(0xb658)
> =C2=A0
> =C2=A0#define XE2_TDF_CTRL				XE_REG(0xb418)
> diff --git a/drivers/gpu/drm/xe/xe_device.c
> b/drivers/gpu/drm/xe/xe_device.c
> index cfda7cb5df2c..b0f79ef6bce1 100644
> --- a/drivers/gpu/drm/xe/xe_device.c
> +++ b/drivers/gpu/drm/xe/xe_device.c
> @@ -54,6 +54,9 @@
> =C2=A0#include "xe_vm.h"
> =C2=A0#include "xe_vram.h"
> =C2=A0#include "xe_wait_user_fence.h"
> +#include "xe_wa.h"
> +
> +#include <generated/xe_wa_oob.h>
> =C2=A0
> =C2=A0static int xe_file_open(struct drm_device *dev, struct drm_file
> *file)
> =C2=A0{
> @@ -779,6 +782,11 @@ void xe_device_td_flush(struct xe_device *xe)
> =C2=A0	if (!IS_DGFX(xe) || GRAPHICS_VER(xe) < 20)
> =C2=A0		return;
> =C2=A0
> +	if (XE_WA(xe_root_mmio_gt(xe), 16023588340)) {
> +		xe_device_l2_flush(xe);
> +		return;
> +	}
> +
> =C2=A0	for_each_gt(gt, xe, id) {
> =C2=A0		if (xe_gt_is_media_type(gt))
> =C2=A0			continue;
> @@ -802,6 +810,28 @@ void xe_device_td_flush(struct xe_device *xe)
> =C2=A0	}
> =C2=A0}
> =C2=A0
> +void xe_device_l2_flush(struct xe_device *xe)
> +{
> +	struct xe_gt *gt;
> +	int err;
> +
> +	gt =3D xe_root_mmio_gt(xe);
> +
> +	if (!XE_WA(gt, 16023588340))
> +		return;
> +
> +	err =3D xe_force_wake_get(gt_to_fw(gt), XE_FW_GT);
> +	if (err)
> +		return;
> +
> +	xe_mmio_write32(gt, XE2_GLOBAL_INVAL, 0x1);
> +
> +	if (xe_mmio_wait32(gt, XE2_GLOBAL_INVAL, 0x1, 0x0, 150,
> NULL, true))
> +		xe_gt_err_once(gt, "Global invalidation timeout\n");
> +
> +	xe_force_wake_put(gt_to_fw(gt), XE_FW_GT);
> +}
> +
> =C2=A0u32 xe_device_ccs_bytes(struct xe_device *xe, u64 size)
> =C2=A0{
> =C2=A0	return xe_device_has_flat_ccs(xe) ?
> diff --git a/drivers/gpu/drm/xe/xe_device.h
> b/drivers/gpu/drm/xe/xe_device.h
> index bb07f5669dbb..0a2a3e7fd402 100644
> --- a/drivers/gpu/drm/xe/xe_device.h
> +++ b/drivers/gpu/drm/xe/xe_device.h
> @@ -162,6 +162,7 @@ u64 xe_device_canonicalize_addr(struct xe_device
> *xe, u64 address);
> =C2=A0u64 xe_device_uncanonicalize_addr(struct xe_device *xe, u64
> address);
> =C2=A0
> =C2=A0void xe_device_td_flush(struct xe_device *xe);
> +void xe_device_l2_flush(struct xe_device *xe);
> =C2=A0
> =C2=A0static inline bool xe_device_wedged(struct xe_device *xe)
> =C2=A0{
> diff --git a/drivers/gpu/drm/xe/xe_gt.c b/drivers/gpu/drm/xe/xe_gt.c
> index 29e8ea94d05e..006d3594ba55 100644
> --- a/drivers/gpu/drm/xe/xe_gt.c
> +++ b/drivers/gpu/drm/xe/xe_gt.c
> @@ -11,6 +11,8 @@
> =C2=A0#include <drm/xe_drm.h>
> =C2=A0#include <generated/xe_wa_oob.h>
> =C2=A0
> +#include <generated/xe_wa_oob.h>
> +
> =C2=A0#include "instructions/xe_gfxpipe_commands.h"
> =C2=A0#include "instructions/xe_mi_commands.h"
> =C2=A0#include "regs/xe_gt_regs.h"
> @@ -95,6 +97,51 @@ void xe_gt_sanitize(struct xe_gt *gt)
> =C2=A0	gt->uc.guc.submission_state.enabled =3D false;
> =C2=A0}
> =C2=A0
> +static void xe_gt_enable_host_l2_vram(struct xe_gt *gt)
> +{
> +	u32 reg;
> +	int err;
> +
> +	if (!XE_WA(gt, 16023588340))
> +		return;
> +
> +	err =3D xe_force_wake_get(gt_to_fw(gt), XE_FW_GT);
> +	if (WARN_ON(err))
> +		return;
> +
> +	if (!xe_gt_is_media_type(gt)) {
> +		xe_mmio_write32(gt, SCRATCH1LPFC,
> EN_L3_RW_CCS_CACHE_FLUSH);
> +		reg =3D xe_mmio_read32(gt, XE2_GAMREQSTRM_CTRL);
> +		reg |=3D CG_DIS_CNTLBUS;
> +		xe_mmio_write32(gt, XE2_GAMREQSTRM_CTRL, reg);
> +	}
> +
> +	xe_gt_mcr_multicast_write(gt, XEHPC_L3CLOS_MASK(3), 0x3);
> +	xe_force_wake_put(gt_to_fw(gt), XE_FW_GT);
> +}
> +
> +static void xe_gt_disable_host_l2_vram(struct xe_gt *gt)
> +{
> +	u32 reg;
> +	int err;
> +
> +	if (!XE_WA(gt, 16023588340))
> +		return;
> +
> +	if (xe_gt_is_media_type(gt))
> +		return;
> +
> +	err =3D xe_force_wake_get(gt_to_fw(gt), XE_FW_GT);
> +	if (WARN_ON(err))
> +		return;
> +
> +	reg =3D xe_mmio_read32(gt, XE2_GAMREQSTRM_CTRL);
> +	reg &=3D ~CG_DIS_CNTLBUS;
> +	xe_mmio_write32(gt, XE2_GAMREQSTRM_CTRL, reg);
> +
> +	xe_force_wake_put(gt_to_fw(gt), XE_FW_GT);
> +}
> +
> =C2=A0/**
> =C2=A0 * xe_gt_remove() - Clean up the GT structures before driver remova=
l
> =C2=A0 * @gt: the GT object
> @@ -111,6 +158,8 @@ void xe_gt_remove(struct xe_gt *gt)
> =C2=A0
> =C2=A0	for (i =3D 0; i < XE_ENGINE_CLASS_MAX; ++i)
> =C2=A0		xe_hw_fence_irq_finish(&gt->fence_irq[i]);
> +
> +	xe_gt_disable_host_l2_vram(gt);
> =C2=A0}
> =C2=A0
> =C2=A0static void gt_reset_worker(struct work_struct *w);
> @@ -508,6 +557,7 @@ int xe_gt_init_hwconfig(struct xe_gt *gt)
> =C2=A0
> =C2=A0	xe_gt_mcr_init_early(gt);
> =C2=A0	xe_pat_init(gt);
> +	xe_gt_enable_host_l2_vram(gt);
> =C2=A0
> =C2=A0	err =3D xe_uc_init(&gt->uc);
> =C2=A0	if (err)
> @@ -643,6 +693,8 @@ static int do_gt_restart(struct xe_gt *gt)
> =C2=A0
> =C2=A0	xe_pat_init(gt);
> =C2=A0
> +	xe_gt_enable_host_l2_vram(gt);
> +
> =C2=A0	xe_gt_mcr_set_implicit_defaults(gt);
> =C2=A0	xe_reg_sr_apply_mmio(&gt->reg_sr, gt);
> =C2=A0
> @@ -796,6 +848,8 @@ int xe_gt_suspend(struct xe_gt *gt)
> =C2=A0
> =C2=A0	xe_gt_idle_disable_pg(gt);
> =C2=A0
> +	xe_gt_disable_host_l2_vram(gt);
> +
> =C2=A0	XE_WARN_ON(xe_force_wake_put(gt_to_fw(gt),
> XE_FORCEWAKE_ALL));
> =C2=A0	xe_gt_dbg(gt, "suspended\n");
> =C2=A0
> diff --git a/drivers/gpu/drm/xe/xe_pat.c
> b/drivers/gpu/drm/xe/xe_pat.c
> index 4ee32ee1cc88..722278cc23fc 100644
> --- a/drivers/gpu/drm/xe/xe_pat.c
> +++ b/drivers/gpu/drm/xe/xe_pat.c
> @@ -7,6 +7,8 @@
> =C2=A0
> =C2=A0#include <drm/xe_drm.h>
> =C2=A0
> +#include <generated/xe_wa_oob.h>
> +
> =C2=A0#include "regs/xe_reg_defs.h"
> =C2=A0#include "xe_assert.h"
> =C2=A0#include "xe_device.h"
> @@ -15,6 +17,7 @@
> =C2=A0#include "xe_gt_mcr.h"
> =C2=A0#include "xe_mmio.h"
> =C2=A0#include "xe_sriov.h"
> +#include "xe_wa.h"
> =C2=A0
> =C2=A0#define _PAT_ATS				0x47fc
> =C2=A0#define
> _PAT_INDEX(index)			_PICK_EVEN_2RANGES(index, 8, \
> @@ -382,7 +385,13 @@ void xe_pat_init_early(struct xe_device *xe)
> =C2=A0	if (GRAPHICS_VER(xe) =3D=3D 20) {
> =C2=A0		xe->pat.ops =3D &xe2_pat_ops;
> =C2=A0		xe->pat.table =3D xe2_pat_table;
> -		xe->pat.n_entries =3D ARRAY_SIZE(xe2_pat_table);
> +
> +		/* Wa_16023588340. XXX: Should use XE_WA */
> +		if (GRAPHICS_VERx100(xe) =3D=3D 2001)
> +			xe->pat.n_entries =3D 28; /* Disable CLOS3 */
> +		else
> +			xe->pat.n_entries =3D
> ARRAY_SIZE(xe2_pat_table);
> +
> =C2=A0		xe->pat.idx[XE_CACHE_NONE] =3D 3;
> =C2=A0		xe->pat.idx[XE_CACHE_WT] =3D 15;
> =C2=A0		xe->pat.idx[XE_CACHE_WB] =3D 2;
> diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules
> b/drivers/gpu/drm/xe/xe_wa_oob.rules
> index a6b897030fde..c6d8941621c6 100644
> --- a/drivers/gpu/drm/xe/xe_wa_oob.rules
> +++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
> @@ -28,3 +28,4 @@
> =C2=A0		GRAPHICS_VERSION(2004)
> =C2=A013011645652	GRAPHICS_VERSION(2004)
> =C2=A022019338487	MEDIA_VERSION(2000)
> +16023588340	GRAPHICS_VERSION(2001)

