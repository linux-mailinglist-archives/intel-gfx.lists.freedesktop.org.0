Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C0C61F232
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 12:49:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2FB910E2EE;
	Mon,  7 Nov 2022 11:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk
 [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E8AB10E2EE
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 11:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iOrHuKIoCEocvdRDb3SsdQoHjhsaydl18023Uf4ugU8=; b=whcULJjFaG9nnsrSzEziwUih5W
 qWQVMbTDfOp8a1RTmOsEvwyr7TxOrx3rs1n/MKbfXAA9UStlHeG57qkISHOCL4pkYzUEQKGRcByzD
 njkbwkinenJfhqPX85z46V8ZmyMW5z7CSyKi3YEm8GlN1ykL4ADuOtXtrokOYidhzh7MZ910MDSjN
 Z5yZlTSAdB0wlZQyzET6jwIHmDrbjH6JR+7rpkirKhGpYrh7XSiMLVw4lhCS6TgMlXRbKOWEeDeZX
 Q7iNKrQqGka3ZPvygclVS90sDM7GTeohYN7pn0Ui2eSCpqucGnGpg1R3G4vPnz7lVrR+sB4XUeemV
 4FOUCz2Q==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:35150)
 by pandora.armlinux.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@armlinux.org.uk>)
 id 1os0cQ-0001rO-3H; Mon, 07 Nov 2022 11:48:46 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1os0cO-0003lM-IR; Mon, 07 Nov 2022 11:48:44 +0000
Date: Mon, 7 Nov 2022 11:48:44 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: "Saarinen, Jani" <jani.saarinen@intel.com>
Message-ID: <Y2jwnKfG9xFpMTHS@shell.armlinux.org.uk>
References: <Y2Z+gi8uhdRji7Co@shell.armlinux.org.uk>
 <DM8PR11MB56555D7E8598D31998F5010AE03C9@DM8PR11MB5655.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM8PR11MB56555D7E8598D31998F5010AE03C9@DM8PR11MB5655.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] BUG: i915: flickering/temporary artifacts after
 resume
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 07, 2022 at 09:29:33AM +0000, Saarinen, Jani wrote:
> Hi Russell,
> Can you make new gitlab: https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs  ? 

Hi,

Unfortunately, I can't get any more information, and trying to get a
photo of the problem is utterly impossible, beacuse it's almost always
a momentary corruption - out of all the cases, I have only seen it
remain on-screen once.

Also, it can take months of suspend/resume cycles for it to occur,
which makes it difficult to reproduce using the "latest" kernel -
beacuse by the time the latest kernel has shown the problem, there's
a more modern kernel!

Using the intel reg dumper may provide some useful information.

That said, running it from the debian stable repository gives me:

(intel_reg:338236) intel_mmio-CRITICAL: Test assertion failure function
intel_mmio_use_pci_bar, file ../lib/intel_mmio.c:146:
(intel_reg:338236) intel_mmio-CRITICAL: Failed assertion: !(error != 0)
(intel_reg:338236) intel_mmio-CRITICAL: Last errno: 1, Operation not
permitted
(intel_reg:338236) intel_mmio-CRITICAL: Couldn't map MMIO region
Test (null) failed.
**** DEBUG ****
(intel_reg:338236) intel_chipset-DEBUG: Test requirement passed: pci_dev
(intel_reg:338236) intel_mmio-CRITICAL: Test assertion failure function
intel_mmio_use_pci_bar, file ../lib/intel_mmio.c:146:
(intel_reg:338236) intel_mmio-CRITICAL: Failed assertion: !(error != 0)
(intel_reg:338236) intel_mmio-CRITICAL: Last errno: 1, Operation not
permitted
(intel_reg:338236) intel_mmio-CRITICAL: Couldn't map MMIO region
(intel_reg:338236) igt_core-INFO: Stack trace:
(intel_reg:338236) igt_core-INFO:   #0 [__igt_fail_assert+0x113]
(intel_reg:338236) igt_core-INFO:   #1 [intel_mmio_use_pci_bar+0xc4]
(intel_reg:338236) igt_core-INFO:   #2 [intel_register_access_init+0x1b]
(intel_reg:338236) igt_core-INFO:   #3 [<unknown>+0xec025c3a]
(intel_reg:338236) igt_core-INFO:   #4 [<unknown>+0xec0246f6]
(intel_reg:338236) igt_core-INFO:   #5 [__libc_start_main+0xea]
(intel_reg:338236) igt_core-INFO:   #6 [<unknown>+0xec0247ba]
****  END  ****

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!
