Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 486C0819B80
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 10:38:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D10C210E208;
	Wed, 20 Dec 2023 09:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B69A10E211
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 09:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703065119; x=1734601119;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=5r1sCJpJA6UhCDBg+ViQjYTUlnJaoLbjigfHK0S0wN0=;
 b=FcWNkae7UZdAKk6KBIokOiv71AQA3iAEiqbv8FgMPQXEN6zPtr0ZNLkb
 JZEnqPlKp3N0t3WZ5IT7mdudV4CHIPsScvEPRAXm6MVrK1fUW3zuEAfPB
 EcmXUsQdzb6k/fPaAFszjbwhfvjU1HwMzda+jAiaV/XsUVhdauKDtjspz
 f2Ccyl0UZF1OHbkiyjE2w/02J1iawc+tzslE9bmkHq1MjIhvWrUAiBpky
 Uf6P0GUgb3TU75D2Vpuu6HXCeDtypxOkAZDru3RJskpaZtv6pbDMwKFVB
 T4H12gLJUVlZwPvmZE86LeK4rw79GBR/ZXzbIPue6HdcwP+lPR7Qnfwdw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="9251206"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; 
   d="scan'208";a="9251206"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 01:38:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="1107668792"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="1107668792"
Received: from smykytex-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.76])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 01:38:27 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: Re: [PATCH] drm/i915: Piggyback opregion vbt to store vbt read from
 flash/oprom
In-Reply-To: <ZYJN4V1OWyEYDdTG@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231220014952.708652-1-radhakrishna.sripada@intel.com>
 <ZYJN4V1OWyEYDdTG@intel.com>
Date: Wed, 20 Dec 2023 11:38:25 +0200
Message-ID: <875y0ttdri.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 20 Dec 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Dec 19, 2023 at 05:49:52PM -0800, Radhakrishna Sripada wrote:
>> Discrete cards do not have ACPI opregion. The vbt is stored in a special
>> flash accessible by the display controller. In order to access the vbt
>> in such cases, re-use the vbt, vbt_size fields in the opregion structure.
>
> Why?

The i915_vbt debugfs file probably does not work for VBT from SPI
flash. We should fix that.

But this patch is not the way to go. If the VBT does not come from
opregion, it shouldn't be stored in the opregion structures. Maybe this
needs another abstraction layer. *grin*.

Specifically, one of the problems here is that the allocation and free
of the VBT originating from SPI flash happens at completely different
modules and abstraction layers. That's usually a recipe for disaster
later.


BR,
Jani.


