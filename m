Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F4D486D3C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 23:30:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A0DE10E402;
	Thu,  6 Jan 2022 22:30:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 976F310E402
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 22:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641508249; x=1673044249;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kCKh22er39p+Smes32kiR/Y+2N8dNSDg2uwUigHZOdU=;
 b=jt21bzHhkLQjgdTAIsb8de2+UDBuhdwdor3J1X6bk50/hyVwqeHMp7eH
 lAtu4i7wCFtSi4Cp62sb7YndZeQo2s1QHyd/CvAslRJMYm7I4TZPYjjvP
 3M8KngaTFqBCXnlaKYOdVU5Fzz72TFPVUaBjKL8hNs0WRwdMXIf62Icb2
 HJHJQDVF8y7YDcyzn0gkSysAKbZngtTqXyTaqKIJI+Mmy/5clw/hcG35x
 6sN6kbJWrcb8ybSFn+rPxicAWLPX0qgBE5YbbDf1F/D7C5ORaOcRgLCrf
 q5amL9IVI2W9OZu75Ltc01RbWCj5zAfRsBor6vsEfKpQbvsz2FKAxXa/v A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="223447547"
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="223447547"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 14:30:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="557068712"
Received: from sumedhrr-mobl2.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.102.95])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 14:30:48 -0800
Date: Thu, 6 Jan 2022 14:30:47 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <20220106223047.ryhjtrviaosnh7wv@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220106003654.770316-1-lucas.demarchi@intel.com>
 <20220106215850.GA327560@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220106215850.GA327560@bhelgaas>
Subject: Re: [Intel-gfx] [PATCH v2 1/2] x86/quirks: Fix logic to apply quirk
 once
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

On Thu, Jan 06, 2022 at 03:58:50PM -0600, Bjorn Helgaas wrote:
>On Wed, Jan 05, 2022 at 04:36:53PM -0800, Lucas De Marchi wrote:
>> When using QFLAG_APPLY_ONCE we make sure the quirk is called only once.
>> This is useful when it's enough one device to trigger a certain
>> condition or when the resource in each that applies is global to the
>> system rather than local to the device.
>>
>> However we call the quirk handler based on vendor, class, and device,
>> allowing the specific handler to do additional filtering. In that case
>> check_dev_quirk() may incorrectly mark the quirk as applied when it's
>> not: the quirk was called, but may not have been applied due to the
>> additional filter.
>>
>> This is particularly bad for intel_graphics_quirks() that uses
>> PCI_ANY_ID and then compares with a long list of devices. This hasn't
>> been problematic so far because those devices are integrated GPUs and
>> there can only be one in the system.  However as Intel starts to
>> release discrete cards, this condition is no longer true and we fail to
>> reserve the stolen memory (for the integrated GPU) depending on the bus
>> topology: if the traversal finds the discrete card first, for which
>> there is no system stolen memory, we will fail to reserve it for the
>> integrated card.
>>
>> This fixes the stolen memory reservation for an Alderlake-P system with
>> one additional Intel discrete GPU (DG2 in this case, but applies for
>> any of them). In this system we have:
>>
>> 	- 00:01.0 Bridge
>> 	  `- 03:00.0 DG2
>> 	- 00:02.0 Alderlake-P's integrated GPU
>>
>> Since we do a depth-first traversal, when we call the handler because of
>> DG2 we were marking it as already being applied and never reserving the
>> stolen memory for Alderlake-P.
>>
>> Since there are just a few quirks using the QFLAG_APPLY_ONCE logic and
>> that is even the only flag, just use a static local variable in the
>> quirk function itself. This allows to mark the quirk as applied only
>> when it really is. As pointed out by Bjorn Helgaas, this is also more in
>> line with the PCI fixups as done by pci_do_fixups().
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>
>> v2: instead of changing all quirks to return if it was successfully
>> applied, remove the flag infra and use a static local variable to mark
>> quirks already applied (suggested by Bjorn Helgaas).
>>
>>  arch/x86/kernel/early-quirks.c | 60 ++++++++++++++++++++--------------
>>  1 file changed, 36 insertions(+), 24 deletions(-)
>>
>> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
>> index 391a4e2b8604..102ecd0a910e 100644
>> --- a/arch/x86/kernel/early-quirks.c
>> +++ b/arch/x86/kernel/early-quirks.c
>> @@ -57,12 +57,18 @@ static void __init fix_hypertransport_config(int num, int slot, int func)
>>  static void __init via_bugs(int  num, int slot, int func)
>>  {
>>  #ifdef CONFIG_GART_IOMMU
>> +	static bool quirk_applied __initdata;
>> +
>> +	if (quirk_applied)
>> +		return;
>
>IMO this probably is better than using QFLAG_APPLY_ONCE, etc.
>
>But this patch has the mechanical changes related to QFLAG_APPLY_ONCE,
>which I think are useful but not very interesting and not a fix for
>something that's broken, mixed together with the *important* change
>that actually fixes a problem on Alderlake.

In general I agree with the statement and also ask people to follow that
logic, but here I thought it was small enough to be considered as a
whole.  Here is what I could do to split it up further in a way that is
not going in a different direction:

1) add the static local only to intel graphics quirk  and remove the
flag from this item
2 and 3) add the static local to other functions and remove the flag
from those items
4) remove the flag from the table, the defines and its usage.
5) fix the coding style (to be clear, it's already wrong, not
something wrong introduced here... maybe could be squashed in (4)?)

thoughts?

>
>Those two things need to be separate patches.  A patch that fixes a
>problem should be as small as possible so it's easy to understand and
>backport.
>
>The subject line of this patch doesn't say anything at all about
>Alderlake.  Splitting into two patches will make the subject lines
>more useful.

Alderlake is the platform in which it was reproduced, but could very
well be any other platform with Intel integrated graphics + Intel
discrete graphics. So I described the concrete reproducer in the commit
message rather than giving the impression this would be the only case
the current logic is broken.

thanks,
Lucas De Marchi

>
>Bjorn
