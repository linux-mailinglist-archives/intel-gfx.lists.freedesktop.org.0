Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D41BC75C6E6
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 14:30:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49FA010E673;
	Fri, 21 Jul 2023 12:30:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38FBE10E673
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 12:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689942617; x=1721478617;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=0/zCqrz1LJ9oZsIwJe6d7tFV7yzzEaEnbl6F141+qwY=;
 b=iH55TQbYvj7GgH6O9/73cXSVF3+en3VZEFRS8cF4D1ZCR17i/gv2wnAj
 81LoeDGMq6q031CGCijy+y1UXHJmAxQxewHo+y0F4FK6asIMNcPJmuIkb
 kcZVFd0fRACWJV8pJHEm0HAkFUvCxxtH6Vgp01Z3k3aD6D++2elgPnIBZ
 YKItwrlyr+x53KN+enu7gxGCmRIji6qWoF29NTAyiMUTUOX33UTDkhxxW
 ulj9P1cC/j1BVuxu9WoANPTvrLgHVkzjCJHcD9askKnZtiZdFSbrY5gGW
 Xvv5YV2vnm9elmKrugwjMaRlVlLDguY2sr1NIHRIW3SPQXDDG0uNfQ/kj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="346609749"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="346609749"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 05:30:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="898705425"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="898705425"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 05:30:14 -0700
Date: Fri, 21 Jul 2023 15:30:22 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZLp6XhhdPmW3CewX@ideak-desk.fi.intel.com>
References: <20230720125418.236140-1-imre.deak@intel.com>
 <168989781797.22548.15977334652145790104@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <168989781797.22548.15977334652145790104@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_connector_HPD_polling?=
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 21, 2023 at 12:03:37AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix connector HPD polling
> URL   : https://patchwork.freedesktop.org/series/121050/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13399_full -> Patchwork_121050v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_121050v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_121050v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   Additional (1): shard-tglu0 
>   Missing    (1): pig-kbl-iris 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_121050v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@syncobj_wait@invalid-multi-wait-unsubmitted-signaled:
>     - shard-glk:          [PASS][1] -> [TIMEOUT][2] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-glk2/igt@syncobj_wait@invalid-multi-wait-unsubmitted-signaled.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-glk9/igt@syncobj_wait@invalid-multi-wait-unsubmitted-signaled.html

Can't see how this issue would be related (the device is runtime resumed a
long time before the test starts and the whole duration of it).

