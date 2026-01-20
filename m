Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C29AD3C41A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 10:50:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C425510E5A2;
	Tue, 20 Jan 2026 09:50:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fHHSvOVE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A81810E5A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jan 2026 09:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768902650; x=1800438650;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uWVBrp1ihRRZbMWcferwl6wKJ6a+x1TLIvAzUUYPLLU=;
 b=fHHSvOVExI6ptYaCFf1vOrTUqqOwhTkYqYhw8HK/PSJTXcMjQ5Mgzua7
 dG8o4pTTcvkwTGKBjaE728xyJuASEyH73oiPkTfupYdUF6WjjnTPwoCD6
 Xu4v0U2NsrZfDjSxs38F1xuN8eZoS52H7TFKwXxK1dKIXXzqMaMCh0+gd
 GgTybD3r24WoN6ddEE8bAoAMkx7RnjVfhyQo4ZN93so7gKqcT8TFJkc+O
 PkCi/PF3ir00q12wYrLbIZtQkVh091oKtP6kkbnaVfKmKMpEitNeppsTC
 5UjMu17G4n/+Ybu9DCgFPS7DN+fovpJb9czpuDjwI1gJJOE1SYhxKLlPO w==;
X-CSE-ConnectionGUID: TSukYOShQSeTCh73O4tyfg==
X-CSE-MsgGUID: AGyrA0wrS0WhzijFpIzK7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="80408864"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="80408864"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 01:50:50 -0800
X-CSE-ConnectionGUID: FEWwSkMKRkeedI3PcoAkew==
X-CSE-MsgGUID: v3O4+WjYQbW7TzIeZHy/5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="205979760"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 01:50:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jia Yao <jia.yao@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Jia Yao <jia.yao@intel.com>, Alex Zuo <alex.zuo@intel.com>, Shuicheng
 Lin <shuicheng.lin@intel.com>, Askar Safin <safinaskar@gmail.com>, Pingfan
 Liu <piliu@redhat.com>, Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915: Clearing the Memory Space Enable bit when
 disabling i915
In-Reply-To: <20260120044203.2436044-1-jia.yao@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20260120044203.2436044-1-jia.yao@intel.com>
Date: Tue, 20 Jan 2026 11:50:43 +0200
Message-ID: <7098d45cb853f44707c376a8cbad123daf963cb9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 20 Jan 2026, Jia Yao <jia.yao@intel.com> wrote:
> In a kexec reboot scenario, the GPU's Global Graphics Translation Table
> (GGTT) retains its previous state after the kernel is reloaded, until i915
> reinitializes the GGTT.
>
> The simple-framebuffer driver is initialized before i915 and accesses the
> PCIe memory space (GPU aperture) through outdated GGTT entries. This leads
> to invalid physical memory accesses, causing GPF or data corruption.
>
> To prevent such issues, the Memory Space Enable (MSE) bit in the PCI Command
> Register is cleared during i915_driver_shutdown. This disables all PCIe
> memory space access (including MMIO and aperture) at the hardware level.
> After the kernel is reloaded, access to the PCIe memory space will be
> forbidden until i915 is re-initialized.
>
> Since disabling PCIe memory space affects all MMIO operations, PXP shutdown
> needs to be completed before this point. Calls intel_pxp_fini() before
> disabling memory space to ensure PXP cleanup can still access MMIO registers.
>
> v2:
>   - follow brace style
>
> v3:
>   - revise description
>
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14598
> Cc: Alex Zuo <alex.zuo@intel.com>
> Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: Askar Safin <safinaskar@gmail.com>
> Cc: Pingfan Liu <piliu@redhat.com>
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Jia Yao <jia.yao@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 35 +++++++++++++++++++++++++++---
>  1 file changed, 32 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index b46cb54ef5dc..766f85726b67 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -118,6 +118,33 @@
>  
>  static const struct drm_driver i915_drm_driver;
>  
> +static int i915_enable_device(struct pci_dev *pdev)
> +{
> +	u32 cmd;
> +	int ret;
> +
> +	ret = pci_enable_device(pdev);
> +	if (ret)
> +		return ret;
> +
> +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> +	if (!(cmd & PCI_COMMAND_MEMORY))
> +		pci_write_config_dword(pdev, PCI_COMMAND, cmd | PCI_COMMAND_MEMORY);
> +
> +	return 0;
> +}
> +
> +static void i915_disable_device(struct pci_dev *pdev)
> +{
> +	u32 cmd;
> +
> +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> +	if (cmd & PCI_COMMAND_MEMORY)
> +		pci_write_config_dword(pdev, PCI_COMMAND, cmd & ~PCI_COMMAND_MEMORY);
> +
> +	pci_disable_device(pdev);
> +}
> +
>  static int i915_workqueues_init(struct drm_i915_private *dev_priv)
>  {
>  	/*
> @@ -788,7 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	struct intel_display *display;
>  	int ret;
>  
> -	ret = pci_enable_device(pdev);
> +	ret = i915_enable_device(pdev);
>  	if (ret) {
>  		pr_err("Failed to enable graphics device: %pe\n", ERR_PTR(ret));
>  		return ret;
> @@ -796,7 +823,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  	i915 = i915_driver_create(pdev, ent);
>  	if (IS_ERR(i915)) {
> -		pci_disable_device(pdev);
> +		i915_disable_device(pdev);
>  		return PTR_ERR(i915);
>  	}
>  
> @@ -885,7 +912,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  	i915_driver_late_release(i915);
>  out_pci_disable:
> -	pci_disable_device(pdev);
> +	i915_disable_device(pdev);
>  	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
>  	return ret;
>  }
> @@ -1003,6 +1030,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  
>  	intel_dmc_suspend(display);
>  
> +	intel_pxp_fini(i915);

This is now called twice. Please fix it.

>  	i915_gem_suspend(i915);
>  
>  	/*
> @@ -1020,6 +1048,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  
>  	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
> +	i915_disable_device(to_pci_dev(i915->drm.dev));
>  }
>  
>  static bool suspend_to_idle(struct drm_i915_private *dev_priv)

-- 
Jani Nikula, Intel
