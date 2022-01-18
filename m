Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1F5492E23
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 20:07:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD1110E1A3;
	Tue, 18 Jan 2022 19:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA7B110E1A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 19:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642532831; x=1674068831;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lylUA7KrDBU6TXS+EOq/kn26y7wWjzEb7smYRb/zZb0=;
 b=fY3+iV+nvR4E5+XUa/MetB41BiL9Amm818tbrEKUJDTYj8yQJ/u7NHDq
 WorVk2vzAzPIFJaygRY8ilVUHP7q+KjM7teN+kbR4MD60wHV3TYmu7s0s
 GObN7v8He++xvFmUQNOT+jfR97dwi+aqP54asMQT7oE9cTF9mhP5efkn0
 w//pxXAyZujYjX8NspTM/Gpg30j14k2jhPnjyzc7POk8+3vX37pJ2zSYF
 04LYcUi5UsrR2wowce4tOAoLbLWEatCzggdDeNjHLjFFH2GNp0IIjxj38
 D25IuGOPoF7J2B+0Cuj201UmmwC0N/0In3TFb6N8Trv5CK+bCrtAS5Sr8 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="245088151"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="245088151"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 11:05:59 -0800
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="477092391"
Received: from ftaylor1-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.190.69])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 11:05:58 -0800
Date: Tue, 18 Jan 2022 11:05:58 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Borislav Petkov <bp@alien8.de>
Message-ID: <20220118190558.2ququ4vdfjuahicm@ldmartin-desk2>
References: <20220114002843.2083382-1-lucas.demarchi@intel.com>
 <YeaLIs9t0jhovC28@zn.tnic>
 <20220118163656.fzzkwubgoe5gz36k@ldmartin-desk2>
 <Yeb4WKOFNDNbx6tH@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <Yeb4WKOFNDNbx6tH@zn.tnic>
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

On Tue, Jan 18, 2022 at 06:26:48PM +0100, Borislav Petkov wrote:
>On Tue, Jan 18, 2022 at 08:36:56AM -0800, Lucas De Marchi wrote:
>> I had the impression the subject/title should be imperative, with it
>> more relaxed in the body. It seems we have one more difference among
>> subsystems and I will adapt on next submissions to x86.
>
>We have written it down properly, in case it explains it better:
>
>"The tip tree maintainers set value on following these rules, especially
>on the request to write changelogs in imperative mood and not
>impersonating code or the execution of it. This is not just a whim of
>the maintainers. Changelogs written in abstract words are more precise
>and tend to be less confusing than those written in the form of novels."
>
>from Documentation/process/maintainer-tip.rst

nice, thanks. I had missed this. It certainly makes it easier to adapt
the style when crossing subystems

>> > So I wonder: why can't you simply pass in a static struct chipset *
>> > pointer into the early_qrk[i].f function and in there you can set
>> > QFLAG_APPLIED or so, so that you can mark that the quirk is applied by
>> > using the nice, per-quirk flags someone has already added instead of
>> > this ugly static variable?
>>
>> It seems you prefer v1. See 20211218061313.100571-1-lucas.demarchi@intel.com
>
>I do?
>
>I don't see there:
>
>	early_qrk[i].f(&early_qrk[i], num, slot, func)
>
>so that the ->f callback can set the flags. Or at least the flags passed
>in.

Indeed not exactly the same. In v1 we have

	applied = early_qrk[i].f(num, slot, func);

because I was trying to keep the logic that uses and the one that checks
the value in the same place. With your suggestion the logic to set the
flag would need to move to the called functions, while checking for the
flag would continue to be in the caller.

>If it is not clear what I mean, pls say so and I'll try to produce an
>example diff ontop.
>
>> Although in the review Bjorn suggested just splitting the commit, it was
>> also mentioned that the PCI subsystem has no such logic in its
>> equivalent pci_do_fixups(): a quirk/fixup needing that should instead
>> use a static local.
>
>Why?

I think to make it similar how the PCI fixups work. Anyway, do you
prefer that I change the QFLAG_APPLY_ONCE as above (including
nvidia_bugs() and ati_bugs()) or a very minimal fix like below and
nothing else?

------8<------
diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 391a4e2b8604..7b2a3230c42a 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -591,6 +591,13 @@ static void __init intel_graphics_quirks(int num, int slot, int func)
  	u16 device;
  	int i;
  
+	/*
+	 * Already reserved for integrated graphics, nothing to do for other
+	 * (discrete) cards.
+	 */
+	if (resource_size(&intel_graphics_stolen_res))
+		return;
+
  	device = read_pci_config_16(num, slot, func, PCI_DEVICE_ID);
  
  	for (i = 0; i < ARRAY_SIZE(intel_early_ids); i++) {
@@ -703,7 +710,7 @@ static struct chipset early_qrk[] __initdata = {
  	{ PCI_VENDOR_ID_INTEL, 0x3406, PCI_CLASS_BRIDGE_HOST,
  	  PCI_BASE_CLASS_BRIDGE, 0, intel_remapping_check },
  	{ PCI_VENDOR_ID_INTEL, PCI_ANY_ID, PCI_CLASS_DISPLAY_VGA, PCI_ANY_ID,
-	  QFLAG_APPLY_ONCE, intel_graphics_quirks },
+	  0, intel_graphics_quirks },
  	/*
  	 * HPET on the current version of the Baytrail platform has accuracy
  	 * problems: it will halt in deep idle state - so we disable it.
------8<------


thanks
Lucas De Marchi
