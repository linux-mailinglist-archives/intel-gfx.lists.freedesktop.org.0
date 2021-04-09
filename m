Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1791359829
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Apr 2021 10:43:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE4D6EB95;
	Fri,  9 Apr 2021 08:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 492426E488;
 Fri,  9 Apr 2021 08:43:16 +0000 (UTC)
IronPort-SDR: M8dofAYBGh/RkJrcW2Q5EBx3ytSo89w56cYB+4oZjVzrDifbY52ZRHV/7Ylb173l32QwBFMCqg
 xAlXcu4S0Rcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="193760358"
X-IronPort-AV: E=Sophos;i="5.82,209,1613462400"; d="scan'208";a="193760358"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2021 01:43:15 -0700
IronPort-SDR: eFIc8h3ejSY5DuP682UYdPlU1zhjMygcWB2wtT6MTa4Tn78ybAiKnh1sY6gKtnwEHKUzdHqKCd
 1C6BT5jslHxQ==
X-IronPort-AV: E=Sophos;i="5.82,209,1613462400"; d="scan'208";a="459155075"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.3.166])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2021 01:43:13 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 09 Apr 2021 10:43:10 +0200
Message-ID: <3107819.44csPzL39Z@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <161789344525.10401.7041868063507113175@emeril.freedesktop.org>
References: <20210408083157.23014-1-janusz.krzysztofik@linux.intel.com>
 <161789344525.10401.7041868063507113175@emeril.freedesktop.org>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BRFC=2C1/2=5D_tests/core=5Fhotunplug=3A_Add?=
 =?utf-8?q?_perf_health_check?=
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On czwartek, 8 kwietnia 2021 16:50:45 CEST Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [RFC,1/2] tests/core_hotunplug: Add perf health check
> URL   : https://patchwork.freedesktop.org/series/88848/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9934_full -> IGTPW_5718_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with IGTPW_5718_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in IGTPW_5718_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in IGTPW_5718_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@core_hotunplug@hotrebind:
>     - shard-tglb:         NOTRUN -> [FAIL][1] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb2/igt@core_hotunplug@hotrebind.html
>     - shard-glk:          NOTRUN -> [FAIL][2] +1 similar issue
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-glk1/igt@core_hotunplug@hotrebind.html
>     - shard-kbl:          NOTRUN -> [FAIL][3] +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl4/igt@core_hotunplug@hotrebind.html
> 
>   * igt@core_hotunplug@hotrebind-lateclose:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-snb6/igt@core_hotunplug@hotrebind-lateclose.html
>     - shard-iclb:         NOTRUN -> [FAIL][5] +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb5/igt@core_hotunplug@hotrebind-lateclose.html
>     - shard-apl:          NOTRUN -> [FAIL][6] +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl7/igt@core_hotunplug@hotrebind-lateclose.html

Those FAILs are clear indications there is an issue with restoring device perf 
features after hot rebind on some platforms (or an issue with IGT lib ability 
to detect them), then that's not a regression, only bringing the issue into 
light.  As long as we keep hot*bind* subtests blocklisted, the issue will not 
be visible and will persist silently, I'm afraid.

Regarding the INCOMPLETE, I'm wondering how often similar system crashes on 
GPU hangs happen, if they really happen only on GPU hangs after hot rebind, 
and if that's still a good reason to keep the hot*bind* subtests blocklisted.  
Chris, can you please comment?

