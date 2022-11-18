Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BC662F920
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 16:19:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E57E10E6FE;
	Fri, 18 Nov 2022 15:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 368 seconds by postgrey-1.36 at gabe;
 Fri, 18 Nov 2022 15:19:45 UTC
Received: from mail.skyhub.de (mail.skyhub.de [5.9.137.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC74710E6FE;
 Fri, 18 Nov 2022 15:19:45 +0000 (UTC)
Received: from zn.tnic (p200300ea9733e767329c23fffea6a903.dip0.t-ipconnect.de
 [IPv6:2003:ea:9733:e767:329c:23ff:fea6:a903])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id D51DC1EC058B;
 Fri, 18 Nov 2022 16:13:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1668784415;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=a6dwRwTrfea5ZTITUiIVYv8ZpSHBAunNDAk1/ccCpAs=;
 b=hTfgppNdKNIlazAEi7hpcKB2K+cLal5I8pF3QlmVFkgPNlotzKlvivrRi0BnYqPZMWDMov
 81+/8Q46w76BLWusQBxdZkKtJxqfmGfagASmG60TAsjv9b3vO3hyr5/qhCvs+tNAfTRR5z
 D998nxfq12elfzzTZ5h1GGw8tbJ1qdw=
Date: Fri, 18 Nov 2022 16:13:34 +0100
From: Borislav Petkov <bp@alien8.de>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Y3ehHsiwzJIcE9+/@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] call to __compiletime_assert_1441 declared with
 attribute error: FIELD_PREP: mask is not constant
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
Cc: lkml <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

I'm getting this on latest Linus master with gcc (SUSE Linux) 7.5.0:

  DESCEND objtool
  CALL    scripts/checksyscalls.sh
  CC [M]  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o
In file included from <command-line>:0:0:
In function ‘__guc_context_policy_add_priority.isra.45’,
    inlined from ‘__guc_context_set_prio.isra.46’ at drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3198:3,
    inlined from ‘guc_context_set_prio’ at drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3226:2:
././include/linux/compiler_types.h:357:38: error: call to ‘__compiletime_assert_1441’ declared with attribute error: FIELD_PREP: mask is not constant
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                                      ^
././include/linux/compiler_types.h:338:4: note: in definition of macro ‘__compiletime_assert’
    prefix ## suffix();    \
    ^~~~~~
././include/linux/compiler_types.h:357:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:114:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
   ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2399:3: note: in expansion of macro ‘FIELD_PREP’
   FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
   ^~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2407:1: note: in expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
 MAKE_CONTEXT_POLICY_ADD(priority, SCHEDULING_PRIORITY)
 ^~~~~~~~~~~~~~~~~~~~~~~
In function ‘__guc_context_policy_add_priority.isra.45’,
    inlined from ‘__guc_add_request’ at drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2437:2:
././include/linux/compiler_types.h:357:38: error: call to ‘__compiletime_assert_1441’ declared with attribute error: FIELD_PREP: mask is not constant
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                                      ^
././include/linux/compiler_types.h:338:4: note: in definition of macro ‘__compiletime_assert’
    prefix ## suffix();    \
    ^~~~~~
././include/linux/compiler_types.h:357:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:114:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
   ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2399:3: note: in expansion of macro ‘FIELD_PREP’
   FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
   ^~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2407:1: note: in expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
 MAKE_CONTEXT_POLICY_ADD(priority, SCHEDULING_PRIORITY)
 ^~~~~~~~~~~~~~~~~~~~~~~
In function ‘__guc_context_policy_add_priority.isra.45’,
    inlined from ‘register_context’ at drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2437:2:
././include/linux/compiler_types.h:357:38: error: call to ‘__compiletime_assert_1441’ declared with attribute error: FIELD_PREP: mask is not constant
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                                      ^
././include/linux/compiler_types.h:338:4: note: in definition of macro ‘__compiletime_assert’
    prefix ## suffix();    \
    ^~~~~~
././include/linux/compiler_types.h:357:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:114:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
   ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2399:3: note: in expansion of macro ‘FIELD_PREP’
   FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
   ^~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2407:1: note: in expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
 MAKE_CONTEXT_POLICY_ADD(priority, SCHEDULING_PRIORITY)
 ^~~~~~~~~~~~~~~~~~~~~~~
In function ‘__guc_context_policy_add_preemption_timeout.isra.48’,
    inlined from ‘__guc_context_set_preemption_timeout’ at drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2933:3:
././include/linux/compiler_types.h:357:38: error: call to ‘__compiletime_assert_1431’ declared with attribute error: FIELD_PREP: mask is not constant
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                                      ^
././include/linux/compiler_types.h:338:4: note: in definition of macro ‘__compiletime_assert’
    prefix ## suffix();    \
    ^~~~~~
././include/linux/compiler_types.h:357:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:114:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
   ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2399:3: note: in expansion of macro ‘FIELD_PREP’
   FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
   ^~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2406:1: note: in expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
 MAKE_CONTEXT_POLICY_ADD(preemption_timeout, PREEMPTION_TIMEOUT)
 ^~~~~~~~~~~~~~~~~~~~~~~
make[5]: *** [scripts/Makefile.build:250: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o] Error 1
make[4]: *** [scripts/Makefile.build:500: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:500: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:500: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:500: drivers] Error 2
make: *** [Makefile:1992: .] Error 2





-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
