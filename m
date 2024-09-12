Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D867797695C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 14:44:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6642C10E588;
	Thu, 12 Sep 2024 12:44:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TAJdFp8q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7DAA10E229;
 Thu, 12 Sep 2024 12:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726145078; x=1757681078;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=zJQqJL2/UgAre9p8U6mya/95mXoeJSO1FwaIClPdkis=;
 b=TAJdFp8qByjMuOI6F+LkN6qUYFLlldkKCpMR3fRHGeTOCYhUhxwmeubf
 fph/R+XnwFxW5amSEJY4T66uExi9pzFKk2woaVVjt26ERU2ajVjogQzpf
 wgIB13VZ41B49ciF1/cnwnU35Ph+RUqVlw6xVp54+34Ko0tlox+Gsy3c5
 uh0/Jr5gpwpLzykuUuNL1CCURltpDRJGDuTxzhUA26ZsWKfpGRyRsJ2eo
 oxunPPlibooaES4CVFK4yARWN3xlmWtGmAuO0UI0MNf+0qpDlllNPszsN
 jkcpqyqg1O0Jy2gw8MShqDAFncDN/gWYGjfhGFhUvfvuKQK86x7Pf/dsZ w==;
X-CSE-ConnectionGUID: VXVn3klBTmyyfgsFQ5JcZw==
X-CSE-MsgGUID: FX35yjEXSJGHpQs97WSmrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="25189114"
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="25189114"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 05:44:37 -0700
X-CSE-ConnectionGUID: FDGaGqiNS/GcHbCZJpVhJA==
X-CSE-MsgGUID: 7qhLOE75RuCaZxDfInsnUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="67988843"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 05:44:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/5] drm/i915/bios: Extract soc/intel_rom.c
In-Reply-To: <20240910134219.28479-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
 <20240910134219.28479-6-ville.syrjala@linux.intel.com>
Date: Thu, 12 Sep 2024 15:44:32 +0300
Message-ID: <87v7z1f3db.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 10 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Abstract away the nuts and bolts of the SPI vs. PCI ROM
> stuff, and hide it all in soc/intel_rom.c so that the
> VBT code doesn't have to care about this stuff.
>
> This leaves intel_bios.c with a single codepath that
> can focus on the details related to the VBT layout.
>
> This should have no functional changes.

