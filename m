Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F5A2D4883
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 19:04:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2940B8926D;
	Wed,  9 Dec 2020 18:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E3B289016
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 18:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607537073;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3PbwsGxDvfW0LbCU0yoVuxlXMfsh/ZypY1/qMHX8YuQ=;
 b=Ob6rKMpUychS5nNQ0EZyw4kGsplUsHprYZO/0e1+IdKkbCjj0QTv4EFwHYTAwcQIrG4k2J
 DUuqt4hFw7qSnubjZ9hS6L8+oQyCOdQwZnStkgE6jW310p7iqzZbqFMWkI0L2JpdNzZHZ6
 pHfPo7ULCnu3GWPiDB2ryT+M/5LCsA4=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-238-XE5vKO94OEiYy-MnYjxhxQ-1; Wed, 09 Dec 2020 13:04:30 -0500
X-MC-Unique: XE5vKO94OEiYy-MnYjxhxQ-1
Received: by mail-qv1-f71.google.com with SMTP id o16so1746425qvq.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Dec 2020 10:04:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3PbwsGxDvfW0LbCU0yoVuxlXMfsh/ZypY1/qMHX8YuQ=;
 b=c/14KpZlH+LPcmY9920AnwCWLUWeLC0cWVWdhUeJynz9vsXwGGFruebba9rfuv0cFS
 l++9FW2LPauJRQ1z0HguDehQo2r66M2P3zBAGY0S2I3Mskmj/ozbCyZ6VBXHP5tfQFAf
 enfsxcxjaL1NfQcF9vs9KZXfVwkuT7NBXmA9JUb8xzNT2IM92tDbfKZMXyxl9vzDwSzm
 a702IcO5N5Gv5MVPkNfGkcqSSzB8nycSqOCWojVf9DgjEMukL5ZCfGK2cOOmgeh+yZM4
 K21FaZcXlTtI6lSMT/fWENd/Qt4LX1ItfbESxII5IAwb7ZUPRDRUiIB2iDawkPSf4KTL
 Gbzw==
X-Gm-Message-State: AOAM531sz3DEyNOIwCqc52QyoVm1kaX/PvpMBIfhnDT4RsHYGQqaW3hX
 L44O805zN9X8TzEjTHktwsQ0UHkHBcvyMA1iSzrLUfEmNMPYA1QsKN62IKgy94qCpNkFroa/YxL
 R0nLe38UgaKUVG4ooIZ1otSyZ2cjL
X-Received: by 2002:a37:9c4a:: with SMTP id f71mr4368376qke.495.1607537069363; 
 Wed, 09 Dec 2020 10:04:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyr/1apxVN5Ij7nu5yhZTtXAiXkdKr8Jhpe0b4Wi6t0LUh7XItYafvrRFOt9NxrpZpRzu4ibw==
X-Received: by 2002:a37:9c4a:: with SMTP id f71mr4368335qke.495.1607537068982; 
 Wed, 09 Dec 2020 10:04:28 -0800 (PST)
Received: from xps13 ([2605:a601:a63a:4d01:c3c1:7008:ba35:96])
 by smtp.gmail.com with ESMTPSA id q73sm1597131qke.16.2020.12.09.10.04.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Dec 2020 10:04:28 -0800 (PST)
Date: Wed, 9 Dec 2020 13:04:26 -0500
From: Jeremy Cline <jcline@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20201209180426.GA8635@xps13>
References: <20201201103542.2182-1-tzimmermann@suse.de>
 <20201201103542.2182-14-tzimmermann@suse.de>
MIME-Version: 1.0
In-Reply-To: <20201201103542.2182-14-tzimmermann@suse.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jcline@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Intel-gfx] [PATCH v2 13/20] drm/nouveau: Remove references to
 struct drm_device.pdev
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
Cc: airlied@linux.ie, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, amd-gfx@lists.freedesktop.org,
 spice-devel@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 Ben Skeggs <bskeggs@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Tue, Dec 01, 2020 at 11:35:35AM +0100, Thomas Zimmermann wrote:
