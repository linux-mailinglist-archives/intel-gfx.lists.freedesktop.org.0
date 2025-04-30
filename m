Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E03AA44EA
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 10:12:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40AC310E6FA;
	Wed, 30 Apr 2025 08:12:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="ZQFm1Oke";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9314D10E04C;
 Wed, 30 Apr 2025 08:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=GB9EKzpuDEOZcuYn8Gfqkx/b/N0yPsaTslvoeb0qsJ0=; b=ZQFm1Oke0RZZz6LPmaUy8TcU+b
 /qna5jxSZjL15d215GYQK7Sz3mIoHTDghvt8zlpzvfHBqUWJDLIAnAiDAdxK1I8RdLt4KxwF2olWa
 Ej9QpvERz7hdMtbJradbE99VcByFE0oRnPIccMwMMPSQHcXQmopH1hEJXx0CGG8wUdXZlvq4p2JhI
 d69a1TjpWryozuRYC8yz3s2MKifawe6iij5Qu96tDSK/mXvpsT7PfMhmp3BUaTUyZsuZq5atEUSGS
 jpCTmFUCYEn5YYFbNvx8XEFhvRlpf04cx2cRLThAQffsRlrFEzyaOMuYaNPh+0ehExZpmOM++F7Vl
 c8hn0drA==;
Received: from 77-249-17-252.cable.dynamic.v4.ziggo.nl ([77.249.17.252]
 helo=noisy.programming.kicks-ass.net)
 by desiato.infradead.org with esmtpsa (Exim 4.98.1 #2 (Red Hat Linux))
 id 1uA2Xr-0000000DjTZ-1sJu; Wed, 30 Apr 2025 08:11:55 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
 id 99AFF300230; Wed, 30 Apr 2025 10:11:54 +0200 (CEST)
Date: Wed, 30 Apr 2025 10:11:54 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Hugh Dickins <hughd@google.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "luto@kernel.org" <luto@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@kernel.org>, riel@surriel.com
Subject: Re: [REGRESSION] x86/efi: Make efi_enter/leave_mm() use the
 use_/unuse_temporary_mm() machinery (linux-next)
Message-ID: <20250430081154.GH4439@noisy.programming.kicks-ass.net>
References: <SJ1PR11MB6129E62E3B372932C6B7477FB9BD2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB61293655E9386DC0FBD263F4B9852@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <87selrwdct.fsf@intel.com>
 <20250429182904.GL4198@noisy.programming.kicks-ass.net>
 <64dae856-e51a-9fc4-2eb4-c41c1a42c9d7@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <64dae856-e51a-9fc4-2eb4-c41c1a42c9d7@google.com>
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

On Tue, Apr 29, 2025 at 11:07:45PM -0700, Hugh Dickins wrote:
> On Tue, 29 Apr 2025, Peter Zijlstra wrote:

> > diff --git a/arch/x86/mm/tlb.c b/arch/x86/mm/tlb.c
> > index 79c124f6f3f2..39761c7765bd 100644
> > --- a/arch/x86/mm/tlb.c
> > +++ b/arch/x86/mm/tlb.c
> > @@ -986,6 +986,7 @@ struct mm_struct *use_temporary_mm(struct mm_struct *temp_mm)
> >  	struct mm_struct *prev_mm;
> >  
> >  	lockdep_assert_preemption_disabled();
> > +	guard(irqsave)();
> >  
> >  	/*
> >  	 * Make sure not to be in TLB lazy mode, as otherwise we'll end up
> > @@ -1018,6 +1019,7 @@ struct mm_struct *use_temporary_mm(struct mm_struct *temp_mm)
> >  void unuse_temporary_mm(struct mm_struct *prev_mm)
> >  {
> >  	lockdep_assert_preemption_disabled();
> > +	guard(irqsave)();
> >  
> >  	/* Clear the cpumask, to indicate no TLB flushing is needed anywhere */
> >  	cpumask_clear_cpu(smp_processor_id(), mm_cpumask(this_cpu_read(cpu_tlbstate.loaded_mm)));
> 
> Hi Peter, I haven't checked on most recent -nexts, but earlier found that
> patch to be not quite enough, at least if you have CONFIG_DEBUG_VM=y:
> because switch_mm_irqs_off() contains a
> 
> 		VM_WARN_ON_ONCE(prev != &init_mm && !cpumask_test_cpu(cpu,
> 				mm_cpumask(prev)));
> 
> which doesn't like what (un)use_temporary_mm() is now doing. I couldn't
> be sure who was right or wrong, and just proceeded by commenting out
> the warning - ONCE shouldn't be much trouble, except xfstests uses
> some nefarious mechanism to resurrect ONCE repeatedly.

Oh that one. Yeah, I thought Ingo had already delete that WARN, but it
seems it's still there.

So the problem is that unuse_temporary_mm() explicitly clears that bit;
and it has to, because otherwise the flush_tlb_mm_range() in
__text_poke() will try sending IPIs, which are not at all needed.

 (See also:
   https://lore.kernel.org/all/20241113095550.GBZzR3pg-RhJKPDazS@fat_crate.local/
 )

Notably, the whole {,un}use_temporary_mm() thing requires preemption to
be disabled across it with the express purpose of keeping all TLB
nonsense CPU local, such that invalidations can also stay local etc.

However, as a side-effect, we violate this above WARN(), which sorta
makes sense for the normal case, but very much doesn't make sense here.

There are two ways out, one have unuse_temporary_mm() mark the mm_struct
such that a further exception (beyond init_mm) can be grafted, or simply
delete the whole check.

Anyway, something like the below, or just delete the check I suppose.

Opinions?

---
diff --git a/arch/x86/include/asm/mmu.h b/arch/x86/include/asm/mmu.h
index 8b8055a8eb9e..0fe9c569d171 100644
--- a/arch/x86/include/asm/mmu.h
+++ b/arch/x86/include/asm/mmu.h
@@ -16,6 +16,8 @@
 #define MM_CONTEXT_LOCK_LAM		2
 /* Allow LAM and SVA coexisting */
 #define MM_CONTEXT_FORCE_TAGGED_SVA	3
+/* Tracks mm_cpumask */
+#define MM_CONTEXT_NOTRACK		4
 
 /*
  * x86 has arch-specific MMU state beyond what lives in mm_struct.
@@ -44,9 +46,7 @@ typedef struct {
 	struct ldt_struct	*ldt;
 #endif
 
-#ifdef CONFIG_X86_64
 	unsigned long flags;
-#endif
 
 #ifdef CONFIG_ADDRESS_MASKING
 	/* Active LAM mode:  X86_CR3_LAM_U48 or X86_CR3_LAM_U57 or 0 (disabled) */
diff --git a/arch/x86/include/asm/mmu_context.h b/arch/x86/include/asm/mmu_context.h
index c511f8584ae4..73bf3b1b44e8 100644
--- a/arch/x86/include/asm/mmu_context.h
+++ b/arch/x86/include/asm/mmu_context.h
@@ -247,6 +247,16 @@ static inline bool is_64bit_mm(struct mm_struct *mm)
 }
 #endif
 
