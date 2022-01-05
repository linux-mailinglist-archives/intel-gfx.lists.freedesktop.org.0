Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D18748582E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 19:27:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC72910EE53;
	Wed,  5 Jan 2022 18:27:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A9E310E419;
 Wed,  5 Jan 2022 18:27:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 155ACA47EB;
 Wed,  5 Jan 2022 18:27:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1986344988537848223=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Wed, 05 Jan 2022 18:27:26 -0000
Message-ID: <164140724604.25403.470685552723829251@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220105145835.142950-1-matthew.auld@intel.com>
In-Reply-To: <20220105145835.142950-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_don=27t_call_free=5Fmma?=
 =?utf-8?q?p=5Foffset_when_purging?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1986344988537848223==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: don't call free_mmap_offset when purging
URL   : https://patchwork.freedesktop.org/series/98509/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11048_full -> Patchwork_21927_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21927_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21927_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21927_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl8/igt@i915_suspend@fence-restore-tiled2untiled.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-rkl-5/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_exec_whisper@basic-forked-all:
    - {shard-rkl}:        [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-rkl-1/igt@gem_exec_whisper@basic-forked-all.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-rkl-5/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_mmap_gtt@close-race:
    - {shard-dg1}:        NOTRUN -> [SKIP][6] +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-dg1-15/igt@gem_mmap_gtt@close-race.html

  * igt@i915_pm_dc@dc5-psr:
    - {shard-tglu}:       NOTRUN -> [SKIP][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-7/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_rps@waitboost:
    - {shard-dg1}:        [PASS][8] -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-dg1-19/igt@i915_pm_rps@waitboost.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-dg1-15/igt@i915_pm_rps@waitboost.html

  * igt@prime_busy@hang-wait@bcs0:
    - {shard-tglu}:       NOTRUN -> [DMESG-WARN][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-7/igt@prime_busy@hang-wait@bcs0.html

  * igt@prime_busy@hang-wait@vcs0:
    - {shard-tglu}:       NOTRUN -> [INCOMPLETE][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-7/igt@prime_busy@hang-wait@vcs0.html

  * igt@prime_busy@hang@bcs0:
    - {shard-tglu}:       [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-2/igt@prime_busy@hang@bcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-7/igt@prime_busy@hang@bcs0.html

  * igt@runner@aborted:
    - {shard-tglu}:       ([FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17]) ([i915#3002] / [i915#3690] / [i915#4312]) -> ([FAIL][18], [FAIL][19], [FAIL][20]) ([i915#3002] / [i915#4312])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-8/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-7/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-6/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-3/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-5/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-6/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-3/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_21927_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][21] ([i915#3002])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl4/igt@gem_create@create-massive.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-skl:          [PASS][22] -> [TIMEOUT][23] ([i915#3063])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl3/igt@gem_eio@in-flight-contexts-10ms.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl9/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-tglb:         [PASS][24] -> [TIMEOUT][25] ([i915#3063])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglb8/igt@gem_eio@in-flight-contexts-1us.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][26] -> [FAIL][27] ([i915#232]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([i915#4525]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb4/igt@gem_exec_balancer@parallel.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#3778])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglb1/igt@gem_exec_endless@dispatch@bcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglb5/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#2842])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][34] -> [FAIL][35] ([i915#2842])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][36] ([i915#2842]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_schedule@submit-early-slice@vcs0:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#3797])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglb7/igt@gem_exec_schedule@submit-early-slice@vcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglb6/igt@gem_exec_schedule@submit-early-slice@vcs0.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-iclb:         [PASS][39] -> [INCOMPLETE][40] ([i915#1895])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb7/igt@gem_exec_whisper@basic-queues-forked.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb3/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#4613]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl6/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-glk:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#4613])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk1/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#4613])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [WARN][44] ([i915#2658])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl8/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@display-protected-crc:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#4270])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@gem_pxp@display-protected-crc.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271]) +10 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-apl1/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109289]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][50] -> [DMESG-WARN][51] ([i915#1436] / [i915#716])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([i915#2856])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][53] -> [FAIL][54] ([i915#454])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][55] ([i915#1886] / [i915#2291])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl8/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][56] -> [INCOMPLETE][57] ([i915#4919])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl5/igt@i915_selftest@mock@requests.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl2/igt@i915_selftest@mock@requests.html

  * igt@i915_selftest@perf@region:
    - shard-tglb:         [PASS][58] -> [DMESG-WARN][59] ([i915#2867])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglb6/igt@i915_selftest@perf@region.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglb8/igt@i915_selftest@perf@region.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#2521])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-glk:          [PASS][62] -> [DMESG-WARN][63] ([i915#118]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][64] ([i915#3743]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#3777]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#110723]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#3886]) +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl4/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109278] / [i915#3886]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#3886])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-apl1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#3886]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl3/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#3886])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk1/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +124 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl10/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl6/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl4/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-glk:          NOTRUN -> [SKIP][75] ([fdo#109271] / [fdo#111827])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk1/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_color_chamelium@pipe-c-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_color_chamelium@pipe-c-gamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-75:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-apl1/igt@kms_color_chamelium@pipe-d-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
    - shard-glk:          NOTRUN -> [SKIP][79] ([fdo#109271]) +16 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk1/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html

  * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +38 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl3/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-iclb:         [PASS][81] -> [FAIL][82] ([i915#2346])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#533])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl4/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
    - shard-skl:          [PASS][84] -> [DMESG-WARN][85] ([i915#1982])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl5/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglb:         [PASS][86] -> [DMESG-WARN][87] ([i915#2411] / [i915#2867])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglb6/igt@kms_fbcon_fbt@psr-suspend.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglb8/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109274])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][89] -> [FAIL][90] ([i915#79])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][91] ([i915#180]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][92] ([i915#2122])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1:
    - shard-skl:          [PASS][93] -> [FAIL][94] ([i915#2122]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl10/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][95] -> [FAIL][96] ([i915#4911])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-glk9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-iclb:         [PASS][97] -> [SKIP][98] ([i915#3701])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109280]) +7 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][100] -> [DMESG-WARN][101] ([i915#180]) +4 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][102] -> [FAIL][103] ([i915#1188])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl10/igt@kms_hdr@bpc-switch.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][104] ([fdo#108145] / [i915#265]) +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-glk:          NOTRUN -> [FAIL][105] ([fdo#108145] / [i915#265])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][106] -> [FAIL][107] ([fdo#108145] / [i915#265])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-skl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#2733])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl6/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#658])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109441])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][111] -> [SKIP][112] ([fdo#109441]) +2 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][113] -> [FAIL][114] ([i915#31])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-glk6/igt@kms_setmode@basic.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][115] -> [DMESG-WARN][116] ([i915#180] / [i915#295])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle-hang:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([fdo#109278]) +8 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_vblank@pipe-d-ts-continuation-idle-hang.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-kbl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#533])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl3/igt@kms_vblank@pipe-d-wait-idle.html
    - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#533])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-apl1/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@sysfs_clients@split-10:
    - shard-kbl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#2994])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl4/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][121] ([i915#658]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb1/igt@feature_discovery@psr2.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-apl:          [DMESG-WARN][123] ([i915#180]) -> [PASS][124] +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][125] ([i915#2481] / [i915#3070]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb6/igt@gem_eio@unwedge-stress.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-glk:          [FAIL][127] ([i915#2842]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-glk3/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][129] ([i915#2842]) -> [PASS][130] +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-tglu}:       [FAIL][131] ([i915#2842]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_schedule@submit-golden-slice@vcs1:
    - {shard-tglu}:       [INCOMPLETE][133] ([i915#3797]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-7/igt@gem_exec_schedule@submit-golden-slice@vcs1.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-2/igt@gem_exec_schedule@submit-golden-slice@vcs1.html

  * igt@gem_exec_suspend@basic@smem:
    - {shard-tglu}:       [FAIL][135] ([i915#1888]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-2/igt@gem_exec_suspend@basic@smem.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-7/igt@gem_exec_suspend@basic@smem.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [DMESG-WARN][137] ([i915#118]) -> [PASS][138] +2 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-glk2/igt@gem_exec_whisper@basic-contexts-all.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk7/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_madvise@dontneed-before-mmap:
    - {shard-dg1}:        [INCOMPLETE][139] -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-dg1-17/igt@gem_madvise@dontneed-before-mmap.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-dg1-18/igt@gem_madvise@dontneed-before-mmap.html

  * igt@gem_spin_batch@user-each:
    - {shard-tglu}:       [DMESG-WARN][141] -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-7/igt@gem_spin_batch@user-each.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-3/igt@gem_spin_batch@user-each.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][143] ([i915#1436] / [i915#716]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - {shard-rkl}:        [SKIP][145] ([i915#1397]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.or

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/index.html

--===============1986344988537848223==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: don&#39;t call free_mmap_offset when purging</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98509/">https://patchwork.freedesktop.org/series/98509/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11048_full -&gt; Patchwork_21927_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21927_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21927_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21927_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_suspend@fence-restore-tiled2untiled:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl8/igt@i915_suspend@fence-restore-tiled2untiled.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-rkl-5/igt@gem_exec_whisper@basic-fds-priority-all.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-rkl-1/igt@gem_exec_whisper@basic-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-rkl-5/igt@gem_exec_whisper@basic-forked-all.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@close-race:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-dg1-15/igt@gem_mmap_gtt@close-race.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-7/igt@i915_pm_dc@dc5-psr.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-dg1-19/igt@i915_pm_rps@waitboost.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-dg1-15/igt@i915_pm_rps@waitboost.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@prime_busy@hang-wait@bcs0:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-7/igt@prime_busy@hang-wait@bcs0.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@prime_busy@hang-wait@vcs0:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-7/igt@prime_busy@hang-wait@vcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@prime_busy@hang@bcs0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-2/igt@prime_busy@hang@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-7/igt@prime_busy@hang@bcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{shard-tglu}:       (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-8/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-3/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / [i915#3690] / [i915#4312]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-5/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-3/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / [i915#4312])</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21927_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl4/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl3/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl9/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglb8/igt@gem_eio@in-flight-contexts-1us.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglb5/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#232]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb4/igt@gem_exec_balancer@parallel.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i915#4525]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglb1/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglb5/igt@gem_exec_endless@dispatch@bcs0.html">INCOMPLETE</a> ([i915#3778])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@vcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglb7/igt@gem_exec_schedule@submit-early-slice@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglb6/igt@gem_exec_schedule@submit-early-slice@vcs0.html">INCOMPLETE</a> ([i915#3797])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb7/igt@gem_exec_whisper@basic-queues-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb3/igt@gem_exec_whisper@basic-queues-forked.html">INCOMPLETE</a> ([i915#1895])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl6/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk1/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl8/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@gem_pxp@display-protected-crc.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-apl1/igt@gem_workarounds@suspend-resume-context.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-apl6/igt@gem_workarounds@suspend-resume-context.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-apl1/igt@gen7_exec_parse@basic-allocation.html">SKIP</a> ([fdo#109271]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@gen7_exec_parse@batch-without-end.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl3/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl8/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl5/igt@i915_selftest@mock@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl2/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> ([i915#4919])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf@region:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglb6/igt@i915_selftest@perf@region.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglb8/igt@i915_selftest@perf@region.html">DMESG-WARN</a> ([i915#2867])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#110723]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl4/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-apl1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl3/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk1/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl10/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271]) +124 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl6/igt@kms_chamelium@hdmi-aspect-ratio.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl4/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk1/igt@kms_chamelium@hdmi-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_color_chamelium@pipe-c-gamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-75:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-apl1/igt@kms_color_chamelium@pipe-d-ctm-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk1/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html">SKIP</a> ([fdo#109271]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl3/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html">SKIP</a> ([fdo#109271]) +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl4/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl5/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglb6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglb8/igt@kms_fbcon_fbt@psr-suspend.html">DMESG-WARN</a> ([i915#2411] / [i915#2867])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl10/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-glk9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl10/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl7/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl6/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-skl6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-glk6/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk3/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb8/igt@kms_vblank@pipe-d-ts-continuation-idle-hang.html">SKIP</a> ([fdo#109278]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl3/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-apl1/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl4/igt@sysfs_clients@split-10.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb1/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-iclb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2481] / [i915#3070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-iclb1/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-glk3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-golden-slice@vcs1:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-7/igt@gem_exec_schedule@submit-golden-slice@vcs1.html">INCOMPLETE</a> ([i915#3797]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-2/igt@gem_exec_schedule@submit-golden-slice@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic@smem:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-2/igt@gem_exec_suspend@basic@smem.html">FAIL</a> ([i915#1888]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-7/igt@gem_exec_suspend@basic@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-glk2/igt@gem_exec_whisper@basic-contexts-all.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk7/igt@gem_exec_whisper@basic-contexts-all.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-mmap:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-dg1-17/igt@gem_madvise@dontneed-before-mmap.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-dg1-18/igt@gem_madvise@dontneed-before-mmap.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@user-each:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-tglu-7/igt@gem_spin_batch@user-each.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-tglu-3/igt@gem_spin_batch@user-each.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11048/shard-glk9/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21927/shard-glk1/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.or">SKIP</a> ([i915#1397]) -&gt; [PASS][146]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1986344988537848223==--