> Using struct drm_device.pdev is deprecated. Convert nouveau to struct
> drm_device.dev. No functional changes.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Ben Skeggs <bskeggs@redhat.com>
> ---
>  drivers/gpu/drm/nouveau/dispnv04/arb.c      | 12 +++++++-----
>  drivers/gpu/drm/nouveau/dispnv04/disp.h     | 14 ++++++++------
>  drivers/gpu/drm/nouveau/dispnv04/hw.c       | 10 ++++++----
>  drivers/gpu/drm/nouveau/nouveau_abi16.c     |  7 ++++---
>  drivers/gpu/drm/nouveau/nouveau_acpi.c      |  2 +-
>  drivers/gpu/drm/nouveau/nouveau_bios.c      | 11 ++++++++---
>  drivers/gpu/drm/nouveau/nouveau_connector.c | 10 ++++++----
>  drivers/gpu/drm/nouveau/nouveau_drm.c       |  5 ++---
>  drivers/gpu/drm/nouveau/nouveau_fbcon.c     |  6 ++++--
>  drivers/gpu/drm/nouveau/nouveau_vga.c       | 20 ++++++++++++--------
>  10 files changed, 58 insertions(+), 39 deletions(-)
> 

I believe there's a use of drm_device.pdev in
drivers/gpu/drm/nouveau/dispnv04/dfp.c in the
nv04_dfp_update_backlight() function.

Other than that, this looks good to me.