Looks like it's related to the previous igt@perf@enable-disable@0-rcs0
getting stuck already, which is marked as a known issue below:
     - shard-glk:          [PASS][53] -> [TIMEOUT][54] ([i915#8170])
    [i915#8170]: https://gitlab.freedesktop.org/drm/intel/issues/8170

> #### Warnings ####
> 
>   * igt@i915_selftest@live@gt_tlb:
>     - shard-mtlp:         [DMESG-WARN][3] ([i915#8937]) -> [DMESG-FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-mtlp-7/igt@i915_selftest@live@gt_tlb.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-mtlp-1/igt@i915_selftest@live@gt_tlb.html

<3> [427.292843] i915 0000:00:02.0: [drm] *ERROR* GSC status reports proxy init not complete
...
<6> [427.856200] i915: Running intel_tlb_live_selftests/invalidate_full
<4> [427.856850] Failed to allocate contiguous pages for size 400000
...
<3> [428.694134] gsc0((efault)): Semaphore sanitycheck failed a5da2bdb5900, with alignment 1000, using PTE size 1000 (phys 100000, sg 11000)
<3> [428.726170] i915/intel_tlb_live_selftests: invalidate_full failed with error -5

Can't see the connection, the device is runtime resumed while the test
runs. 

It looks like a pre-existing issue, though couldn't find a ticket for it:
CI_DRM_13399/bat-mtlp-8/0/dmesg.log:<3>[  362.551856] i915/intel_tlb_live_selftests: invalidate_full failed with error -5
CI_DRM_13400/bat-mtlp-8/0/dmesg.log:<3>[  357.382785] i915/intel_tlb_live_selftests: invalidate_full failed with error -5
CI_DRM_13402/bat-mtlp-8/0/dmesg.log:<3>[  353.582407] i915/intel_tlb_live_selftests: invalidate_full failed with error -5

> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-glk:          [SKIP][5] ([fdo#109271] / [i915#3886]) -> [TIMEOUT][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-glk2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-glk9/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html

Unrelated due to the same reason as the first one, all tests after
igt@perf@enable-disable@0-rcs0 failing with timeout:

[707.218450] [137/142] (377s left) perf (enable-disable)
[707.506353] Starting subtest: enable-disable
[707.510043] Starting dynamic subtest: 0-rcs0
[827.870684] Per-test timeout exceeded. Killing the current test with SIGQUIT.
[830.055218] Closing watchdogs
[830.057975] Initializing watchdogs
[830.058094]   /dev/watchdog0
[830.082412] [138/142] (254s left) syncobj_wait (invalid-multi-wait-unsubmitted-signaled)
[950.425897] Per-test timeout exceeded. Killing the current test with SIGQUIT.
[951.647440] Closing watchdogs
[951.648990] Initializing watchdogs
[951.649123]   /dev/watchdog0
[951.673531] [139/142] (132s left) gem_softpin (evict-active)
[1072.017079] Per-test timeout exceeded. Killing the current test with SIGQUIT.
[1073.346236] Closing watchdogs
[1073.347773] Initializing watchdogs
[1073.347893]   /dev/watchdog0
[1073.371952] [140/142] ( 11s left) kms_ccs (pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs)
[1193.706723] Per-test timeout exceeded. Killing the current test with SIGQUIT.
[1195.159353] Overall timeout time exceeded, stopping.
[1195.159760] Closing watchdogs

> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_13399_full and Patchwork_121050v1_full:
> 
> ### New IGT tests (4) ###
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_flip@wf_vblank-ts-check@b-hdmi-a4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_flip@wf_vblank-ts-check@c-hdmi-a4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_flip@wf_vblank-ts-check@d-hdmi-a4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_121050v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-queued:
>     - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-snb:          NOTRUN -> [FAIL][8] ([i915#8898])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-snb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-rkl:          [PASS][11] -> [FAIL][12] ([i915#2842]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-untiled:
>     - shard-mtlp:         [PASS][13] -> [FAIL][14] ([i915#8691])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-mtlp-4/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-mtlp-7/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][15] -> [SKIP][16] ([i915#1397]) +2 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-rkl-2/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - shard-dg2:          [PASS][17] -> [SKIP][18] ([i915#1397])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-dg2-2/igt@i915_pm_rpm@dpms-non-lpsp.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-12/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [PASS][19] -> [DMESG-FAIL][20] ([i915#5334])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-dg2:          [PASS][21] -> [INCOMPLETE][22] ([i915#4817])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-dg2-10/igt@i915_suspend@sysfs-reader.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-11/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][23] -> [FAIL][24] ([i915#5138])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3886])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-apl3/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271]) +205 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-snb2/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-a-dp-2:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#4087] / [i915#7213]) +3 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-12/igt@kms_cdclk@mode-transition@pipe-a-dp-2.html
> 
>   * igt@kms_content_protection@atomic@pipe-a-dp-2:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][28] ([i915#7173])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-12/igt@kms_content_protection@atomic@pipe-a-dp-2.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#7118])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-2/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-snb:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111767]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#2346])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@single-bo@all-pipes:
>     - shard-mtlp:         [PASS][33] -> [DMESG-WARN][34] ([i915#2017])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-mtlp-1/igt@kms_cursor_legacy@single-bo@all-pipes.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3555])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3804])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#79])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
>     - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#2122]) +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#3555] / [i915#8228]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-2/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#3555] / [i915#8228])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-rkl-7/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][43] ([i915#8841]) +6 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-snb1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][44] ([i915#4573]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-glk1/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#5176]) +3 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#5176]) +3 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#5235]) +3 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#5235]) +15 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#658])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-glk1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_setmode@basic@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][50] ([i915#5465]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-snb6/igt@kms_setmode@basic@pipe-a-vga-1.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>     - shard-dg2:          [PASS][51] -> [FAIL][52] ([fdo#103375]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-dg2-7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
> 
>   * igt@perf@enable-disable@0-rcs0:
>     - shard-glk:          [PASS][53] -> [TIMEOUT][54] ([i915#8170])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-glk2/igt@perf@enable-disable@0-rcs0.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-glk9/igt@perf@enable-disable@0-rcs0.html
> 
>   * igt@perf_pmu@most-busy-idle-check-all@bcs0:
>     - shard-mtlp:         [PASS][55] -> [FAIL][56] ([i915#5234])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-mtlp-6/igt@perf_pmu@most-busy-idle-check-all@bcs0.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-mtlp-3/igt@perf_pmu@most-busy-idle-check-all@bcs0.html
> 
>   * igt@vc4/vc4_lookup_fail@bad-color-write:
>     - shard-glk:          NOTRUN -> [SKIP][57] ([fdo#109271]) +40 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-glk1/igt@vc4/vc4_lookup_fail@bad-color-write.html
> 
>   * igt@vc4/vc4_mmap@mmap-bad-handle:
>     - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +13 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-apl3/igt@vc4/vc4_mmap@mmap-bad-handle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - shard-rkl:          [FAIL][59] ([i915#7742]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-rkl-2/igt@drm_fdinfo@idle@rcs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-rkl-7/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@fbdev@unaligned-write:
>     - shard-dg2:          [FAIL][61] -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-dg2-6/igt@fbdev@unaligned-write.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-11/igt@fbdev@unaligned-write.html
> 
>   * igt@gem_barrier_race@remote-request@rcs0:
>     - shard-glk:          [ABORT][63] ([i915#7461] / [i915#8211]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-glk5/igt@gem_barrier_race@remote-request@rcs0.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-glk1/igt@gem_barrier_race@remote-request@rcs0.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [FAIL][65] ([i915#6268]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@hibernate:
>     - {shard-dg1}:        [ABORT][67] ([i915#4391] / [i915#7975] / [i915#8213]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-dg1-14/igt@gem_eio@hibernate.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg1-15/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_endless@dispatch@vecs0:
>     - shard-tglu:         [TIMEOUT][69] ([i915#3778]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-tglu-8/igt@gem_exec_endless@dispatch@vecs0.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-tglu-10/igt@gem_exec_endless@dispatch@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][71] ([i915#2842]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [TIMEOUT][73] ([i915#5493]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [ABORT][75] ([i915#5566]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-apl6/igt@gen9_exec_parse@allowed-all.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-apl3/igt@gen9_exec_parse@allowed-all.html
> 
>   * {igt@i915_pm_freq_api@freq-suspend@gt0}:
>     - shard-dg2:          [FAIL][77] ([fdo#103375]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-1/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@i915_pm_rpm@basic-pci-d3-state:
>     - {shard-dg1}:        [FAIL][79] ([i915#7691]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-dg1-17/igt@i915_pm_rpm@basic-pci-d3-state.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg1-18/igt@i915_pm_rpm@basic-pci-d3-state.html
> 
>   * igt@i915_pm_rpm@cursor:
>     - {shard-dg1}:        [FAIL][81] ([i915#7940]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-dg1-15/igt@i915_pm_rpm@cursor.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg1-13/igt@i915_pm_rpm@cursor.html
> 
>   * igt@i915_pm_rpm@cursor-dpms:
>     - shard-tglu:         [FAIL][83] ([i915#7940]) -> [PASS][84] +3 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-tglu-5/igt@i915_pm_rpm@cursor-dpms.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-tglu-4/igt@i915_pm_rpm@cursor-dpms.html
> 
>   * igt@i915_pm_rpm@i2c:
>     - {shard-dg1}:        [DMESG-WARN][85] ([i915#4391] / [i915#4423]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-dg1-14/igt@i915_pm_rpm@i2c.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg1-15/igt@i915_pm_rpm@i2c.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp:
>     - {shard-dg1}:        [SKIP][87] ([i915#1397]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-dg1-16/igt@i915_pm_rpm@modeset-lpsp.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [SKIP][89] ([i915#1397]) -> [PASS][90] +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-rkl-2/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-dg2:          [SKIP][91] ([i915#1397]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-dg2-12/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-8/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>     - shard-mtlp:         [FAIL][93] ([i915#5138]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][95] ([i915#2346]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@forked-move@all-pipes:
>     - shard-mtlp:         [DMESG-WARN][97] ([i915#2017]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-mtlp-4/igt@kms_cursor_legacy@forked-move@all-pipes.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-mtlp-7/igt@kms_cursor_legacy@forked-move@all-pipes.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
>     - shard-glk:          [FAIL][99] ([i915#79]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
> 
>   * igt@kms_vblank@pipe-b-wait-busy-hang:
>     - shard-snb:          [ABORT][101] -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-snb1/igt@kms_vblank@pipe-b-wait-busy-hang.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-snb1/igt@kms_vblank@pipe-b-wait-busy-hang.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [FAIL][103] ([i915#4349]) -> [PASS][104] +3 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_mmap_offset@clear@smem0:
>     - shard-mtlp:         [INCOMPLETE][105] ([i915#5493] / [i915#8939]) -> [INCOMPLETE][106] ([i915#5493])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-mtlp-2/igt@gem_mmap_offset@clear@smem0.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-mtlp-6/igt@gem_mmap_offset@clear@smem0.html
> 
>   * igt@i915_selftest@live@slpc:
>     - shard-mtlp:         [DMESG-WARN][107] ([i915#6367] / [i915#8937]) -> [DMESG-WARN][108] ([i915#8937])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-mtlp-7/igt@i915_selftest@live@slpc.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-mtlp-1/igt@i915_selftest@live@slpc.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][109] ([i915#3955]) -> [SKIP][110] ([fdo#110189] / [i915#3955])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5234]: https://gitlab.freedesktop.org/drm/intel/issues/5234
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
>   [i915#7691]: https://gitlab.freedesktop.org/drm/intel/issues/7691
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8170]: https://gitlab.freedesktop.org/drm/intel/issues/8170
>   [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
>   [i915#8691]: https://gitlab.freedesktop.org/drm/intel/issues/8691
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#8898]: https://gitlab.freedesktop.org/drm/intel/issues/8898
>   [i915#8937]: https://gitlab.freedesktop.org/drm/intel/issues/8937
>   [i915#8939]: https://gitlab.freedesktop.org/drm/intel/issues/8939
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13399 -> Patchwork_121050v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13399: fcafac400c8ed8c9fe9419e94a6cd2dc3bc87da1 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7396: 8e84faf33c2cf3482c7dff814d256089bc03db5d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_121050v1: fcafac400c8ed8c9fe9419e94a6cd2dc3bc87da1 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121050v1/index.html