Thanks,
Janusz

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in IGTPW_5718_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][7] ([i915#3002])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-snb7/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@engines-queued:
>     - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099]) +3 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-snb6/igt@gem_ctx_persistence@engines-queued.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-tglb:         NOTRUN -> [SKIP][9] ([i915#280])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb5/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2846])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-glk2/igt@gem_exec_fair@basic-deadline.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-glk7/igt@gem_exec_fair@basic-deadline.html
>     - shard-apl:          NOTRUN -> [FAIL][12] ([i915#2846])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl1/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-glk4/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][15] ([i915#2842]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         [PASS][16] -> [FAIL][17] ([i915#2842]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][18] ([i915#2842]) +4 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#2842])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@rcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][21] ([i915#2389]) +4 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl6/igt@gem_exec_reloc@basic-wide-active@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][22] ([i915#2389])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2190])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][24] ([i915#2658]) +1 similar issue
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl1/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][25] ([fdo#109271]) +27 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-glk9/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#768]) +1 similar issue
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb3/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109290])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb8/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@process-exit-mmap-busy@wc:
>     - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#1699]) +3 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl2/igt@gem_userptr_blits@process-exit-mmap-busy@wc.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [FAIL][29] ([i915#3318])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl6/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#112306])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb4/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-apl:          NOTRUN -> [FAIL][31] ([i915#3296])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl1/igt@gen9_exec_parse@bb-large.html
>     - shard-kbl:          NOTRUN -> [FAIL][32] ([i915#3296])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl6/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#1937])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-tglb:         [PASS][34] -> [WARN][35] ([i915#2681] / [i915#2684])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-tglb7/igt@i915_pm_rc6_residency@rc6-idle.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109302])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb1/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][37] ([i915#180])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl6/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#110725] / [fdo#111614]) +1 similar issue
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb1/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
>     - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#111614])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb3/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#111615]) +1 similar issue
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb1/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#110723])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#2705])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl1/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_chamelium@hdmi-audio:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109284] / [fdo#111827]) +6 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb6/igt@kms_chamelium@hdmi-audio.html
>     - shard-glk:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-glk2/igt@kms_chamelium@hdmi-audio.html
>     - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb5/igt@kms_chamelium@hdmi-audio.html
> 
>   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
>     - shard-snb:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +19 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-snb6/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_chamelium@vga-hpd-without-ddc:
>     - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +15 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl6/igt@kms_chamelium@vga-hpd-without-ddc.html
> 
>   * igt@kms_color@pipe-d-ctm-0-25:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278] / [i915#1149])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb7/igt@kms_color@pipe-d-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +23 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl6/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([i915#3116])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb7/igt@kms_content_protection@dp-mst-lic-type-0.html
>     - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3116])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb1/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][52] ([i915#1319]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl6/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
>     - shard-kbl:          [PASS][53] -> [FAIL][54] ([i915#54])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#3319]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-suspend:
>     - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +183 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109274] / [fdo#109278])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-tglb:         NOTRUN -> [FAIL][58] ([i915#2346])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_dp_dsc@basic-dsc-enable-edp:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109349])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
>     - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#52] / [i915#54]) +3 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109274]) +3 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb8/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#111825]) +13 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb3/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
>     - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#79])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>     - shard-apl:          [PASS][66] -> [DMESG-WARN][67] ([i915#180])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2672])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
>     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2672])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
>     - shard-apl:          NOTRUN -> [FAIL][70] ([i915#2641])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109280]) +15 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
>     - shard-snb:          NOTRUN -> [SKIP][72] ([fdo#109271]) +353 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109289])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb5/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html
>     - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#109289])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb5/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#533]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl7/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-kbl:          [PASS][76] -> [DMESG-WARN][77] ([i915#180])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][78] ([fdo#108145] / [i915#265]) +4 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][79] ([fdo#108145] / [i915#265]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109278]) +12 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb3/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2733])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#658]) +3 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
>     - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#658]) +5 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#658])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109441]) +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [PASS][86] -> [SKIP][87] ([fdo#109441]) +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb6/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_setmode@basic:
>     - shard-snb:          NOTRUN -> [FAIL][88] ([i915#31])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-snb6/igt@kms_setmode@basic.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-apl:          NOTRUN -> [FAIL][89] ([IGT#2])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl1/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#533]) +3 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl6/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>     - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271]) +256 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl7/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
> 
>   * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
>     - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#2530])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb1/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html
>     - shard-iclb:         NOTRUN -> [SKIP][93] ([i915#2530])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb2/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html
> 
>   * igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109278] / [i915#2530])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb3/igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [PASS][95] -> [FAIL][96] ([i915#1542])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-glk3/igt@perf@polling-parameterized.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-glk7/igt@perf@polling-parameterized.html
> 
>   * igt@prime_udl:
>     - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109291])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb4/igt@prime_udl.html
> 
>   * igt@sysfs_clients@create:
>     - shard-iclb:         NOTRUN -> [SKIP][98] ([i915#2994]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb8/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl2/igt@sysfs_clients@sema-10.html
>     - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-apl8/igt@sysfs_clients@sema-10.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-tglb:         NOTRUN -> [SKIP][101] ([i915#2994])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb1/igt@sysfs_clients@split-25.html
>     - shard-glk:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#2994])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-glk1/igt@sysfs_clients@split-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_create@create-clear:
>     - shard-glk:          [FAIL][103] ([i915#1888] / [i915#3160]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-glk6/igt@gem_create@create-clear.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-glk3/igt@gem_create@create-clear.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][105] ([i915#2369] / [i915#3063]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-tglb5/igt@gem_eio@unwedge-stress.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [FAIL][107] ([i915#2846]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [FAIL][109] ([i915#2842]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-forked:
>     - shard-glk:          [DMESG-WARN][111] ([i915#118] / [i915#95]) -> [PASS][112] +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-glk4/igt@gem_exec_whisper@basic-forked.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-glk6/igt@gem_exec_whisper@basic-forked.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-xy:
>     - shard-iclb:         [FAIL][113] ([i915#307]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-tglb:         [FAIL][115] ([i915#2346]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
>     - shard-glk:          [FAIL][117] ([i915#52] / [i915#54]) -> [PASS][118] +1 similar issue
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-iclb:         [INCOMPLETE][119] ([i915#1185]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-iclb3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb5/igt@kms_fbcon_fbt@fbc-suspend.html
>     - shard-kbl:          [INCOMPLETE][121] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][123] ([i915#180]) -> [PASS][124] +8 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:
>     - shard-glk:          [FAIL][125] ([i915#49]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>     - shard-tglb:         [DMESG-WARN][127] ([i915#402]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-tglb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-tglb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [SKIP][129] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-iclb8/igt@kms_psr2_su@page_flip.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb2/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [SKIP][131] ([fdo#109441]) -> [PASS][132] +1 similar issue
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-kbl:          [INCOMPLETE][133] ([i915#155] / [i915#794]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-kbl3/igt@perf_pmu@rc6-suspend.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl3/igt@perf_pmu@rc6-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          [SKIP][135] ([fdo#109271]) -> [FAIL][136] ([i915#2842])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
>     - shard-iclb:         [SKIP][137] ([i915#2920]) -> [SKIP][138] ([i915#658])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][139] ([i915#658]) -> [SKIP][140] ([i915#2920])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5718/index.html
> 




_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
