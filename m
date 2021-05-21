Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B445438C941
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 16:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A8846EA2D;
	Fri, 21 May 2021 14:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80AE26EA2D
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 14:32:56 +0000 (UTC)
IronPort-SDR: rXhkf/piHom4evsLQx01gqs5JVfbsuHHIzKu4znawF7gk6km3t54QUsGt3p9n3jqGktLjLGWNp
 Ld8qXGid4nZg==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="201206819"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="201206819"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 07:32:55 -0700
IronPort-SDR: CDMs46Nd4I+dUogYTN9Oj1MwOIHGANbsfjXW38IifHfk4EFvuAI8qSQpajwM9PpeHVuB8dnW+X
 YlhM98M42hKg==
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="412622672"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 07:32:53 -0700
Date: Fri, 21 May 2021 17:32:50 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Casey Harkins <caseyharkins@gmail.com>,
 Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210521143250.GC1743275@ideak-desk.fi.intel.com>
References: <20210512212809.1234701-1-imre.deak@intel.com>
 <162094822116.26537.4539090163275011587@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162094822116.26537.4539090163275011587@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Reenable_LTTPR_non-transparent_LT_mode_for_DPCD=5FREV?=
 =?utf-8?q?=3C1=2E4?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 13, 2021 at 11:23:41PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Reenable LTTPR non-transparent LT mode for DPCD_REV<1.4
> URL   : https://patchwork.freedesktop.org/series/90102/
> State : failure

Pushed to drm-intel-next, thanks for the report, testing and review.