>
>>=20
>> We should move away from storing the vbt in the opregion and store it,
>> if required in the vbt structure.
>>=20
>> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c     | 44 ++++++++++---------
>>  drivers/gpu/drm/i915/display/intel_opregion.c |  7 ++-
>>  2 files changed, 29 insertions(+), 22 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>> index 736499a6e2c7..cbfbc56ff5b2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -2930,12 +2930,11 @@ static u32 intel_spi_read(struct intel_uncore *u=
ncore, u32 offset)
>>  	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
>>  }
>>=20=20
>> -static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i9=
15)
>> +static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i9=
15, u16 *vbt_size)
>>  {
>>  	u32 count, data, found, store =3D 0;
>>  	u32 static_region, oprom_offset;
>>  	u32 oprom_size =3D 0x200000;
>> -	u16 vbt_size;
>>  	u32 *vbt;
>>=20=20
>>  	static_region =3D intel_uncore_read(&i915->uncore, SPI_STATIC_REGIONS);
>> @@ -2957,18 +2956,18 @@ static struct vbt_header *spi_oprom_get_vbt(stru=
ct drm_i915_private *i915)
>>  		goto err_not_found;
>>=20=20
>>  	/* Get VBT size and allocate space for the VBT */
>> -	vbt_size =3D intel_spi_read(&i915->uncore,
>> +	*vbt_size =3D intel_spi_read(&i915->uncore,
>>  				  found + offsetof(struct vbt_header, vbt_size));
>> -	vbt_size &=3D 0xffff;
>> +	*vbt_size &=3D 0xffff;
>>=20=20
>> -	vbt =3D kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
>> +	vbt =3D kzalloc(round_up(*vbt_size, 4), GFP_KERNEL);
>>  	if (!vbt)
>>  		goto err_not_found;
>>=20=20
>> -	for (count =3D 0; count < vbt_size; count +=3D 4)
>> +	for (count =3D 0; count < *vbt_size; count +=3D 4)
>>  		*(vbt + store++) =3D intel_spi_read(&i915->uncore, found + count);
>>=20=20
>> -	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
>> +	if (!intel_bios_is_valid_vbt(vbt, *vbt_size))
>>  		goto err_free_vbt;
>>=20=20
>>  	drm_dbg_kms(&i915->drm, "Found valid VBT in SPI flash\n");
>> @@ -2977,16 +2976,16 @@ static struct vbt_header *spi_oprom_get_vbt(stru=
ct drm_i915_private *i915)
>>=20=20
>>  err_free_vbt:
>>  	kfree(vbt);
>> +	*vbt_size =3D 0;
>>  err_not_found:
>>  	return NULL;
>>  }
>>=20=20
>> -static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
>> +static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915, =
u16 *vbt_size)
>>  {
>>  	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
>>  	void __iomem *p =3D NULL, *oprom;
>>  	struct vbt_header *vbt;
>> -	u16 vbt_size;
>>  	size_t i, size;
>>=20=20
>>  	oprom =3D pci_map_rom(pdev, &size);
>> @@ -3011,21 +3010,21 @@ static struct vbt_header *oprom_get_vbt(struct d=
rm_i915_private *i915)
>>  		goto err_unmap_oprom;
>>  	}
>>=20=20
>> -	vbt_size =3D ioread16(p + offsetof(struct vbt_header, vbt_size));
>> -	if (vbt_size > size) {
>> +	*vbt_size =3D ioread16(p + offsetof(struct vbt_header, vbt_size));
>> +	if (*vbt_size > size) {
>>  		drm_dbg(&i915->drm,
>> -			"VBT incomplete (vbt_size overflows)\n");
>> +			"VBT incomplete (*vbt_size overflows)\n");
>>  		goto err_unmap_oprom;
>>  	}
>>=20=20
>>  	/* The rest will be validated by intel_bios_is_valid_vbt() */
>> -	vbt =3D kmalloc(vbt_size, GFP_KERNEL);
>> +	vbt =3D kmalloc(*vbt_size, GFP_KERNEL);
>>  	if (!vbt)
>>  		goto err_unmap_oprom;
>>=20=20
>> -	memcpy_fromio(vbt, p, vbt_size);
>> +	memcpy_fromio(vbt, p, *vbt_size);
>>=20=20
>> -	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
>> +	if (!intel_bios_is_valid_vbt(vbt, *vbt_size))
>>  		goto err_free_vbt;
>>=20=20
>>  	pci_unmap_rom(pdev, oprom);
>> @@ -3036,6 +3035,7 @@ static struct vbt_header *oprom_get_vbt(struct drm=
_i915_private *i915)
>>=20=20
>>  err_free_vbt:
>>  	kfree(vbt);
>> +	*vbt_size =3D 0;
>>  err_unmap_oprom:
>>  	pci_unmap_rom(pdev, oprom);
>>=20=20
>> @@ -3052,8 +3052,10 @@ static struct vbt_header *oprom_get_vbt(struct dr=
m_i915_private *i915)
>>   */
>>  void intel_bios_init(struct drm_i915_private *i915)
>>  {
>> +	struct intel_opregion *opregion =3D &i915->display.opregion;
>>  	const struct vbt_header *vbt =3D i915->display.opregion.vbt;
>>  	struct vbt_header *oprom_vbt =3D NULL;
>> +	u16 vbt_size;
>>  	const struct bdb_header *bdb;
>>=20=20
>>  	INIT_LIST_HEAD(&i915->display.vbt.display_devices);
>> @@ -3072,13 +3074,15 @@ void intel_bios_init(struct drm_i915_private *i9=
15)
>>  	 * PCI mapping
>>  	 */
>>  	if (!vbt && IS_DGFX(i915)) {
>> -		oprom_vbt =3D spi_oprom_get_vbt(i915);
>> -		vbt =3D oprom_vbt;
>> +		oprom_vbt =3D spi_oprom_get_vbt(i915, &vbt_size);
>> +		opregion->vbt =3D vbt =3D oprom_vbt;
>> +		opregion->vbt_size =3D (u32)vbt_size;
>>  	}
>>=20=20
>>  	if (!vbt) {
>> -		oprom_vbt =3D oprom_get_vbt(i915);
>> -		vbt =3D oprom_vbt;
>> +		oprom_vbt =3D oprom_get_vbt(i915, &vbt_size);
>> +		opregion->vbt =3D vbt =3D oprom_vbt;
>> +		opregion->vbt_size =3D (u32)vbt_size;
>>  	}
>>=20=20
>>  	if (!vbt)
>> @@ -3111,8 +3115,6 @@ void intel_bios_init(struct drm_i915_private *i915)
>>  	/* Further processing on pre-parsed or generated child device data */
>>  	parse_sdvo_device_mapping(i915);
>>  	parse_ddi_ports(i915);
>> -
>> -	kfree(oprom_vbt);
>>  }
>>=20=20
>>  static void intel_bios_init_panel(struct drm_i915_private *i915,
>> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu=
/drm/i915/display/intel_opregion.c
>> index 1ce785db6a5e..20b2160e9d0e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
>> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>> @@ -1244,8 +1244,13 @@ void intel_opregion_cleanup(struct drm_i915_priva=
te *i915)
>>  {
>>  	struct intel_opregion *opregion =3D &i915->display.opregion;
>>=20=20
>> -	if (!opregion->header)
>> +	if (!opregion->header) {
>> +		if (opregion->vbt) {
>> +			kfree(opregion->vbt);
>> +			opregion->vbt_size =3D 0;
>> +		}
>>  		return;
>> +	}
>>=20=20
>>  	/* just clear all opregion memory pointers now */
>>  	memunmap(opregion->header);
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel
