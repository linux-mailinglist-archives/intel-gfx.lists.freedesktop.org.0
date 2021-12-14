Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BE6473FB7
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 10:44:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBB4910E66D;
	Tue, 14 Dec 2021 09:44:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FD1F10E66D
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 09:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639475041; x=1671011041;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=voLyUVEWjB39RCFRqsHALeYURpNTiQIpft1W/LMEFbM=;
 b=eKrH7mq6yXpUTJT0+OhXWNCN90vW9g9CU4oNfZvylfQrOYqhKrNr7LZy
 EmQNlf9qPle79IX7+S7ffEg1QVVVEucgz1CRVYXEb7epYAWrxg8JhD+Ip
 E92deVyrw6b67GB1OvA1bCKoezncRGwaRFABg9iS8FLDzU4zHXSPwgTKX
 CCr9Q87xlfRCwVjokTW5BHdjCdWTb7aXqeYiG4KvONuIfHedrgQNYqTE5
 l8lwjzbhoWujMVIoYqDpQqFLSzNGyeC8BNGPZW0LYaFEPdILD5v6qpmcc
 H8SUjBro3WGY3ZrMpxht3iHG5ILlWI4YXuRLVjIBurQGjQ4rsDvVTvReQ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="237679193"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="237679193"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 01:42:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="681991532"
Received: from nalbarnj-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.3.235])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 01:42:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210917234828.1156078-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210917234828.1156078-1-lucas.demarchi@intel.com>
Date: Tue, 14 Dec 2021 11:42:41 +0200
Message-ID: <87sfuv5xpq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Read OPROM via SPI controller
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
Cc: Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Sep 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
>
> Read OPROM SPI through MMIO and find VBT entry since we can't use
> OpRegion and PCI mapping may not work on some systems due to most BIOSes
> not leaving the Option ROM mapped.

What happened here, still not merged? :o

BR,
Jani.



>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 80 +++++++++++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h           |  8 +++
>  2 files changed, 82 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 3c25926092de..7f179dbdec1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2280,6 +2280,66 @@ bool intel_bios_is_valid_vbt(const void *buf, size=
_t size)
>  	return vbt;
>  }
>=20=20
> +static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i91=
5)
> +{
> +	u32 count, data, found, store =3D 0;
> +	u32 static_region, oprom_offset;
> +	u32 oprom_size =3D 0x200000;
> +	u16 vbt_size;
> +	u32 *vbt;
> +
> +	static_region =3D intel_uncore_read(&i915->uncore, SPI_STATIC_REGIONS);
> +	static_region &=3D OPTIONROM_SPI_REGIONID_MASK;
> +	intel_uncore_write(&i915->uncore, PRIMARY_SPI_REGIONID, static_region);
> +
> +	oprom_offset =3D intel_uncore_read(&i915->uncore, OROM_OFFSET);
> +	oprom_offset &=3D OROM_OFFSET_MASK;
> +
> +	for (count =3D 0; count < oprom_size; count +=3D 4) {
> +		intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, oprom_offset + =
count);
> +		data =3D intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
> +
> +		if (data =3D=3D *((const u32 *)"$VBT")) {
> +			found =3D oprom_offset + count;
> +			break;
> +		}
> +	}
> +
> +	if (count >=3D oprom_size)
> +		goto err_not_found;
> +
> +	/* Get VBT size and allocate space for the VBT */
> +	intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, found +
> +		   offsetof(struct vbt_header, vbt_size));
> +	vbt_size =3D intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
> +	vbt_size &=3D 0xffff;
> +
> +	vbt =3D kzalloc(vbt_size, GFP_KERNEL);
> +	if (!vbt) {
> +		drm_err(&i915->drm, "Unable to allocate %u bytes for VBT storage\n",
> +			vbt_size);
> +		goto err_not_found;
> +	}
> +
> +	for (count =3D 0; count < vbt_size; count +=3D 4) {
> +		intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, found + count);
> +		data =3D intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
> +		*(vbt + store++) =3D data;
> +	}
> +
> +	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
> +		goto err_free_vbt;
> +
> +	drm_dbg_kms(&i915->drm, "Found valid VBT in SPI flash\n");
> +
> +	return (struct vbt_header *)vbt;
> +
> +err_free_vbt:
> +	kfree(vbt);
> +err_not_found:
> +	return NULL;
> +}
> +
>  static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> @@ -2329,6 +2389,8 @@ static struct vbt_header *oprom_get_vbt(struct drm_=
i915_private *i915)
>=20=20
>  	pci_unmap_rom(pdev, oprom);
>=20=20
> +	drm_dbg_kms(&i915->drm, "Found valid VBT in PCI ROM\n");
> +
>  	return vbt;
>=20=20
>  err_free_vbt:
> @@ -2363,17 +2425,23 @@ void intel_bios_init(struct drm_i915_private *i91=
5)
>=20=20
>  	init_vbt_defaults(i915);
>=20=20
> -	/* If the OpRegion does not have VBT, look in PCI ROM. */
> +	/*
> +	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
> +	 * PCI mapping
> +	 */
> +	if (!vbt && IS_DGFX(i915)) {
> +		oprom_vbt =3D spi_oprom_get_vbt(i915);
> +		vbt =3D oprom_vbt;
> +	}
> +
>  	if (!vbt) {
>  		oprom_vbt =3D oprom_get_vbt(i915);
> -		if (!oprom_vbt)
> -			goto out;
> -
>  		vbt =3D oprom_vbt;
> -
> -		drm_dbg_kms(&i915->drm, "Found valid VBT in PCI ROM\n");
>  	}
>=20=20
> +	if (!vbt)
> +		goto out;
> +
>  	bdb =3D get_bdb_header(vbt);
>  	i915->vbt.version =3D bdb->version;
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index c3a21f7c003d..fd3fee090412 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -12771,6 +12771,14 @@ enum skl_power_gate {
>  #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT	REG_BIT(1)
>  #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT	REG_BIT(0)
>=20=20
> +#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
> +#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
> +#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
> +#define SPI_STATIC_REGIONS			_MMIO(0x102090)
> +#define   OPTIONROM_SPI_REGIONID_MASK		REG_GENMASK(7, 0)
> +#define OROM_OFFSET				_MMIO(0x1020c0)
> +#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
> +
>  /* This register controls the Display State Buffer (DSB) engines. */
>  #define _DSBSL_INSTANCE_BASE		0x70B00
>  #define DSBSL_INSTANCE(pipe, id)	(_DSBSL_INSTANCE_BASE + \

--=20
Jani Nikula, Intel Open Source Graphics Center