+static inline bool is_notrack_mm(struct mm_struct *mm)
+{
+	return test_bit(MM_CONTEXT_NOTRACK, &mm->context.flags);
+}
+
+static inline void set_notrack_mm(struct mm_struct *mm)
+{
+	set_bit(MM_CONTEXT_NOTRACK, &mm->context.flags);
+}
+
 /*
  * We only want to enforce protection keys on the current process
  * because we effectively have no access to PKRU for other
diff --git a/arch/x86/mm/init.c b/arch/x86/mm/init.c
index f8c74d19bebb..aa56d9ac0b8f 100644
--- a/arch/x86/mm/init.c
+++ b/arch/x86/mm/init.c
@@ -28,6 +28,7 @@
 #include <asm/text-patching.h>
 #include <asm/memtype.h>
 #include <asm/paravirt.h>
+#include <asm/mmu_context.h>
 
 /*
  * We need to define the tracepoints somewhere, and tlb.c
@@ -830,6 +831,8 @@ void __init poking_init(void)
 	/* Xen PV guests need the PGD to be pinned. */
 	paravirt_enter_mmap(text_poke_mm);
 
+	set_notrack_mm(text_poke_mm);
+
 	/*
 	 * Randomize the poking address, but make sure that the following page
 	 * will be mapped at the same PMD. We need 2 pages, so find space for 3,
diff --git a/arch/x86/mm/tlb.c b/arch/x86/mm/tlb.c
index 1451e022129a..25bfc3305158 100644
--- a/arch/x86/mm/tlb.c
+++ b/arch/x86/mm/tlb.c
@@ -852,7 +852,8 @@ void switch_mm_irqs_off(struct mm_struct *unused, struct mm_struct *next,
 		 * mm_cpumask. The TLB shootdown code can figure out from
 		 * cpu_tlbstate_shared.is_lazy whether or not to send an IPI.
 		 */
-		if (IS_ENABLED(CONFIG_DEBUG_VM) && WARN_ON_ONCE(prev != &init_mm &&
+		if (IS_ENABLED(CONFIG_DEBUG_VM) &&
+		    WARN_ON_ONCE(prev != &init_mm && !is_notrack_mm(prev) &&
 				 !cpumask_test_cpu(cpu, mm_cpumask(next))))
 			cpumask_set_cpu(cpu, mm_cpumask(next));
 
diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
index 8e1796dd6c68..e7e8f77f77f8 100644
--- a/arch/x86/platform/efi/efi_64.c
+++ b/arch/x86/platform/efi/efi_64.c
@@ -89,6 +89,7 @@ int __init efi_alloc_page_tables(void)
 	efi_mm.pgd = efi_pgd;
 	mm_init_cpumask(&efi_mm);
 	init_new_context(NULL, &efi_mm);
+	set_notrack_mm(&efi_mm);
 
 	return 0;
 
