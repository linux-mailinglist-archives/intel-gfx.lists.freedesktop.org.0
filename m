Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FF73205D9
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Feb 2021 16:01:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB13D6E081;
	Sat, 20 Feb 2021 15:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 38B5F6E081;
 Sat, 20 Feb 2021 15:01:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 311F8A882E;
 Sat, 20 Feb 2021 15:01:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 20 Feb 2021 15:01:41 -0000
Message-ID: <161383330117.24213.5570113078878873182@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210220103303.3448-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210220103303.3448-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Workaround_async_flip_+_VT-d_corruption_on_HSW/BDW?=
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
Content-Type: multipart/mixed; boundary="===============0123367062=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0123367062==
Content-Type: multipart/alternative;
 boundary="===============3774022522908857350=="

--===============3774022522908857350==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Workaround async flip + VT-d corruption on HSW/BDW
URL   : https://patchwork.freedesktop.org/series/87255/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9791_full -> Patchwork_19707_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19707_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19707_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19707_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][2], [FAIL][3], [FAIL][4]) ([i915#1814] / [i915#2505] / [i915#92]) -> ([FAIL][5], [FAIL][6], [FAIL][7]) ([i915#3002])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl6/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl2/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl7/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][8], [FAIL][9]) ([i915#3002]) -> ([FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13]) ([i915#2029] / [i915#2426] / [i915#3002])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl7/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl8/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl5/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl7/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19707_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([i915#658])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@feature_discovery@psr2.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb5/igt@feature_discovery@psr2.html

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][16] ([i915#3002])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl2/igt@gem_create@create-massive.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][17] ([i915#3002])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-snb:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#1099]) +4 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb6/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][19] -> [TIMEOUT][20] ([i915#3063])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb8/igt@gem_eio@unwedge-stress.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-tglb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][21] ([i915#2842])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html
    - shard-kbl:          NOTRUN -> [FAIL][22] ([i915#2842])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#2842])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][25] -> [SKIP][26] ([fdo#109271]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][27] ([i915#2389]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb2/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-kbl:          NOTRUN -> [TIMEOUT][28] ([i915#1729])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_exec_schedule@u-fairslice-all:
    - shard-glk:          NOTRUN -> [DMESG-WARN][29] ([i915#2803])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk3/igt@gem_exec_schedule@u-fairslice-all.html

  * igt@gem_exec_schedule@u-fairslice@bcs0:
    - shard-iclb:         [PASS][30] -> [DMESG-WARN][31] ([i915#2803])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@gem_exec_schedule@u-fairslice@bcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb4/igt@gem_exec_schedule@u-fairslice@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-skl:          NOTRUN -> [DMESG-WARN][32] ([i915#1610] / [i915#2803])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-snb:          NOTRUN -> [INCOMPLETE][33] ([i915#2055])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb2/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#2190])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][35] ([i915#2658])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl1/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][36] ([i915#2658])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-snb:          NOTRUN -> [DMESG-WARN][37] ([i915#3002])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb6/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@process-exit-mmap-busy@wc:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#1699]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@gem_userptr_blits@process-exit-mmap-busy@wc.html

  * igt@gem_userptr_blits@process-exit-mmap@wb:
    - shard-glk:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#1699]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk3/igt@gem_userptr_blits@process-exit-mmap@wb.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][40] ([i915#2724])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb6/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [PASS][41] -> [TIMEOUT][42] ([i915#2795])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb7/igt@gem_vm_create@destroy-race.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-tglb3/igt@gem_vm_create@destroy-race.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl4/igt@gem_workarounds@suspend-resume.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl7/igt@gem_workarounds@suspend-resume.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271]) +145 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][46] -> [DMESG-WARN][47] ([i915#1436] / [i915#716])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk6/igt@gen9_exec_parse@allowed-all.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][48] ([fdo#109271]) +317 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb6/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_hangman@engine-error@vecs0:
    - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +250 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl2/igt@i915_hangman@engine-error@vecs0.html

  * igt@i915_module_load@reload:
    - shard-skl:          [PASS][50] -> [DMESG-WARN][51] ([i915#1982]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl9/igt@i915_module_load@reload.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl8/igt@i915_module_load@reload.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [PASS][52] -> [INCOMPLETE][53] ([i915#198])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@i915_suspend@fence-restore-untiled.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_joiner@basic:
    - shard-kbl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#2705])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl7/igt@kms_big_joiner@basic.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-glk:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk7/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl1/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-snb:          NOTRUN -> [SKIP][58] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb6/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][59] ([i915#1319]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][60] ([i915#1319]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][61] ([i915#2105])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl2/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][62] -> [INCOMPLETE][63] ([i915#300])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][64] ([i915#54])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([i915#54]) +10 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#2346] / [i915#533])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#2346]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-glk:          NOTRUN -> [SKIP][71] ([fdo#109271]) +22 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk7/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
    - shard-apl:          [PASS][72] -> [FAIL][73] ([i915#79])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-hsw:          [PASS][74] -> [INCOMPLETE][75] ([i915#2055])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-hsw8/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-hsw2/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-kbl:          NOTRUN -> [FAIL][76] ([i915#2641]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2672])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2672])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2642])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#533]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][82] ([fdo#108145] / [i915#265]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][83] -> [FAIL][84] ([fdo#108145] / [i915#265])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][85] ([fdo#108145] / [i915#265]) +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#658]) +5 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#658]) +4 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#658])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][89] -> [SKIP][90] ([fdo#109441]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][91] ([IGT#2])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl1/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#533])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl1/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2437])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl7/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@sysfs_clients@recycle:
    - shard-apl:          [PASS][94] -> [FAIL][95] ([i915#3028])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl8/igt@sysfs_clients@recycle.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl3/igt@sysfs_clients@recycle.html
    - shard-tglb:         [PASS][96] -> [FAIL][97] ([i915#3028])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb2/igt@sysfs_clients@recycle.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-tglb1/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-glk:          [PASS][98] -> [FAIL][99] ([i915#3028])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk8/igt@sysfs_clients@recycle-many.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk2/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-10@vcs0:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#3026]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl1/igt@sysfs_clients@sema-10@vcs0.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          [PASS][101] -> [INCOMPLETE][102] ([i915#1731] / [i915#198])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl1/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [TIMEOUT][103] ([i915#3063]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb6/igt@gem_eio@in-flight-contexts-10ms.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-tglb7/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-iclb:         [TIMEOUT][105] ([i915#3070]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@gem_eio@in-flight-contexts-immediate.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb8/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][107] ([i915#2842]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][109] ([i915#2842]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-glk:          [DMESG-WARN][111] ([i915#1610] / [i915#2803]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk7/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk7/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [DMESG-WARN][113] ([i915#118] / [i915#95]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk2/igt@gem_exec_whisper@basic-forked.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk1/igt@gem_exec_whisper@basic-forked.html

  * igt@i915_selftest@live@client:
    - shard-apl:          [DMESG-FAIL][115] ([i915#3047]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl1/igt@i915_selftest@live@client.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl3/igt@i915_selftest@live@client.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [INCOMPLETE][117] ([i915#198]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-a-ctm-max:
    - shard-skl:          [DMESG-WARN][119] ([i915#1982]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl8/igt@kms_color@pipe-a-ctm-max.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl8/igt@kms_color@pipe-a-ctm-max.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][121] ([i915#54]) -> [PASS][122] +4 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][123] ([i915#180]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][125] ([i915#96]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][127] ([i915#79]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][129] ([i915#2122]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][131] ([i915#180]) -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][133] ([fdo#108145] / [i915#265]) -> [PASS][134] +3 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][135] ([fdo#109441]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][137] ([i915#1542]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl5/igt@perf@polling-parameterized.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl10/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          [FAIL][139] ([i915#3028]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl7/igt@sysfs_clients@recycle-many.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl8/igt@sysfs_clients@recycle-many.html
    - shard-iclb:         [FAIL][141] ([i915#3028]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb6/igt@sysfs_clients@recycle-many.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb6/igt@sysfs_clients@recycle-many.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][143] ([i915#2852]) -> [FAIL][144] ([i915#2842])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][145] ([i915#658]) -> [SKIP][146] ([i915#588])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][147] ([i915#1804] / [i915#2684]) -> [WARN][148] ([i915#2681] / [i915#2684])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][149] ([fdo#109349]) -> [DMESG-WARN][150] ([i915#1226])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb2/igt@kms_dp_dsc@basic-d

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/index.html

--===============3774022522908857350==
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
<tr><td><b>Series:</b></td><td>drm/i915: Workaround async flip + VT-d corruption on HSW/BDW</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87255/">https://patchwork.freedesktop.org/series/87255/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9791_full -&gt; Patchwork_19707_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19707_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19707_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19707_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl6/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i915#2505] / [i915#92]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl2/igt@runner@aborted.html">FAIL</a>) ([i915#3002])</p>
</li>
<li>
<p>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl8/igt@runner@aborted.html">FAIL</a>) ([i915#3002]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl7/igt@runner@aborted.html">FAIL</a>) ([i915#2029] / [i915#2426] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19707_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb5/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl2/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb6/igt@gem_ctx_persistence@smoketest.html">SKIP</a> ([fdo#109271] / [i915#1099]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb8/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-tglb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb2/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> ([i915#1729])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice-all:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk3/igt@gem_exec_schedule@u-fairslice-all.html">DMESG-WARN</a> ([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@gem_exec_schedule@u-fairslice@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb4/igt@gem_exec_schedule@u-fairslice@bcs0.html">DMESG-WARN</a> ([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb2/igt@gem_fenced_exec_thrash@too-many-fences.html">INCOMPLETE</a> ([i915#2055])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl1/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb6/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap-busy@wc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@gem_userptr_blits@process-exit-mmap-busy@wc.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@wb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk3/igt@gem_userptr_blits@process-exit-mmap@wb.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb6/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb7/igt@gem_vm_create@destroy-race.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-tglb3/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> ([i915#2795])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl4/igt@gem_workarounds@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl7/igt@gem_workarounds@suspend-resume.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@gen7_exec_parse@basic-offset.html">SKIP</a> ([fdo#109271]) +145 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk6/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk2/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb6/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([fdo#109271]) +317 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-error@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl2/igt@i915_hangman@engine-error@vecs0.html">SKIP</a> ([fdo#109271]) +250 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl8/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@i915_suspend@fence-restore-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl7/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl7/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk7/igt@kms_color_chamelium@pipe-a-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl1/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-snb6/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl3/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl2/igt@kms_content_protection@legacy.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl2/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE</a> ([i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">FAIL</a> ([i915#54]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a> ([i915#2346]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk7/igt@kms_dp_tiled_display@basic-test-pattern.html">SKIP</a> ([fdo#109271]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-hsw8/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-hsw2/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">INCOMPLETE</a> ([i915#2055])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">FAIL</a> ([i915#2641]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl1/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl1/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl7/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl8/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl3/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb2/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-tglb1/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk8/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk2/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl1/igt@sysfs_clients@sema-10@vcs0.html">SKIP</a> ([fdo#109271] / [i915#3026]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl1/igt@sysfs_heartbeat_interval@mixed@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html">INCOMPLETE</a> ([i915#1731] / [i915#198])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb6/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-tglb7/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb2/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a> ([i915#3070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb8/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk7/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk7/igt@gem_exec_schedule@u-fairslice@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-glk2/igt@gem_exec_whisper@basic-forked.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-glk1/igt@gem_exec_whisper@basic-forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl1/igt@i915_selftest@live@client.html">DMESG-FAIL</a> ([i915#3047]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl3/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl3/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-max:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl8/igt@kms_color@pipe-a-ctm-max.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl8/igt@kms_color@pipe-a-ctm-max.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">FAIL</a> ([i915#96]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-skl5/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-skl10/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-apl7/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-apl8/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb6/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb6/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2852]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#588])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1804] / [i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9791/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> ([fdo#109349]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19707/shard-iclb2/igt@kms_dp_dsc@basic-d">DMESG-WARN</a> ([i915#1226])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3774022522908857350==--

--===============0123367062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0123367062==--
