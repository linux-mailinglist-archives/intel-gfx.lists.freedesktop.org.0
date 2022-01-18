Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4B3492B60
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 17:37:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50BBE10E534;
	Tue, 18 Jan 2022 16:36:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C3F910E534
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 16:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642523818; x=1674059818;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+QXDhRLlT4+aaM08yYpmeZ6XvKbAJznm45i6RTbR4HI=;
 b=e3q1d/zYcutXVTVhykDKfu90JeLL8BTLVwT6M6u+WUUsG6ebJcdoMWoA
 fismLR5NEn2XcNZwBKRW3Oxdzu8dDNRy7dHo1vnNsr6fhZakWOWnO+/qT
 wu6DNWZ48liHwtY+dVFwI2HdHiniYKHqiFHDjqANNQpYHC5E+ANSGgRA5
 9HG4uFAimDqxgbzLb0ZQvfoNbqf0CNih4jzp7renhW/ajwPmfe7sKIlHN
 hKdQXr/8xjubyXs7W0popJyxg442JhM+JzyLZK+35exFGhdpokbbS5xD+
 QcXyTzcff0p25TidGz+8iK0ZSLvIjju5WYmfesxv1AKplrgDfCYTx/g5a g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="242419699"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="242419699"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 08:36:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="531866381"
Received: from ftaylor1-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.190.69])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 08:36:56 -0800
Date: Tue, 18 Jan 2022 08:36:56 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Borislav Petkov <bp@alien8.de>
Message-ID: <20220118163656.fzzkwubgoe5gz36k@ldmartin-desk2>
References: <20220114002843.2083382-1-lucas.demarchi@intel.com>
 <YeaLIs9t0jhovC28@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <YeaLIs9t0jhovC28@zn.tnic>
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

On Tue, Jan 18, 2022 at 10:40:50AM +0100, Borislav Petkov wrote:
>n Thu, Jan 13, 2022 at 04:28:39PM -0800, Lucas De Marchi wrote:
>> early_pci_scan_bus() does a depth-first traversal, possibly calling
>> the quirk functions for each device based on vendor, device and class
>> from early_qrk table. intel_graphics_quirks() however uses PCI_ANY_ID
>> and does additional filtering in the quirk.
>>
>> If there is an Intel integrated + discrete GPU the quirk may be called
>> first for the discrete GPU based on the PCI topology. Then we will fail
>> to reserve the system stolen memory for the integrated GPU, because we
>> will already have marked the quirk as "applied".
>
>Who is "we"?
>
>Please use passive voice in your commit message: no "we" or "I", etc,
>and describe your changes in imperative mood.
>
>Bottom line is: personal pronouns are ambiguous in text, especially with
>so many parties/companies/etc developing the kernel so let's avoid them
>please.

I had the impression the subject/title should be imperative, with it
more relaxed in the body. It seems we have one more difference among
subsystems and I will adapt on next submissions to x86.

To clarify, "we" here means whoever is reading and following the code
path. It has the same connotation as the others in
'git log --grep "we\s"'.  From a quick grep it seems Linus merges a lot
of pull requests using that language and he himself uses it in commit
messages. Example: commit 054aa8d439b9 ("fget: check that the fd still
exists after getting a ref to it"). I was also surprised he also uses it
in the first person in some commits.

>
>> This was reproduced in a setup with Alderlake-P (integrated) + DG2
>> (discrete), with the following PCI topology:
>>
>> 	- 00:01.0 Bridge
>> 	  `- 03:00.0 DG2
>> 	- 00:02.0 Integrated GPU
>>
>> So, stop using the QFLAG_APPLY_ONCE flag, replacing it with a static
>> local variable. We can set this variable in the right place, inside
>> intel_graphics_quirks(), only when the quirk was actually applied, i.e.
>> when we find the integrated GPU based on the intel_early_ids table.
>>
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>
>> v5: apply fix before the refactor
>>
>>  arch/x86/kernel/early-quirks.c | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
>> index 1ca3a56fdc2d..de9a76eb544e 100644
>> --- a/arch/x86/kernel/early-quirks.c
>> +++ b/arch/x86/kernel/early-quirks.c
>> @@ -589,10 +589,14 @@ intel_graphics_stolen(int num, int slot, int func,
>>
>>  static void __init intel_graphics_quirks(int num, int slot, int func)
>>  {
>> +	static bool quirk_applied __initdata;
>>  	const struct intel_early_ops *early_ops;
>>  	u16 device;
>>  	int i;
>>
>> +	if (quirk_applied)
>> +		return;
>> +
>>  	device = read_pci_config_16(num, slot, func, PCI_DEVICE_ID);
>>
>>  	for (i = 0; i < ARRAY_SIZE(intel_early_ids); i++) {
>> @@ -605,6 +609,8 @@ static void __init intel_graphics_quirks(int num, int slot, int func)
>>
>>  		intel_graphics_stolen(num, slot, func, early_ops);
>>
>> +		quirk_applied = true;
>> +
>>  		return;
>>  	}
>
>So I wonder: why can't you simply pass in a static struct chipset *
>pointer into the early_qrk[i].f function and in there you can set
>QFLAG_APPLIED or so, so that you can mark that the quirk is applied by
>using the nice, per-quirk flags someone has already added instead of
>this ugly static variable?

It seems you prefer v1. See 20211218061313.100571-1-lucas.demarchi@intel.com

Although in the review Bjorn suggested just splitting the commit, it was
also mentioned that the PCI subsystem has no such logic in its
equivalent pci_do_fixups(): a quirk/fixup needing that should instead
use a static local.

After checking the code again I seconded his suggestion and adapted
on subsequent versions. Besides his comment on PCI subsystem I had these
motivations:

1) From a total o 11 quirks, only 3 were actually using that logic and 1
of them was wrong (the one being fixed here with the called vs applied
logic)

2) The resources these conditions are protecting are global to the
system: they all end up setting a variable - just having a static local
protecting the function from being called more than once seemed
appropriate to avoid that.

3) Even arch/x86 uses that for the PCI fixups
(arch/x86/kernel/quirks.c). It uses the logic "resource has already
been set" as opposed to adding static local since, but it seems similar
approach to me.


>
>Patch 3 especially makes me go, huh?

What is special about patch 3? Maybe the way it was split in v5 vs v4
made it not so clear: intention was not to change the current behavior
since it has been like this for 15+ years with no bug that I know of.
The previous approach would not call acpi_table_parse() twice for
example.

thanks
Lucas De Marchi

>
>-- 
>Regards/Gruss,
>    Boris.
>
>https://people.kernel.org/tglx/notes-about-netiquette
