Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1723A4B747B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 19:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7992410E171;
	Tue, 15 Feb 2022 18:59:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 817D110E171
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 18:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644951540; x=1676487540;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0UJ5gOeD4m9bBZ7eFxh+hutDICV99caOg5WSky0TnXc=;
 b=oC3sLi0T/Ra8WLT79BNbMKylImiZJ0Ni+AZ6BWyLOf80Om8p4An7zPeA
 bQRXchs0nQVGxpEQnI6GWF4SoUyAtG+2IXaBaBOTP1DJfDIAhY0LTIIvT
 5XWyuTaIMhVhBATBIRyRpwKWrE16OXyTrCKxYoO2Aw1VByIRAkgRCIrxH
 S/5eYXY3NCY79yjLAqfx8wWevRa5MKxY1wRCBRDWM7LEESvckcyQrLby9
 URac/Sx1hC7NPU4BaPw1rCAbp89orKj72MJlyqT/rNGt3fp7e1EjKcVDT
 xO1lzvT6uS4Xe/VVsHQNy6Y3z88rJNfeMoPDeHUE8jPP9Ah0xllanBrmw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="230392365"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="230392365"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:58:59 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="703860406"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:58:59 -0800
Date: Tue, 15 Feb 2022 10:59:17 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20220215185910.GA6380@labuser-Z97X-UD5H>
References: <20220215133727.13450-1-anshuman.gupta@intel.com>
 <20220215133727.13450-6-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220215133727.13450-6-anshuman.gupta@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/dgfx: OPROM OpRegion Setup
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 15, 2022 at 07:07:26PM +0530, Anshuman Gupta wrote:
> On igfx cards ACPI OpRegion retrieve through ASLS.
> System BIOS writes ASLS address to pci config space(0xFC) but
> on discrete cards OpRegion is part of PCI Option ROM(OPROM) along
> with other firmware images, i915 is interested only in
> Code Signature System(CSS) and OpRegion + VBT image.
> 
> DGFX Cards has it dedicated flash, where OPROM reside.
> DGFX card provides SPI controller interface to read the OPROM.
> Read OPROM through SPI MMIO because PCI ROM mapping may does not
> work on some platforms due to the BIOS not leaving the OPROM mapped.
> 
> In order to setup OpRegion and retrieve VBT from OpRegion,
> it is required to do OPROM sanity check.
> 
> OPROM Sanity checks involves below steps.
> 
> Verify OPROM images Signature as Documented in PCI firmware Specs 3.2.
> Verify Intel CSS image signature.
> Verify the Intel CSS image code type.
> Authenticate OPROM RSA Signature. (TODO)
> Verify OpRegion image Signature.
> 
> After successful sanity check, driver will consume the OPROM
> config data to get opreg and vbt accordingly.
> 
> v2:
> - Add kzalloc NULL check for oprom_opreg pointer.
> - Fixed memory leak in intel_spi_get_oprom_opreg().
> 
> PCI Firmware Spec: ID:12886
> https://pcisig.com/specifications
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 343 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_opregion.h |   1 +
>  2 files changed, 327 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 562161a929d6..8af3a92582cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -31,6 +31,7 @@
>  #include <acpi/video.h>
>  
>  #include "i915_drv.h"
> +#include "i915_reg.h"
>  #include "intel_acpi.h"
>  #include "intel_backlight.h"
>  #include "intel_display_types.h"
> @@ -145,6 +146,34 @@ struct i915_opregion_func {
>  	void (*free_opregion)(struct drm_i915_private *i915);
>  };
>  
> +/* Refer 8_PCI_Firmware_v3.2_01-26-2015_ts_clean_Firmware_Final Page 77 */
> +struct expansion_rom_header {
> +	u16 signature;		/* Offset[0x0]: Header 0x55 0xAA */
> +	u8 resvd[0x16];
> +	u16 pcistructoffset;	/* Offset[0x18]: Contains pointer PCI Data Structure */
> +	u16 img_base;		/* Offset[0x1A]: Offset to Oprom Image Base start */
> +} __packed;
> +
> +struct pci_data_structure {
> +	u32 signature;
> +	u8 resvd[12];
> +	u16 img_len;
> +	u8 resvd1[2];
> +	u8 code_type;
> +	u8 last_img;
> +	u8 resvd2[6];
> +} __packed;
> +
> +/* PCI Firmware Spec specific Macro */
> +#define LAST_IMG_INDICATOR		0x80
> +#define OPROM_IMAGE_MAGIC		0xAA55       /* Little Endian */
> +#define OPROM_IMAGE_PCIR_MAGIC		0x52494350   /* "PCIR" */
> +#define OPROM_BYTE_BOUNDARY		512          /* OPROM image sizes are in 512 byte */
> +
> +#define INTEL_CSS_SIGNATURE		"$CPD"	/* Code Signature System Signature */
> +#define NUM_CSS_BYTES			4
> +#define INTEL_OPROM_CSS_CODE_TYPE	0xF0
> +
>  /* Driver readiness indicator */
>  #define ASLE_ARDY_READY		(1 << 0)
>  #define ASLE_ARDY_NOT_READY	(0 << 0)
> @@ -880,6 +909,196 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
>  	return ret;
>  }
>  
> +/* Refer PCI Firmware Spec Chapter 5 */
> +static int
> +pci_exp_rom_check_signature(struct drm_i915_private *i915,
> +			    struct expansion_rom_header *exprom_hdr,
> +			    struct pci_data_structure *exprom_pci_data)
> +{
> +	if (exprom_hdr->signature != OPROM_IMAGE_MAGIC) {
> +		drm_err(&i915->drm, "Invalid PCI ROM header signature.\n");
> +		return -EINVAL;
> +	}
> +
> +	if (exprom_pci_data->signature != OPROM_IMAGE_PCIR_MAGIC) {
> +		drm_err(&i915->drm, "Invalid PCI ROM data signature.\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static u32 intel_spi_oprom_offset(struct drm_i915_private *i915)
> +{
> +	u32 static_region, offset;
> +
> +	/* initialize SPI to read the OPROM */
> +	static_region = intel_uncore_read(&i915->uncore, SPI_STATIC_REGIONS);
> +	static_region &= OPTIONROM_SPI_REGIONID_MASK;
> +	intel_uncore_write(&i915->uncore, PRIMARY_SPI_REGIONID, static_region);
> +
> +	/* read OPROM offset in SPI flash */
> +	offset = intel_uncore_read(&i915->uncore, OROM_OFFSET);
> +
> +	return offset;
> +}
> +
> +static void intel_spi_read_oprom(struct drm_i915_private *i915,
> +				 u32 offset, size_t len, void *buf)
> +{
> +	u32 count, data;
> +	u32 *word = buf;
> +
> +	drm_WARN_ON(&i915->drm, !IS_ALIGNED(len, 4));
> +
> +	for (count = 0; count < len; count += 4) {
> +		intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, offset + count);
> +		data = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
> +		word[count >> 2] = data;
> +	}
> +}
> +
> +static int intel_verify_css(struct drm_i915_private *i915,
> +			    struct expansion_rom_header *exprom_hdr,
> +			    struct pci_data_structure *exprom_pci_data)
> +{
> +	if (exprom_pci_data->code_type != INTEL_OPROM_CSS_CODE_TYPE) {
> +		drm_dbg_kms(&i915->drm, "Invalid OPROM CSS Code\n");
> +		return -EINVAL;
> +	}
> +	drm_dbg_kms(&i915->drm, "Found CSS image\n");
> +	/*
> +	 * TODO: Authticate OPROM RSA Signature if required in future
> +	 * pubic key and signature are present in CSS image.
> +	 */
> +
> +	return 0;
> +}
> +
> +/**
> + * intel_spi_get_oprom_opreg() get OPROM OpRegion image.
> + * @i915: pointer to i915 device.
> + *
> + * This function parses the DGFX OPROM to retieve the opregion.
> + * OPROM has bundled multiple images but i915 only interested
> + * in CSS and opregion image.
> + *
> + *	+        DGFX OPROM IMAGE LAYOUT             +
> + *	+--------+-------+---------------------------+
> + *	| Offset | Value |   ROM Header Fields       +-----> Image1 (CSS)
> + *	+--------------------------------------------+
> + *	|    0h  |  55h  |   ROM Signature Byte1     |
> + *	|    1h  |  AAh  |   ROM Signature Byte2     |
> + *	|    2h  |  xx   |        Reserved           |
> + *	|  18+19h|  xx   |  Ptr to PCI DataStructure |
> + *	+----------------+---------------------------+
> + *	|           PCI Data Structure               |
> + *	+--------------------------------------------+
> + *	|    .       .             .                 |
> + *	|    .       .             .                 |
> + *	|    10  +  xx   +     Image Length          |
> + *	|    14  +  xx   +     Code Type             |
> + *	|    15  +  xx   +  Last Image Indicator     |
> + *	|    .       .             .                 |
> + *	+--------------------------------------------+
> + *	|         Signature and Public Key           |
> + *	+--------+-------+---------------------------+
> + *	|    .   |   .   |         .                 |
> + *	|    .   |   .   |         .                 |
> + *	+--------------------------------------------+
> + *	| Offset | Value |   ROM Header Fields       +-----> Image2 (opregion, vbt) (Offset: 0x800)
> + *	+--------------------------------------------+
> + *	|    0h  |  55h  |   ROM Signature Byte1     |
> + *	|    1h  |  AAh  |   ROM Signature Byte2     |
> + *	|    2h  |  xx   |        Reserved           |
> + *	|  18+19h|  xx   |  Ptr to PCI DataStructure |
> + *	+----------------+---------------------------+
> + *	|           PCI Data Structure               |
> + *	+--------------------------------------------+
> + *	|    .       .             .                 |
> + *	|    .       .             .                 |
> + *	|    10  +  xx   +     Image Length          |
> + *	|    14  +  xx   +      Code Type            |
> + *	|    15  +  xx   +   Last Image Indicator    |
> + *	|    .       .             .                 |
> + *	|    1A  +  3C   + Ptr to Opregion Signature |
> + *	|    .       .             .                 |
> + *	|    .       .             .                 |
> + *	|   83Ch + IntelGraphicsMem                  | <---+ Opregion Signature
> + *	+--------+-----------------------------------+
> + *
> + * Return : Returns the opregion image blob which starts from opregion
> + * signature "IntelGraphicsMem". Error value in case of error
> + */
> +static void *
> +intel_spi_get_oprom_opreg(struct drm_i915_private *i915)
> +{
> +	struct expansion_rom_header *exprom_hdr;
> +	struct pci_data_structure *exprom_pci_data;
> +	u8 img_sig[sizeof(OPREGION_SIGNATURE)];
> +	u32 oprom_offset, offset;
> +	size_t img_len, opreg_len;
> +	void *opreg = ERR_PTR(-ENXIO);
> +	int ret;
> +
> +	oprom_offset = intel_spi_oprom_offset(i915);
> +
> +	exprom_hdr = kzalloc(sizeof(struct expansion_rom_header), GFP_KERNEL);
> +	exprom_pci_data = kzalloc(sizeof(struct pci_data_structure), GFP_KERNEL);
> +	if (!exprom_hdr || !exprom_pci_data) {
> +		opreg = ERR_PTR(-ENOMEM);
> +		goto err_free_hdr;
> +	}
> +
> +	for (offset = oprom_offset; exprom_pci_data->last_img != LAST_IMG_INDICATOR;
> +	     offset = offset + img_len) {
> +		intel_spi_read_oprom(i915, offset, sizeof(struct expansion_rom_header),
> +				     exprom_hdr);
> +		intel_spi_read_oprom(i915, offset + exprom_hdr->pcistructoffset,
> +				     sizeof(struct pci_data_structure), exprom_pci_data);
> +		ret = pci_exp_rom_check_signature(i915, exprom_hdr, exprom_pci_data);
> +		if (ret) {
> +			opreg = ERR_PTR(ret);
> +			goto err_free_hdr;
> +		}
> +
> +		img_len = exprom_pci_data->img_len * OPROM_BYTE_BOUNDARY;
> +
> +		/* CSS or OpReg signature is present at exprom_hdr->img_base offset */
> +		intel_spi_read_oprom(i915, offset + exprom_hdr->img_base,
> +				     sizeof(OPREGION_SIGNATURE) - 1, img_sig);
> +
> +		if (!memcmp(img_sig, INTEL_CSS_SIGNATURE, NUM_CSS_BYTES)) {
> +			ret = intel_verify_css(i915, exprom_hdr, exprom_pci_data);
> +			if (ret) {
> +				opreg = ERR_PTR(ret);
> +				goto err_free_hdr;
> +			}
> +		} else if (!memcmp(img_sig, OPREGION_SIGNATURE, sizeof(OPREGION_SIGNATURE) - 1)) {
> +			opreg_len = img_len - exprom_hdr->img_base;
> +			opreg_len = ALIGN(opreg_len, 4);
> +			opreg = kzalloc(opreg_len, GFP_KERNEL);
> +
> +			if (!opreg) {
> +				opreg = ERR_PTR(-ENOMEM);
> +				goto err_free_hdr;
> +			}
> +
> +			intel_spi_read_oprom(i915, offset + exprom_hdr->img_base,
> +					     opreg_len, opreg);
> +			drm_dbg_kms(&i915->drm, "Found opregion image of size %zu\n", opreg_len);
> +			break;
> +		}
> +	}
> +
> +err_free_hdr:
> +
> +	kfree(exprom_pci_data);
> +	kfree(exprom_hdr);
> +
> +	return opreg;
> +}
> +
>  static int intel_opregion_setup(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_opregion *opregion = &dev_priv->opregion;
> @@ -1006,6 +1225,17 @@ static int intel_opregion_setup(struct drm_i915_private *dev_priv)
>  	}
>  
>  out:
> +	/*
> +	 * We might got VBT from OPROM OpRegion but we can't use OPROM OpRegion
> +	 * to write ACPI OpRegion MBOX.
> +	 */
> +	if (!opregion->asls) {
> +		drm_dbg(&dev_priv->drm, "ACPI OpRegion MBOX is not supported!\n");
> +		opregion->acpi = NULL;
> +		opregion->swsci = NULL;
> +		opregion->asle = NULL;
> +	}
> +
>  	return 0;
>  
>  }
> @@ -1218,45 +1448,54 @@ intel_opregion_get_asls(struct drm_i915_private *i915)
>  	pci_read_config_dword(pdev, ASLS, &asls);
>  	drm_dbg(&i915->drm, "graphic opregion physical addr: 0x%x\n",
>  		asls);
> -	if (asls == 0) {
> -		drm_dbg(&i915->drm, "ACPI OpRegion not supported!\n");
> +	if (asls == 0)
>  		return -EINVAL;
> -	}
>  
>  	opregion->asls = asls;
>  
>  	return 0;
>  }
>  
> +static int
> +intel_opregion_verify_signature(struct drm_i915_private *i915, const void *base)
> +{
> +	char buf[sizeof(OPREGION_SIGNATURE)];
> +
> +	memcpy(buf, base, sizeof(buf));
> +
> +	if (memcmp(buf, OPREGION_SIGNATURE, 16)) {
> +		drm_dbg(&i915->drm, "opregion signature mismatch\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static void *intel_igfx_alloc_opregion(struct drm_i915_private *i915)
>  {
>  	struct intel_opregion *opregion = &i915->opregion;
> -	char buf[sizeof(OPREGION_SIGNATURE)];
>  	int err = 0;
>  	void *base;
>  
>  	err = intel_opregion_get_asls(i915);
> -	if (err)
> +	if (err) {
> +		if (!opregion->asls)
> +			drm_dbg(&i915->drm, "ACPI OpRegion not supported!\n");
> +
>  		return ERR_PTR(err);
> +	}
>  
>  	base = memremap(opregion->asls, OPREGION_SIZE, MEMREMAP_WB);
>  	if (!base)
>  		return ERR_PTR(-ENOMEM);
>  
> -	memcpy(buf, base, sizeof(buf));
> -
> -	if (memcmp(buf, OPREGION_SIGNATURE, 16)) {
> -		drm_dbg(&i915->drm, "opregion signature mismatch\n");
> -		err = -EINVAL;
> -		goto err_out;
> +	err = intel_opregion_verify_signature(i915, base);
> +	if (err) {
> +		memunmap(base);
> +		return ERR_PTR(err);
>  	}
>  
>  	return base;
> -
> -err_out:
> -	memunmap(base);
> -
> -	return ERR_PTR(err);
>  }
>  
>  static void *intel_igfx_alloc_rvda(struct drm_i915_private *i915)
> @@ -1315,9 +1554,73 @@ static const struct i915_opregion_func igfx_opregion_func = {
>  	.free_opregion = intel_igfx_free_opregion,
>  };
>  
> +static void *intel_dgfx_setup_asls(struct drm_i915_private *i915)
> +{
> +	struct intel_opregion *opregion = &i915->opregion;
> +	struct opregion_asle *asls_asle;
> +	const struct opregion_asle *spi_asle;
> +	void *base;
> +	int ret;
> +
> +	if (!opregion->dgfx_oprom_opreg)
> +		return ERR_PTR(-EINVAL);
> +
> +	spi_asle = opregion->dgfx_oprom_opreg + OPREGION_ASLE_OFFSET;
> +
> +	/*
> +	 * DGFX MBD configs supports ASL storage.
> +	 * Populate the RVDA and RVDS field from OPROM opregion.
> +	 */
> +	base = memremap(opregion->asls, OPREGION_SIZE, MEMREMAP_WB);
> +	if (!base)
> +		return ERR_PTR(-ENOMEM);
> +
> +	ret = intel_opregion_verify_signature(i915, base);
> +	if (ret) {
> +		memunmap(base);
> +		return ERR_PTR(ret);
> +	}
> +
> +	asls_asle = base + OPREGION_ASLE_OFFSET;
> +	asls_asle->rvda = spi_asle->rvda;
> +	asls_asle->rvds = spi_asle->rvds;
> +
> +	return base;
> +}
> +
>  static void *intel_dgfx_alloc_opregion(struct drm_i915_private *i915)
>  {
> -	return ERR_PTR(-EOPNOTSUPP);
> +	struct intel_opregion *opregion = &i915->opregion;
> +	void *oprom_opreg;
> +	void *asls_opreg;
> +
> +	BUILD_BUG_ON(sizeof(struct expansion_rom_header) != 28);
> +	BUILD_BUG_ON(sizeof(struct pci_data_structure) != 28);
> +
> +	oprom_opreg = intel_spi_get_oprom_opreg(i915);
> +
> +	if (IS_ERR(oprom_opreg)) {
> +		drm_err(&i915->drm, "Unable to get opregion image from dgfx oprom Err: %ld\n",
> +			PTR_ERR(oprom_opreg));
> +		return oprom_opreg;
> +	}
> +
> +	/* Cache the OPROM opregion + vbt image to retrieve vbt later */
> +	opregion->dgfx_oprom_opreg = oprom_opreg;
> +
> +	if (!intel_opregion_get_asls(i915)) {
> +		asls_opreg = intel_dgfx_setup_asls(i915);
> +		if (!IS_ERR(asls_opreg))
> +			return asls_opreg;
> +	}
> +
> +	oprom_opreg = kzalloc(OPREGION_SIZE, GFP_KERNEL);
> +	if (!oprom_opreg)
> +		return ERR_PTR(-ENOMEM);
> +
> +	memcpy(oprom_opreg, opregion->dgfx_oprom_opreg, OPREGION_SIZE);

Here the suggestion was to use the kmemdup instead of kzalloc and memcpy, I have sent patch for this in internal could you make that here as well?

oprom_opreg = kmemdup(opregion->dgfx_oprom_opreg, OPREGION_SIZE, GFP_KERNEL);

return oprom_opreg ?: ERR_PTR(-ENOMEM);

This was suggestion made by Chris Wilson.

Also please add the version change log for fixing the NULL pointer and kmemdup changes as made by me on DII patchset

Manasi

> +
> +	return oprom_opreg;
>  }
>  
>  static void *intel_dgfx_alloc_rvda(struct drm_i915_private *i915)
> @@ -1331,6 +1634,12 @@ static void intel_dgfx_free_rvda(struct drm_i915_private *i915)
>  
>  static void intel_dgfx_free_opregion(struct drm_i915_private *i915)
>  {
> +	struct intel_opregion *opregion = &i915->opregion;
> +
> +	if (opregion->asls)
> +		memunmap(opregion->header);
> +	else
> +		kfree(opregion->header);
>  }
>  
>  static const struct i915_opregion_func dgfx_opregion_func = {
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
> index 7500c396b74d..65a9aa4fdb59 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> @@ -52,6 +52,7 @@ struct intel_opregion {
>  	void *rvda;
>  	void *vbt_firmware;
>  	const void *vbt;
> +	const void *dgfx_oprom_opreg;
>  	u32 vbt_size;
>  	u32 *lid_state;
>  	struct work_struct asle_work;
> -- 
> 2.26.2
> 
