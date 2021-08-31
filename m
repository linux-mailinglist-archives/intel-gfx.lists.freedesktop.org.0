Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E67A03FCB74
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Aug 2021 18:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13BDA89A9F;
	Tue, 31 Aug 2021 16:23:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5722B89A9F
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Aug 2021 16:23:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="215382160"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; d="scan'208";a="215382160"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 09:13:12 -0700
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; d="scan'208";a="541070197"
Received: from cfitzp2-mobl2.ger.corp.intel.com (HELO [10.213.255.231])
 ([10.213.255.231])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 09:13:10 -0700
To: intel-gfx@lists.freedesktop.org
References: <20210831132225.312768-1-tvrtko.ursulin@linux.intel.com>
 <163042458697.10657.16981790577624281144@emeril.freedesktop.org>
Cc: "Kempczynski, Zbigniew" <zbigniew.kempczynski@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <88f28a46-cb8a-388c-5fe5-a3a7ea8377b7@linux.intel.com>
Date: Tue, 31 Aug 2021 17:13:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <163042458697.10657.16981790577624281144@emeril.freedesktop.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/debugfs=3A_Do_not_report_c?=
 =?utf-8?q?urrently_active_engine_when_describing_objects?=
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


On 31/08/2021 16:43, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [1/2] drm/i915/debugfs: Do not report 
> currently active engine when describing objects
> *URL:*	https://patchwork.freedesktop.org/series/94202/ 
> <https://patchwork.freedesktop.org/series/94202/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_10539_full -> Patchwork_20929_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_20929_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_20929_full, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_20929_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@gem_softpin@noreloc-s3:
> 
>       o shard-apl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl7/igt@gem_softpin@noreloc-s3.html>
>   *
>     igt@sysfs_heartbeat_interval@mixed@vcs0:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vcs0.html>
>         -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vcs0.html>

(sysfs_heartbeat_interval:2559) [thread:2590] intel_allocator_msgchannel-WARNING: Error: Identifier removed
(sysfs_heartbeat_interval:2559) [thread:2590] intel_allocator-WARNING: Error receiving request in thread, ret = -1 [Identifier removed]
Dynamic subtest vcs0: SUCCESS (5.382s)

No idea - Zbysek?

Regards,

Tvrtko

> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   *
> 
>     igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-rkl-1/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html>
>         ([i915#1845]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-rkl-6/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html>
>         +10 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-max-size-random:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-rkl-5/igt@kms_cursor_crc@pipe-c-cursor-max-size-random.html>
>         ([fdo#112022]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-rkl-2/igt@kms_cursor_crc@pipe-c-cursor-max-size-random.html>
>         +47 similar issues
>   *
> 
>     igt@kms_cursor_legacy@pipe-c-torture-move:
> 
>       o {shard-rkl}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-rkl-1/igt@kms_cursor_legacy@pipe-c-torture-move.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-rkl-6/igt@kms_cursor_legacy@pipe-c-torture-move.html>
>         +4 similar issues
>   *
> 
>     igt@kms_cursor_legacy@pipe-d-torture-bo:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-rkl-5/igt@kms_cursor_legacy@pipe-d-torture-bo.html>
>         ([i915#533]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-rkl-2/igt@kms_cursor_legacy@pipe-d-torture-bo.html>
>         +3 similar issues
>   *
> 
>     igt@kms_pipe_crc_basic@read-crc-pipe-c:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-rkl-1/igt@kms_pipe_crc_basic@read-crc-pipe-c.html>
>         ([i915#1849]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-rkl-5/igt@kms_pipe_crc_basic@read-crc-pipe-c.html>
>         +25 similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
> 
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html>
>         +4 similar issues
>   *
> 
>     igt@kms_plane_multiple@atomic-pipe-c-tiling-none:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-c-tiling-none.html>
>         ([i915#3558]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-c-tiling-none.html>
>         +1 similar issue
>   *
> 
>     igt@kms_plane_multiple@atomic-pipe-c-tiling-yf:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html>
>         ([i915#1849] / [i915#3558]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html>
> 
> 
>       Piglit changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     spec@glsl-1.30@execution@built-in-functions@vs-acosh-vec4 (NEW):
> 
>       o {pig-icl-1065g7}: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/pig-icl-1065g7/spec@glsl-1.30@execution@built-in-functions@vs-acosh-vec4.html>
>         +6 similar issues
>   *
> 
>     spec@glsl-1.30@execution@built-in-functions@vs-op-bitxor-not-abs-int-ivec2
>     (NEW):
> 
>       o {pig-icl-1065g7}: NOTRUN -> CRASH
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/pig-icl-1065g7/spec@glsl-1.30@execution@built-in-functions@vs-op-bitxor-not-abs-int-ivec2.html>
> 
> 
>     New tests
> 
> New tests have been introduced between CI_DRM_10539_full and 
> Patchwork_20929_full:
> 
> 
>       New Piglit tests (8)
> 
>   *
> 
>     spec@glsl-1.30@execution@built-in-functions@fs-op-bitand-neg-ivec3-ivec3:
> 
>       o Statuses : 1 incomplete(s)
>       o Exec time: [0.0] s
>   *
> 
>     spec@glsl-1.30@execution@built-in-functions@fs-op-bitxor-int-int:
> 
>       o Statuses : 1 incomplete(s)
>       o Exec time: [0.0] s
>   *
> 
>     spec@glsl-1.30@execution@built-in-functions@fs-op-ne-uvec3-uvec3:
> 
>       o Statuses : 1 incomplete(s)
>       o Exec time: [0.0] s
>   *
> 
>     spec@glsl-1.30@execution@built-in-functions@fs-op-rshift-uvec3-uvec3:
> 
>       o Statuses : 1 incomplete(s)
>       o Exec time: [0.0] s
>   *
> 
>     spec@glsl-1.30@execution@built-in-functions@vs-acosh-vec4:
> 
>       o Statuses : 1 incomplete(s)
>       o Exec time: [0.0] s
>   *
> 
>     spec@glsl-1.30@execution@built-in-functions@vs-op-bitand-abs-not-int-int:
> 
>       o Statuses : 1 incomplete(s)
>       o Exec time: [0.0] s
>   *
> 
>     spec@glsl-1.30@execution@built-in-functions@vs-op-bitor-not-uint-uvec2:
> 
>       o Statuses : 1 incomplete(s)
>       o Exec time: [0.0] s
>   *
> 
>     spec@glsl-1.30@execution@built-in-functions@vs-op-bitxor-not-abs-int-ivec2:
> 
>       o Statuses : 1 crash(s)
>       o Exec time: [0.65] s
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_20929_full that come from known 
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
>     igt@gem_create@create-massive:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl4/igt@gem_create@create-massive.html>
>         ([i915#3002])
>   *
> 
>     igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-snb2/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html>
>         ([fdo#109271] / [i915#1099]) +4 similar issues
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-snb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-snb6/igt@gem_eio@unwedge-stress.html>
>         ([i915#3354])
>   *
> 
>     igt@gem_exec_fair@basic-none@rcs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl6/igt@gem_exec_fair@basic-none@rcs0.html>
>         ([i915#2842]) +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-pace@vecs0:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o
> 
>         shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb3/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2842])
> 
>       o
> 
>         shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2849])
> 
>   *
> 
>     igt@gem_exec_params@no-bsd:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb1/igt@gem_exec_params@no-bsd.html>
>         ([fdo#109283])
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o
> 
>         shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-tglb7/igt@gem_huc_copy@huc-copy.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb6/igt@gem_huc_copy@huc-copy.html>
>         ([i915#2190])
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl1/igt@gem_huc_copy@huc-copy.html>
>         ([fdo#109271] / [i915#2190])
> 
>   *
> 
>     igt@gem_pread@exhaustion:
> 
>       o shard-apl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl1/igt@gem_pread@exhaustion.html>
>         ([i915#2658])
>   *
> 
>     igt@gem_render_copy@linear-to-vebox-y-tiled:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl10/igt@gem_render_copy@linear-to-vebox-y-tiled.html>
>         ([fdo#109271]) +68 similar issues
>   *
> 
>     igt@gem_userptr_blits@coherency-sync:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb8/igt@gem_userptr_blits@coherency-sync.html>
>         ([fdo#110542])
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-iclb1/igt@gem_userptr_blits@coherency-sync.html>
>         ([fdo#109290])
> 
>   *
> 
>     igt@gem_userptr_blits@input-checking:
> 
>       o shard-snb: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-snb2/igt@gem_userptr_blits@input-checking.html>
>         ([i915#3002])
>   *
> 
>     igt@gem_userptr_blits@vma-merge:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl1/igt@gem_userptr_blits@vma-merge.html>
>         ([i915#3318])
>   *
> 
>     igt@gem_workarounds@suspend-resume-context:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-apl7/igt@gem_workarounds@suspend-resume-context.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl2/igt@gem_workarounds@suspend-resume-context.html>
>         ([i915#180])
>   *
> 
>     igt@gen9_exec_parse@shadow-peek:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb1/igt@gen9_exec_parse@shadow-peek.html>
>         ([i915#2856])
>   *
> 
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html>
>         ([fdo#109271] / [i915#1937])
>   *
> 
>     igt@i915_pm_rpm@gem-mmap-type@fixed:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl7/igt@i915_pm_rpm@gem-mmap-type@fixed.html>
>         ([fdo#109271] / [i915#3976])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#111615]) +2 similar issues
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         ([i915#3722])
>   *
> 
>     igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb3/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html>
>         ([i915#3689]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +12 similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +7 similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl4/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886])
>   *
> 
>     igt@kms_chamelium@dp-crc-multiple:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl7/igt@kms_chamelium@dp-crc-multiple.html>
>         ([fdo#109271] / [fdo#111827]) +18 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-crc-single:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-iclb1/igt@kms_chamelium@hdmi-crc-single.html>
>         ([fdo#109284] / [fdo#111827]) +1 similar issue
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb8/igt@kms_chamelium@hdmi-crc-single.html>
>         ([fdo#109284] / [fdo#111827]) +1 similar issue
> 
>   *
> 
>     igt@kms_color@pipe-a-ctm-0-75:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-skl3/igt@kms_color@pipe-a-ctm-0-75.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html>
>         ([i915#1982])
>   *
> 
>     igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-snb5/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html>
>         ([fdo#109271] / [fdo#111827]) +14 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-b-ctm-0-25:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl8/igt@kms_color_chamelium@pipe-b-ctm-0-25.html>
>         ([fdo#109271] / [fdo#111827]) +6 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-c-ctm-0-25:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl2/igt@kms_color_chamelium@pipe-c-ctm-0-25.html>
>         ([fdo#109271] / [fdo#111827]) +14 similar issues
>   *
> 
>     igt@kms_content_protection@lic:
> 
>       o shard-apl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl3/igt@kms_content_protection@lic.html>
>         ([i915#1319])
>   *
> 
>     igt@kms_content_protection@srm:
> 
>       o shard-kbl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl1/igt@kms_content_protection@srm.html>
>         ([i915#1319])
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen.html>
>         ([fdo#109279] / [i915#3359])
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen.html>
>         ([fdo#109278] / [fdo#109279])
> 
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html>
>         ([fdo#109271]) +147 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-iclb1/igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement.html>
>         ([fdo#109278]) +3 similar issues
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html>
>         ([fdo#109271]) +310 similar issues
>   *
> 
>     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-iclb1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html>
>         ([fdo#109274] / [fdo#109278])
>   *
> 
>     igt@kms_cursor_legacy@pipe-d-single-bo:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl4/igt@kms_cursor_legacy@pipe-d-single-bo.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_dsc@basic-dsc-enable:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-iclb6/igt@kms_dsc@basic-dsc-enable.html>
>         ([i915#3840])
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#180] / [i915#1982])
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@c-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html>
>         ([i915#79])
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-kbl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html>
>         ([i915#2122])
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html>
>         ([i915#2587])
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html>
>         ([fdo#109271] / [i915#2672])
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-iclb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html>
>         ([fdo#109280]) +4 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html>
>         ([fdo#111825]) +5 similar issues
>   *
> 
>     igt@kms_hdr@bpc-switch:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-skl6/igt@kms_hdr@bpc-switch.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl5/igt@kms_hdr@bpc-switch.html>
>         ([i915#1188])
>   *
> 
>     igt@kms_hdr@bpc-switch-suspend:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html>
>         ([i915#180]) +2 similar issues
>   *
> 
>     igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-iclb1/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html>
>         ([fdo#109289]) +1 similar issue
>   *
> 
>     igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
> 
>       o
> 
>         shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         ([i915#265]) +1 similar issue
> 
>       o
> 
>         shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         ([i915#265])
> 
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html>
>         ([fdo#109271] / [i915#658])
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html>
>         ([fdo#109271] / [i915#658]) +6 similar issues
>   *
> 
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html>
>         ([fdo#109271] / [i915#658]) +3 similar issues
>   *
> 
>     igt@kms_psr@psr2_cursor_plane_move:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html>
>         ([fdo#109441]) +1 similar issue
>   *
> 
>     igt@kms_psr@psr2_sprite_mmap_cpu:
> 
>       o
> 
>         shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb8/igt@kms_psr@psr2_sprite_mmap_cpu.html>
>         ([i915#132] / [i915#3467]) +2 similar issues
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_cpu.html>
>         ([fdo#109441]) +1 similar issue
> 
>   *
> 
>     igt@kms_vblank@pipe-d-wait-idle:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl2/igt@kms_vblank@pipe-d-wait-idle.html>
>         ([fdo#109271] / [i915#533]) +2 similar issues
>   *
> 
>     igt@kms_writeback@writeback-fb-id:
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl1/igt@kms_writeback@writeback-fb-id.html>
>         ([fdo#109271] / [i915#2437]) +1 similar issue
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl10/igt@kms_writeback@writeback-fb-id.html>
>         ([fdo#109271] / [i915#2437])
> 
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-skl5/igt@perf@polling-parameterized.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl6/igt@perf@polling-parameterized.html>
>         ([i915#1542])
>   *
> 
>     igt@perf@unprivileged-single-ctx-counters:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb1/igt@perf@unprivileged-single-ctx-counters.html>
>         ([fdo#109289])
>   *
> 
>     igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl1/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html>
>         ([fdo#109271]) +231 similar issues
>   *
> 
>     igt@runner@aborted:
> 
>       o shard-snb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-snb2/igt@runner@aborted.html>
>         ([i915#3002])
>   *
> 
>     igt@sysfs_clients@recycle:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl3/igt@sysfs_clients@recycle.html>
>         ([fdo#109271] / [i915#2994]) +1 similar issue
>   *
> 
>     igt@sysfs_clients@sema-25:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-iclb1/igt@sysfs_clients@sema-25.html>
>         ([i915#2994])
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-tglb8/igt@sysfs_clients@sema-25.html>
>         ([i915#2994])
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl8/igt@sysfs_clients@sema-25.html>
>         ([fdo#109271] / [i915#2994]) +1 similar issue
> 
>   *
> 
>     igt@sysfs_clients@split-25:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl2/igt@sysfs_clients@split-25.html>
>         ([fdo#109271] / [i915#2994]) +2 similar issues
>   *
> 
>     igt@sysfs_heartbeat_interval@mixed@vecs0:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vecs0.html>
>         ([i915#1731])
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@fbdev@write:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-rkl-1/igt@fbdev@write.html>
>         ([i915#2582]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-rkl-6/igt@fbdev@write.html>
>         +1 similar issue
>   *
> 
>     igt@gem_eio@in-flight-suspend:
> 
>       o
> 
>         shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-apl2/igt@gem_eio@in-flight-suspend.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-apl7/igt@gem_eio@in-flight-suspend.html>
> 
>       o
> 
>         {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-rkl-2/igt@gem_eio@in-flight-suspend.html>
>         ([fdo#103375]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-rkl-2/igt@gem_eio@in-flight-suspend.html>
> 
>   *
> 
>     igt@gem_eio@reset-stress:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-rkl-2/igt@gem_eio@reset-stress.html>
>         ([i915#3115]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-rkl-5/igt@gem_eio@reset-stress.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-none-vip@rcs0:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-iclb4/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs0:
> 
>       o shard-kbl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html>
>         ([fdo#109271]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20929/shard-kbl3/igt@gem_exec_fair@basic-pace@>
> 
