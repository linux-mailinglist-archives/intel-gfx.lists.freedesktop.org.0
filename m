Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5816654C684
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 12:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36F1610E073;
	Wed, 15 Jun 2022 10:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E20DD10E073
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 10:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655290301; x=1686826301;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=qZfzmDfLl05i35HAeRc/WfbbYZYKyo0uTpm5DJfva38=;
 b=mAubn8VpVjnB53sTP1pPfeX7oCgEkY1p56tTdJioYvajT3bAch3v33au
 KxrXLm00CXNVJn0aves+01SlsXdX3EaBB/A9PQ7jEFfR88SIyielh2qT2
 4KyFHoI+gzbCAGE0z8UT4a7EnihxdKNscokg8s53OcdlhvABqHlCuVl48
 Ovx4OQ8+YwR98b8K07ymGEVqLFqFdmQ+Hr+lEDs7Ja6fxsOdexpwyXwu3
 Ii2qBNzBRD3wLZ0bvB51jgOBBx1LJG1ILqYGsbgpI6t0HJjcjDimyMKHp
 DukVIThyvcL79ftHQ0L64zglPeHOC+rB4DJKZkUNfbru7oiHYd0zalpII g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="259376909"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="259376909"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 03:51:41 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="712886435"
Received: from roluwafu-mobl1.ger.corp.intel.com (HELO [10.213.196.200])
 ([10.213.196.200])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 03:51:40 -0700
Message-ID: <a1e8c09f-f2c0-a31e-58fa-d69443cbfcfc@intel.com>
Date: Wed, 15 Jun 2022 11:51:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-GB
To: priyanka.dandamudi@intel.com, intel-gfx@lists.freedesktop.org
References: <20220615054306.1175736-1-priyanka.dandamudi@intel.com>
 <20220615054306.1175736-2-priyanka.dandamudi@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220615054306.1175736-2-priyanka.dandamudi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add support for LMEM PCIe
 resizable bar
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

On 15/06/2022 06:43, priyanka.dandamudi@intel.com wrote:
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
> Signed-off-by: Michał Winiarski <michal.winiarski@intel.com>
> Cc: Stuart Summers <stuart.summers@intel.com>
> Cc: Michael J Ruhl <michael.j.ruhl@intel.com>
> Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_driver.c | 103 +++++++++++++++++++++++++++++
>   1 file changed, 103 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index b47746152d97..8d33a6a31675 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -303,6 +303,106 @@ static void sanitize_gpu(struct drm_i915_private *i915)
>   		__intel_gt_reset(to_gt(i915), ALL_ENGINES);
>   }
>   
> +static void __release_bars(struct pci_dev *pdev)
> +{
> +	int resno;
> +
> +	for (resno = PCI_STD_RESOURCES; resno < PCI_STD_RESOURCE_END; resno++) {
> +		if (pci_resource_len(pdev, resno))
> +			pci_release_resource(pdev, resno);
> +	}
> +}
> +
> +static void
> +__resize_bar(struct drm_i915_private *i915, int resno, resource_size_t size)
> +{
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +	int bar_size = pci_rebar_bytes_to_size(size);
> +	int ret;
> +
> +	__release_bars(pdev);
> +
> +	ret = pci_resize_resource(pdev, resno, bar_size);
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
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +	u32 rebar = pci_rebar_get_possible_sizes(pdev, resno);
> +	resource_size_t size;
> +
> +	if (!rebar)
> +		return 0;
> +
> +	size = 1ULL << (__fls(rebar) + BAR_SIZE_SHIFT);
> +
> +	if (size <= pci_resource_len(pdev, resno))
> +		return 0;
> +
> +	return size;
> +}
> +
> +/**
> + * i915_resize_lmem_bar - resize local memory BAR
> + * @i915: device private

We don't normally add kernel-doc for static functions.

There are also some checkpatch warnings that need to be fixed, but 
otherwise this looks reasonable to me, and the flow seems to closely 
match what amdgpu is already doing with their bar resizing stuff,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> + *
> + * This function will attempt to resize LMEM bar to make all memory accessible.
> + * Whether it will be successful depends on both device and platform
> + * capabilities. Any errors are non-critical, even if resize fails, we go back
> + * to the previous configuration.
> + */
> +#define LMEM_BAR_NUM 2
> +static void i915_resize_lmem_bar(struct drm_i915_private *i915)
> +{
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +	struct pci_bus *root = pdev->bus;
> +	struct resource *root_res;
> +	resource_size_t rebar_size = __lmem_rebar_size(i915, LMEM_BAR_NUM);
> +	u32 pci_cmd;
> +	int i;
> +
> +	if (!rebar_size)
> +		return;
> +
> +	/* Find out if root bus contains 64bit memory addressing */
> +	while (root->parent)
> +		root = root->parent;
> +
> +	pci_bus_for_each_resource(root, root_res, i) {
> +		if (root_res &&
> +				root_res->flags & (IORESOURCE_MEM | IORESOURCE_MEM_64) &&
> +				root_res->start > 0x100000000ull)
> +			break;
> +	}
> +
> +	/* pci_resize_resource will fail anyways */
> +	if (!root_res) {
> +		drm_info(&i915->drm,
> +				"Can't resize LMEM BAR - platform support is missing\n");
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
> +
>   /**
>    * i915_driver_early_probe - setup state not requiring device access
>    * @dev_priv: device private
> @@ -836,6 +936,9 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   
>   	disable_rpm_wakeref_asserts(&i915->runtime_pm);
>   
> +	if (HAS_LMEM(i915))
> +		i915_resize_lmem_bar(i915);
> +
>   	intel_vgpu_detect(i915);
>   
>   	ret = intel_gt_probe_all(i915);