The failures are unrelated see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10074_full -> Patchwork_20115_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20115_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20115_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20115_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:
>     - shard-skl:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html
> 
>   * igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c:
>     - shard-glk:          [PASS][2] -> [FAIL][3] +1 similar issue
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk8/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk6/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c.html
> 
>   * igt@kms_plane_cursor@pipe-b-primary-size-256:
>     - shard-snb:          NOTRUN -> [FAIL][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@kms_plane_cursor@pipe-b-primary-size-256.html

On all the above platforms the LTTPR detection is disabled, so the change
is unrelevant on them.

All the logs have the
x86/PAT: gem_mmap_offset:1163 map pfn RAM range req write-combining for [mem 0x11d278000-0x11d278fff], got write-back
message, so the failures could be related to that.

> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_plane@plane-position-hole@pipe-a-planes}:
>     - shard-glk:          [FAIL][5] ([i915#3457]) -> [FAIL][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk9/igt@kms_plane@plane-position-hole@pipe-a-planes.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk8/igt@kms_plane@plane-position-hole@pipe-a-planes.html
> 
>   
> 
> ### Piglit changes ###
> 
> #### Possible regressions ####
> 
>   * spec@arb_gpu_shader_int64@execution@built-in-functions@fs-op-ne-uint64_t-uint64_t (NEW):
>     - {pig-icl-1065g7}:   NOTRUN -> [CRASH][7]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/pig-icl-1065g7/spec@arb_gpu_shader_int64@execution@built-in-functions@fs-op-ne-uint64_t-uint64_t.html
> 
>   * spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-gt-uint64_t-uint64_t-using-if (NEW):
>     - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][8] +7 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/pig-icl-1065g7/spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-gt-uint64_t-uint64_t-using-if.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_10074_full and Patchwork_20115_full:
> 
> ### New Piglit tests (9) ###
> 
>   * spec@arb_gpu_shader_int64@execution@built-in-functions@cs-min-i64vec2-i64vec2:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_gpu_shader_int64@execution@built-in-functions@cs-op-mult-i64vec3-i64vec3:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_gpu_shader_int64@execution@built-in-functions@fs-op-ne-uint64_t-uint64_t:
>     - Statuses : 1 crash(s)
>     - Exec time: [0.76] s
> 
>   * spec@arb_gpu_shader_int64@execution@built-in-functions@gs-max-i64vec3-i64vec3:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-mult-i64vec4-i64vec4:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-gt-uint64_t-uint64_t-using-if:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-mod-u64vec2-uint64_t:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_gpu_shader_int64@execution@built-in-functions@vs-op-add-uint64_t-u64vec2:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_gpu_shader_int64@execution@built-in-functions@vs-op-bitxor-uint64_t-uint64_t:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20115_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-noreloc-purge-cache-random:
>     - shard-apl:          NOTRUN -> [DMESG-FAIL][9] ([i915#3457])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@api_intel_bb@blit-noreloc-purge-cache-random.html
> 
>   * igt@api_intel_bb@intel-bb-blit-x:
>     - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#3471])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@api_intel_bb@intel-bb-blit-x.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk8/igt@api_intel_bb@intel-bb-blit-x.html
> 
>   * igt@api_intel_bb@offset-control:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][12] ([i915#3457])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@api_intel_bb@offset-control.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-queued:
>     - shard-snb:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#1099]) +5 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-skl:          [PASS][14] -> [TIMEOUT][15] ([i915#2369] / [i915#3063] / [i915#3457])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl7/igt@gem_eio@unwedge-stress.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl9/igt@gem_eio@unwedge-stress.html
>     - shard-snb:          NOTRUN -> [FAIL][16] ([i915#3354] / [i915#3457])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#3457]) +2 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@bcs0:
>     - shard-glk:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3457])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk5/igt@gem_exec_fair@basic-none@bcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][20] -> [FAIL][21] ([i915#2842] / [i915#3457]) +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fence@parallel@vcs0:
>     - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#3457]) +32 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk8/igt@gem_exec_fence@parallel@vcs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk8/igt@gem_exec_fence@parallel@vcs0.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@bcs0:
>     - shard-skl:          NOTRUN -> [FAIL][24] ([i915#2389] / [i915#3457]) +3 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@rcs0:
>     - shard-apl:          NOTRUN -> [FAIL][25] ([i915#3457]) +5 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@vecs0:
>     - shard-glk:          NOTRUN -> [FAIL][26] ([i915#3457])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk4/igt@gem_exec_schedule@u-fairslice@vecs0.html
> 
>   * igt@gem_exec_whisper@basic-normal-all:
>     - shard-glk:          [PASS][27] -> [DMESG-WARN][28] ([i915#118] / [i915#95])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk6/igt@gem_exec_whisper@basic-normal-all.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk3/igt@gem_exec_whisper@basic-normal-all.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - shard-glk:          [PASS][29] -> [INCOMPLETE][30] ([i915#3468])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][31] ([i915#3468])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb2/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
>     - shard-apl:          NOTRUN -> [INCOMPLETE][32] ([i915#3468]) +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
>     - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#3468])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb8/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-xy:
>     - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#307])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-y:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][37] ([i915#3468]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@gem_mmap_gtt@fault-concurrent-y.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-linear:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][38] ([i915#198] / [i915#3468])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl7/igt@gem_render_copy@yf-tiled-ccs-to-linear.html
> 
>   * igt@gem_userptr_blits@set-cache-level:
>     - shard-kbl:          NOTRUN -> [FAIL][39] ([i915#3324])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@gem_userptr_blits@set-cache-level.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-snb:          NOTRUN -> [FAIL][40] ([i915#2724] / [i915#3457])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@gem_userptr_blits@vma-merge.html
>     - shard-apl:          NOTRUN -> [FAIL][41] ([i915#3318] / [i915#3457])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen7_exec_parse@oacontrol-tracking:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109289])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb7/igt@gen7_exec_parse@oacontrol-tracking.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-apl:          NOTRUN -> [FAIL][43] ([i915#3296])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@gen9_exec_parse@bb-large.html
>     - shard-kbl:          NOTRUN -> [FAIL][44] ([i915#3296])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl6/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@i915_pm_rpm@cursor-dpms:
>     - shard-iclb:         [PASS][45] -> [DMESG-WARN][46] ([i915#3457])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb3/igt@i915_pm_rpm@cursor-dpms.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-iclb8/igt@i915_pm_rpm@cursor-dpms.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][47] ([i915#2782])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@live@mman:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][48] ([i915#3457])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@i915_selftest@live@mman.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][49] ([i915#180])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#111614])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_chamelium@dp-mode-timings:
>     - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +9 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@kms_chamelium@dp-mode-timings.html
> 
>   * igt@kms_chamelium@hdmi-mode-timings:
>     - shard-snb:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +25 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@kms_chamelium@hdmi-mode-timings.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +12 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
>     - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-apl:          NOTRUN -> [TIMEOUT][55] ([i915#1319])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
>     - shard-skl:          NOTRUN -> [FAIL][56] ([i915#3444] / [i915#3457]) +6 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
>     - shard-apl:          [PASS][57] -> [FAIL][58] ([i915#3444] / [i915#3457]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
>     - shard-snb:          NOTRUN -> [FAIL][59] ([i915#3457]) +9 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-max-size-random:
>     - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#3457]) +10 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-size-change:
>     - shard-apl:          NOTRUN -> [FAIL][61] ([i915#3444] / [i915#3457]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:
>     - shard-kbl:          [PASS][62] -> [FAIL][63] ([i915#3444] / [i915#3457])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
>     - shard-kbl:          NOTRUN -> [FAIL][64] ([i915#3444] / [i915#3457]) +7 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
>     - shard-glk:          [PASS][65] -> [FAIL][66] ([i915#3444] / [i915#3457]) +6 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:
>     - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#3457]) +14 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3457]) +8 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-alpha-opaque:
>     - shard-snb:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#3457]) +47 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@kms_cursor_crc@pipe-d-cursor-alpha-opaque.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][70] -> [FAIL][71] ([i915#2346] / [i915#3457])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-move:
>     - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +97 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_cursor_legacy@pipe-d-torture-move.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2672])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#2587])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
>     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2642])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt:
>     - shard-snb:          NOTRUN -> [SKIP][76] ([fdo#109271]) +352 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          NOTRUN -> [FAIL][77] ([i915#1188])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#533])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#533])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-kbl:          [PASS][80] -> [DMESG-WARN][81] ([i915#180])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][82] ([fdo#108145] / [i915#265]) +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
>     - shard-kbl:          NOTRUN -> [FAIL][83] ([fdo#108145] / [i915#265]) +2 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][84] ([i915#265])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_cursor@pipe-a-primary-size-64:
>     - shard-skl:          NOTRUN -> [FAIL][85] ([i915#2657] / [i915#3457] / [i915#3461])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_plane_cursor@pipe-a-primary-size-64.html
> 
>   * igt@kms_plane_cursor@pipe-a-viewport-size-128:
>     - shard-skl:          NOTRUN -> [FAIL][86] ([i915#2657] / [i915#3457])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_plane_cursor@pipe-a-viewport-size-128.html
> 
>   * igt@kms_plane_cursor@pipe-a-viewport-size-256:
>     - shard-skl:          NOTRUN -> [FAIL][87] ([i915#2657] / [i915#3461])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_plane_cursor@pipe-a-viewport-size-256.html
> 
>   * igt@kms_plane_cursor@pipe-b-overlay-size-64:
>     - shard-kbl:          NOTRUN -> [FAIL][88] ([i915#2657]) +2 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl6/igt@kms_plane_cursor@pipe-b-overlay-size-64.html
> 
>   * igt@kms_plane_cursor@pipe-b-primary-size-64:
>     - shard-skl:          [PASS][89] -> [FAIL][90] ([i915#2657] / [i915#3457])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl7/igt@kms_plane_cursor@pipe-b-primary-size-64.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl9/igt@kms_plane_cursor@pipe-b-primary-size-64.html
> 
>   * igt@kms_plane_cursor@pipe-b-viewport-size-256:
>     - shard-snb:          NOTRUN -> [FAIL][91] ([i915#3461])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@kms_plane_cursor@pipe-b-viewport-size-256.html
> 
>   * igt@kms_plane_cursor@pipe-b-viewport-size-64:
>     - shard-glk:          [PASS][92] -> [FAIL][93] ([i915#2657] / [i915#3457])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@kms_plane_cursor@pipe-b-viewport-size-64.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk8/igt@kms_plane_cursor@pipe-b-viewport-size-64.html
> 
>   * igt@kms_plane_cursor@pipe-c-primary-size-128:
>     - shard-iclb:         [PASS][94] -> [FAIL][95] ([i915#2657] / [i915#3461])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb2/igt@kms_plane_cursor@pipe-c-primary-size-128.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-iclb4/igt@kms_plane_cursor@pipe-c-primary-size-128.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-d-tiling-x:
>     - shard-kbl:          NOTRUN -> [SKIP][96] ([fdo#109271]) +88 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@kms_plane_multiple@atomic-pipe-d-tiling-x.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-kbl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#658]) +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
>     - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#658]) +2 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
>     - shard-apl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#658])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-skl:          NOTRUN -> [WARN][100] ([i915#2100])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl4/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [PASS][101] -> [DMESG-WARN][102] ([i915#180] / [i915#295])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2437])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl6/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#2437])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>     - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271]) +73 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl2/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
> 
>   * igt@perf_pmu@most-busy-idle-check-all@rcs0:
>     - shard-apl:          NOTRUN -> [WARN][106] ([i915#3457]) +3 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-kbl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#2994])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@sysfs_clients@pidname.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-skl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl4/igt@sysfs_clients@recycle-many.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-apl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#2994])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl2/igt@sysfs_clients@sema-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@api_intel_bb@render@render-none-1024:
>     - shard-glk:          [WARN][110] -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@api_intel_bb@render@render-none-1024.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk7/igt@api_intel_bb@render@render-none-1024.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-apl:          [DMESG-WARN][112] ([i915#180] / [i915#3457]) -> [PASS][113] +1 similar issue
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][114] ([i915#2842] / [i915#3457]) -> [PASS][115] +1 similar issue
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-glk:          [SKIP][116] ([fdo#109271] / [i915#3457]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [FAIL][118] ([i915#2842] / [i915#3457]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_schedule@preempt-hang@vcs0:
>     - shard-glk:          [FAIL][120] ([i915#3457]) -> [PASS][121] +34 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@gem_exec_schedule@preempt-hang@vcs0.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk7/igt@gem_exec_schedule@preempt-hang@vcs0.html
> 
>   * igt@gem_exec_schedule@submit-early-slice@bcs0:
>     - shard-apl:          [FAIL][122] ([i915#3457]) -> [PASS][123] +7 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@gem_exec_schedule@submit-early-slice@bcs0.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@gem_exec_schedule@submit-early-slice@bcs0.html
> 
>   * igt@gem_mmap_gtt@big-copy:
>     - shard-skl:          [FAIL][124] ([i915#307]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl9/igt@gem_mmap_gtt@big-copy.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl9/igt@gem_mmap_gtt@big-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - shard-skl:          [INCOMPLETE][126] ([i915#3468]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@gem_mmap_gtt@c
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
