Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A40254922F7
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:40:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95EAC10E9E3;
	Tue, 18 Jan 2022 09:40:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.skyhub.de (mail.skyhub.de [IPv6:2a01:4f8:190:11c2::b:1457])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B8E10E9E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 09:40:53 +0000 (UTC)
Received: from zn.tnic (dslb-088-067-202-008.088.067.pools.vodafone-ip.de
 [88.67.202.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id B641A1EC018C;
 Tue, 18 Jan 2022 10:40:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1642498847;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=1krZRAcW2/qQOgGBfGLOIoGvqo818a87chwmI8ChMGc=;
 b=R3Ufj3Pf/CNEgauoGpET//WwMKJG+l61x23bQgi9j9qbI/UOOuP+c//D/a/Y1cg/zM1qNI
 DnrbsJI+HcRo/41FnqORyxRyzSKvdDt2Hkno7oHAJFUFUaFRXtq5xfUPWrizsxq6LSH/5V
 8cKjJ3CaWuTO+CfsbKRH/JVUGmMWEAs=
Date: Tue, 18 Jan 2022 10:40:50 +0100
From: Borislav Petkov <bp@alien8.de>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YeaLIs9t0jhovC28@zn.tnic>
References: <20220114002843.2083382-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220114002843.2083382-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 1/5] x86/quirks: Fix stolen detection
 with integrated + discrete GPU
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
 intel-gfx@lists.freedesktop.org, x86@kernel.org, stable@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

n Thu, Jan 13, 2022 at 04:28:39PM -0800, Lucas De Marchi wrote:
> early_pci_scan_bus() does a depth-first traversal, possibly calling
> the quirk functions for each device based on vendor, device and class
> from early_qrk table. intel_graphics_quirks() however uses PCI_ANY_ID
> and does additional filtering in the quirk.
> 
> If there is an Intel integrated + discrete GPU the quirk may be called
> first for the discrete GPU based on the PCI topology. Then we will fail
> to reserve the system stolen memory for the integrated GPU, because we
> will already have marked the quirk as "applied".

Who is "we"?

Please use passive voice in your commit message: no "we" or "I", etc,
and describe your changes in imperative mood.

Bottom line is: personal pronouns are ambiguous in text, especially with
so many parties/companies/etc developing the kernel so let's avoid them
please.

> This was reproduced in a setup with Alderlake-P (integrated) + DG2
> (discrete), with the following PCI topology:
> 
> 	- 00:01.0 Bridge
> 	  `- 03:00.0 DG2
> 	- 00:02.0 Integrated GPU
> 
> So, stop using the QFLAG_APPLY_ONCE flag, replacing it with a static
> local variable. We can set this variable in the right place, inside
> intel_graphics_quirks(), only when the quirk was actually applied, i.e.
> when we find the integrated GPU based on the intel_early_ids table.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
> 
> v5: apply fix before the refactor
> 
>  arch/x86/kernel/early-quirks.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> index 1ca3a56fdc2d..de9a76eb544e 100644
> --- a/arch/x86/kernel/early-quirks.c
> +++ b/arch/x86/kernel/early-quirks.c
> @@ -589,10 +589,14 @@ intel_graphics_stolen(int num, int slot, int func,
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
>  	device = read_pci_config_16(num, slot, func, PCI_DEVICE_ID);
>  
>  	for (i = 0; i < ARRAY_SIZE(intel_early_ids); i++) {
> @@ -605,6 +609,8 @@ static void __init intel_graphics_quirks(int num, int slot, int func)
>  
>  		intel_graphics_stolen(num, slot, func, early_ops);
>  
> +		quirk_applied = true;
> +
>  		return;
>  	}

So I wonder: why can't you simply pass in a static struct chipset *
pointer into the early_qrk[i].f function and in there you can set
QFLAG_APPLIED or so, so that you can mark that the quirk is applied by
using the nice, per-quirk flags someone has already added instead of
this ugly static variable?

Patch 3 especially makes me go, huh?

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
