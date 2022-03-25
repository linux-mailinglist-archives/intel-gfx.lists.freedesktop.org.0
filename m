Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8172F4E703C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 10:49:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7972310E140;
	Fri, 25 Mar 2022 09:49:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A57210E140
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 09:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648201765; x=1679737765;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=XT1C6/pI80nMRalJ99U/FsxVEtqCoxGqrszlUIBRZjA=;
 b=IBpdNxDyCr+BAJohgeA7W5ZrzRvB5cDItfidD5PqSdOOHBM2w5ywbqt7
 mBIHk2b/NeXeysQXgFMWpbIWlSNbjfoSe+5EIH1Sl5TgHu31L+87ivO61
 e/V+cxE4C+DqEnx+fJ+HZSXKK/u+xPnvttaPUrfuhfOw0cE2Zjh24vYWQ
 HU7yNSd9maE5MEoyCF57ObBPvScdxwS8CFr+uh3r1ZdTG8T5l0Xf9oSNl
 icfntRAs78Y4sarT0FAZPy2Fvduyb7LbJVnv7CGIdvhyf6Hm1C63OW5Pt
 prJ41zC1IU1dvuBKsw6i8rcuMABd5wHVytR2rrdnIEPZK+INNkVpW+gC8 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258565227"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258565227"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 02:49:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="545022433"
Received: from mhenry-mobl.ger.corp.intel.com (HELO [10.252.10.83])
 ([10.252.10.83])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 02:49:23 -0700
Message-ID: <036f5ea3-9379-1cec-e452-0b92e1bd8f72@intel.com>
Date: Fri, 25 Mar 2022 09:49:22 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20220324143123.348590-1-matthew.auld@intel.com>
 <164815290933.18591.1757714584640289364@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <164815290933.18591.1757714584640289364@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgbG1l?=
 =?utf-8?q?m=5Fsize_modparam?=
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

On 24/03/2022 20:15, Patchwork wrote:
> *Patch Details*
> *Series:*	lmem_size modparam
> *URL:*	https://patchwork.freedesktop.org/series/101744/ 
> <https://patchwork.freedesktop.org/series/101744/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11402_full -> Patchwork_22671_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_22671_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22671_full, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (11 -> 11)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_22671_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@gem_exec_schedule@wide@vcs0:
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl2/igt@gem_exec_schedule@wide@vcs0.html>

Unrelated fail.

> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>       o {shard-tglu}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_22671_full that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@feature_discovery@psr2:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb7/igt@feature_discovery@psr2.html>
>         ([i915#658])
>   *
> 
>     igt@gem_ctx_persistence@engines-mixed:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-snb5/igt@gem_ctx_persistence@engines-mixed.html>
>         ([fdo#109271] / [i915#1099]) +1 similar issue
>   *
> 
>     igt@gem_ctx_sseu@engines:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb3/igt@gem_ctx_sseu@engines.html>
>         ([i915#280])
>   *
> 
>     igt@gem_eio@in-flight-suspend:
> 
>       o shard-kbl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-kbl4/igt@gem_eio@in-flight-suspend.html>
>         ([i915#3614])
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11402/shard-iclb4/igt@gem_eio@unwedge-stress.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb3/igt@gem_eio@unwedge-stress.html>
>         ([i915#2481] / [i915#3070])
>   *
> 
>     igt@gem_exec_balancer@parallel-bb-first:
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl9/igt@gem_exec_balancer@parallel-bb-first.html>
>         ([fdo#109271] / [i915#1888])
> 
>       o
> 
>         shard-tglb: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb5/igt@gem_exec_balancer@parallel-bb-first.html>
>         ([i915#5076])
> 
>       o
> 
>         shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-kbl4/igt@gem_exec_balancer@parallel-bb-first.html>
>         ([i915#5076])
> 
>       o
> 
>         shard-iclb: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html>
>         ([i915#5076])
> 
>   *
> 
>     igt@gem_exec_capture@pi@rcs0:
> 
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl7/igt@gem_exec_capture@pi@rcs0.html>
>         ([i915#4547])
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o
> 
>         shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11402/shard-kbl1/igt@gem_exec_fair@basic-deadline.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-kbl4/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846])
> 
>       o
> 
>         shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl9/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846])
> 
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o
> 
>         shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         ([i915#2842])
> 
>       o
> 
>         shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb3/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         ([i915#2842]) +1 similar issue
> 
>   *
> 
>     igt@gem_exec_fair@basic-none-vip@rcs0:
> 
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb3/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         ([i915#2842]) +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-none@vcs0:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11402/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11402/shard-tglb3/igt@gem_huc_copy@huc-copy.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb7/igt@gem_huc_copy@huc-copy.html>
>         ([i915#2190])
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-random:
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-kbl4/igt@gem_lmem_swapping@heavy-verify-random.html>
>         ([fdo#109271] / [i915#4613]) +2 similar issues
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb3/igt@gem_lmem_swapping@heavy-verify-random.html>
>         ([i915#4613]) +1 similar issue
> 
>   *
> 
>     igt@gem_lmem_swapping@parallel-random:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl8/igt@gem_lmem_swapping@parallel-random.html>
>         ([fdo#109271] / [i915#4613]) +3 similar issues
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-engines:
> 
>       o
> 
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-glk4/igt@gem_lmem_swapping@parallel-random-engines.html>
>         ([fdo#109271] / [i915#4613]) +1 similar issue
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb6/igt@gem_lmem_swapping@parallel-random-engines.html>
>         ([i915#4613]) +2 similar issues
> 
>   *
> 
>     igt@gem_lmem_swapping@random:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-apl8/igt@gem_lmem_swapping@random.html>
>         ([fdo#109271] / [i915#4613]) +3 similar issues
>   *
> 
>     igt@gem_pread@exhaustion:
> 
>       o
> 
>         shard-tglb: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb7/igt@gem_pread@exhaustion.html>
>         ([i915#2658]) +1 similar issue
> 
>       o
> 
>         shard-glk: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-glk7/igt@gem_pread@exhaustion.html>
>         ([i915#2658])
> 
>   *
> 
>     igt@gem_pwrite@basic-exhaustion:
> 
>       o
> 
>         shard-skl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl1/igt@gem_pwrite@basic-exhaustion.html>
>         ([i915#2658])
> 
>       o
> 
>         shard-iclb: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb8/igt@gem_pwrite@basic-exhaustion.html>
>         ([i915#2658])
> 
>       o
> 
>         shard-kbl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-kbl6/igt@gem_pwrite@basic-exhaustion.html>
>         ([i915#2658])
> 
>   *
> 
>     igt@gem_pxp@create-protected-buffer:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb4/igt@gem_pxp@create-protected-buffer.html>
>         ([i915#4270]) +2 similar issues
>   *
> 
>     igt@gem_pxp@reject-modify-context-protection-on:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb5/igt@gem_pxp@reject-modify-context-protection-on.html>
>         ([i915#4270]) +3 similar issues
>   *
> 
>     igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-kbl6/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html>
>         ([fdo#109271]) +227 similar issues
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb6/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html>
>         ([i915#768]) +1 similar issue
> 
>   *
> 
>     igt@gem_userptr_blits@dmabuf-sync:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-glk3/igt@gem_userptr_blits@dmabuf-sync.html>
>         ([fdo#109271] / [i915#3323])
>   *
> 
>     igt@gem_userptr_blits@input-checking:
> 
>       o shard-skl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl8/igt@gem_userptr_blits@input-checking.html>
>         ([i915#4991])
>   *
> 
>     igt@gem_userptr_blits@unsync-unmap-after-close:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb6/igt@gem_userptr_blits@unsync-unmap-after-close.html>
>         ([i915#3297])
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb5/igt@gem_userptr_blits@unsync-unmap-after-close.html>
>         ([i915#3297])
> 
>   *
> 
>     igt@gen7_exec_parse@basic-offset:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb6/igt@gen7_exec_parse@basic-offset.html>
>         ([fdo#109289]) +3 similar issues
>   *
> 
>     igt@gen9_exec_parse@bb-start-out:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb1/igt@gen9_exec_parse@bb-start-out.html>
>         ([i915#2527] / [i915#2856]) +2 similar issues
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb6/igt@gen9_exec_parse@bb-start-out.html>
>         ([i915#2856]) +1 similar issue
> 
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-skl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl8/igt@i915_module_load@reload-with-fault-injection.html>
>         ([i915#1982])
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl4/igt@i915_pm_dc@dc6-psr.html>
>         ([i915#454])
>   *
> 
>     igt@i915_pm_dc@dc9-dpms:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11402/shard-apl1/igt@i915_pm_dc@dc9-dpms.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-apl4/igt@i915_pm_dc@dc9-dpms.html>
>         ([fdo#109271]) +1 similar issue
>   *
> 
>     igt@i915_pm_lpsp@screens-disabled:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb7/igt@i915_pm_lpsp@screens-disabled.html>
>         ([i915#1902])
>   *
> 
>     igt@i915_pm_rpm@dpms-non-lpsp:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb7/igt@i915_pm_rpm@dpms-non-lpsp.html>
>         ([fdo#111644] / [i915#1397] / [i915#2411])
>   *
> 
>     igt@i915_query@query-topology-known-pci-ids:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb7/igt@i915_query@query-topology-known-pci-ids.html>
>         ([fdo#109303])
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb3/igt@i915_query@query-topology-known-pci-ids.html>
>         ([fdo#109303])
> 
>   *
> 
>     igt@i915_suspend@forcewake:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11402/shard-apl1/igt@i915_suspend@forcewake.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-apl8/igt@i915_suspend@forcewake.html>
>         ([i915#180])
>   *
> 
>     igt@kms_big_fb@4-tiled-32bpp-rotate-90:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb6/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html>
>         ([i915#5286]) +4 similar issues
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html>
>         ([i915#5286]) +7 similar issues
>   *
> 
>     igt@kms_big_fb@linear-32bpp-rotate-180:
> 
>       o shard-glk: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html>
>         ([i915#118])
>   *
> 
>     igt@kms_big_fb@linear-8bpp-rotate-90:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb5/igt@kms_big_fb@linear-8bpp-rotate-90.html>
>         ([fdo#111614])
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb6/igt@kms_big_fb@linear-8bpp-rotate-90.html>
>         ([fdo#110725] / [fdo#111614])
> 
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html>
>         ([i915#3743]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777])
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777])
> 
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         ([fdo#111615]) +2 similar issues
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777]) +2 similar issues
>   *
> 
>     igt@kms_big_joiner@invalid-modeset:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb7/igt@kms_big_joiner@invalid-modeset.html>
>         ([i915#2705])
>   *
> 
>     igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>         ([i915#3689] / [i915#3886]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-kbl6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +10 similar issues
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +10 similar issues
> 
>   *
> 
>     igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb7/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs.html>
>         ([i915#3689]) +6 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb1/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html>
>         ([fdo#111615] / [i915#3689]) +4 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-glk6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +3 similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb3/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109278] / [i915#3886]) +6 similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-apl2/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +9 similar issues
>   *
> 
>     igt@kms_chamelium@dp-hpd-storm-disable:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-glk8/igt@kms_chamelium@dp-hpd-storm-disable.html>
>         ([fdo#109271] / [fdo#111827]) +7 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb3/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html>
>         ([fdo#109284] / [fdo#111827]) +9 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-hpd-storm-disable:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl10/igt@kms_chamelium@hdmi-hpd-storm-disable.html>
>         ([fdo#109271] / [fdo#111827] / [i915#1888])
>   *
> 
>     igt@kms_chamelium@vga-hpd-without-ddc:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-kbl4/igt@kms_chamelium@vga-hpd-without-ddc.html>
>         ([fdo#109271] / [fdo#111827]) +16 similar issues
>   *
> 
>     igt@kms_color@pipe-d-ctm-0-75:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb3/igt@kms_color@pipe-d-ctm-0-75.html>
>         ([fdo#109278] / [i915#1149])
>   *
> 
>     igt@kms_color_chamelium@pipe-b-ctm-limited-range:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb7/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html>
>         ([fdo#109284] / [fdo#111827]) +13 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-b-ctm-max:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl7/igt@kms_color_chamelium@pipe-b-ctm-max.html>
>         ([fdo#109271] / [fdo#111827]) +15 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-b-ctm-negative:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-snb5/igt@kms_color_chamelium@pipe-b-ctm-negative.html>
>         ([fdo#109271] / [fdo#111827]) +6 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-c-ctm-max:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-apl4/igt@kms_color_chamelium@pipe-c-ctm-max.html>
>         ([fdo#109271] / [fdo#111827]) +8 similar issues
>   *
> 
>     igt@kms_content_protection@content_type_change:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb5/igt@kms_content_protection@content_type_change.html>
>         ([i915#1063]) +1 similar issue
>   *
> 
>     igt@kms_content_protection@dp-mst-lic-type-1:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb2/igt@kms_content_protection@dp-mst-lic-type-1.html>
>         ([i915#3116] / [i915#3299])
>   *
> 
>     igt@kms_content_protection@legacy:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb5/igt@kms_content_protection@legacy.html>
>         ([fdo#109300] / [fdo#111066]) +1 similar issue
> 
>       o
> 
>         shard-kbl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-kbl3/igt@kms_content_protection@legacy.html>
>         ([i915#1319]) +1 similar issue
> 
>   *
> 
>     igt@kms_content_protection@srm:
> 
>       o shard-apl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-apl3/igt@kms_content_protection@srm.html>
>         ([i915#1319])
>   *
> 
>     igt@kms_content_protection@uevent:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-kbl1/igt@kms_content_protection@uevent.html>
>         ([i915#2105])
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen.html>
>         ([fdo#109278] / [fdo#109279]) +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html>
>         ([i915#3319]) +2 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-d-cursor-512x170-rapid-movement:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x170-rapid-movement.html>
>         ([i915#3359]) +10 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html>
>         ([fdo#109279] / [i915#3359]) +7 similar issues
>   *
> 
>     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html>
>         ([fdo#109274] / [fdo#109278]) +2 similar issues
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o
> 
>         shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         ([i915#2346] / [i915#533])
> 
>       o
> 
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11402/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         ([i915#2346] / [i915#533])
> 
>   *
> 
>     igt@kms_cursor_legacy@pipe-d-single-bo:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-kbl6/igt@kms_cursor_legacy@pipe-d-single-bo.html>
>         ([fdo#109271] / [i915#533]) +1 similar issue
>   *
> 
>     igt@kms_cursor_legacy@pipe-d-torture-bo:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html>
>         ([fdo#109271] / [i915#533]) +1 similar issue
>   *
> 
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html>
>         ([i915#4103])
>   *
> 
>     igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb7/igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled.html>
>         ([i915#5287]) +3 similar issues
>   *
> 
>     igt@kms_draw_crc@draw-method-rgb565-render-4tiled:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb1/igt@kms_draw_crc@draw-method-rgb565-render-4tiled.html>
>         ([i915#5287]) +2 similar issues
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o
> 
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11402/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#180] / [i915#1982])
> 
>       o
> 
>         shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11402/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#180] / [i915#636])
> 
>   *
> 
>     igt@kms_flip@2x-plain-flip-interruptible:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb1/igt@kms_flip@2x-plain-flip-interruptible.html>
>         ([fdo#109274] / [fdo#111825]) +8 similar issues
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb8/igt@kms_flip@2x-plain-flip-interruptible.html>
>         ([fdo#109274]) +4 similar issues
> 
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@a-edp1:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html>
>         ([i915#79])
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@b-edp1:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html>
>         ([i915#2122])
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11402/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html>
>         ([i915#2122])
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html>
>         ([i915#4911])
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html>
>         ([i915#2587])
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb3/igt@kms_force_connector_basic@force-load-detect.html>
>         ([fdo#109285])
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb3/igt@kms_force_connector_basic@force-load-detect.html>
>         ([fdo#109285])
> 
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl2/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html>
>         ([fdo#109271]) +296 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html>
>         ([fdo#109280] / [fdo#111825]) +26 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html>
>         ([fdo#109271]) +175 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html>
>         ([fdo#109280]) +16 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-glk6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html>
>         ([fdo#109271]) +107 similar issues
>   *
> 
>     igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl2/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html>
>         ([i915#1188])
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22671/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html>
>         ([fdo#109271] / [i915#533]) +3 similar issues
>   *
> 
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
> 
>       o shard-kbl: [PASS][124] -> [DMESG-WARN
> 