Neat! Some nitpicks inline, but overall,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   3 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     | 150 ++++------------
>  drivers/gpu/drm/i915/soc/intel_rom.c          | 160 ++++++++++++++++++
>  drivers/gpu/drm/i915/soc/intel_rom.h          |  25 +++
>  drivers/gpu/drm/xe/Makefile                   |   3 +-
>  .../xe/compat-i915-headers/soc/intel_rom.h    |   6 +
>  6 files changed, 224 insertions(+), 123 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/soc/intel_rom.c
>  create mode 100644 drivers/gpu/drm/i915/soc/intel_rom.h
>  create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index c63fa2133ccb..d14c8870aecb 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -51,7 +51,8 @@ i915-y +=3D \
>  i915-y +=3D \
>  	soc/intel_dram.o \
>  	soc/intel_gmch.o \
> -	soc/intel_pch.o
> +	soc/intel_pch.o \
> +	soc/intel_rom.o
>=20=20
>  # core library code
>  i915-y +=3D \
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 0b92b494117f..37d4b4ddfa95 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -33,12 +33,12 @@
>  #include <drm/drm_edid.h>
>  #include <drm/drm_fixed.h>
>=20=20
> +#include "soc/intel_rom.h"
> +
>  #include "i915_drv.h"
> -#include "i915_reg.h"
>  #include "intel_display.h"
>  #include "intel_display_types.h"
>  #include "intel_gmbus.h"
> -#include "intel_uncore.h"
>=20=20
>  #define _INTEL_BIOS_PRIVATE
>  #include "intel_vbt_defs.h"
> @@ -3055,150 +3055,58 @@ static struct vbt_header *firmware_get_vbt(struc=
t intel_display *display,
>  	return vbt;
>  }
>=20=20
> -static u32 intel_spi_read32(struct intel_uncore *uncore, u32 offset)
> +static struct vbt_header *oprom_get_vbt(struct intel_display *display,
> +					struct intel_rom *rom,
> +					size_t *size, const char *type)
>  {
> -	intel_uncore_write(uncore, PRIMARY_SPI_ADDRESS, offset);
> +	struct vbt_header *vbt;
> +	size_t vbt_size;
> +	loff_t offset;
>=20=20
> -	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
> -}
> -
> -static u16 intel_spi_read16(struct intel_uncore *uncore, u32 offset)
> -{
> -	return intel_spi_read32(uncore, offset) & 0xffff;
> -}
> -
> -static struct vbt_header *spi_oprom_get_vbt(struct intel_display *displa=
y,
> -					    size_t *size)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -	u32 count, data, found, store =3D 0;
> -	u32 static_region, oprom_offset;
> -	u32 oprom_size =3D 0x200000;
> -	u16 vbt_size;
> -	u32 *vbt;
> -
> -	static_region =3D intel_uncore_read(&i915->uncore, SPI_STATIC_REGIONS);
> -	static_region &=3D OPTIONROM_SPI_REGIONID_MASK;
> -	intel_uncore_write(&i915->uncore, PRIMARY_SPI_REGIONID, static_region);
> -
> -	oprom_offset =3D intel_uncore_read(&i915->uncore, OROM_OFFSET);
> -	oprom_offset &=3D OROM_OFFSET_MASK;
> +	if (!rom)
> +		return NULL;
>=20=20
>  	BUILD_BUG_ON(sizeof(vbt_signature) !=3D sizeof(u32));
>=20=20
> -	for (count =3D 0; count < oprom_size; count +=3D 4) {
> -		data =3D intel_spi_read32(&i915->uncore, oprom_offset + count);
> -		if (data =3D=3D *((const u32 *)vbt_signature)) {
> -			found =3D oprom_offset + count;
> -			break;
> -		}
> -	}
> +	offset =3D intel_rom_find(rom, *(const u32 *)vbt_signature);
> +	if (offset < 0)
> +		goto err_free_rom;
>=20=20
> -	if (count >=3D oprom_size)
> -		goto err_not_found;
> -
> -	if (sizeof(struct vbt_header) > oprom_size - count) {
> +	if (sizeof(struct vbt_header) > intel_rom_size(rom) - offset) {
>  		drm_dbg(display->drm, "VBT header incomplete\n");
> -		goto err_not_found;
> +		goto err_free_rom;
>  	}
>=20=20
> -	/* Get VBT size and allocate space for the VBT */
> -	vbt_size =3D intel_spi_read16(&i915->uncore,
> -				    found + offsetof(struct vbt_header, vbt_size));
> +	BUILD_BUG_ON(sizeof(vbt->vbt_size) !=3D sizeof(u16));
>=20=20
> -	if (vbt_size > oprom_size - count) {
> -		drm_dbg(display->drm,
> -			"VBT incomplete (vbt_size overflows)\n");
> -		goto err_not_found;
> +	vbt_size =3D intel_rom_read16(rom, offset + offsetof(struct vbt_header,=
 vbt_size));
> +	if (vbt_size > intel_rom_size(rom) - offset) {
> +		drm_dbg(display->drm, "VBT incomplete (vbt_size overflows)\n");
> +		goto err_free_rom;
>  	}
>=20=20
>  	vbt =3D kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
>  	if (!vbt)
> -		goto err_not_found;
> +		goto err_free_rom;
>=20=20
> -	for (count =3D 0; count < vbt_size; count +=3D 4)
> -		*(vbt + store++) =3D intel_spi_read32(&i915->uncore, found + count);
> +	intel_rom_read_block(rom, vbt, offset, vbt_size);
>=20=20
>  	if (!intel_bios_is_valid_vbt(display, vbt, vbt_size))
>  		goto err_free_vbt;
>=20=20
> -	drm_dbg_kms(display->drm, "Found valid VBT in SPI flash\n");
> +	drm_dbg_kms(display->drm, "Found valid VBT in %s\n", type);

There's some (pre-existing) drm_dbg vs. drm_dbg_kms discrepancy here.

>=20=20
>  	if (size)
>  		*size =3D vbt_size;
>=20=20
> +	intel_rom_free(rom);
> +
>  	return (struct vbt_header *)vbt;

The cast is now unnecessary.

>=20=20
>  err_free_vbt:
>  	kfree(vbt);
> -err_not_found:
> -	return NULL;
> -}
> -
> -static struct vbt_header *oprom_get_vbt(struct intel_display *display,
> -					size_t *sizep)
> -{
> -	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
> -	void __iomem *p =3D NULL, *oprom;
> -	struct vbt_header *vbt;
> -	u16 vbt_size;
> -	size_t i, size;
> -
> -	oprom =3D pci_map_rom(pdev, &size);
> -	if (!oprom)
> -		return NULL;
> -
> -	BUILD_BUG_ON(sizeof(vbt_signature) !=3D sizeof(u32));
> -
> -	/* Scour memory looking for the VBT signature. */
> -	for (i =3D 0; i + 4 < size; i +=3D 4) {
> -		if (ioread32(oprom + i) !=3D *((const u32 *)vbt_signature))
> -			continue;
> -
> -		p =3D oprom + i;
> -		size -=3D i;
> -		break;
> -	}
> -
> -	if (!p)
> -		goto err_unmap_oprom;
> -
> -	if (sizeof(struct vbt_header) > size) {
> -		drm_dbg(display->drm, "VBT header incomplete\n");
> -		goto err_unmap_oprom;
> -	}
> -
> -	vbt_size =3D ioread16(p + offsetof(struct vbt_header, vbt_size));
> -	if (vbt_size > size) {
> -		drm_dbg(display->drm,
> -			"VBT incomplete (vbt_size overflows)\n");
> -		goto err_unmap_oprom;
> -	}
> -
> -	/* The rest will be validated by intel_bios_is_valid_vbt() */
> -	vbt =3D kmalloc(round_up(vbt_size, 4), GFP_KERNEL);
> -	if (!vbt)
> -		goto err_unmap_oprom;
> -
> -	memcpy_fromio(vbt, p, vbt_size);
> -
> -	if (!intel_bios_is_valid_vbt(display, vbt, vbt_size))
> -		goto err_free_vbt;
> -
> -	pci_unmap_rom(pdev, oprom);
> -
> -	if (sizep)
> -		*sizep =3D vbt_size;
> -
> -	drm_dbg_kms(display->drm, "Found valid VBT in PCI ROM\n");
> -
> -	return vbt;
> -
> -err_free_vbt:
> -	kfree(vbt);
> -err_unmap_oprom:
> -	pci_unmap_rom(pdev, oprom);
> -
> +err_free_rom:
> +	intel_rom_free(rom);
>  	return NULL;
>  }
>=20=20
> @@ -3220,11 +3128,11 @@ static const struct vbt_header *intel_bios_get_vb=
t(struct intel_display *display
>  	 */
>  	if (!vbt && IS_DGFX(i915))
>  		with_intel_runtime_pm(&i915->runtime_pm, wakeref)
> -			vbt =3D spi_oprom_get_vbt(display, sizep);
> +			vbt =3D oprom_get_vbt(display, intel_rom_spi(i915), sizep, "SPI flash=
");
>=20=20
>  	if (!vbt)
>  		with_intel_runtime_pm(&i915->runtime_pm, wakeref)
> -			vbt =3D oprom_get_vbt(display, sizep);
> +			vbt =3D oprom_get_vbt(display, intel_rom_pci(i915), sizep, "PCI ROM");
>=20=20
>  	return vbt;
>  }
> diff --git a/drivers/gpu/drm/i915/soc/intel_rom.c b/drivers/gpu/drm/i915/=
soc/intel_rom.c
> new file mode 100644
> index 000000000000..243d98cab8c3
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/soc/intel_rom.c
> @@ -0,0 +1,160 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#include "i915_drv.h"
> +#include "i915_reg.h"
> +
> +#include "intel_rom.h"
> +#include "intel_uncore.h"
> +
> +struct intel_rom {
> +	/* for PCI ROM */
> +	struct pci_dev *pdev;
> +	void __iomem *oprom;
> +
> +	/* for SPI */
> +	struct intel_uncore *uncore;
> +	loff_t offset;
> +
> +	size_t size;
> +
> +	u32 (*read32)(struct intel_rom *rom, loff_t offset);
> +	u16 (*read16)(struct intel_rom *rom, loff_t offset);
> +	void (*read_block)(struct intel_rom *rom, void *data, loff_t offset, si=
ze_t size);
> +	void (*free)(struct intel_rom *rom);
> +};
> +
> +static u32 spi_read32(struct intel_rom *rom, loff_t offset)
> +{
> +	intel_uncore_write(rom->uncore, PRIMARY_SPI_ADDRESS,
> +			   rom->offset + offset);
> +
> +	return intel_uncore_read(rom->uncore, PRIMARY_SPI_TRIGGER);
> +}
> +
> +static u16 spi_read16(struct intel_rom *rom, loff_t offset)
> +{
> +	return spi_read32(rom, offset) & 0xffff;
> +}
> +
> +struct intel_rom *intel_rom_spi(struct drm_i915_private *i915)

Would be nice to get rid of struct drm_i915_private too, but then it
needs pci_dev and uncore, and we'll need to abstract uncore too, so
let's just roll with this as a concrete step forward.

> +{
> +	struct intel_rom *rom;
> +	u32 static_region;
> +
> +	rom =3D kzalloc(sizeof(*rom), GFP_KERNEL);
> +	if (!rom)
> +		return NULL;
> +
> +	rom->uncore =3D &i915->uncore;
> +
> +	static_region =3D intel_uncore_read(rom->uncore, SPI_STATIC_REGIONS);
> +	static_region &=3D OPTIONROM_SPI_REGIONID_MASK;
> +	intel_uncore_write(rom->uncore, PRIMARY_SPI_REGIONID, static_region);
> +
> +	rom->offset =3D intel_uncore_read(rom->uncore, OROM_OFFSET) & OROM_OFFS=
ET_MASK;
> +
> +	rom->size =3D 0x200000;
> +
> +	rom->read32 =3D spi_read32;
> +	rom->read16 =3D spi_read16;
> +
> +	return rom;
> +}
> +
> +static u32 pci_read32(struct intel_rom *rom, loff_t offset)
> +{
> +	return ioread32(rom->oprom + offset);
> +}
> +
> +static u16 pci_read16(struct intel_rom *rom, loff_t offset)
> +{
> +	return ioread16(rom->oprom + offset);
> +}
> +
> +static void pci_read_block(struct intel_rom *rom, void *data,
> +			   loff_t offset, size_t size)
> +{
> +	memcpy_fromio(data, rom->oprom + offset, size);
> +}
> +
> +static void pci_free(struct intel_rom *rom)
> +{
> +	pci_unmap_rom(rom->pdev, rom->oprom);
> +}
> +
> +struct intel_rom *intel_rom_pci(struct drm_i915_private *i915)
> +{
> +	struct intel_rom *rom;
> +
> +	rom =3D kzalloc(sizeof(*rom), GFP_KERNEL);
> +	if (!rom)
> +		return NULL;
> +
> +	rom->pdev =3D to_pci_dev(i915->drm.dev);
> +
> +	rom->oprom =3D pci_map_rom(rom->pdev, &rom->size);
> +	if (!rom->oprom) {
> +		kfree(rom);
> +		return NULL;
> +	}
> +
> +	rom->read32 =3D pci_read32;
> +	rom->read16 =3D pci_read16;
> +	rom->read_block =3D pci_read_block;
> +	rom->free =3D pci_free;
> +
> +	return rom;
> +}
> +
> +u32 intel_rom_read32(struct intel_rom *rom, loff_t offset)
> +{
> +	return rom->read32(rom, offset);
> +}
> +
> +u16 intel_rom_read16(struct intel_rom *rom, loff_t offset)
> +{
> +	return rom->read16(rom, offset);
> +}
> +
> +void intel_rom_read_block(struct intel_rom *rom, void *data,
> +			  loff_t offset, size_t size)
> +{
> +	u32 *ptr =3D data;
> +	loff_t index;

Just nitpicking, but should this (and rom reads above) now sanity check
offset+size against rom->size? IDK if it's worth it for such a simple
thing. The caller is supposed to know what it's doing.

> +
> +	if (rom->read_block) {
> +		rom->read_block(rom, data, offset, size);
> +		return;
> +	}
> +
> +	for (index =3D 0; index < size; index +=3D 4)
> +		*ptr++ =3D rom->read32(rom, offset + index);
> +}
> +
> +loff_t intel_rom_find(struct intel_rom *rom, u32 needle)
> +{
> +	loff_t offset;
> +
> +	for (offset =3D 0; offset < rom->size; offset +=3D 4) {
> +		if (rom->read32(rom, offset) =3D=3D needle)
> +			return offset;
> +	}
> +
> +	return -ENOENT;
> +}
> +
> +size_t intel_rom_size(struct intel_rom *rom)
> +{
> +	return rom->size;
> +}
> +
> +void intel_rom_free(struct intel_rom *rom)
> +{
> +	if (rom && rom->free)
> +		rom->free(rom);
> +
> +	kfree(rom);
> +}
> diff --git a/drivers/gpu/drm/i915/soc/intel_rom.h b/drivers/gpu/drm/i915/=
soc/intel_rom.h
> new file mode 100644
> index 000000000000..fb2979c8ef7f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/soc/intel_rom.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_ROM_H__
> +#define __INTEL_ROM_H__
> +
> +#include <linux/types.h>
> +
> +struct drm_i915_private;
> +struct intel_rom;
> +
> +struct intel_rom *intel_rom_spi(struct drm_i915_private *i915);
> +struct intel_rom *intel_rom_pci(struct drm_i915_private *i915);
> +
> +u32 intel_rom_read32(struct intel_rom *rom, loff_t offset);
> +u16 intel_rom_read16(struct intel_rom *rom, loff_t offset);
> +void intel_rom_read_block(struct intel_rom *rom, void *data,
> +			  loff_t offset, size_t size);
> +loff_t intel_rom_find(struct intel_rom *rom, u32 needle);
> +size_t intel_rom_size(struct intel_rom *rom);
> +void intel_rom_free(struct intel_rom *rom);
> +
> +#endif /* __INTEL_ROM_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index edfd812e0f41..dd1c0666e6bd 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -180,7 +180,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  # SOC code shared with i915
>  xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-soc/intel_dram.o \
> -	i915-soc/intel_pch.o
> +	i915-soc/intel_pch.o \
> +	i915-soc/intel_rom.o
>=20=20
>  # Display code shared with i915
>  xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h b/dri=
vers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h
> new file mode 100644
> index 000000000000..05cbfb697b2b
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h
> @@ -0,0 +1,6 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#include "../../../i915/soc/intel_rom.h"

--=20
Jani Nikula, Intel
