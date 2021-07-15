Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1747F3C956B
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 03:11:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E36076E4B6;
	Thu, 15 Jul 2021 01:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FC6E6E44C
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 01:10:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="197637271"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="197637271"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 18:10:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="494360665"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 18:10:56 -0700
Date: Wed, 14 Jul 2021 18:10:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210715011055.GO951094@mdroper-desk1.amr.corp.intel.com>
References: <20210713193635.3390052-1-matthew.d.roper@intel.com>
 <162625249247.13707.4225653815521442679@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162625249247.13707.4225653815521442679@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgTWlu?=
 =?utf-8?q?or_revid/stepping_and_workaround_cleanup_=28rev5=29?=
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

On Wed, Jul 14, 2021 at 08:48:12AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Minor revid/stepping and workaround cleanup (rev5)
> URL   : https://patchwork.freedesktop.org/series/92299/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10343_full -> Patchwork_20590_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20590_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20590_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20590_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@dumb_buffer@map-invalid-size:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-snb7/igt@dumb_buffer@map-invalid-size.html

Appears to be another form of
https://gitlab.freedesktop.org/drm/intel/-/issues/3746

> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
>     - shard-skl:          [PASS][2] -> [FAIL][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
> 

Seems similar to https://gitlab.freedesktop.org/drm/intel/-/issues/2546
that we see occasionally for the FBC subtests, although this one is a
PSR subtest.  Doesn't appear to be related to the revid/stepping
conversion though.

>   
> #### Warnings ####
> 
>   * igt@dumb_buffer@map-invalid-size:
>     - shard-apl:          [DMESG-WARN][4] ([i915#1982]) -> [DMESG-WARN][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-apl6/igt@dumb_buffer@map-invalid-size.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl1/igt@dumb_buffer@map-invalid-size.html
> 

https://gitlab.freedesktop.org/drm/intel/-/issues/3746 again


After chatting with Rodrigo, we agreed that the patches are needed on
both drm-intel-next (to support the display DMC matching) and
drm-intel-gt-next (to handle workarounds properly).  So the patches were
applied to topic branch 'topic/revid_steppings' which was then merged to
both Intel branches to make sure the new stepping macros are available
and used consistently in both branches.


Matt

>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-yf_tiled_ccs:
>     - {shard-rkl}:        [FAIL][6] ([i915#3678]) -> [SKIP][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-5/igt@kms_ccs@pipe-a-bad-rotation-90-yf_tiled_ccs.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-6/igt@kms_ccs@pipe-a-bad-rotation-90-yf_tiled_ccs.html
> 
>   * igt@perf@polling:
>     - {shard-rkl}:        NOTRUN -> [FAIL][8]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-5/igt@perf@polling.html
> 
>   * igt@sysfs_preempt_timeout@timeout@rcs0:
>     - {shard-rkl}:        [PASS][9] -> [FAIL][10] +3 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-6/igt@sysfs_preempt_timeout@timeout@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-1/igt@sysfs_preempt_timeout@timeout@rcs0.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20590_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed:
>     - shard-snb:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#1099]) +5 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-tglb:         [PASS][12] -> [TIMEOUT][13] ([i915#3063])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-tglb6/igt@gem_eio@in-flight-contexts-1us.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-tglb6/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][14] ([i915#2846])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl7/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#2842])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][17] ([i915#2842])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          NOTRUN -> [FAIL][18] ([i915#2842] / [i915#3468])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#2842]) +3 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>     - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#2842]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][23] ([i915#2658]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl7/igt@gem_pread@exhaustion.html
>     - shard-skl:          NOTRUN -> [WARN][24] ([i915#2658])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl6/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][25] ([i915#2658])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-snb2/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][26] ([i915#3002])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-snb7/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [FAIL][27] ([i915#3318])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl6/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@i915_pm_dc@dc5-psr:
>     - shard-iclb:         [PASS][28] -> [INCOMPLETE][29] ([i915#3698])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-iclb5/igt@i915_pm_dc@dc5-psr.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-iclb2/igt@i915_pm_dc@dc5-psr.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          NOTRUN -> [FAIL][30] ([i915#454])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#1937])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_selftest@mock@vma:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][32] ([i915#3746]) +17 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-snb7/igt@i915_selftest@mock@vma.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#2521])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][38] ([i915#3722])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3777])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3689])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-tglb6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:
>     - shard-snb:          NOTRUN -> [SKIP][41] ([fdo#109271]) +404 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-snb2/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
>     - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-kbl2/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_color@pipe-d-ctm-0-5:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271]) +76 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl6/igt@kms_color@pipe-d-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
>     - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +20 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl7/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +22 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-snb2/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109284] / [fdo#111827])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-iclb7/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][48] ([i915#1319]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl6/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109300] / [fdo#111066])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-iclb7/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
>     - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#3444])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109278]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-suspend:
>     - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +79 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>     - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#2346])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
>     - shard-skl:          [PASS][56] -> [DMESG-WARN][57] ([i915#1982]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109274])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-iclb7/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
>     - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#79])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2672])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
>     - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2672]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][63] ([i915#180])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109280]) +5 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#111825]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-tglb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][66] -> [FAIL][67] ([i915#1188])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#533]) +2 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl1/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265]) +4 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
>     - shard-skl:          NOTRUN -> [FAIL][71] ([fdo#108145] / [i915#265])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][72] -> [FAIL][73] ([fdo#108145] / [i915#265])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_cursor@pipe-d-viewport-size-128:
>     - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +272 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl1/igt@kms_plane_cursor@pipe-d-viewport-size-128.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-none:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#3536])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-iclb7/igt@kms_plane_lowres@pipe-c-tiling-none.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658]) +3 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
>     - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658]) +2 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr@psr2_basic:
>     - shard-iclb:         [PASS][79] -> [SKIP][80] ([fdo#109441]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-iclb2/igt@kms_psr@psr2_basic.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-iclb7/igt@kms_psr@psr2_basic.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-apl:          NOTRUN -> [FAIL][81] ([IGT#2])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl6/igt@kms_sysfs_edid_timing.html
>     - shard-kbl:          NOTRUN -> [FAIL][82] ([IGT#2])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-kbl3/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#533]) +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-kbl1/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-kbl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2437])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-kbl3/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2437]) +2 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl8/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#2437])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl6/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-d-ctx-flip-detection:
>     - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109278] / [i915#2530])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-iclb7/igt@nouveau_crc@pipe-d-ctx-flip-detection.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-tglb:         [PASS][88] -> [FAIL][89] ([i915#1542])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-tglb1/igt@perf@polling-parameterized.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-tglb7/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-kbl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-kbl2/igt@sysfs_clients@recycle-many.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-apl8/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - {shard-rkl}:        [FAIL][92] ([i915#2410]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-6/igt@gem_ctx_persistence@many-contexts.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - {shard-rkl}:        [FAIL][94] -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-5/igt@gem_eio@unwedge-stress.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][96] ([i915#2846]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-glk8/igt@gem_exec_fair@basic-deadline.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-glk9/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          [FAIL][98] ([i915#2842]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][100] ([i915#2842]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_schedule@independent@vecs0:
>     - shard-iclb:         [FAIL][102] -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-iclb7/igt@gem_exec_schedule@independent@vecs0.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-iclb6/igt@gem_exec_schedule@independent@vecs0.html
> 
>   * igt@gem_exec_schedule@u-independent@vcs0:
>     - shard-tglb:         [FAIL][104] -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-tglb6/igt@gem_exec_schedule@u-independent@vcs0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-tglb7/igt@gem_exec_schedule@u-independent@vcs0.html
> 
>   * igt@gem_exec_suspend@basic-s3-devices:
>     - shard-tglb:         [DMESG-WARN][106] ([i915#402]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-tglb6/igt@gem_exec_suspend@basic-s3-devices.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-tglb6/igt@gem_exec_suspend@basic-s3-devices.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - {shard-rkl}:        [INCOMPLETE][108] -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-2/igt@gem_exec_suspend@basic-s4-devices.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-6/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@gem_exec_whisper@basic-contexts-priority:
>     - shard-glk:          [DMESG-WARN][110] ([i915#118] / [i915#95]) -> [PASS][111] +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-glk4/igt@gem_exec_whisper@basic-contexts-priority.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-iclb:         [FAIL][112] ([i915#307]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@i915_pm_dc@dc5-psr:
>     - {shard-rkl}:        [SKIP][114] ([i915#658]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-5/igt@i915_pm_dc@dc5-psr.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html
> 
>   * igt@i915_pm_rpm@gem-execbuf:
>     - {shard-rkl}:        [SKIP][116] ([fdo#109308]) -> [PASS][117] +3 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-5/igt@i915_pm_rpm@gem-execbuf.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-0:
>     - {shard-rkl}:        [SKIP][118] ([i915#3638]) -> [PASS][119] +2 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-0.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:
>     - {shard-rkl}:        [SKIP][120] ([i915#3721]) -> [PASS][121] +4 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-5/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [FAIL][122] ([i915#3678]) -> [PASS][123] +5 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-5/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color@pipe-a-ctm-0-75:
>     - {shard-rkl}:        [SKIP][124] ([i915#1149] / [i915#1849]) -> [PASS][125] +2 similar issues
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-2/igt@kms_color@pipe-a-ctm-0-75.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-75.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][126] ([i915#180]) -> [PASS][127] +6 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
>     - {shard-rkl}:        [SKIP][128] ([fdo#112022]) -> [PASS][129] +11 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-5/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-6/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [FAIL][130] ([i915#2346]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [FAIL][132] ([i915#2346] / [i915#533]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
>     - {shard-rkl}:        [SKIP][134] ([fdo#111825]) -> [PASS][135] +8 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:
>     - {shard-rkl}:        [SKIP][136] ([fdo#111314]) -> [PASS][137] +2 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - {shard-rkl}:        [SKIP][138] ([i915#1849] / [i915#3180]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-5/igt@kms_frontbuffer_tracking@basic.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/shard-rkl-6/igt@kms_frontbuffer_tracking@basic.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b:
>     - {shard-rkl}:        [SKIP][140] ([i915#1849]) -> [PASS][141] +35 similar issues
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/shard-rkl-5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/s
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
