Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 664124817B7
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Dec 2021 00:28:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98EBE89E5B;
	Wed, 29 Dec 2021 23:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA68C89E5B
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Dec 2021 23:27:59 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 02283B81A3F;
 Wed, 29 Dec 2021 23:27:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CD93C36AE9;
 Wed, 29 Dec 2021 23:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640820474;
 bh=x7P2ch0i4etowWpkGZ5rKwTj5AaloLivOslxZTTtxS8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=JQsMt6J95GbH7RN2TlypeICZ2zOWDDs7GYNNTpMBl9mMcBOAxJrCLRm6X4h9Wxv4V
 SBHmzgjjgZr9vly5cd4ijfjIQpm9whEMG0H2sSm1AGBJWqOqiopGBysOcahMK+p3pl
 NzrifbQbF9Z/y5OvPIKU4c9Ahfc6bSruByXIX2KAb7StQWs3cBdRUGs0GaBiiHC1YJ
 iD67BCOi4jFGKWN0u7jOHvLOHPBK580NClFlro8eHIvmkl2CHNNFZtmnd/IahAz0D/
 Aw99Gnho4WWpxG0vR6s3m+0AbHJEXSzbAHjpDVD2LLoam24iBhqsfv2WSnDFo4u1Je
 mQddPfpQjAqcg==
Date: Wed, 29 Dec 2021 17:27:52 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20211229232752.GA1712676@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211218061313.100571-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] x86/quirks: Fix logic to apply quirk once
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

On Fri, Dec 17, 2021 at 10:13:13PM -0800, Lucas De Marchi wrote:
> When using QFLAG_APPLY_ONCE we make sure the quirk is applied only once.

Maybe "called" only once, since you're about to add a distinction
between "called" and "applied"?

I'm not really sure the concept of QFLAG_APPLY_ONCE, QFLAG_APPLIED,
QFLAG_DONE is general purpose enough to be handled at the level of
check_dev_quirk().

We don't have anything like that for the regular PCI fixups (see
pci_do_fixups()).  If a regular fixup needed something like that, it
would use a static local variable.  Maybe that would be simpler
overall here, too, since the quirk would be *always* called for
matching devices, and the "one-time" logic would be encapsulated in
the quirk itself where it's more obvious?

> This is useful when it's enough one device to trigger a certain
> condition or when the resource in each that applies is global to the
> system rather than local to the device.
> 
> However we call the quirk handler based on vendor, class, and device,
> allowing the specific handler to do additional filtering. In that case
> check_dev_quirk() may incorrectly mark the quirk as applied when it's
> not. This is particularly bad for intel_graphics_quirks() that uses
> PCI_ANY_ID and then compares with a long list of devices. This hasn't
> been problematic so far because those devices are integrated GPUs and
> there can only be one in the system.  However as Intel starts to
> release discrete cards, this condition is no longer true and we fail to
> reserve the stolen memory (for the integrated gpu) depending on the bus
> topology: if the traversal finds the discrete card first, for which
> there is no system stolen memory, we will fail to reserve it for the
> integrated card.

s/integrated gpu/integrated GPU/ (to match previous use)

> This fixes the stolen memory reservation for an Alderlake-P system with
> one additional DG2. In this system we have:

DG2?

