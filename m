Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 155E3492E3A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 20:14:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A2E10E130;
	Tue, 18 Jan 2022 19:14:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.skyhub.de (mail.skyhub.de [IPv6:2a01:4f8:190:11c2::b:1457])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA3B110E130
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 19:14:29 +0000 (UTC)
Received: from zn.tnic (dslb-088-067-202-008.088.067.pools.vodafone-ip.de
 [88.67.202.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 6673A1EC0495;
 Tue, 18 Jan 2022 20:14:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1642533262;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=ERiFXzh6NqwS4HsY/OsDLFVYh6aR15kreizWwmmn2Dk=;
 b=LWGg2KKjKGIPeoiWiKdeQBhPOZ7g99QefDy0/P3Fu27f2yI/KFr/20WVSDdGZcVZYR5430
 cPFezjkNTTVSQMGOTPf28mkDxcUrMfMiukBf2zq2CbP97aAhBCXHr6586P9DiEtdQB9pkF
 YmLa2GlWAhDpKnTEAzeAFiOTn9Cravk=
Date: Tue, 18 Jan 2022 20:14:24 +0100
From: Borislav Petkov <bp@alien8.de>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YecRkGidIS10N0md@zn.tnic>
References: <20220114002843.2083382-1-lucas.demarchi@intel.com>
 <YeaLIs9t0jhovC28@zn.tnic>
 <20220118163656.fzzkwubgoe5gz36k@ldmartin-desk2>
 <Yeb4WKOFNDNbx6tH@zn.tnic>
 <20220118190558.2ququ4vdfjuahicm@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220118190558.2ququ4vdfjuahicm@ldmartin-desk2>
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

On Tue, Jan 18, 2022 at 11:05:58AM -0800, Lucas De Marchi wrote:
> I think to make it similar how the PCI fixups work. Anyway, do you
> prefer that I change the QFLAG_APPLY_ONCE as above (including
> nvidia_bugs() and ati_bugs()) or a very minimal fix like below and
> nothing else?
> 
> ------8<------
> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> index 391a4e2b8604..7b2a3230c42a 100644
> --- a/arch/x86/kernel/early-quirks.c
> +++ b/arch/x86/kernel/early-quirks.c
> @@ -591,6 +591,13 @@ static void __init intel_graphics_quirks(int num, int slot, int func)
>  	u16 device;
>  	int i;
> +	/*
> +	 * Already reserved for integrated graphics, nothing to do for other
> +	 * (discrete) cards.
> +	 */
> +	if (resource_size(&intel_graphics_stolen_res))
> +		return;
> +
>  	device = read_pci_config_16(num, slot, func, PCI_DEVICE_ID);
>  	for (i = 0; i < ARRAY_SIZE(intel_early_ids); i++) {
> @@ -703,7 +710,7 @@ static struct chipset early_qrk[] __initdata = {
>  	{ PCI_VENDOR_ID_INTEL, 0x3406, PCI_CLASS_BRIDGE_HOST,
>  	  PCI_BASE_CLASS_BRIDGE, 0, intel_remapping_check },
>  	{ PCI_VENDOR_ID_INTEL, PCI_ANY_ID, PCI_CLASS_DISPLAY_VGA, PCI_ANY_ID,
> -	  QFLAG_APPLY_ONCE, intel_graphics_quirks },
> +	  0, intel_graphics_quirks },
>  	/*
>  	 * HPET on the current version of the Baytrail platform has accuracy
>  	 * problems: it will halt in deep idle state - so we disable it.
> ------8<------

This looks even cleaner to me but that's Bjorn's call in the end.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
