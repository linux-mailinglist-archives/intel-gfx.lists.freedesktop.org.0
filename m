Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F5B488101
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jan 2022 03:57:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98B7410E5EC;
	Sat,  8 Jan 2022 02:57:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED90D10E5EC
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jan 2022 02:57:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7C27CB827CE;
 Sat,  8 Jan 2022 02:57:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EBD6C36AE5;
 Sat,  8 Jan 2022 02:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641610655;
 bh=FiQX5gMpMaQbrhMlyj4sjZlTDO9MrExzaOZZvHkhlsY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=ibkiqf/5uynamiAMGLHQ0uMmIvtmHXuFZmL/q30p/z85IC42PUsU7htsV1mP01IMA
 kRd8P08dKfU+luWb72luLcMm1VqMHcK4mXNUW2Y1NSVeD5etejx2YFvi7kS/mAwVvF
 Z84KqP6AVhE1GrutpZ6bkUhIFaOKWHfNM0Tq1efK820rQCxln52SnpGih9UuQ2PfrI
 UWcyNkyeB6S1cXB7icmh+jvJJ4NtObGoXgsBDsBppTtFbwb/KdOke5Cut/OnroNNcy
 r1v6jPQJlkmR325TdA/ZWXNdOK0CIwN1hQ9DGHowp3DBZLCYUVxenN/yIKL+oVk1Bu
 n6d1E1NeCxzDQ==
Date: Fri, 7 Jan 2022 20:57:32 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20220108025732.GA443415@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220107210516.907834-3-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 3/3] x86/quirks: Fix stolen detection
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
 intel-gfx@lists.freedesktop.org, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 07, 2022 at 01:05:16PM -0800, Lucas De Marchi wrote:
> early_pci_scan_bus() does a depth-first traversal, possibly calling
> the quirk functions for each device based on vendor, device and class
> from early_qrk table. intel_graphics_quirks() however uses PCI_ANY_ID
> and does additional filtering in the quirk.
> 
> If there is an Intel integrated + discrete GPU the quirk may be called
> first for the discrete GPU based on the PCI topology. Then we will fail
> to reserve the system stolen memory for the integrated GPU, because we
> will already have marked the quirk as "applied".
> 
> This was reproduced in a setup with Alderlake-P (integrated) + DG2
> (discrete), with the following PCI topology:
> 
> 	- 00:01.0 Bridge
> 	  `- 03:00.0 DG2
> 	- 00:02.0 Integrated GPU
> 
> Move the setting of quirk_applied in intel_graphics_quirks() so it's
> mark as applied only when we find the integrated GPU based on the
> intel_early_ids table.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

I don't know the details of stolen memory, but the implementation of
this quirk looks good to me.  Very nice that it's now very clear
exactly what the change is.

> ---
> 
> v3: now that we do the refactor before the fix, we can do a single line
> change to fix intel_graphics_quirks(). Also, we don't change
> intel_graphics_stolen() anymore as we did in v2: we don't have to check
> other devices anymore if there was a previous match causing
> intel_graphics_stolen() to be called (there can only be one integrated
> GPU reserving the stolen memory).
> 
>  arch/x86/kernel/early-quirks.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> index df34963e23bf..932f9087c324 100644
> --- a/arch/x86/kernel/early-quirks.c
> +++ b/arch/x86/kernel/early-quirks.c
> @@ -609,8 +609,6 @@ static void __init intel_graphics_quirks(int num, int slot, int func)
>  	if (quirk_applied)
>  		return;
>  
> -	quirk_applied = true;
> -
>  	device = read_pci_config_16(num, slot, func, PCI_DEVICE_ID);
>  
>  	for (i = 0; i < ARRAY_SIZE(intel_early_ids); i++) {
> @@ -623,6 +621,8 @@ static void __init intel_graphics_quirks(int num, int slot, int func)
>  
>  		intel_graphics_stolen(num, slot, func, early_ops);
>  
> +		quirk_applied = true;
> +
>  		return;
>  	}
>  }
> -- 
> 2.34.1
> 
