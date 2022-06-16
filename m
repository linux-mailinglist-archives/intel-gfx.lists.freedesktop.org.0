Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D80C54E573
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 16:55:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8707211A478;
	Thu, 16 Jun 2022 14:55:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3AF311A449
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 14:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655391325; x=1686927325;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=b0vsy1zRo/0UiLjGgSiV5SFIjtEiPa1e+ehbe7VYo64=;
 b=b7170vcwCTE6e2JijpCmOHRsEDWnfWlhg5zznHkpe1B3ucNZZwiKLHVx
 89QLy9j78MYVrHEacuZPNMMzk6MmWn5OMqvzacWQDBbPW1lAjIkvn5CSa
 NuOKlkSvk1me+3MWazcD15gDw0ewUahN2GH+TBX7l9t4A9Sbp5m/WuJ66
 /miYJ7vALybL8jLLUmpHN7Horm9sUHL+eZY1YBjF3wMZ7MCGxn/FxvTBF
 VI0qG5hdXUiCIocMV+1tupDZoMKaQpuhviSK9BFrNwn9zPnLBQ9cF5qig
 oG2phdLm+BcGbJQSfkhUsZ8UqifLfigXRLTp0OXAO0QJCKfr0xybINyVl w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="259727332"
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="259727332"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 07:55:25 -0700
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="641578720"
Received: from aamendol-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.33.35])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 07:55:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: priyanka.dandamudi@intel.com, priyanka.dandamudi@intel.com,
 matthew.auld@intel.com, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220616120509.1190329-2-priyanka.dandamudi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220616120509.1190329-1-priyanka.dandamudi@intel.com>
 <20220616120509.1190329-2-priyanka.dandamudi@intel.com>
Date: Thu, 16 Jun 2022 17:55:21 +0300
Message-ID: <87pmj8vesm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] drm/i915: Add support for LMEM
 PCIe resizable bar
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

On Thu, 16 Jun 2022, priyanka.dandamudi@intel.com wrote:
> From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
>
> This patch adds support for the local memory PICe resizable bar, so that
> local memory can be resized to the maximum size supported by the device,
> and mapped correctly to the PCIe memory bar. It is usual that GPU
> devices expose only 256MB BARs primarily to be compatible with 32-bit
> systems. So, those devices cannot claim larger memory BAR windows size due
> to the system BIOS limitation. With this change, it would be possible to
> reprogram the windows of the bridge directly above the requesting device
> on the same BAR type.
>
> Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> Signed-off-by: Micha=C5=82 Winiarski <michal.winiarski@intel.com>
> Cc: Stuart Summers <stuart.summers@intel.com>
> Cc: Michael J Ruhl <michael.j.ruhl@intel.com>
> Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 92 ++++++++++++++++++++++++++++++
>  1 file changed, 92 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index d26dcca7e654..4bdb471cb2e2 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -303,6 +303,95 @@ static void sanitize_gpu(struct drm_i915_private *i9=
15)
>  		__intel_gt_reset(to_gt(i915), ALL_ENGINES);
>  }
>=20=20
> +static void __release_bars(struct pci_dev *pdev)

What's with the double underscores?=20

> +{
> +	int resno;
> +
> +	for (resno =3D PCI_STD_RESOURCES; resno < PCI_STD_RESOURCE_END; resno++=
) {
> +		if (pci_resource_len(pdev, resno))
> +			pci_release_resource(pdev, resno);
> +	}
> +}
> +
> +static void
> +__resize_bar(struct drm_i915_private *i915, int resno, resource_size_t s=
ize)
> +{
> +	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> +	int bar_size =3D pci_rebar_bytes_to_size(size);
> +	int ret;
> +
> +	__release_bars(pdev);
> +
> +	ret =3D pci_resize_resource(pdev, resno, bar_size);
> +	if (ret) {
> +		drm_info(&i915->drm, "Failed to resize BAR%d to %dM (%pe)\n",
> +			 resno, 1 << bar_size, ERR_PTR(ret));
> +		return;
> +	}
> +
> +	drm_info(&i915->drm, "BAR%d resized to %dM\n", resno, 1 << bar_size);
> +}
> +
> +/* BAR size starts from 1MB - 2^20 */
> +#define BAR_SIZE_SHIFT 20
> +static resource_size_t
> +__lmem_rebar_size(struct drm_i915_private *i915, int resno)
> +{
> +	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> +	u32 rebar =3D pci_rebar_get_possible_sizes(pdev, resno);
> +	resource_size_t size;
> +
> +	if (!rebar)
> +		return 0;
> +
> +	size =3D 1ULL << (__fls(rebar) + BAR_SIZE_SHIFT);
> +
> +	if (size <=3D pci_resource_len(pdev, resno))
> +		return 0;
> +
> +	return size;
> +}
> +
> +#define LMEM_BAR_NUM 2
> +static void i915_resize_lmem_bar(struct drm_i915_private *i915)
> +{
> +	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> +	struct pci_bus *root =3D pdev->bus;
> +	struct resource *root_res;
> +	resource_size_t rebar_size =3D __lmem_rebar_size(i915, LMEM_BAR_NUM);
> +	u32 pci_cmd;
> +	int i;
> +
> +	if (!rebar_size)
> +		return;
> +
> +	/* Find out if root bus contains 64bit memory addressing */
> +	while (root->parent)
> +		root =3D root->parent;
> +
> +	pci_bus_for_each_resource(root, root_res, i) {
> +		if (root_res && root_res->flags & (IORESOURCE_MEM |
> +					IORESOURCE_MEM_64) && root_res->start > 0x100000000ull)
> +			break;
> +	}
> +
> +	/* pci_resize_resource will fail anyways */
> +	if (!root_res) {
> +		drm_info(&i915->drm, "Can't resize LMEM BAR - platform support is miss=
ing\n");
> +		return;
> +	}
> +
> +	/* First disable PCI memory decoding references */
> +	pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
> +	pci_write_config_dword(pdev, PCI_COMMAND,
> +			       pci_cmd & ~PCI_COMMAND_MEMORY);
> +
> +	__resize_bar(i915, LMEM_BAR_NUM, rebar_size);
> +
> +	pci_assign_unassigned_bus_resources(pdev->bus);
> +	pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
> +}

Doesn't feel like the above code belongs in this file. The file is
supposed to be very high level. The mchbar stuff is the only low level
thing here, and that feels out of place too. Maybe this and the mchbar
stuff belong in a new file.

BR,
Jani.


> +
>  /**
>   * i915_driver_early_probe - setup state not requiring device access
>   * @dev_priv: device private
> @@ -852,6 +941,9 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>=20=20
>  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
>=20=20
> +	if (HAS_LMEM(i915))
> +		i915_resize_lmem_bar(i915);
> +
>  	intel_vgpu_detect(i915);
>=20=20
>  	ret =3D intel_gt_probe_all(i915);

--=20
Jani Nikula, Intel Open Source Graphics Center