> diff --git a/drivers/gpu/drm/nouveau/dispnv04/arb.c b/drivers/gpu/drm/nouveau/dispnv04/arb.c
> index 9d4a2d97507e..1d3542d6006b 100644
> --- a/drivers/gpu/drm/nouveau/dispnv04/arb.c
> +++ b/drivers/gpu/drm/nouveau/dispnv04/arb.c
> @@ -200,16 +200,17 @@ nv04_update_arb(struct drm_device *dev, int VClk, int bpp,
>  	int MClk = nouveau_hw_get_clock(dev, PLL_MEMORY);
>  	int NVClk = nouveau_hw_get_clock(dev, PLL_CORE);
>  	uint32_t cfg1 = nvif_rd32(device, NV04_PFB_CFG1);
> +	struct pci_dev *pdev = to_pci_dev(dev->dev);
>  
>  	sim_data.pclk_khz = VClk;
>  	sim_data.mclk_khz = MClk;
>  	sim_data.nvclk_khz = NVClk;
>  	sim_data.bpp = bpp;
>  	sim_data.two_heads = nv_two_heads(dev);
> -	if ((dev->pdev->device & 0xffff) == 0x01a0 /*CHIPSET_NFORCE*/ ||
> -	    (dev->pdev->device & 0xffff) == 0x01f0 /*CHIPSET_NFORCE2*/) {
> +	if ((pdev->device & 0xffff) == 0x01a0 /*CHIPSET_NFORCE*/ ||
> +	    (pdev->device & 0xffff) == 0x01f0 /*CHIPSET_NFORCE2*/) {
>  		uint32_t type;
> -		int domain = pci_domain_nr(dev->pdev->bus);
> +		int domain = pci_domain_nr(pdev->bus);
>  
>  		pci_read_config_dword(pci_get_domain_bus_and_slot(domain, 0, 1),
>  				      0x7c, &type);
> @@ -251,11 +252,12 @@ void
>  nouveau_calc_arb(struct drm_device *dev, int vclk, int bpp, int *burst, int *lwm)
>  {
>  	struct nouveau_drm *drm = nouveau_drm(dev);
> +	struct pci_dev *pdev = to_pci_dev(dev->dev);
>  
>  	if (drm->client.device.info.family < NV_DEVICE_INFO_V0_KELVIN)
>  		nv04_update_arb(dev, vclk, bpp, burst, lwm);
> -	else if ((dev->pdev->device & 0xfff0) == 0x0240 /*CHIPSET_C51*/ ||
> -		 (dev->pdev->device & 0xfff0) == 0x03d0 /*CHIPSET_C512*/) {
> +	else if ((pdev->device & 0xfff0) == 0x0240 /*CHIPSET_C51*/ ||
> +		 (pdev->device & 0xfff0) == 0x03d0 /*CHIPSET_C512*/) {
>  		*burst = 128;
>  		*lwm = 0x0480;
>  	} else
> diff --git a/drivers/gpu/drm/nouveau/dispnv04/disp.h b/drivers/gpu/drm/nouveau/dispnv04/disp.h
> index 5ace5e906949..f0a24126641a 100644
> --- a/drivers/gpu/drm/nouveau/dispnv04/disp.h
> +++ b/drivers/gpu/drm/nouveau/dispnv04/disp.h
> @@ -130,7 +130,7 @@ static inline bool
>  nv_two_heads(struct drm_device *dev)
>  {
>  	struct nouveau_drm *drm = nouveau_drm(dev);
> -	const int impl = dev->pdev->device & 0x0ff0;
> +	const int impl = to_pci_dev(dev->dev)->device & 0x0ff0;
>  
>  	if (drm->client.device.info.family >= NV_DEVICE_INFO_V0_CELSIUS && impl != 0x0100 &&
>  	    impl != 0x0150 && impl != 0x01a0 && impl != 0x0200)
> @@ -142,14 +142,14 @@ nv_two_heads(struct drm_device *dev)
>  static inline bool
>  nv_gf4_disp_arch(struct drm_device *dev)
>  {
> -	return nv_two_heads(dev) && (dev->pdev->device & 0x0ff0) != 0x0110;
> +	return nv_two_heads(dev) && (to_pci_dev(dev->dev)->device & 0x0ff0) != 0x0110;
>  }
>  
>  static inline bool
>  nv_two_reg_pll(struct drm_device *dev)
>  {
>  	struct nouveau_drm *drm = nouveau_drm(dev);
> -	const int impl = dev->pdev->device & 0x0ff0;
> +	const int impl = to_pci_dev(dev->dev)->device & 0x0ff0;
>  
>  	if (impl == 0x0310 || impl == 0x0340 || drm->client.device.info.family >= NV_DEVICE_INFO_V0_CURIE)
>  		return true;
> @@ -160,9 +160,11 @@ static inline bool
>  nv_match_device(struct drm_device *dev, unsigned device,
>  		unsigned sub_vendor, unsigned sub_device)
>  {
> -	return dev->pdev->device == device &&
> -		dev->pdev->subsystem_vendor == sub_vendor &&
> -		dev->pdev->subsystem_device == sub_device;
> +	struct pci_dev *pdev = to_pci_dev(dev->dev);
> +
> +	return pdev->device == device &&
> +		pdev->subsystem_vendor == sub_vendor &&
> +		pdev->subsystem_device == sub_device;
>  }
>  
>  #include <subdev/bios/init.h>
> diff --git a/drivers/gpu/drm/nouveau/dispnv04/hw.c b/drivers/gpu/drm/nouveau/dispnv04/hw.c
> index b674d68ef28a..f7d35657aa64 100644
> --- a/drivers/gpu/drm/nouveau/dispnv04/hw.c
> +++ b/drivers/gpu/drm/nouveau/dispnv04/hw.c
> @@ -214,14 +214,15 @@ nouveau_hw_pllvals_to_clk(struct nvkm_pll_vals *pv)
>  int
>  nouveau_hw_get_clock(struct drm_device *dev, enum nvbios_pll_type plltype)
>  {
> +	struct pci_dev *pdev = to_pci_dev(dev->dev);
>  	struct nvkm_pll_vals pllvals;
>  	int ret;
>  	int domain;
>  
> -	domain = pci_domain_nr(dev->pdev->bus);
> +	domain = pci_domain_nr(pdev->bus);
>  
>  	if (plltype == PLL_MEMORY &&
> -	    (dev->pdev->device & 0x0ff0) == CHIPSET_NFORCE) {
> +	    (pdev->device & 0x0ff0) == CHIPSET_NFORCE) {
>  		uint32_t mpllP;
>  		pci_read_config_dword(pci_get_domain_bus_and_slot(domain, 0, 3),
>  				      0x6c, &mpllP);
> @@ -232,7 +233,7 @@ nouveau_hw_get_clock(struct drm_device *dev, enum nvbios_pll_type plltype)
>  		return 400000 / mpllP;
>  	} else
>  	if (plltype == PLL_MEMORY &&
> -	    (dev->pdev->device & 0xff0) == CHIPSET_NFORCE2) {
> +	    (pdev->device & 0xff0) == CHIPSET_NFORCE2) {
>  		uint32_t clock;
>  
>  		pci_read_config_dword(pci_get_domain_bus_and_slot(domain, 0, 5),
> @@ -309,6 +310,7 @@ void
>  nouveau_hw_save_vga_fonts(struct drm_device *dev, bool save)
>  {
>  	struct nouveau_drm *drm = nouveau_drm(dev);
> +	struct pci_dev *pdev = to_pci_dev(dev->dev);
>  	uint8_t misc, gr4, gr5, gr6, seq2, seq4;
>  	bool graphicsmode;
>  	unsigned plane;
> @@ -327,7 +329,7 @@ nouveau_hw_save_vga_fonts(struct drm_device *dev, bool save)
>  	NV_INFO(drm, "%sing VGA fonts\n", save ? "Sav" : "Restor");
>  
>  	/* map first 64KiB of VRAM, holds VGA fonts etc */
> -	iovram = ioremap(pci_resource_start(dev->pdev, 1), 65536);
> +	iovram = ioremap(pci_resource_start(pdev, 1), 65536);
>  	if (!iovram) {
>  		NV_ERROR(drm, "Failed to map VRAM, "
>  					"cannot save/restore VGA fonts.\n");
> diff --git a/drivers/gpu/drm/nouveau/nouveau_abi16.c b/drivers/gpu/drm/nouveau/nouveau_abi16.c
> index 9a5be6f32424..f08b31d84d4d 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_abi16.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_abi16.c
> @@ -181,6 +181,7 @@ nouveau_abi16_ioctl_getparam(ABI16_IOCTL_ARGS)
>  	struct nvif_device *device = &drm->client.device;
>  	struct nvkm_gr *gr = nvxx_gr(device);
>  	struct drm_nouveau_getparam *getparam = data;
> +	struct pci_dev *pdev = to_pci_dev(dev->dev);
>  
>  	switch (getparam->param) {
>  	case NOUVEAU_GETPARAM_CHIPSET_ID:
> @@ -188,13 +189,13 @@ nouveau_abi16_ioctl_getparam(ABI16_IOCTL_ARGS)
>  		break;
>  	case NOUVEAU_GETPARAM_PCI_VENDOR:
>  		if (device->info.platform != NV_DEVICE_INFO_V0_SOC)
> -			getparam->value = dev->pdev->vendor;
> +			getparam->value = pdev->vendor;
>  		else
>  			getparam->value = 0;
>  		break;
>  	case NOUVEAU_GETPARAM_PCI_DEVICE:
>  		if (device->info.platform != NV_DEVICE_INFO_V0_SOC)
> -			getparam->value = dev->pdev->device;
> +			getparam->value = pdev->device;
>  		else
>  			getparam->value = 0;
>  		break;
> @@ -205,7 +206,7 @@ nouveau_abi16_ioctl_getparam(ABI16_IOCTL_ARGS)
>  		case NV_DEVICE_INFO_V0_PCIE: getparam->value = 2; break;
>  		case NV_DEVICE_INFO_V0_SOC : getparam->value = 3; break;
>  		case NV_DEVICE_INFO_V0_IGP :
> -			if (!pci_is_pcie(dev->pdev))
> +			if (!pci_is_pcie(pdev))
>  				getparam->value = 1;
>  			else
>  				getparam->value = 2;
> diff --git a/drivers/gpu/drm/nouveau/nouveau_acpi.c b/drivers/gpu/drm/nouveau/nouveau_acpi.c
> index 69a84d0197d0..7c15f6448428 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_acpi.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_acpi.c
> @@ -377,7 +377,7 @@ nouveau_acpi_edid(struct drm_device *dev, struct drm_connector *connector)
>  		return NULL;
>  	}
>  
> -	handle = ACPI_HANDLE(&dev->pdev->dev);
> +	handle = ACPI_HANDLE(dev->dev);
>  	if (!handle)
>  		return NULL;
>  
> diff --git a/drivers/gpu/drm/nouveau/nouveau_bios.c b/drivers/gpu/drm/nouveau/nouveau_bios.c
> index d204ea8a5618..7cc683b8dc7a 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_bios.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_bios.c
> @@ -110,6 +110,9 @@ static int call_lvds_manufacturer_script(struct drm_device *dev, struct dcb_outp
>  	struct nvbios *bios = &drm->vbios;
>  	uint8_t sub = bios->data[bios->fp.xlated_entry + script] + (bios->fp.link_c_increment && dcbent->or & DCB_OUTPUT_C ? 1 : 0);
>  	uint16_t scriptofs = ROM16(bios->data[bios->init_script_tbls_ptr + sub * 2]);
> +#ifdef __powerpc__
> +	struct pci_dev *pdev = to_pci_dev(dev->dev);
> +#endif
>  
>  	if (!bios->fp.xlated_entry || !sub || !scriptofs)
>  		return -EINVAL;
> @@ -123,8 +126,8 @@ static int call_lvds_manufacturer_script(struct drm_device *dev, struct dcb_outp
>  #ifdef __powerpc__
>  	/* Powerbook specific quirks */
>  	if (script == LVDS_RESET &&
> -	    (dev->pdev->device == 0x0179 || dev->pdev->device == 0x0189 ||
> -	     dev->pdev->device == 0x0329))
> +	    (pdev->device == 0x0179 || pdev->device == 0x0189 ||
> +	     pdev->device == 0x0329))
>  		nv_write_tmds(dev, dcbent->or, 0, 0x02, 0x72);
>  #endif
>  
> @@ -2080,11 +2083,13 @@ nouveau_bios_init(struct drm_device *dev)
>  {
>  	struct nouveau_drm *drm = nouveau_drm(dev);
>  	struct nvbios *bios = &drm->vbios;
> +	struct pci_dev *pdev;
>  	int ret;
>  
>  	/* only relevant for PCI devices */
> -	if (!dev->pdev)
> +	if (!dev_is_pci(dev->dev))
>  		return 0;
> +	pdev = to_pci_dev(dev->dev);
>  
>  	if (!NVInitVBIOS(dev))
>  		return -ENODEV;
> diff --git a/drivers/gpu/drm/nouveau/nouveau_connector.c b/drivers/gpu/drm/nouveau/nouveau_connector.c
> index 8b4b3688c7ae..14c29e68db8f 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_connector.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_connector.c
> @@ -411,6 +411,7 @@ static struct nouveau_encoder *
>  nouveau_connector_ddc_detect(struct drm_connector *connector)
>  {
>  	struct drm_device *dev = connector->dev;
> +	struct pci_dev *pdev = to_pci_dev(dev->dev);
>  	struct nouveau_encoder *nv_encoder = NULL, *found = NULL;
>  	struct drm_encoder *encoder;
>  	int ret;
> @@ -438,11 +439,11 @@ nouveau_connector_ddc_detect(struct drm_connector *connector)
>  				break;
>  
>  			if (switcheroo_ddc)
> -				vga_switcheroo_lock_ddc(dev->pdev);
> +				vga_switcheroo_lock_ddc(pdev);
>  			if (nvkm_probe_i2c(nv_encoder->i2c, 0x50))
>  				found = nv_encoder;
>  			if (switcheroo_ddc)
> -				vga_switcheroo_unlock_ddc(dev->pdev);
> +				vga_switcheroo_unlock_ddc(pdev);
>  
>  			break;
>  		}
> @@ -490,6 +491,7 @@ nouveau_connector_set_encoder(struct drm_connector *connector,
>  	struct nouveau_connector *nv_connector = nouveau_connector(connector);
>  	struct nouveau_drm *drm = nouveau_drm(connector->dev);
>  	struct drm_device *dev = connector->dev;
> +	struct pci_dev *pdev = to_pci_dev(dev->dev);
>  
>  	if (nv_connector->detected_encoder == nv_encoder)
>  		return;
> @@ -511,8 +513,8 @@ nouveau_connector_set_encoder(struct drm_connector *connector,
>  		connector->doublescan_allowed = true;
>  		if (drm->client.device.info.family == NV_DEVICE_INFO_V0_KELVIN ||
>  		    (drm->client.device.info.family == NV_DEVICE_INFO_V0_CELSIUS &&
> -		     (dev->pdev->device & 0x0ff0) != 0x0100 &&
> -		     (dev->pdev->device & 0x0ff0) != 0x0150))
> +		     (pdev->device & 0x0ff0) != 0x0100 &&
> +		     (pdev->device & 0x0ff0) != 0x0150))
>  			/* HW is broken */
>  			connector->interlace_allowed = false;
>  		else
> diff --git a/drivers/gpu/drm/nouveau/nouveau_drm.c b/drivers/gpu/drm/nouveau/nouveau_drm.c
> index d141a5f004af..1b2169e9c295 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_drm.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_drm.c
> @@ -115,8 +115,8 @@ nouveau_platform_name(struct platform_device *platformdev)
>  static u64
>  nouveau_name(struct drm_device *dev)
>  {
> -	if (dev->pdev)
> -		return nouveau_pci_name(dev->pdev);
> +	if (dev_is_pci(dev->dev))
> +		return nouveau_pci_name(to_pci_dev(dev->dev));
>  	else
>  		return nouveau_platform_name(to_platform_device(dev->dev));
>  }
> @@ -760,7 +760,6 @@ static int nouveau_drm_probe(struct pci_dev *pdev,
>  	if (ret)
>  		goto fail_drm;
>  
> -	drm_dev->pdev = pdev;
>  	pci_set_drvdata(pdev, drm_dev);
>  
>  	ret = nouveau_drm_device_init(drm_dev);
> diff --git a/drivers/gpu/drm/nouveau/nouveau_fbcon.c b/drivers/gpu/drm/nouveau/nouveau_fbcon.c
> index 24ec5339efb4..4fc0fa696461 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_fbcon.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_fbcon.c
> @@ -396,7 +396,9 @@ nouveau_fbcon_create(struct drm_fb_helper *helper,
>  	NV_INFO(drm, "allocated %dx%d fb: 0x%llx, bo %p\n",
>  		fb->width, fb->height, nvbo->offset, nvbo);
>  
> -	vga_switcheroo_client_fb_set(dev->pdev, info);
> +	if (dev_is_pci(dev->dev))
> +		vga_switcheroo_client_fb_set(to_pci_dev(dev->dev), info);
> +
>  	return 0;
>  
>  out_unlock:
> @@ -548,7 +550,7 @@ nouveau_fbcon_init(struct drm_device *dev)
>  	int ret;
>  
>  	if (!dev->mode_config.num_crtc ||
> -	    (dev->pdev->class >> 8) != PCI_CLASS_DISPLAY_VGA)
> +	    (to_pci_dev(dev->dev)->class >> 8) != PCI_CLASS_DISPLAY_VGA)
>  		return 0;
>  
>  	fbcon = kzalloc(sizeof(struct nouveau_fbdev), GFP_KERNEL);
> diff --git a/drivers/gpu/drm/nouveau/nouveau_vga.c b/drivers/gpu/drm/nouveau/nouveau_vga.c
> index c85dd8afa3c3..7c4b374b3eca 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_vga.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_vga.c
> @@ -87,18 +87,20 @@ nouveau_vga_init(struct nouveau_drm *drm)
>  {
>  	struct drm_device *dev = drm->dev;
>  	bool runtime = nouveau_pmops_runtime();
> +	struct pci_dev *pdev;
>  
>  	/* only relevant for PCI devices */
> -	if (!dev->pdev)
> +	if (!dev_is_pci(dev->dev))
>  		return;
> +	pdev = to_pci_dev(dev->dev);
>  
> -	vga_client_register(dev->pdev, dev, NULL, nouveau_vga_set_decode);
> +	vga_client_register(pdev, dev, NULL, nouveau_vga_set_decode);
>  
>  	/* don't register Thunderbolt eGPU with vga_switcheroo */
> -	if (pci_is_thunderbolt_attached(dev->pdev))
> +	if (pci_is_thunderbolt_attached(pdev))
>  		return;
>  
> -	vga_switcheroo_register_client(dev->pdev, &nouveau_switcheroo_ops, runtime);
> +	vga_switcheroo_register_client(pdev, &nouveau_switcheroo_ops, runtime);
>  
>  	if (runtime && nouveau_is_v1_dsm() && !nouveau_is_optimus())
>  		vga_switcheroo_init_domain_pm_ops(drm->dev->dev, &drm->vga_pm_domain);
> @@ -109,17 +111,19 @@ nouveau_vga_fini(struct nouveau_drm *drm)
>  {
>  	struct drm_device *dev = drm->dev;
>  	bool runtime = nouveau_pmops_runtime();
> +	struct pci_dev *pdev;
>  
>  	/* only relevant for PCI devices */
> -	if (!dev->pdev)
> +	if (!dev_is_pci(dev->dev))
>  		return;
> +	pdev = to_pci_dev(dev->dev);
>  
> -	vga_client_register(dev->pdev, NULL, NULL, NULL);
> +	vga_client_register(pdev, NULL, NULL, NULL);
>  
> -	if (pci_is_thunderbolt_attached(dev->pdev))
> +	if (pci_is_thunderbolt_attached(pdev))
>  		return;
>  
> -	vga_switcheroo_unregister_client(dev->pdev);
> +	vga_switcheroo_unregister_client(pdev);
>  	if (runtime && nouveau_is_v1_dsm() && !nouveau_is_optimus())
>  		vga_switcheroo_fini_domain_pm_ops(drm->dev->dev);
>  }
> -- 
> 2.29.2
> 
> _______________________________________________
> intel-gvt-dev mailing list
> intel-gvt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gvt-dev
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
