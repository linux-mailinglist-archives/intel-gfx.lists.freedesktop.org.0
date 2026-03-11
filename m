Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJPTNHxcsWlHuQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 13:13:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2547263787
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 13:13:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE08F10E8EE;
	Wed, 11 Mar 2026 12:13:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XQZ/HOJ5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDB1310E8EE;
 Wed, 11 Mar 2026 12:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773231222; x=1804767222;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=edXeS0CVYT9z4iOyE7WsNFE0+rjE0vA6IE6tPilA1wc=;
 b=XQZ/HOJ5g8ZpTlzaerV9Td+4GXG0uFE4YUJMZT3Qkt/vVnJQ/plpO+ph
 K3R9LSNyvMmn849OxWInowUcO5cetvl9RiPMjv4sdqTRDt9+BkGF+SXsz
 c8TcUAOQ2iRwda2bbJAkLrOedBhNtXwyHpY4hkayBcvDPpmAZoHPNR+rc
 dJ1u2WySk9kjoCndEvTEgf49YloaU1Iss4ovCWJAm+geqFQZAf0sxuxvd
 aKc9Hm5sud7wF3DZ0YaqN//SvY7KIOluDIzoDg+14OovOgRsxDP37grNH
 yGeV0btfgUGBcNhaKSfr6CN5MLaqCQrtFndBFka4Fi7GHSBO0NMio+doL A==;
X-CSE-ConnectionGUID: +ipuT0q2QcaYrumiHI4PfQ==
X-CSE-MsgGUID: Xd1mu1STQNavbQxCYEEXCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74172127"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74172127"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 05:13:41 -0700
X-CSE-ConnectionGUID: bmgYoTJbTs6JQIDpmFVOeQ==
X-CSE-MsgGUID: 8xm0D7wMSRO/xJ3l/nnL+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="217119823"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.100])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 05:13:38 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Zbigniew =?UTF-8?B?S2VtcGN6ecWEc2tp?= <zbigniew.kempczynski@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t] tests/intel/gem_lmem_swapping: Expect gem leak
 helper crashes
Date: Wed, 11 Mar 2026 13:13:35 +0100
Message-ID: <1921025.atdPhlSkOF@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20260310115003.wwffggwsyzsbxw5k@kamilkon-DESK.igk.intel.com>
References: <20260302131817.3744919-2-janusz.krzysztofik@linux.intel.com>
 <20260310115003.wwffggwsyzsbxw5k@kamilkon-DESK.igk.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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
X-Rspamd-Queue-Id: A2547263787
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	CTE_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url,jkrzyszt-mobl2.ger.corp.intel.com:mid,patchwork.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Hi Kamil,

Please disregard my previously asked question, I've had a more deep look 
into your statement and I think I've understood what you had on mind.

