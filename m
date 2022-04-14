Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E05C50079C
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 09:52:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A74F10FC4C;
	Thu, 14 Apr 2022 07:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D269C10FC4C;
 Thu, 14 Apr 2022 07:52:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1FB0AA0EB;
 Thu, 14 Apr 2022 07:52:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5773288458831155428=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 14 Apr 2022 07:52:41 -0000
Message-ID: <164992276185.1345.6846162946116217545@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1649685475.git.jani.nikula@intel.com>
In-Reply-To: <cover.1649685475.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_low_level_EDID_block_read_refactoring_etc=2E_=28rev7?=
 =?utf-8?q?=29?=
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

--===============5773288458831155428==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: low level EDID block read refactoring etc. (rev7)
URL   : https://patchwork.freedesktop.org/series/102329/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11497_full -> Patchwork_102329v7_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102329v7_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102329v7_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102329v7_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_workarounds@suspend-resume:
    - shard-snb:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-snb6/igt@gem_workarounds@suspend-resume.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-snb7/igt@gem_workarounds@suspend-resume.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl8/igt@kms_fbcon_fbt@psr-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_102329v7_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23]) -> ([PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [FAIL][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46]) ([i915#5032])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl10/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl10/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl10/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl10/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl10/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl10/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl3/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl8/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl8/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl9/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl9/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#5437])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-apl8/igt@core_hotunplug@unbind-rebind.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-apl1/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([i915#5327])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([i915#4525])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][52] ([i915#5076] / [i915#5614])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-kbl6/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][53] ([i915#2842])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-apl:          [PASS][54] -> [FAIL][55] ([i915#2842])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][56] -> [FAIL][57] ([i915#2849])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - shard-iclb:         [PASS][58] -> [DMESG-WARN][59] ([i915#4391])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-iclb1/igt@gem_exec_reloc@basic-gtt-cpu.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb7/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180]) +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-apl4/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][62] -> [SKIP][63] ([i915#2190])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-tglb2/igt@gem_huc_copy@huc-copy.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#4613]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@gem_lmem_swapping@basic.html
    - shard-kbl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#4613])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-apl8/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@verify:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#4613])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl8/igt@gem_lmem_swapping@verify.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([i915#4270])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#3297]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          NOTRUN -> [DMESG-WARN][70] ([i915#180])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-apl8/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][71] -> [DMESG-WARN][72] ([i915#5566] / [i915#716])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-apl2/igt@gen9_exec_parse@allowed-single.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-apl2/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#2856])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][74] -> [FAIL][75] ([i915#454])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#1902])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb7/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#110892])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-iclb:         [PASS][78] -> [FAIL][79] ([i915#2521])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-iclb3/igt@kms_async_flips@alternate-sync-async-flip.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb4/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#5286])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [PASS][81] -> [DMESG-WARN][82] ([i915#118])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#110725] / [fdo#111614])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3777])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3777]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3777]) +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-glk:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3777])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-iclb:         [PASS][88] -> [FAIL][89] ([i915#1888])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-iclb2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb8/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#110723])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3886]) +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
    - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109278] / [i915#3886]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#3886]) +7 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl3/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3886]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-apl8/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#3886]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271]) +99 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-apl1/igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-apl3/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium@dp-hpd-storm:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_chamelium@dp-hpd-storm.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-glk:          NOTRUN -> [SKIP][99] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@kms_chamelium@hdmi-aspect-ratio.html
    - shard-skl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl4/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_color@pipe-d-ctm-0-25:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109278] / [i915#1149])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_color@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-kbl6/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_content_protection@lic:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109300] / [fdo#111066])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_content_protection@lic.html
    - shard-kbl:          NOTRUN -> [TIMEOUT][105] ([i915#1319])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][106] -> [DMESG-WARN][107] ([i915#180]) +8 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
    - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#5691])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
    - shard-glk:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#5691])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
    - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#1888] / [i915#5691])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][111] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][112] -> [FAIL][113] ([i915#2346])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#533])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - shard-iclb:         NOTRUN -> [SKIP][115] ([fdo#109278]) +15 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb7/igt@kms_cursor_legacy@pipe-d-single-move.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][116] ([fdo#109274])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][117] ([i915#79])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][118] -> [FAIL][119] ([i915#2122]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
    - shard-kbl:          NOTRUN -> [SKIP][120] ([fdo#109271]) +72 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109280]) +11 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [FAIL][122] ([i915#1188])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl6/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html

  * igt@kms_hdr@static-toggle:
    - shard-iclb:         NOTRUN -> [SKIP][123] ([i915#3555])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_hdr@static-toggle.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#533]) +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][125] ([fdo#108145] / [i915#265]) +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#658]) +3 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#658])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
    - shard-glk:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#658])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-kbl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#658])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@kms_psr2_su@page_flip-p010.html
    - shard-iclb:         NOTRUN -> [SKIP][130] ([fdo#109642] / [fdo#111068] / [i915#658])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][131] -> [SKIP][132] ([fdo#109441]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109441])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [SKIP][134] ([fdo#109271]) +301 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl8/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html

  * igt@nouveau_crc@pipe-a-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][135] ([i915#2530])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@nouveau_crc@pipe-a-source-outp-inactive.html

  * igt@nouveau_crc@pipe-b-source-outp-complete:
    - shard-glk:          NOTRUN -> [SKIP][136] ([fdo#109271]) +24 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@nouveau_crc@pipe-b-source-outp-complete.html

  * igt@perf@polling-small-buf:
    - shard-skl:          NOTRUN -> [FAIL][137] ([i915#1722])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl4/igt@perf@polling-small-buf.html

  * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][138] ([fdo#109291]) +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb7/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html

  * igt@prime_vgem@coherency-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][139] ([fdo#109292])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-write-hang:
    - shard-iclb:         NOTRUN -> [SKIP][140] ([fdo#109295])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@prime_vgem@fence-write-hang.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][141] ([i915#5098])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-apl3/igt@syncobj_timeline@transfer-timeline-point.html
    - shard-skl:          NOTRUN -> [DMESG-FAIL][142] ([i915#5098])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl8/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#2994]) +3 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl4/igt@sysfs_clients@busy.html
    - shard-glk:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#2994])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][145] ([fdo#109271] / [i915#2994]) +2 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-apl8/igt@sysfs_clients@create.html

  * igt@sysfs_clients@fair-0:
    - shard-iclb:         NOTRUN -> [SKIP][146] ([i915#2994])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@sema-25:
    - shard-kbl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [i915#2994]) +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][148] ([i915#658]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-iclb8/igt@feature_discovery@psr2.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_bad_destroy@double-destroy:
    - shard-skl:          [DMESG-WARN][150] ([i915#1982]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl6/igt@gem_ctx_bad_destroy@double-destroy.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl6/igt@gem_ctx_bad_destroy@double-destroy.html

  * igt@gem_eio@kms:
    - shard-tglb:         [FAIL][152] ([i915#232]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-tglb1/igt@gem_eio@kms.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - {shard-tglu}:       [TIMEOUT][154] ([i915#3063] / [i915#3648]) -> [P

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/index.html

--===============5773288458831155428==
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
<tr><td><b>Series:</b></td><td>drm/edid: low level EDID block read refactor=
ing etc. (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/102329/">https://patchwork.freedesktop.org/series/102329/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102329v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11497_full -&gt; Patchwork_102329v=
7_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102329v7_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_102329v7_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
102329v7_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-snb6/igt@gem_workarounds@suspend-resume.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v=
7/shard-snb7/igt@gem_workarounds@suspend-resume.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-skl8/igt@kms_fbcon_fbt@psr-suspend.h=
tml">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102329v7_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11497/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11497/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11497/shard-skl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/sha=
rd-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11497/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11497/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11497/shard-skl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497=
/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11497/shard-skl2/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-sk=
l1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl10/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11497/shard-skl10/boo=
t.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_102329v7/shard-skl10/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl10/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10232=
9v7/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-skl1/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl1/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102329v7/shard-skl2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl2/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard=
-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_102329v7/shard-skl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl4/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10232=
9v7/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-skl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl5/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102329v7/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-=
skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_102329v7/shard-skl7/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329=
v7/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_102329v7/shard-skl8/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102329v7/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_102329v7/shard-skl9/boot.html">PASS</a>) ([i=
915#5032])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-apl8/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/=
shard-apl1/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#543=
7])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb7/igt@gem_ccs@ctrl-surf-copy-new=
-ctx.html">SKIP</a> ([i915#5327])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
02329v7/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> =
([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-kbl6/igt@gem_exec_balancer@parallel-=
keep-submit-fence.html">DMESG-WARN</a> ([i915#5076] / [i915#5614])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@gem_exec_fair@basic-none-rr=
ul@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102=
329v7/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i9=
15#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102=
329v7/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i9=
15#2849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-iclb1/igt@gem_exec_reloc@basic-gtt-cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7=
/shard-iclb7/igt@gem_exec_reloc@basic-gtt-cpu.html">DMESG-WARN</a> ([i915#4=
391])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v=
7/shard-apl4/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> ([i915=
#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-=
tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@gem_lmem_swapping@basic.htm=
l">SKIP</a> ([i915#4613]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@gem_lmem_swapping@basic.html=
">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-apl8/igt@gem_lmem_swapping@smem-oom.=
html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-skl8/igt@gem_lmem_swapping@verify.ht=
ml">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@gem_pxp@verify-pxp-key-cha=
nge-after-suspend-resume.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@gem_userptr_blits@invalid-=
mmap-offset-unsync.html">SKIP</a> ([i915#3297]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-apl8/igt@gem_workarounds@suspend-res=
ume.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-apl2/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v=
7/shard-apl2/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915=
#5566] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@gen9_exec_parse@bb-start-f=
ar.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/shard-icl=
b3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb7/igt@i915_pm_lpsp@screens-disab=
led.html">SKIP</a> ([i915#1902])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@i915_pm_rpm@modeset-non-lp=
sp-stress.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-iclb3/igt@kms_async_flips@alternate-sync-async-flip.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102329v7/shard-iclb4/igt@kms_async_flips@alternate-sync-async-flip.htm=
l">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_big_fb@4-tiled-32bpp-r=
otate-270.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102=
329v7/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a=
> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_big_fb@x-tiled-64bpp-r=
otate-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-s=
tride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-s=
tride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#=
3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-s=
tride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#=
3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@kms_big_fb@y-tiled-max-hw-s=
tride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i91=
5#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-iclb2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2329v7/shard-iclb8/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">FAIL</a> ([=
i915#1888])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@kms_ccs@pipe-a-missing-ccs-b=
uffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 s=
imilar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_ccs@pipe-a-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +1 =
similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-skl3/igt@kms_ccs@pipe-b-ccs-on-anoth=
er-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-apl8/igt@kms_ccs@pipe-c-ccs-on-anoth=
er-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@kms_ccs@pipe-c-crc-primary-=
rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886=
]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-apl1/igt@kms_ccs@pipe-d-crc-primary-=
rotation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#109271]) +99 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-apl3/igt@kms_chamelium@dp-hpd-for-ea=
ch-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_chamelium@dp-hpd-storm=
.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@kms_chamelium@hdmi-aspect-ra=
tio.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-skl4/igt@kms_chamelium@hdmi-aspect-ra=
tio.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +22 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_color@pipe-d-ctm-0-25.=
html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-kbl6/igt@kms_color_chamelium@pipe-a-=
degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_color_chamelium@pipe-d=
-ctm-0-5.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_content_protection@lic.=
html">SKIP</a> ([fdo#109300] / [fdo#111066])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@kms_content_protection@lic.h=
tml">TIMEOUT</a> ([i915#1319])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
02329v7/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WAR=
N</a> ([i915#180]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor=
-512x170-sliding.html">SKIP</a> ([fdo#109271] / [i915#5691])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor=
-512x170-sliding.html">SKIP</a> ([fdo#109271] / [i915#5691])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor=
-512x170-sliding.html">SKIP</a> ([fdo#109271] / [i915#1888] / [i915#5691])<=
/p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_cursor_legacy@2x-long-=
cursor-vs-flip-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_102329v7/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@kms_cursor_legacy@pipe-d-si=
ngle-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb7/igt@kms_cursor_legacy@pipe-d-s=
ingle-move.html">SKIP</a> ([fdo#109278]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_flip@2x-modeset-vs-vbl=
ank-race-interruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-skl10/igt@kms_flip@flip-vs-expired-v=
blank-interruptible@b-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_102329v7/shard-skl5/igt@kms_flip@plain-flip-ts-check-interrupti=
ble@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@kms_flip_scaled_crc@flip-64=
bpp-ytile-to-32bpp-ytile-upscaling.html">SKIP</a> ([fdo#109271]) +72 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> ([fdo#109280]) +11 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-skl6/igt@kms_hdr@bpc-switch-dpms@bpc=
-switch-dpms-edp-1-pipe-a.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_hdr@static-toggle.html=
">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-skl3/igt@kms_pipe_crc_basic@hang-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-skl4/igt@kms_plane_alpha_blend@pipe-=
b-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-skl6/igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-apl1/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@kms_psr2_su@page_flip-p010.h=
tml">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_psr2_su@page_flip-p010.=
html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v=
7/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441=
]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@kms_psr@psr2_sprite_plane_=
onoff.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-skl8/igt@kms_scaling_modes@scaling-m=
ode-none@edp-1-pipe-a.html">SKIP</a> ([fdo#109271]) +301 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@nouveau_crc@pipe-a-source-=
outp-inactive.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-outp-complete:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@nouveau_crc@pipe-b-source-o=
utp-complete.html">SKIP</a> ([fdo#109271]) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-skl4/igt@perf@polling-small-buf.html=
">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb7/igt@prime_nv_api@nv_i915_reimp=
ort_twice_check_flink_name.html">SKIP</a> ([fdo#109291]) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> ([fdo#109292])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-apl3/igt@syncobj_timeline@transfer-ti=
meline-point.html">DMESG-FAIL</a> ([i915#5098])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-skl8/igt@syncobj_timeline@transfer-ti=
meline-point.html">DMESG-FAIL</a> ([i915#5098])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-skl4/igt@sysfs_clients@busy.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +3 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102329v7/shard-glk8/igt@sysfs_clients@busy.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-apl8/igt@sysfs_clients@create.html">=
SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-iclb5/igt@sysfs_clients@fair-0.html"=
>SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102329v7/shard-kbl3/igt@sysfs_clients@sema-25.html"=
>SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-iclb8/igt@feature_discovery@psr2.html">SKIP</a> ([i915#=
658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
02329v7/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_bad_destroy@double-destroy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-skl6/igt@gem_ctx_bad_destroy@double-destroy.html">DMESG=
-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_102329v7/shard-skl6/igt@gem_ctx_bad_destroy@double-destroy=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11497/shard-tglb1/igt@gem_eio@kms.html">FAIL</a> ([i915#232]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v7/sha=
rd-tglb7/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-tglu}:       [TIMEOUT][154] ([i915#3063] / [i915#3648]) -&gt; [P=
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5773288458831155428==--
