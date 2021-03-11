Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6A1337F51
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 22:03:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A352D6E071;
	Thu, 11 Mar 2021 21:03:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E62BC6E06D;
 Thu, 11 Mar 2021 21:03:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EDA2AA00C9;
 Thu, 11 Mar 2021 21:03:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swathi Dhanavanthri" <swathi.dhanavanthri@intel.com>
Date: Thu, 11 Mar 2021 21:03:04 -0000
Message-ID: <161549658496.28799.16032414292175419670@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210311182612.17004-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20210311182612.17004-1-swathi.dhanavanthri@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_Wa=5F14011060649?=
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
Content-Type: multipart/mixed; boundary="===============1190789813=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1190789813==
Content-Type: multipart/alternative;
 boundary="===============5954387239488775057=="

--===============5954387239488775057==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add Wa_14011060649
URL   : https://patchwork.freedesktop.org/series/87895/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9850_full -> Patchwork_19784_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19784_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19784_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19784_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_reloc@basic-parallel:
    - shard-glk:          NOTRUN -> [TIMEOUT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-glk6/igt@gem_exec_reloc@basic-parallel.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][2], [FAIL][3], [FAIL][4], [FAIL][5], [FAIL][6], [FAIL][7]) ([i915#1814] / [i915#2029] / [i915#2263] / [i915#2724] / [i915#3002]) -> ([FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16]) ([i915#1814] / [i915#2029] / [i915#2426] / [i915#2724] / [i915#3002])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl6/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl7/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl3/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl3/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl3/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl1/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl3/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl10/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl3/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl3/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl2/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl9/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl3/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl2/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl9/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19784_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][17] ([i915#3002])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb7/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#1099]) +3 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [PASS][19] -> [INCOMPLETE][20] ([i915#1895] / [i915#3031])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-iclb5/igt@gem_exec_balancer@hang.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb1/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#2369])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl5/igt@gem_exec_capture@pi@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl9/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][23] ([i915#2842])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][24] -> [FAIL][25] ([i915#2842]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#2849])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][28] ([i915#2389]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-snb6/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1610] / [i915#2803])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl7/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl3/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-tglb:         [PASS][31] -> [DMESG-WARN][32] ([i915#2803])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-tglb6/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-tglb1/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][33] -> [DMESG-WARN][34] ([i915#118] / [i915#95])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-glk5/igt@gem_exec_whisper@basic-queues-forked.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-glk1/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_media_vme:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +83 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl2/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-glk:          [PASS][36] -> [FAIL][37] ([i915#307])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-glk4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-glk2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-iclb:         [PASS][38] -> [FAIL][39] ([i915#2428])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb1/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_offset@clear:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#3160])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl4/igt@gem_mmap_offset@clear.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl10/igt@gem_mmap_offset@clear.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][42] ([i915#2658])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl8/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][43] ([i915#3002]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl7/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@process-exit-mmap-busy@wc:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#1699]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl8/igt@gem_userptr_blits@process-exit-mmap-busy@wc.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [INCOMPLETE][45] ([i915#2502] / [i915#2667])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl6/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271]) +155 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl8/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][47] -> [INCOMPLETE][48] ([i915#198])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl6/igt@i915_selftest@mock@requests.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl7/igt@i915_selftest@mock@requests.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          NOTRUN -> [DMESG-WARN][49] ([i915#180]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl3/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][50] -> [FAIL][51] ([i915#2597])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-tglb2/igt@kms_async_flips@test-time-stamp.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-tglb6/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#110725] / [fdo#111614])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb7/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_ccs@pipe-c-bad-aux-stride:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111304]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl2/igt@kms_ccs@pipe-c-bad-aux-stride.html

  * igt@kms_ccs@pipe-d-bad-rotation-90:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109278]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb7/igt@kms_ccs@pipe-d-bad-rotation-90.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-snb:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-snb2/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl8/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl1/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-glk:          NOTRUN -> [SKIP][58] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-glk6/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb7/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-random:
    - shard-glk:          NOTRUN -> [SKIP][62] ([fdo#109271]) +26 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-glk6/igt@kms_cursor_crc@pipe-d-cursor-256x256-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          NOTRUN -> [FAIL][63] ([i915#2346])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#2346])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-glk:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-glk6/igt@kms_cursor_legacy@pipe-d-torture-bo.html
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#533]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl6/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][68] -> [FAIL][69] ([i915#79]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109274])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][71] -> [FAIL][72] ([i915#2598])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][73] -> [FAIL][74] ([i915#2122])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-apl:          NOTRUN -> [FAIL][75] ([i915#2641])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2642])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109280]) +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
    - shard-snb:          NOTRUN -> [SKIP][78] ([fdo#109271]) +303 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-snb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          NOTRUN -> [FAIL][79] ([i915#1188])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#533])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl8/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][81] ([fdo#108145] / [i915#265]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-glk:          NOTRUN -> [FAIL][82] ([fdo#108145] / [i915#265]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-glk6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][83] ([i915#265])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][84] -> [FAIL][85] ([fdo#108145] / [i915#265])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_scaling@plane-scaling:
    - shard-snb:          NOTRUN -> [INCOMPLETE][86] ([i915#3182])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-snb2/igt@kms_plane_scaling@plane-scaling.html
    - shard-skl:          NOTRUN -> [INCOMPLETE][87] ([i915#3182])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl1/igt@kms_plane_scaling@plane-scaling.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#658]) +5 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#658]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-glk:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#658])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-glk6/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#658])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][92] -> [SKIP][93] ([fdo#109441]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_rmfb@rmfb-ioctl:
    - shard-skl:          [PASS][94] -> [DMESG-WARN][95] ([i915#1982])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl10/igt@kms_rmfb@rmfb-ioctl.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl6/igt@kms_rmfb@rmfb-ioctl.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2437])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl9/igt@kms_writeback@writeback-check-output.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          [PASS][97] -> [FAIL][98] ([i915#3028])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-apl1/igt@sysfs_clients@recycle-many.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl3/igt@sysfs_clients@recycle-many.html
    - shard-skl:          [PASS][99] -> [FAIL][100] ([i915#3028])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl7/igt@sysfs_clients@recycle-many.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl4/igt@sysfs_clients@recycle-many.html
    - shard-kbl:          [PASS][101] -> [FAIL][102] ([i915#3028])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-kbl7/igt@sysfs_clients@recycle-many.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-kbl1/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-10@rcs0:
    - shard-glk:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#3026]) +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-glk6/igt@sysfs_clients@sema-10@rcs0.html

  
#### Possible fixes ####

  * igt@api_intel_bb@render-ccs:
    - shard-kbl:          [INCOMPLETE][104] ([i915#2405]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-kbl1/igt@api_intel_bb@render-ccs.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-kbl1/igt@api_intel_bb@render-ccs.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [DMESG-WARN][106] ([i915#180]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][108] ([i915#2369] / [i915#3063]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-tglb1/igt@gem_eio@unwedge-stress.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-tglb6/igt@gem_eio@unwedge-stress.html
    - shard-skl:          [TIMEOUT][110] ([i915#2369] / [i915#2771]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl10/igt@gem_eio@unwedge-stress.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [FAIL][112] ([i915#2842]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][114] ([i915#2842]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@bcs0:
    - shard-tglb:         [DMESG-WARN][116] ([i915#2803]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-tglb6/igt@gem_exec_schedule@u-fairslice@bcs0.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-tglb1/igt@gem_exec_schedule@u-fairslice@bcs0.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-skl:          [FAIL][118] ([i915#307]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl9/igt@gem_mmap_gtt@big-copy-xy.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][120] ([i915#2428]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:
    - shard-skl:          [DMESG-WARN][122] ([i915#1982]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl1/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl6/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-apl:          [FAIL][124] ([i915#79]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][126] ([i915#79]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [INCOMPLETE][128] ([i915#198]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl2/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl1/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [FAIL][130] ([i915#2122]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl9/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl4/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][132] ([i915#180] / [i915#1982]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][134] ([fdo#108145] / [i915#265]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][136] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-iclb6/igt@kms_psr2_su@frontbuffer.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][138] ([fdo#109441]) -> [PASS][139] +2 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@sysfs_clients@busy@vcs1:
    - shard-kbl:          [FAIL][140] ([i915#3009]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-kbl4/igt@sysfs_clients@busy@vcs1.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-kbl7/igt@sysfs_clients@busy@vcs1.html

  * igt@sysfs_clients@recycle-many:
    - shard-glk:          [FAIL][142] ([i915#3028]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-glk6/igt@sysfs_clients@recycle-many.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-glk1/igt@sysfs_clients@recycle-many.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][144] ([i915#658]) -> [SKIP][145] ([i915#588])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@atomic:
    - shard-iclb:         [FAIL][146] ([i915#3144]) -> [SKIP][147] ([fdo#109300] / [fdo#111066])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-iclb1/igt@kms_content_protection@atomic.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-iclb:         [FAIL][148] ([i915#3137]) -> [SKIP][149] ([fdo#109300] / [fdo#111066])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-iclb1/igt@kms_content_protection@legacy.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@type1:
    - shard-iclb:         [SKIP][150] ([fdo#109300] / [fdo#111066]) -> [FAIL][151] ([i915#3144])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-iclb5/igt@kms_content_protection@type1.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-iclb1/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-iclb:         [SKIP][152] ([fdo#109300] / [fdo#111066]) -> [FAIL][153] ([i915#3137])
   [152]: https://intel-gfx-ci.01.org

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/index.html

--===============5954387239488775057==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Add Wa_14011060649</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/87895/">https://patchwork.freedesktop.org/series/87895/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19784/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19784/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9850_full -&gt; Patchwork_19784_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19784_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19784_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19784_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_reloc@basic-parallel:<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-glk6/igt@gem_exec_reloc@basic-parallel.=
html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_9850/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl7/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_9850/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl3/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9=
850/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_9850/shard-skl1/igt@runner@aborted.html">=
FAIL</a>) ([i915#1814] / [i915#2029] / [i915#2263] / [i915#2724] / [i915#30=
02]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9784/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl10/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19784/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19784/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl9/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19784/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl2/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19784/shard-skl9/igt@runner@aborted.html">FAIL</a>) ([i915#1814=
] / [i915#2029] / [i915#2426] / [i915#2724] / [i915#3002])</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19784_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-iclb7/igt@gem_create@create-massive.htm=
l">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +3 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-iclb5/igt@gem_exec_balancer@hang.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-icl=
b1/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([i915#1895] / [i915#303=
1])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-skl5/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-sk=
l9/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#2369])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/sh=
ard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1978=
4/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2=
849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-snb6/igt@gem_exec_reloc@basic-many-acti=
ve@rcs0.html">FAIL</a> ([i915#2389]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-skl7/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1978=
4/shard-skl3/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([=
i915#1610] / [i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-tglb6/igt@gem_exec_schedule@u-fairslice@vecs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
784/shard-tglb1/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG-WARN</a=
> ([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-glk5/igt@gem_exec_whisper@basic-queues-forked.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
784/shard-glk1/igt@gem_exec_whisper@basic-queues-forked.html">DMESG-WARN</a=
> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-skl2/igt@gem_media_vme.html">SKIP</a> (=
[fdo#109271]) +83 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-glk4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/=
shard-glk2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#307])=
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
784/shard-iclb1/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">FAIL</a> ([i9=
15#2428])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-skl4/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl10=
/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-apl8/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-apl7/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap-busy@wc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-apl8/igt@gem_userptr_blits@process-exit=
-mmap-busy@wc.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-apl6/igt@gem_userptr_blits@vma-merge.ht=
ml">INCOMPLETE</a> ([i915#2502] / [i915#2667])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-apl8/igt@i915_pm_rpm@modeset-lpsp-stres=
s.html">SKIP</a> ([fdo#109271]) +155 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-skl6/igt@i915_selftest@mock@requests.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard=
-skl7/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-apl3/igt@i915_suspend@forcewake.html">D=
MESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/=
shard-tglb6/igt@kms_async_flips@test-time-stamp.html">FAIL</a> ([i915#2597]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-iclb7/igt@kms_big_fb@linear-32bpp-rotat=
e-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-skl2/igt@kms_ccs@pipe-c-bad-aux-stride.=
html">SKIP</a> ([fdo#109271] / [fdo#111304]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-iclb7/igt@kms_ccs@pipe-d-bad-rotation-9=
0.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-snb2/igt@kms_chamelium@hdmi-mode-timing=
s.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-apl8/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-skl1/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-glk6/igt@kms_chamelium@vga-hpd-with-ena=
bled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-iclb7/igt@kms_color_chamelium@pipe-c-ct=
m-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
784/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</a=
> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-glk6/igt@kms_cursor_crc@pipe-d-cursor-2=
56x256-random.html">SKIP</a> ([fdo#109271]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-glk6/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19784/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a=
> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19784/shard-glk6/igt@kms_cursor_legacy@pipe-d-tortur=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19784/shard-skl6/igt@kms_cursor_legacy@pipe-d-tortur=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptibl=
e@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19784/shard-glk9/igt@kms_flip@2x-flip-vs-expir=
ed-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-iclb7/igt@kms_flip@2x-plain-flip-fb-rec=
reate-interruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19784/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@a-edp1.html">FAIL</a> ([i915#2598])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19784/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interrup=
tible@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-skl9/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-iclb7/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109280]) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-snb2/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#109271]) +303 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-skl9/igt@kms_hdr@bpc-switch.html">FAIL<=
/a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-apl8/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-glk6/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19784/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-m=
in.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaling:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19784/shard-snb2/igt@kms_plane_scaling@plane-scaling=
.html">INCOMPLETE</a> ([i915#3182])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19784/shard-skl1/igt@kms_plane_scaling@plane-scaling=
.html">INCOMPLETE</a> ([i915#3182])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-apl3/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-skl2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-glk6/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-iclb7/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-3.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/s=
hard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441])=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_rmfb@rmfb-ioctl:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-skl10/igt@kms_rmfb@rmfb-ioctl.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-skl6/i=
gt@kms_rmfb@rmfb-ioctl.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-skl9/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9850/shard-apl1/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-a=
pl3/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9850/shard-skl7/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-s=
kl4/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9850/shard-kbl7/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19784/shard-k=
bl1/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19784/shard-glk6/igt@sysfs_clients@sema-10@rcs0.htm=
l">SKIP</a> ([fdo#109271] / [i915#3026]) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-kbl1/igt@api_intel_bb@render-ccs.html">INCOMPLETE</a> ([=
i915#2405]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19784/shard-kbl1/igt@api_intel_bb@render-ccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DM=
ESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19784/shard-apl3/igt@gem_ctx_isolation@preservation-s3@r=
cs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9850/shard-tglb1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915=
#2369] / [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19784/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a><=
/p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9850/shard-skl10/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915=
#2369] / [i915#2771]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19784/shard-skl6/igt@gem_eio@unwedge-stress.html">PASS</a></=
p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19784/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19784/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-tglb6/igt@gem_exec_schedule@u-fairslice@bcs0.html">DMESG=
-WARN</a> ([i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19784/shard-tglb1/igt@gem_exec_schedule@u-fairslice@bcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-skl9/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915#=
307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9784/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a=
> ([i915#2428]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19784/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-skl1/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.ht=
ml">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19784/shard-skl6/igt@kms_cursor_edge_walk@pipe-a-=
64x64-right-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c=
-dp1.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19784/shard-apl6/igt@kms_flip@flip-vs-expired-vbla=
nk-interruptible@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FA=
IL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19784/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-skl2/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLET=
E</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19784/shard-skl1/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-skl9/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FAIL<=
/a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19784/shard-skl4/igt@kms_flip@plain-flip-ts-check@b-edp1.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMES=
G-WARN</a> ([i915#180] / [i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19784/shard-apl1/igt@kms_frontbuffer_trackin=
g@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19784/shard-skl1/igt@kms_plane_alpha_blend@=
pipe-c-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-iclb6/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#1=
09642] / [fdo#111068] / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19784/shard-iclb2/igt@kms_psr2_su@frontbuffer.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([=
fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19784/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-kbl4/igt@sysfs_clients@busy@vcs1.html">FAIL</a> ([i915#3=
009]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9784/shard-kbl7/igt@sysfs_clients@busy@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-glk6/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i91=
5#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19784/shard-glk1/igt@sysfs_clients@recycle-many.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19784/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#588])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-iclb1/igt@kms_content_protection@atomic.html">FAIL</a> (=
[i915#3144]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19784/shard-iclb6/igt@kms_content_protection@atomic.html">SKIP</a> ([=
fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-iclb1/igt@kms_content_protection@legacy.html">FAIL</a> (=
[i915#3137]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19784/shard-iclb6/igt@kms_content_protection@legacy.html">SKIP</a> ([=
fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9850/shard-iclb5/igt@kms_content_protection@type1.html">SKIP</a> ([=
fdo#109300] / [fdo#111066]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19784/shard-iclb1/igt@kms_content_protection@type1.htm=
l">FAIL</a> ([i915#3144])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org">SKIP</a> ([=
fdo#109300] / [fdo#111066]) -&gt; [FAIL][153] ([i915#3137])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5954387239488775057==--

--===============1190789813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1190789813==--
