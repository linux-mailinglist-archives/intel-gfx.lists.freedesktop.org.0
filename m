Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C089AA1AA0
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 20:29:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A818C10E525;
	Tue, 29 Apr 2025 18:29:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="oA2w0LwB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8F0010E519;
 Tue, 29 Apr 2025 18:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=E0mzkKtFQrvDCIhJCJjDyLr36jVoNlO5U7XqkmOedlo=; b=oA2w0LwBMD2/d3K8APfxLMSHoR
 ytIUgP9lBdvY69NkP2Dkr4ilDQkET5rEn3c5o1aQt5czU/IvUNkDoHhpiNA8WEb2pI6ziH0qKrqkv
 4ca1iHDQCTZRXOaOXmNO28vnFKo3obM4mpjHAyuIFu9CnX3XtW7O0NKRjGJxfRA6HEucrzXxyv9/X
 D32jAZ0X4w9/Y7Qx9ny36ouZR/0AHZlNeBR8bu3FLVy1Sx0sDDrs/NMpO33zonzjTNQj/3M09fHFD
 0/ikmBckbVuO6gntvxsoDsSubJFXARk9KQyfC4Od2LX940atqoGgSxamvHVP1mTl2H6hBxmXBOJ5J
 e2ukwbVA==;
Received: from 77-249-17-252.cable.dynamic.v4.ziggo.nl ([77.249.17.252]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1u9phk-000000048Xi-00Yy; Tue, 29 Apr 2025 18:29:19 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
 id 08C3630035E; Tue, 29 Apr 2025 20:29:05 +0200 (CEST)
Date: Tue, 29 Apr 2025 20:29:04 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "luto@kernel.org" <luto@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@kernel.org>
Subject: Re: [REGRESSION] x86/efi: Make efi_enter/leave_mm() use the
 use_/unuse_temporary_mm() machinery (linux-next)
Message-ID: <20250429182904.GL4198@noisy.programming.kicks-ass.net>
References: <SJ1PR11MB6129E62E3B372932C6B7477FB9BD2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB61293655E9386DC0FBD263F4B9852@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <87selrwdct.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87selrwdct.fsf@intel.com>
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

On Tue, Apr 29, 2025 at 12:01:22PM +0300, Jani Nikula wrote:
> On Thu, 24 Apr 2025, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> > +Andy, Ingo
> >
> > Friendly reminder.
> > Issue is still seen on latest linux-next runs.
> >
> > https://intel-gfx-ci.01.org/tree/linux-next/next-20250424/bat-rpls-4/boot0.txt
> >
> > Regards
> >
> > Chaitanya
> 
> Andy, Ingo -
> 
> Commit e7021e2fe0b4 ("x86/efi: Make efi_enter/leave_mm() use the
> use_/unuse_temporary_mm() machinery") on linux-next regresses as
> reported by Chaitanya
> 
> Please look into it.

Does your kernel include the below?

---
commit aef1d0209ddf127a8069aca5fa3a062be4136b76
Author: Peter Zijlstra <peterz@infradead.org>
Date:   Fri Apr 18 11:50:34 2025 +0200

    x86/mm: Fix {,un}use_temporary_mm() IRQ state
    
    As the function switch_mm_irqs_off() implies, it ought to be called with
    IRQs *off*. Commit 58f8ffa91766 ("x86/mm: Allow temporary MMs when IRQs
    are on") caused this to not be the case for EFI.
    
    Ensure IRQs are off where it matters.
    
    Fixes: 58f8ffa91766 ("x86/mm: Allow temporary MMs when IRQs are on")
    Reported-by: Borislav Petkov (AMD) <bp@alien8.de>
    Tested-by: Borislav Petkov (AMD) <bp@alien8.de>
    Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
    Signed-off-by: Ingo Molnar <mingo@kernel.org>
    Cc: H. Peter Anvin <hpa@zytor.com>
    Cc: Andrew Morton <akpm@linux-foundation.org>
    Cc: Andy Lutomirski <luto@kernel.org>
    Cc: Linus Torvalds <torvalds@linux-foundation.org>
    Cc: Rik van Riel <riel@surriel.com>
    Link: https://lore.kernel.org/r/20250418095034.GR38216@noisy.programming.kicks-ass.net

diff --git a/arch/x86/mm/tlb.c b/arch/x86/mm/tlb.c
index 79c124f6f3f2..39761c7765bd 100644
--- a/arch/x86/mm/tlb.c
+++ b/arch/x86/mm/tlb.c
@@ -986,6 +986,7 @@ struct mm_struct *use_temporary_mm(struct mm_struct *temp_mm)
 	struct mm_struct *prev_mm;
 
 	lockdep_assert_preemption_disabled();
+	guard(irqsave)();
 
 	/*
 	 * Make sure not to be in TLB lazy mode, as otherwise we'll end up
@@ -1018,6 +1019,7 @@ struct mm_struct *use_temporary_mm(struct mm_struct *temp_mm)
 void unuse_temporary_mm(struct mm_struct *prev_mm)
 {
 	lockdep_assert_preemption_disabled();
+	guard(irqsave)();
 
 	/* Clear the cpumask, to indicate no TLB flushing is needed anywhere */
 	cpumask_clear_cpu(smp_processor_id(), mm_cpumask(this_cpu_read(cpu_tlbstate.loaded_mm)));
