Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E454390EA9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 05:07:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89DA96EB6F;
	Wed, 26 May 2021 03:07:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C17F56EB6F;
 Wed, 26 May 2021 03:07:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8B45A47EB;
 Wed, 26 May 2021 03:07:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Wed, 26 May 2021 03:07:23 -0000
Message-ID: <162199844372.13404.10835234280117832567@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210525211541.87696-1-matthew.brost@intel.com>
In-Reply-To: <20210525211541.87696-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgTm9u?=
 =?utf-8?q?-interface_changing_GuC_CTBs_updates?=
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
Content-Type: multipart/mixed; boundary="===============1249758477=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1249758477==
Content-Type: multipart/alternative;
 boundary="===============8438548625122079550=="

--===============8438548625122079550==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Non-interface changing GuC CTBs updates
URL   : https://patchwork.freedesktop.org/series/90552/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10133_full -> Patchwork_20192_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20192_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20192_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20192_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@suspend:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb2/igt@gem_eio@suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb8/igt@gem_eio@suspend.html

  * igt@gem_eio@wait-1us:
    - shard-glk:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk6/igt@gem_eio@wait-1us.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk1/igt@gem_eio@wait-1us.html

  
Known issues
------------

  Here are the changes found in Patchwork_20192_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-clear:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#1888] / [i915#3160])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk6/igt@gem_create@create-clear.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk1/igt@gem_create@create-clear.html

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][7] ([i915#3002])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-snb5/igt@gem_create@create-massive.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][8] ([i915#3002])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl3/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1099]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-snb6/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_eio@in-flight-suspend:
    - shard-tglb:         [PASS][10] -> [DMESG-WARN][11] ([i915#2411]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb7/igt@gem_eio@in-flight-suspend.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb3/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][12] -> [TIMEOUT][13] ([i915#2369] / [i915#3063])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb6/igt@gem_eio@unwedge-stress.html
    - shard-skl:          [PASS][14] -> [TIMEOUT][15] ([i915#2369] / [i915#3063])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl3/igt@gem_eio@unwedge-stress.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl3/igt@gem_eio@unwedge-stress.html
    - shard-iclb:         [PASS][16] -> [TIMEOUT][17] ([i915#2369] / [i915#2481] / [i915#3070])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb1/igt@gem_eio@unwedge-stress.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][20] -> [FAIL][21] ([i915#2842]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][22] ([i915#2389])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][23] -> [SKIP][24] ([i915#2190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb8/igt@gem_huc_copy@huc-copy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb6/igt@gem_huc_copy@huc-copy.html
    - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#2190])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#307])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl7/igt@gem_mmap_gtt@big-copy.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl9/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-apl:          [PASS][28] -> [INCOMPLETE][29] ([i915#3468])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-apl8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#3468])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-skl:          NOTRUN -> [INCOMPLETE][32] ([i915#198] / [i915#2910] / [i915#3468])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl10/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([i915#3468]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
    - shard-apl:          NOTRUN -> [INCOMPLETE][35] ([i915#3468]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl3/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [PASS][36] -> [FAIL][37] ([i915#307])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-iclb:         [PASS][38] -> [INCOMPLETE][39] ([i915#3468]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
    - shard-glk:          [PASS][40] -> [INCOMPLETE][41] ([i915#3468])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk8/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][42] ([i915#3468])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#768])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb3/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][44] ([i915#2724])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-snb6/igt@gem_userptr_blits@vma-merge.html
    - shard-apl:          NOTRUN -> [FAIL][45] ([i915#3318])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl1/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][46] -> [DMESG-WARN][47] ([i915#1436] / [i915#716])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][48] ([fdo#109271]) +381 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-snb2/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#1937])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +18 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl3/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#110892])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][52] ([i915#3462])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb6/igt@i915_selftest@live@execlists.html
    - shard-glk:          NOTRUN -> [DMESG-FAIL][53] ([i915#3462])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk9/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][54] ([i915#2373])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb6/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][55] ([i915#1759] / [i915#2291])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb6/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#110725] / [fdo#111614])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_chamelium@dp-hpd-after-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@kms_chamelium@dp-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-snb:          NOTRUN -> [SKIP][58] ([fdo#109271] / [fdo#111827]) +20 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-snb5/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl1/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl2/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl7/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][62] ([i915#1319])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@mei_interface:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109300] / [fdo#111066])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@kms_content_protection@mei_interface.html

  * igt@kms_cursor_crc@pipe-d-cursor-max-size-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109278]) +4 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-max-size-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([i915#2346])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-tglb:         [PASS][67] -> [FAIL][68] ([i915#2346])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +57 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl7/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#2065])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109274]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb3/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@d-edp1:
    - shard-tglb:         [PASS][72] -> [FAIL][73] ([i915#79])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@d-edp1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@d-edp1.html

  * igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1:
    - shard-skl:          [PASS][74] -> [DMESG-WARN][75] ([i915#1982]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl3/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl3/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][76] ([i915#180]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:
    - shard-glk:          [PASS][77] -> [FAIL][78] ([i915#2122])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk3/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk9/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2672])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2642])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-skl:          NOTRUN -> [FAIL][81] ([i915#49])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109280]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][83] -> [DMESG-WARN][84] ([i915#180]) +4 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#533]) +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][86] ([fdo#108145] / [i915#265])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][87] ([fdo#108145] / [i915#265])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][88] ([fdo#108145] / [i915#265]) +3 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][89] ([i915#265])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][90] -> [FAIL][91] ([fdo#108145] / [i915#265])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#658])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#658]) +7 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_su@page_flip:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#658])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl10/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][95] -> [SKIP][96] ([fdo#109441]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb3/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109309])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb3/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][98] -> [INCOMPLETE][99] ([i915#198])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][100] -> [DMESG-WARN][101] ([i915#180] / [i915#295])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#2437])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl8/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-c-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([i915#2530])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@nouveau_crc@pipe-c-source-rg.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][104] -> [FAIL][105] ([i915#1542])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl7/igt@perf@blocking.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl6/igt@perf@blocking.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-apl:          NOTRUN -> [SKIP][106] ([fdo#109271]) +289 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl2/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@prime_vgem@sync@rcs0:
    - shard-skl:          [PASS][107] -> [INCOMPLETE][108] ([i915#409])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl2/igt@prime_vgem@sync@rcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl3/igt@prime_vgem@sync@rcs0.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#2994]) +4 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl3/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@sema-25:
    - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#2994]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl1/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][111] ([i915#146] / [i915#198]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl10/igt@gem_eio@in-flight-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][113] ([i915#2842]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [SKIP][115] ([fdo#109271]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-glk:          [FAIL][117] ([i915#307]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk7/igt@gem_mmap_gtt@big-copy.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk2/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-snb:          [INCOMPLETE][119] ([i915#2055] / [i915#3468]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-snb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-snb2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-skl:          [INCOMPLETE][121] ([i915#198] / [i915#3468]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl10/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl7/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-kbl:          [INCOMPLETE][123] ([i915#3468]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl3/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl1/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-tglb:         [INCOMPLETE][125] ([i915#3468]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
    - shard-glk:          [INCOMPLETE][127] ([i915#2055] / [i915#3468]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk3/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk9/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [FAIL][129] ([i915#307]) -> [PASS][130] +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][131] ([i915#644]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][133] ([i915#72]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-rmfb@a-edp1:
    - shard-skl:          [DMESG-WARN][135] ([i915#1982]) -> [PASS][136] +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl1/igt@kms_flip@flip-vs-rmfb@a-edp1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl10/igt@kms_flip@flip-vs-rmfb@a-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][137] ([i915#1188]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][139] ([i915#180]) -> [PASS][140] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][141] ([fdo#108145] / [i915#265]) -> [PASS][142] +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][143] ([fdo#109441]) -> [PASS][144] +6 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][145] ([i915#1542]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl9/igt@perf@polling-parameterized.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl9/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][147] ([i915#1804] / [i915#2684]) -> [WARN][148] ([i915#2684])
   [147]: https

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/index.html

--===============8438548625122079550==
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
<tr><td><b>Series:</b></td><td>Non-interface changing GuC CTBs updates</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90552/">https://patchwork.freedesktop.org/series/90552/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10133_full -&gt; Patchwork_20192_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20192_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20192_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20192_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb2/igt@gem_eio@suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb8/igt@gem_eio@suspend.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-1us:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk6/igt@gem_eio@wait-1us.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk1/igt@gem_eio@wait-1us.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20192_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk6/igt@gem_create@create-clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk1/igt@gem_create@create-clear.html">FAIL</a> ([i915#1888] / [i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-snb5/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl3/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-snb6/igt@gem_ctx_persistence@legacy-engines-queued.html">SKIP</a> ([fdo#109271] / [i915#1099]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb7/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb3/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> ([i915#2411]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl3/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb1/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481] / [i915#3070])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl3/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl7/igt@gem_mmap_gtt@big-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl9/igt@gem_mmap_gtt@big-copy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-apl8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl10/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#198] / [i915#2910] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl3/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk8/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@gem_mmap_gtt@fault-concurrent.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb3/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-snb6/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl1/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl10/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-snb2/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([fdo#109271]) +381 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl3/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> ([fdo#109271]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb6/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> ([i915#3462])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk9/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> ([i915#3462])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb6/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> ([i915#2373])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb6/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1759] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-after-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@kms_chamelium@dp-hpd-after-suspend.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-snb5/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl1/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl2/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl7/igt@kms_chamelium@vga-hpd-after-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl8/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@kms_content_protection@mei_interface.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-max-size-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-max-size-onscreen.html">SKIP</a> ([fdo#109278]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl7/igt@kms_cursor_legacy@pipe-d-torture-move.html">SKIP</a> ([fdo#109271]) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#2065])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb3/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@d-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@d-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@d-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl3/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl3/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html">DMESG-WARN</a> ([i915#1982]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk3/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk9/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#109280]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl10/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb3/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb3/igt@kms_tv_load_detect@load-detect.html">SKIP</a> ([fdo#109309])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl8/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb5/igt@nouveau_crc@pipe-c-source-rg.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl7/igt@perf@blocking.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl6/igt@perf@blocking.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl2/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html">SKIP</a> ([fdo#109271]) +289 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl2/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl3/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i915#409])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-apl3/igt@sysfs_clients@fair-7.html">SKIP</a> ([fdo#109271] / [i915#2994]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl1/igt@sysfs_clients@sema-25.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl10/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> ([i915#146] / [i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl1/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk7/igt@gem_mmap_gtt@big-copy.html">FAIL</a> ([i915#307]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk2/igt@gem_mmap_gtt@big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-snb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#2055] / [i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-snb2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl10/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#198] / [i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl7/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl3/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl1/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk3/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#2055] / [i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk9/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> ([i915#307]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#644]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">FAIL</a> ([i915#72]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl1/igt@kms_flip@flip-vs-rmfb@a-edp1.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl10/igt@kms_flip@flip-vs-rmfb@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb3/igt@kms_psr@psr2_suspend.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl9/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20192/shard-skl9/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rc6_residency@rc6-idle:<ul>
<li>shard-iclb:         <a href="https">WARN</a> ([i915#1804] / [i915#2684]) -&gt; [WARN][148] ([i915#2684])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8438548625122079550==--

--===============1249758477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1249758477==--
