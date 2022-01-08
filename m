Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BEEC4880FC
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jan 2022 03:53:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF27510E5EC;
	Sat,  8 Jan 2022 02:53:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5767110E5F7
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jan 2022 02:53:38 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 78129B827D0;
 Sat,  8 Jan 2022 02:53:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5A7AC36AE5;
 Sat,  8 Jan 2022 02:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641610415;
 bh=4uR+0ZgWiqdLzMr/DtgFq+lVAYr30BykMhz055jf7Mk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=hLbU0fiQTw//B6EBNVYf3FqGLIogoWMggEdVqlP0Jz6iUKLB3CV3rIHl6AbNdURCX
 K3hJcyEo3d8HD1EH/b07HHzJJ0k3Ma3BCWSFxNY5jBl08vaL3cQumnAP4uoc548czo
 JyprVJ5bpmOUOa15cZczH0/e5lkTwyO2DYozOOsS1dcV1l2R/hmH7LXbt7qqnNcjA0
 rQEgVJM8K4XOb2pPMfssYykA3S4DfnJyfgcxCqqyesIDrR/dbyxCViLosEAuMZeC9J
 r8DPxRc8bkh8XcRUKUqpj+j3uoY8Wm5VptdhXLEGGfkWsMpQXvw8gaei9E5hq98Sdi
 ZjJaLlvVxtxeg==
Date: Fri, 7 Jan 2022 20:53:32 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20220108025332.GA443266@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220107210516.907834-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 1/3] x86/quirks: Replace QFLAG_APPLY_ONCE
 with static locals
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>, linux-pci@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 07, 2022 at 01:05:14PM -0800, Lucas De Marchi wrote:
> The flags are only used to mark a quirk to be called once and nothing
> else. Also, that logic may not be appropriate if the quirk wants to
> do additional filtering and set quirk ass applied by itself.

s/ass applied/as applied/

