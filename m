Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E8D42B0EE
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 02:20:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E90156E049;
	Wed, 13 Oct 2021 00:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FCF16E049
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 00:20:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="288178052"
X-IronPort-AV: E=Sophos;i="5.85,369,1624345200"; d="scan'208";a="288178052"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 17:20:39 -0700
X-IronPort-AV: E=Sophos;i="5.85,369,1624345200"; d="scan'208";a="547651512"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 17:20:39 -0700
Date: Tue, 12 Oct 2021 17:15:54 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
Message-ID: <20211013001554.GB4739@jons-linux-dev-box>
References: <20211004220637.14746-1-matthew.brost@intel.com>
 <163338610450.1480.1050244388708372471@emeril.freedesktop.org>
 <9f423dd2-f083-ad8e-1f60-ceb5d53799fc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9f423dd2-f083-ad8e-1f60-ceb5d53799fc@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Parallel_submission_aka_multi-bb_execbuf_=28rev4=29?=
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

On Tue, Oct 12, 2021 at 03:15:00PM -0700, John Harrison wrote:
> On 10/4/2021 15:21, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: Parallel submission aka multi-bb execbuf (rev4)
> > URL   : https://patchwork.freedesktop.org/series/92789/
> > State : warning
> > 
> > == Summary ==
> > 
> > $ dim checkpatch origin/drm-tip
> > e2a47a99bf9d drm/i915/guc: Move GuC guc_id allocation under submission state sub-struct
> > f83d8f1539fa drm/i915/guc: Take GT PM ref when deregistering context
> > -:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
> > #79: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
> > +#define with_intel_gt_pm(gt, tmp) \
> > +	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
> > +	     intel_gt_pm_put(gt), tmp = 0)
> > 
> > -:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
> > #79: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
> > +#define with_intel_gt_pm(gt, tmp) \
> > +	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
> > +	     intel_gt_pm_put(gt), tmp = 0)
> Not sure what these two are complaining about? But 'gt' and 'tmp' should be
> wrapped with parentheses when used?
> 

Not, sure but I think this one is fine.

> > 
> > total: 0 errors, 0 warnings, 2 checks, 290 lines checked
> > 93e5284929b3 drm/i915/guc: Take engine PM when a context is pinned with GuC submission
> > 4dd6554d994d drm/i915/guc: Don't call switch_to_kernel_context with GuC submission
> > 8629b55f536c drm/i915: Add logical engine mapping
> > 8117ec0a1ca7 drm/i915: Expose logical engine instance to user
> > aa8e1eb4dd4e drm/i915/guc: Introduce context parent-child relationship
> > aaf50eacc2fd drm/i915/guc: Add multi-lrc context registration
> > e5f6f50e66d1 drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts
> > adf21ba138f3 drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids
> > 40ef33318b81 drm/i915/guc: Implement parallel context pin / unpin functions
> > 1ad560c70346 drm/i915/guc: Implement multi-lrc submission
> > -:364: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
> > #364: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:771:
> > +		*wqi++ = child->ring->tail / sizeof(u64);
> >   		^
> This seems like a bogus warning.
> 

Agree.

> > 
> > total: 0 errors, 0 warnings, 1 checks, 570 lines checked
> > 466c01457dec drm/i915/guc: Insert submit fences between requests in parent-child relationship
> > 2ece815c1f18 drm/i915/guc: Implement multi-lrc reset
> > 7add5784199f drm/i915/guc: Update debugfs for GuC multi-lrc
> > -:23: CHECK:LINE_SPACING: Please don't use multiple blank lines
> > #23: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3707:
> > +
> This should be fixed.
>

Done.
 
> > 
> > total: 0 errors, 0 warnings, 1 checks, 67 lines checked
> > 966991d7bbed drm/i915: Fix bug in user proto-context creation that leaked contexts
> > 0eb3d3bf0c84 drm/i915/guc: Connect UAPI to GuC multi-lrc interface
> > 68c6596b649a drm/i915/doc: Update parallel submit doc to point to i915_drm.h
> > -:13: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
> > #13:
> > deleted file mode 100644
> > 
> > total: 0 errors, 1 warnings, 0 checks, 10 lines checked
> > 8290f5d15ca2 drm/i915/guc: Add basic GuC multi-lrc selftest
> > -:22: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
> > #22:
> > new file mode 100644
> These two can be ignored.

Agree.

> 
> > total: 0 errors, 1 warnings, 0 checks, 190 lines checked
> > ade3768c42d5 drm/i915/guc: Implement no mid batch preemption for multi-lrc
> > 57882939d788 drm/i915: Multi-BB execbuf
> > -:369: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
> > #369: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1854:
> > +#define for_each_batch_create_order(_eb, _i) \
> > +	for (_i = 0; _i < (_eb)->num_batches; ++_i)
> Again, not sure the 'reuse' comment means but should also use '(_i)'?
>

I haven't been able to figure out how to fix these ones. I think you
only need () if you dref the variable.
 
> > 
> > -:371: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
> > #371: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1856:
> > +#define for_each_batch_add_order(_eb, _i) \
> > +	BUILD_BUG_ON(!typecheck(int, _i)); \
> > +	for (_i = (_eb)->num_batches - 1; _i >= 0; --_i)
> This seems bogus. Wrapping it in a do/while will break the purpose!
> 

Right. Added the BUILD_BUG_ON here because I did have a bug where I used
an unsigned with this macro and that breaks the macro. 

Matt

> > 
> > -:371: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
> > #371: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1856:
> > +#define for_each_batch_add_order(_eb, _i) \
> > +	BUILD_BUG_ON(!typecheck(int, _i)); \
> > +	for (_i = (_eb)->num_batches - 1; _i >= 0; --_i)
> As above.
> 
> > 
> > total: 1 errors, 0 warnings, 2 checks, 1298 lines checked
> > 28b699ece289 drm/i915/guc: Handle errors in multi-lrc requests
> > 962e6b3dce59 drm/i915: Make request conflict tracking understand parallel submits
> > 368ab12f5205 drm/i915: Update I915_GEM_BUSY IOCTL to understand composite fences
> > b52570f01859 drm/i915: Enable multi-bb execbuf
> > 8766155832d7 drm/i915/execlists: Weak parallel submission support for execlists
> > 
> > 
> 
