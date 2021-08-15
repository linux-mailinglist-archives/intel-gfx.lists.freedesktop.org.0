Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 093DE3ECB92
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Aug 2021 23:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1082289A62;
	Sun, 15 Aug 2021 21:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66D2B89A62
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Aug 2021 21:59:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="212649428"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="212649428"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 14:59:49 -0700
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="486934424"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 14:59:49 -0700
Date: Sun, 15 Aug 2021 14:54:35 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210815215435.GA2791@jons-linux-dev-box>
References: <20210815201559.1150-1-matthew.brost@intel.com>
 <162906213192.6205.13761410296264336605@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <162906213192.6205.13761410296264336605@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ2xl?=
 =?utf-8?q?an_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_DOC?=
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

On Sun, Aug 15, 2021 at 09:15:31PM +0000, Patchwork wrote:
> Patch Details
> 
> Series:  Clean up GuC CI failures, simplify locking, and kernel DOC
> URL:     https://patchwork.freedesktop.org/series/93704/
> State:   failure
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/index.html
> 
> CI Bug Log - changes from CI_DRM_10484 -> Patchwork_20826
> 
> Summary
> 
> FAILURE
> 
> Serious unknown changes coming with Patchwork_20826 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_20826, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/
> index.html
> 
> Possible new issues
> 
> Here are the unknown changes that may have been introduced in Patchwork_20826:
> 
> IGT changes
> 
> Possible regressions
> 
>   • igt@i915_selftest@live@requests:
> 
>       □ fi-cfl-guc: PASS -> DMESG-FAIL
> 

New selftext, __cancel_reset, is exposing a bug (or at minimum different
behavior) in the execlists implementation for canceling requests. Will
fix in new rev.

Matt

>       □ fi-kbl-soraka: PASS -> DMESG-FAIL
> 
>       □ fi-bxt-dsi: PASS -> DMESG-FAIL
> 
>       □ fi-tgl-1115g4: PASS -> DMESG-FAIL
> 
>       □ fi-cml-u2: PASS -> DMESG-FAIL
> 
>       □ fi-kbl-8809g: PASS -> DMESG-FAIL
> 
>       □ fi-cfl-8700k: PASS -> DMESG-FAIL
> 
>       □ fi-cfl-8109u: PASS -> DMESG-FAIL
> 
>       □ fi-icl-u2: PASS -> DMESG-FAIL
> 
>       □ fi-kbl-7500u: PASS -> DMESG-FAIL
> 
>       □ fi-bsw-nick: PASS -> DMESG-FAIL
> 
>       □ fi-icl-y: PASS -> DMESG-FAIL
> 
>       □ fi-kbl-guc: PASS -> DMESG-FAIL
> 
>       □ fi-kbl-7567u: PASS -> DMESG-FAIL
> 
>       □ fi-skl-guc: PASS -> DMESG-FAIL
> 
>       □ fi-bdw-5557u: PASS -> DMESG-FAIL
> 
>       □ fi-glk-dsi: PASS -> DMESG-FAIL
> 
>       □ fi-bsw-kefka: PASS -> DMESG-FAIL
> 
>       □ fi-skl-6700k2: PASS -> DMESG-FAIL
> 
> Warnings
> 
>   • igt@i915_selftest@live@workarounds:
>       □ fi-rkl-guc: DMESG-FAIL (i915#3928) -> INCOMPLETE
> 
> Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   • igt@i915_selftest@live@requests:
> 
>       □ {fi-tgl-dsi}: PASS -> DMESG-FAIL
> 
>       □ {fi-jsl-1}: PASS -> DMESG-FAIL
> 
>       □ {fi-ehl-2}: PASS -> DMESG-FAIL
> 
> New tests
> 
> New tests have been introduced between CI_DRM_10484 and Patchwork_20826:
> 
> New IGT tests (1)
> 
>   • igt@i915_selftest@live@guc:
>       □ Statuses : 30 pass(s)
>       □ Exec time: [0.42, 5.06] s
> 
> Known issues
> 
> Here are the changes found in Patchwork_20826 that come from known issues:
> 
> IGT changes
> 
> Issues hit
> 
>   • igt@i915_module_load@reload:
> 
>       □ fi-kbl-soraka: PASS -> DMESG-WARN (i915#1982)
>   • igt@i915_selftest@live@execlists:
> 
>       □ fi-icl-y: PASS -> DMESG-FAIL (i915#1993)
> 
> Possible fixes
> 
>   • igt@i915_module_load@reload:
>       □ {fi-tgl-dsi}: DMESG-WARN (i915#1982 / k.org#205379) -> PASS
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Participating hosts (37 -> 34)
> 
> Missing (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1
> 
> Build changes
> 
>   • Linux: CI_DRM_10484 -> Patchwork_20826
> 
> CI-20190529: 20190529
> CI_DRM_10484: 7de02d5cb1f35bd3f068237444063844dea47ddc @ git://
> anongit.freedesktop.org/gfx-ci/linux
> IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://
> gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_20826: f7ff315bfe3a76713c1f0a16cd92b0908d28e4c6 @ git://
> anongit.freedesktop.org/gfx-ci/linux
> 
> == Linux commits ==
> 
> f7ff315bfe3a drm/i915/guc: Add GuC kernel doc
> af14e3698d19 drm/i915/guc: Move GuC priority fields in context under guc_active
> eb8a352e7c1f drm/i915/guc: Drop pin count check trick between sched_disable and
> re-pin
> 7057a0daff8c drm/i915/guc: Proper xarray usage for contexts_lookup
> d97ab34c8bac drm/i915/guc: Rework and simplify locking
> 4c980575f7af drm/i915/guc: Move guc_blocked fence to struct guc_state
> 1c2b4c0ac62a drm/i915/guc: Release submit fence from an IRQ
> 14dc302536e1 drm/i915/guc: Flush G2H work queue during reset
> c0ad63d810e6 drm/i915: Allocate error capture in atomic context
> 6c1c488a3654 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
> 025e88fa74d3 drm/i915/guc: Don't touch guc_state.sched_state without a lock
> b929abcf3b59 drm/i915/guc: Take context ref when cancelling request
> b5e8c08dff35 drm/i915/selftests: Add initial GuC selftest for scrubbing lost
> G2H
> cddf94c9bda0 drm/i915/selftests: Fix memory corruption in live_lrc_isolation
> c18da32e671c drm/i915/guc: Don't enable scheduling on a banned context, guc_id
> invalid, not registered
> 0c0928ba1ba8 drm/i915/selftests: Add a cancel request selftest that triggers a
> reset
> 8ec967ce47da drm/i915/guc: Workaround reset G2H is received after schedule done
> G2H
> 2739b8f8966f drm/i915/guc: Don't drop ce->guc_active.lock when unwinding
> context
> 1d414637d838 drm/i915/guc: Unwind context requests in reverse order
> 7fe738f56abc drm/i915/guc: outstanding G2H accounting
> c9f3859e5dce drm/i915/guc: Fix blocked context accounting
> 
> SECURITY NOTE: file ~/.netrc must not be accessible by others