> So replace the uses of QFLAG_APPLY_ONCE with static local variables in
> the few quirks that use this logic and remove all the flags logic.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
> 
> v3: Keep in this patch only the mechanical change to move from
> QFLAG_APPLY_ONCE to static locals. Differently than v2, we don't try to
> set quirk_applied in nvidia_bugs() and via_bugs() only when the
> global resource is set - this patch is a mechanical move only and
> shouldn't change any behavior. For intel_graphics_quirks(), we will move
> it to the right place in a subsequent patch.
> 
>  arch/x86/kernel/early-quirks.c | 55 +++++++++++++++++++++-------------
>  1 file changed, 34 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> index 391a4e2b8604..8b689c2b8cc7 100644
> --- a/arch/x86/kernel/early-quirks.c
> +++ b/arch/x86/kernel/early-quirks.c
> @@ -57,6 +57,13 @@ static void __init fix_hypertransport_config(int num, int slot, int func)
>  static void __init via_bugs(int  num, int slot, int func)
>  {
>  #ifdef CONFIG_GART_IOMMU
> +	static bool quirk_applied __initdata;
> +
> +	if (quirk_applied)
> +		return;
> +
> +	quirk_applied = true;
> +
>  	if ((max_pfn > MAX_DMA32_PFN ||  force_iommu) &&
>  	    !gart_iommu_aperture_allowed) {
>  		printk(KERN_INFO
> @@ -81,6 +88,13 @@ static void __init nvidia_bugs(int num, int slot, int func)
>  {
>  #ifdef CONFIG_ACPI
>  #ifdef CONFIG_X86_IO_APIC
> +	static bool quirk_applied __initdata;
> +
> +	if (quirk_applied)
> +		return;
> +
> +	quirk_applied = true;
> +
>  	/*
>  	 * Only applies to Nvidia root ports (bus 0) and not to
>  	 * Nvidia graphics cards with PCI ports on secondary buses.
> @@ -587,10 +601,16 @@ intel_graphics_stolen(int num, int slot, int func,
>  
>  static void __init intel_graphics_quirks(int num, int slot, int func)
>  {
> +	static bool quirk_applied __initdata;
>  	const struct intel_early_ops *early_ops;
>  	u16 device;
>  	int i;
>  
> +	if (quirk_applied)
> +		return;
> +
> +	quirk_applied = true;
> +
>  	device = read_pci_config_16(num, slot, func, PCI_DEVICE_ID);
>  
>  	for (i = 0; i < ARRAY_SIZE(intel_early_ids); i++) {
> @@ -673,37 +693,33 @@ static void __init apple_airport_reset(int bus, int slot, int func)
>  	early_iounmap(mmio, BCM4331_MMIO_SIZE);
>  }
>  
> -#define QFLAG_APPLY_ONCE 	0x1
> -#define QFLAG_APPLIED		0x2
> -#define QFLAG_DONE		(QFLAG_APPLY_ONCE|QFLAG_APPLIED)
>  struct chipset {
>  	u32 vendor;
>  	u32 device;
>  	u32 class;
>  	u32 class_mask;
> -	u32 flags;
>  	void (*f)(int num, int slot, int func);
>  };
>  
>  static struct chipset early_qrk[] __initdata = {
>  	{ PCI_VENDOR_ID_NVIDIA, PCI_ANY_ID,
> -	  PCI_CLASS_BRIDGE_PCI, PCI_ANY_ID, QFLAG_APPLY_ONCE, nvidia_bugs },
> +	  PCI_CLASS_BRIDGE_PCI, PCI_ANY_ID, nvidia_bugs },
>  	{ PCI_VENDOR_ID_VIA, PCI_ANY_ID,
> -	  PCI_CLASS_BRIDGE_PCI, PCI_ANY_ID, QFLAG_APPLY_ONCE, via_bugs },
> +	  PCI_CLASS_BRIDGE_PCI, PCI_ANY_ID, via_bugs },
>  	{ PCI_VENDOR_ID_AMD, PCI_DEVICE_ID_AMD_K8_NB,
> -	  PCI_CLASS_BRIDGE_HOST, PCI_ANY_ID, 0, fix_hypertransport_config },
> +	  PCI_CLASS_BRIDGE_HOST, PCI_ANY_ID, fix_hypertransport_config },
>  	{ PCI_VENDOR_ID_ATI, PCI_DEVICE_ID_ATI_IXP400_SMBUS,
> -	  PCI_CLASS_SERIAL_SMBUS, PCI_ANY_ID, 0, ati_bugs },
> +	  PCI_CLASS_SERIAL_SMBUS, PCI_ANY_ID, ati_bugs },
>  	{ PCI_VENDOR_ID_ATI, PCI_DEVICE_ID_ATI_SBX00_SMBUS,
> -	  PCI_CLASS_SERIAL_SMBUS, PCI_ANY_ID, 0, ati_bugs_contd },
> +	  PCI_CLASS_SERIAL_SMBUS, PCI_ANY_ID, ati_bugs_contd },
>  	{ PCI_VENDOR_ID_INTEL, 0x3403, PCI_CLASS_BRIDGE_HOST,
> -	  PCI_BASE_CLASS_BRIDGE, 0, intel_remapping_check },
> +	  PCI_BASE_CLASS_BRIDGE, intel_remapping_check },
>  	{ PCI_VENDOR_ID_INTEL, 0x3405, PCI_CLASS_BRIDGE_HOST,
> -	  PCI_BASE_CLASS_BRIDGE, 0, intel_remapping_check },
> +	  PCI_BASE_CLASS_BRIDGE, intel_remapping_check },
>  	{ PCI_VENDOR_ID_INTEL, 0x3406, PCI_CLASS_BRIDGE_HOST,
> -	  PCI_BASE_CLASS_BRIDGE, 0, intel_remapping_check },
> +	  PCI_BASE_CLASS_BRIDGE, intel_remapping_check },
>  	{ PCI_VENDOR_ID_INTEL, PCI_ANY_ID, PCI_CLASS_DISPLAY_VGA, PCI_ANY_ID,
> -	  QFLAG_APPLY_ONCE, intel_graphics_quirks },
> +	  intel_graphics_quirks },
>  	/*
>  	 * HPET on the current version of the Baytrail platform has accuracy
>  	 * problems: it will halt in deep idle state - so we disable it.
> @@ -713,9 +729,9 @@ static struct chipset early_qrk[] __initdata = {
>  	 *    http://www.intel.com/content/dam/www/public/us/en/documents/datasheets/atom-z8000-datasheet-vol-1.pdf
>  	 */
>  	{ PCI_VENDOR_ID_INTEL, 0x0f00,
> -		PCI_CLASS_BRIDGE_HOST, PCI_ANY_ID, 0, force_disable_hpet},
> +	  PCI_CLASS_BRIDGE_HOST, PCI_ANY_ID, force_disable_hpet},
>  	{ PCI_VENDOR_ID_BROADCOM, 0x4331,
> -	  PCI_CLASS_NETWORK_OTHER, PCI_ANY_ID, 0, apple_airport_reset},
> +	  PCI_CLASS_NETWORK_OTHER, PCI_ANY_ID, apple_airport_reset},
>  	{}
>  };
>  
> @@ -756,12 +772,9 @@ static int __init check_dev_quirk(int num, int slot, int func)
>  			((early_qrk[i].device == PCI_ANY_ID) ||
>  			(early_qrk[i].device == device)) &&
>  			(!((early_qrk[i].class ^ class) &
> -			    early_qrk[i].class_mask))) {
> -				if ((early_qrk[i].flags &
> -				     QFLAG_DONE) != QFLAG_DONE)
> -					early_qrk[i].f(num, slot, func);
> -				early_qrk[i].flags |= QFLAG_APPLIED;
> -			}
> +			    early_qrk[i].class_mask)))
> +				early_qrk[i].f(num, slot, func);
> +
>  	}
>  
>  	type = read_pci_config_byte(num, slot, func,
> -- 
> 2.34.1
> 