> 	- 00:01.0 Bridge
> 	  `- 03:00.0 DG2
> 	- Alderklake-P's integrated graphics

s/Alderklake-P/Alderlake-P/

Might be nice to include the integrated GPU PCI address to be parallel
with the bridge and DG2.

> Since we do a depth-first traversal, when we call the handler because of
> DG2 we were marking it as already being applied and never reserving the
> stolen memory for Alderlake-P.
> 
> Here we change the quirk fucntions to return bool in case it applied a
> quirk so we only flag it as applied when that really happened. This only
> makes a difference for quirks using QFLAG_APPLY_ONCE, so all the others
> simply returns true in order to avoid unnecessary complication.

s/fucntions/functions/
s/returns true/return true/

I would consider splitting this into two patches:

  1) Change the quirk signature, make them all return "true", and
  update check_dev_quirk().  This would have no functional impact.

  2) Update intel_graphics_quirks() to return "false" when it doesn't
  reserve the stolen memory.

Then the important change will be in a small patch by itself and will
be easier to understand and revert if that should be necessary.

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  arch/x86/kernel/early-quirks.c | 75 ++++++++++++++++++++++------------
>  1 file changed, 49 insertions(+), 26 deletions(-)
> 
> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> index 391a4e2b8604..5d235fe2a07a 100644
> --- a/arch/x86/kernel/early-quirks.c
> +++ b/arch/x86/kernel/early-quirks.c
> @@ -28,7 +28,7 @@
>  #include <asm/irq_remapping.h>
>  #include <asm/early_ioremap.h>
>  
> -static void __init fix_hypertransport_config(int num, int slot, int func)
> +static bool __init fix_hypertransport_config(int num, int slot, int func)
>  {
>  	u32 htcfg;
>  	/*
> @@ -51,10 +51,10 @@ static void __init fix_hypertransport_config(int num, int slot, int func)
>  		}
>  	}
>  
> -
> +	return true;
>  }
>  
> -static void __init via_bugs(int  num, int slot, int func)
> +static bool __init via_bugs(int  num, int slot, int func)
>  {
>  #ifdef CONFIG_GART_IOMMU
>  	if ((max_pfn > MAX_DMA32_PFN ||  force_iommu) &&
> @@ -63,8 +63,12 @@ static void __init via_bugs(int  num, int slot, int func)
>  		       "Looks like a VIA chipset. Disabling IOMMU."
>  		       " Override with iommu=allowed\n");
>  		gart_iommu_aperture_disabled = 1;
> +
> +		return true;
>  	}
>  #endif
> +
> +	return false;
>  }
>  
>  #ifdef CONFIG_ACPI
> @@ -77,7 +81,7 @@ static int __init nvidia_hpet_check(struct acpi_table_header *header)
>  #endif /* CONFIG_X86_IO_APIC */
>  #endif /* CONFIG_ACPI */
>  
> -static void __init nvidia_bugs(int num, int slot, int func)
> +static bool __init nvidia_bugs(int num, int slot, int func)
>  {
>  #ifdef CONFIG_ACPI
>  #ifdef CONFIG_X86_IO_APIC
> @@ -86,7 +90,7 @@ static void __init nvidia_bugs(int num, int slot, int func)
>  	 * Nvidia graphics cards with PCI ports on secondary buses.
>  	 */
>  	if (num)
> -		return;
> +		return false;
>  
>  	/*
>  	 * All timer overrides on Nvidia are
> @@ -96,7 +100,7 @@ static void __init nvidia_bugs(int num, int slot, int func)
>  	 * at least allow a command line override.
>  	 */
>  	if (acpi_use_timer_override)
> -		return;
> +		return false;
>  
>  	if (acpi_table_parse(ACPI_SIG_HPET, nvidia_hpet_check)) {
>  		acpi_skip_timer_override = 1;
> @@ -105,11 +109,14 @@ static void __init nvidia_bugs(int num, int slot, int func)
>  		       "timer override.\n");
>  		printk(KERN_INFO "If you got timer trouble "
>  			"try acpi_use_timer_override\n");
> +
> +		return true;
>  	}
>  #endif
>  #endif
>  	/* RED-PEN skip them on mptables too? */
>  
> +	return false;
>  }
>  
>  #if defined(CONFIG_ACPI) && defined(CONFIG_X86_IO_APIC)
> @@ -131,13 +138,13 @@ static u32 __init ati_ixp4x0_rev(int num, int slot, int func)
>  	return d;
>  }
>  
> -static void __init ati_bugs(int num, int slot, int func)
> +static bool __init ati_bugs(int num, int slot, int func)
>  {
>  	u32 d;
>  	u8  b;
>  
>  	if (acpi_use_timer_override)
> -		return;
> +		return true;
>  
>  	d = ati_ixp4x0_rev(num, slot, func);
>  	if (d  < 0x82)
> @@ -155,6 +162,8 @@ static void __init ati_bugs(int num, int slot, int func)
>  		printk(KERN_INFO "If you got timer trouble "
>  		       "try acpi_use_timer_override\n");
>  	}
> +
> +	return true;
>  }
>  
>  static u32 __init ati_sbx00_rev(int num, int slot, int func)
> @@ -167,7 +176,7 @@ static u32 __init ati_sbx00_rev(int num, int slot, int func)
>  	return d;
>  }
>  
> -static void __init ati_bugs_contd(int num, int slot, int func)
> +static bool __init ati_bugs_contd(int num, int slot, int func)
>  {
>  	u32 d, rev;
>  
> @@ -181,10 +190,10 @@ static void __init ati_bugs_contd(int num, int slot, int func)
>  	 * SB800: revisions 0x40, 0x41, ...
>  	 */
>  	if (rev >= 0x39)
> -		return;
> +		return true;
>  
>  	if (acpi_use_timer_override)
> -		return;
> +		return true;
>  
>  	/* check for IRQ0 interrupt swap */
>  	d = read_pci_config(num, slot, func, 0x64);
> @@ -197,18 +206,22 @@ static void __init ati_bugs_contd(int num, int slot, int func)
>  		printk(KERN_INFO "If you got timer trouble "
>  		       "try acpi_use_timer_override\n");
>  	}
> +
> +	return true;
>  }
>  #else
> -static void __init ati_bugs(int num, int slot, int func)
> +static bool __init ati_bugs(int num, int slot, int func)
>  {
> +	return true;
>  }
>  
> -static void __init ati_bugs_contd(int num, int slot, int func)
> +static bool __init ati_bugs_contd(int num, int slot, int func)
>  {
> +	return true;
>  }
>  #endif
>  
> -static void __init intel_remapping_check(int num, int slot, int func)
> +static bool __init intel_remapping_check(int num, int slot, int func)
>  {
>  	u8 revision;
>  	u16 device;
> @@ -226,6 +239,8 @@ static void __init intel_remapping_check(int num, int slot, int func)
>  		set_irq_remapping_broken();
>  	else if (device == 0x3405 && revision == 0x22)
>  		set_irq_remapping_broken();
> +
> +	return true;
>  }
>  
>  /*
> @@ -585,7 +600,7 @@ intel_graphics_stolen(int num, int slot, int func,
>  	e820__update_table(e820_table);
>  }
>  
> -static void __init intel_graphics_quirks(int num, int slot, int func)
> +static bool __init intel_graphics_quirks(int num, int slot, int func)
>  {
>  	const struct intel_early_ops *early_ops;
>  	u16 device;
> @@ -603,16 +618,20 @@ static void __init intel_graphics_quirks(int num, int slot, int func)
>  
>  		intel_graphics_stolen(num, slot, func, early_ops);
>  
> -		return;
> +		return true;
>  	}
> +
> +	return false;
>  }
>  
> -static void __init force_disable_hpet(int num, int slot, int func)
> +static bool __init force_disable_hpet(int num, int slot, int func)
>  {
>  #ifdef CONFIG_HPET_TIMER
>  	boot_hpet_disable = true;
>  	pr_info("x86/hpet: Will disable the HPET for this platform because it's not reliable\n");
>  #endif
> +
> +	return true;
>  }
>  
>  #define BCM4331_MMIO_SIZE	16384
> @@ -620,7 +639,7 @@ static void __init force_disable_hpet(int num, int slot, int func)
>  #define bcma_aread32(reg)	ioread32(mmio + 1 * BCMA_CORE_SIZE + reg)
>  #define bcma_awrite32(reg, val)	iowrite32(val, mmio + 1 * BCMA_CORE_SIZE + reg)
>  
> -static void __init apple_airport_reset(int bus, int slot, int func)
> +static bool __init apple_airport_reset(int bus, int slot, int func)
>  {
>  	void __iomem *mmio;
>  	u16 pmcsr;
> @@ -628,7 +647,7 @@ static void __init apple_airport_reset(int bus, int slot, int func)
>  	int i;
>  
>  	if (!x86_apple_machine)
> -		return;
> +		return true;
>  
>  	/* Card may have been put into PCI_D3hot by grub quirk */
>  	pmcsr = read_pci_config_16(bus, slot, func, BCM4331_PM_CAP + PCI_PM_CTRL);
> @@ -642,7 +661,7 @@ static void __init apple_airport_reset(int bus, int slot, int func)
>  		if ((pmcsr & PCI_PM_CTRL_STATE_MASK) != PCI_D0) {
>  			pr_err("pci 0000:%02x:%02x.%d: Cannot power up Apple AirPort card\n",
>  			       bus, slot, func);
> -			return;
> +			return true;
>  		}
>  	}
>  
> @@ -654,7 +673,7 @@ static void __init apple_airport_reset(int bus, int slot, int func)
>  	if (!mmio) {
>  		pr_err("pci 0000:%02x:%02x.%d: Cannot iomap Apple AirPort card\n",
>  		       bus, slot, func);
> -		return;
> +		return true;
>  	}
>  
>  	pr_info("Resetting Apple AirPort card (left enabled by EFI)\n");
> @@ -671,6 +690,8 @@ static void __init apple_airport_reset(int bus, int slot, int func)
>  	udelay(10);
>  
>  	early_iounmap(mmio, BCM4331_MMIO_SIZE);
> +
> +	return true;
>  }
>  
>  #define QFLAG_APPLY_ONCE 	0x1
> @@ -682,7 +703,7 @@ struct chipset {
>  	u32 class;
>  	u32 class_mask;
>  	u32 flags;
> -	void (*f)(int num, int slot, int func);
> +	bool (*f)(int num, int slot, int func);
>  };
>  
>  static struct chipset early_qrk[] __initdata = {
> @@ -757,11 +778,13 @@ static int __init check_dev_quirk(int num, int slot, int func)
>  			(early_qrk[i].device == device)) &&
>  			(!((early_qrk[i].class ^ class) &
>  			    early_qrk[i].class_mask))) {
> -				if ((early_qrk[i].flags &
> -				     QFLAG_DONE) != QFLAG_DONE)
> -					early_qrk[i].f(num, slot, func);
> -				early_qrk[i].flags |= QFLAG_APPLIED;
> +			if ((early_qrk[i].flags & QFLAG_DONE) != QFLAG_DONE) {
> +				bool applied = early_qrk[i].f(num, slot, func);
> +
> +				if (applied)
> +					early_qrk[i].flags |= QFLAG_APPLIED;
>  			}
> +		}
>  	}
>  
>  	type = read_pci_config_byte(num, slot, func,
> -- 
> 2.34.1
> 