On Tuesday, 10 March 2026 12:50:03 CET Kamil Konieczny wrote:
> Hi Janusz,
> On 2026-03-02 at 14:12:45 +0100, Janusz Krzysztofik wrote:
> > When trying to exhaust system memory in order to exercise LMEM eviction
> > under OOM conditions, a gem_leak helper process may itself become a victim
> > of memory shortage.  If our i915 TTM VM fault handler fails to allocate a
> > page and responds with a SIGBUS signal when the helper process is trying
> > to store data in a mmaped i915 GEM object with memset then the process
> > crashes.  Unfortunately, such crash is not only reported on stdout, strerr
> > and dmesg as premature, additional result from the subtest while it is
> > still in progress, but also renders the final result as failed.
> > 
> > Starting subtest: smem-oom
> > Starting dynamic subtest: lmem0
> > Received signal SIGBUS.
> > Stack trace:
> >  #0 [fatal_sig_handler+0x17b]
> >  #1 [__sigaction+0x50]
> >  #2 [__igt_unique____real_main808+0xdbc]
> >  #3 [main+0x3f]
> >  #4 [__libc_init_first+0x8a]
> >  #5 [__libc_start_main+0x8b]
> >  #6 [_start+0x25]
> > Dynamic subtest lmem0: CRASH (20.804s)
> > Subtest smem-oom: SUCCESS (20.807s)
> > Received signal SIGABRT.
> > Stack trace:
> >  #0 [fatal_sig_handler+0x17b]
> >  #1 [__sigaction+0x50]
> >  #2 [pthread_kill+0x11c]
> >  #3 [gsignal+0x1e]
> >  #4 [abort+0xdf]
> >  #5 [<unknown>+0xdf]
> >  #6 [__assert_fail+0x47]
> >  #7 [__igt_waitchildren+0x1c0]
> >  #8 [igt_waitchildren_timeout+0x9d]
> >  #9 [intel_allocator_multiprocess_stop+0xbb]
> >  #10 [__igt_unique____real_main808+0x551]
> >  #11 [main+0x3f]
> >  #12 [__libc_init_first+0x8a]
> >  #13 [__libc_start_main+0x8b]
> >  #14 [_start+0x25]
> > (gem_lmem_swapping:2347) CRITICAL: Test assertion failure function test_smem_oom, file ../tests/intel/gem_lmem_swapping.c:777:
> > (gem_lmem_swapping:2347) CRITICAL: Failed assertion: lmem_err == 0
> > (gem_lmem_swapping:2347) CRITICAL: Last errno: 3, No such process
> > (gem_lmem_swapping:2347) CRITICAL: error: 137 != 0
> > Dynamic subtest lmem0 failed.
> > ...
> > runner: Dynamic subtest lmem0 result when not inside a subtest. This is a test bug.
> > Subtest smem-oom: FAIL (22.672s)
> > 
> > Since page allocation failures are unavoidable under OOM conditions, and
> > the SIGBUS signal response from our TTM fault handler is correct in such
> > cases, catch those signals and let the helper process continue.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> > That's an improved and better documented new version of my former
> > https://patchwork.freedesktop.org/patch/685572/
> > 
> >  tests/intel/gem_lmem_swapping.c | 18 +++++++++++++++++-
> >  1 file changed, 17 insertions(+), 1 deletion(-)
> > 
> > diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
> > index 77e18f1a3c..514423f470 100644
> > --- a/tests/intel/gem_lmem_swapping.c
> > +++ b/tests/intel/gem_lmem_swapping.c
> > @@ -11,6 +11,8 @@
> >  #include "igt_kmod.h"
> >  #include "runnercomms.h"
> >  #include <unistd.h>
> > +#include <setjmp.h>
> > +#include <signal.h>
> >  #include <stdlib.h>
> >  #include <stdint.h>
> >  #include <stdio.h>
> > @@ -651,13 +653,21 @@ static void leak(uint64_t alloc)
> >  	}
> >  }
> >  
> > +static sigjmp_buf sigbus_jmp;
> > +
> > +static void sigbus_handler(int sig, siginfo_t *si, void *ctx)
> > +{
> > +	siglongjmp(sigbus_jmp, 1);
> > +}
> > +
> >  static void gem_leak(int fd, uint64_t alloc)
> >  {
> >  	uint32_t handle = gem_create(fd, alloc);
> >  	void *buf;
> >  
> >  	buf = gem_mmap_offset__fixed(fd, handle, 0, PAGE_SIZE, PROT_WRITE);
> > -	memset(buf, 0, PAGE_SIZE);
> > +	if (!igt_debug_on_f(sigsetjmp(sigbus_jmp, 1), "PID %d: SIGBUS caught\n", getpid()))
> > +		memset(buf, 0, PAGE_SIZE);
> 
> There are other uses for signal masking in igt, all of them do:
> mask + op + unmask

That pattern (mask + op + unmask) is fully justified, and even mandatory, 
in cases when applicable only to specific steps of a test, usually in a 
preparation phase, before the real exercise starts.  But here we have a 
helper process that is not part of the exercise itself, in the sense its 
failures should not count.  As my commit message explains, those failures 
are expected, and their root cause is understood.  Here the helper process 
is expected to acquire and leak pages of GEM memory in a loop, and then 
just exit when signaled with a flag, with no follow up steps that would 
require the masked signal restored.   We don't have to care about unmask.  

Besides, there are already other justified "mask and forget" cases in IGT, 
see:
lib/xe/xe_eudebug.c:xe_eudebug_debugger_start_worker()
tests/amdgpu/amd_mem.c:test_signal_handling()
tests/intel/gem_close_race.c:multigpu_threads()
tests/intel/gem_exec_alignment.c:naughty_child()
tests/intel/gem_exec_fence.c:test_keep_in_fence()
tests/intel/gem_exec_schedule.c:test_pi_ringfull()
tests/intel/i915_pm_rc6_residency.c:bg_load()
tests/intel/xe_eu_stall.c:test_eustall()
tests/testdisplay.c:set_single()

See also one auto-correction below while being at it.

> 
> Regards,
> Kamil 
> >  	munmap(buf, PAGE_SIZE);
> >  
> >  	gem_madvise(fd, handle, I915_MADV_DONTNEED);
> > @@ -745,8 +755,14 @@ static void test_smem_oom(int i915,
> >  				}
> >  			}
> >  			igt_fork(child, 1) {
> > +				struct sigaction sa = {
> > +					.sa_sigaction = sigbus_handler,
> > +					.sa_flags = SA_SIGINFO | SA_NODEFER,
> > +				};
> >  				int fd = drm_reopen_driver(i915);
> >  

sigemptyset() is missing in front of sigaction(), we shouldn't depend on 
zero initialized .sa_mask, that's not portable.

Thanks,
Janusz


> > +				sigaction(SIGBUS, &sa, NULL);
> > +
> >  				for (int pass = 0; pass < num_alloc; pass++) {
> >  					if (READ_ONCE(*lmem_done))
> >  						break;
> 




