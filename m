Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 880EB3E1B29
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 20:24:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5EDC6EB1B;
	Thu,  5 Aug 2021 18:24:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A95256EB1B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 18:24:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="194496553"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="194496553"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 11:24:06 -0700
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="671874113"
Received: from dut151-iclu.fm.intel.com ([10.105.23.43])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 11:24:06 -0700
Date: Thu, 5 Aug 2021 18:24:05 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210805182405.GA101416@DUT151-ICLU.fm.intel.com>
References: <20210805120509.2270455-1-tvrtko.ursulin@linux.intel.com>
 <162817586068.30840.1268000622740440728@emeril.freedesktop.org>
 <bfd5adce-dcc1-ef7e-6001-507e2840a3ca@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bfd5adce-dcc1-ef7e-6001-507e2840a3ca@linux.intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Be_more_gentle_when_exiting_non-persistent_contexts?=
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

On Thu, Aug 05, 2021 at 05:10:29PM +0100, Tvrtko Ursulin wrote:
> 
> On 05/08/2021 16:04, Patchwork wrote:
> > *Patch Details*
> > *Series:*	drm/i915: Be more gentle when exiting non-persistent contexts
> > *URL:*	https://patchwork.freedesktop.org/series/93420/
> > <https://patchwork.freedesktop.org/series/93420/>
> > *State:*	failure
> > *Details:*
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20775/index.html
> > <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20775/index.html>
> > 
> > 
> >   CI Bug Log - changes from CI_DRM_10450 -> Patchwork_20775
> > 
> > 
> >     Summary
> > 
> > *FAILURE*
> > 
> > Serious unknown changes coming with Patchwork_20775 absolutely need to be
> > verified manually.
> > 
> > If you think the reported changes have nothing to do with the changes
> > introduced in Patchwork_20775, please notify your bug team to allow them
> > to document this new failure mode, which will reduce false positives in CI.
> > 
> > External URL:
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20775/index.html
> > 
> > 
> >     Possible new issues
> > 
> > Here are the unknown changes that may have been introduced in
> > Patchwork_20775:
> > 
> > 
> >       IGT changes
> > 
> > 
> >         Possible regressions
> > 
> >   * igt@i915_selftest@live@gt_lrc:
> >       o fi-rkl-guc: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10450/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html>
> >         -> DMESG-WARN
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20775/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html>
> 
> <6> [233.928677] i915: Running intel_lrc_live_selftests/live_lrc_isolation
> <3> [233.988780] i915 0000:00:02.0: [drm] *ERROR* rcs0 context redzone overwritten!
> 
> Something GuC specific by the look of it, or at least I haven't found the same signature elsewhere. But in any case it is not related to this patch.
> 

No sure what this is about. Ran this locally on a RKL machine and it
passed just fine for me. Something to keep an eye on as CI gets fully
enabled with GuC submission.

Also BTW, speaking of CI & GuC submission it isn't all that great yet.
Maybe ping me when you have the next rev of this patch and I can run
series of tests with GuC submission related to banning / persistence.

Matt

> Regards,
> 
> Tvrtko
> 
> > 
> > 
> >     Known issues
> > 
> > Here are the changes found in Patchwork_20775 that come from known issues:
> > 
> > 
> >       IGT changes
> > 
> > 
> >         Issues hit
> > 
> >   *
> > 
> >     igt@amdgpu/amd_basic@query-info:
> > 
> >       o fi-bsw-kefka: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20775/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html>
> >         (fdo#109271
> >         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +17
> >         similar issues
> >   *
> > 
> >     igt@gem_exec_fence@basic-busy@bcs0:
> > 
> >       o fi-kbl-soraka: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20775/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html>
> >         (fdo#109271
> >         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +26
> >         similar issues
> >   *
> > 
> >     igt@gem_huc_copy@huc-copy:
> > 
> >       o fi-kbl-soraka: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20775/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html>
> >         (fdo#109271
> >         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
> >         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
> >   *
> > 
> >     igt@i915_pm_rpm@basic-rte:
> > 
> >       o fi-kbl-soraka: NOTRUN -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20775/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html>
> >         (i915#579 <https://gitlab.freedesktop.org/drm/intel/issues/579>)
> >   *
> > 
> >     igt@i915_selftest@live@gt_pm:
> > 
> >       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20775/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html>
> >         (i915#1886
> >         <https://gitlab.freedesktop.org/drm/intel/issues/1886> /
> >         i915#2291 <https://gitlab.freedesktop.org/drm/intel/issues/2291>)
> >   *
> > 
> >     igt@i915_selftest@live@late_gt_pm:
> > 
> >       o fi-bsw-nick: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10450/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html>
> >         -> DMESG-FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20775/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html>
> >         (i915#2927 <https://gitlab.freedesktop.org/drm/intel/issues/2927>)
> >   *
> > 
> >     igt@kms_chamelium@common-hpd-after-suspend:
> > 
> >       o fi-kbl-soraka: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20775/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html>
> >         (fdo#109271
> >         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
> >         fdo#111827
> >         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
> >         similar issues
> >   *
> > 
> >     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
> > 
> >       o fi-kbl-soraka: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20775/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
> >         (fdo#109271
> >         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#533
> >         <https://gitlab.freedesktop.org/drm/intel/issues/533>)
> >   *
> > 
> >     igt@runner@aborted:
> > 
> >       o fi-bsw-nick: NOTRUN -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20775/fi-bsw-nick/igt@runner@aborted.html>
> >         (fdo#109271
> >         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
> >         i915#1436 <https://gitlab.freedesktop.org/drm/intel/issues/1436>)
> > 
> > 
> >         Possible fixes
> > 
> >   * igt@i915_selftest@live@execlists:
> >       o fi-bsw-kefka: INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10450/fi-bsw-kefka/igt@i915_selftest@live@execlists.html>
> >         (i915#2940
> >         <https://gitlab.freedesktop.org/drm/intel/issues/2940>) -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20775/fi-bsw-kefka/igt@i915_selftest@live@execlists.html>
> > 
> > {name}: This element is suppressed. This means it is ignored when computing
> > the status of the difference (SUCCESS, WARNING, or FAILURE).
> > 
> > 
> >     Participating hosts (40 -> 35)
> > 
> > Additional (1): fi-kbl-soraka
> > Missing (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600
> > fi-bdw-samus bat-jsl-1
> > 
> > 
> >     Build changes
> > 
> >   * Linux: CI_DRM_10450 -> Patchwork_20775
> > 
> > CI-20190529: 20190529
> > CI_DRM_10450: 51d9c8293e8446e921b74d996982ade862fcfa5c @
> > git://anongit.freedesktop.org/gfx-ci/linux
> > IGT_6160: 4287344dd6a39d9036c5fb9a047a7d8f10bee981 @
> > https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> > Patchwork_20775: 62efd2820c620b384c9688fa71ad6e8a5f6d27fc @
> > git://anongit.freedesktop.org/gfx-ci/linux
> > 
> > == Linux commits ==
> > 
> > 62efd2820c62 drm/i915: Be more gentle when exiting non-persistent contexts
> > 
