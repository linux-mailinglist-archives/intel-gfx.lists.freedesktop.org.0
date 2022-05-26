Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8486535648
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 01:02:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79D9F10FCBD;
	Thu, 26 May 2022 23:02:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5DEAC10FCC5;
 Thu, 26 May 2022 23:02:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51BC4AADD1;
 Thu, 26 May 2022 23:02:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1912046913480465828=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Thu, 26 May 2022 23:02:54 -0000
Message-ID: <165360617429.19751.16861577444899452544@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1653589699.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1653589699.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Expose_per_gt_defaults_in_sysfs?=
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

--===============1912046913480465828==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Expose per gt defaults in sysfs
URL   : https://patchwork.freedesktop.org/series/104422/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11705_full -> Patchwork_104422v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_104422v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_104422v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104422v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-iclb:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@drm_read@short-buffer-block:
    - {shard-dg1}:        [SKIP][3] ([i915#2575]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-dg1-15/igt@drm_read@short-buffer-block.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-dg1-13/igt@drm_read@short-buffer-block.html

  * igt@kms_busy@extended-modeset-hang-oldfb@pipe-a:
    - {shard-dg1}:        NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-dg1-13/igt@kms_busy@extended-modeset-hang-oldfb@pipe-a.html

  * igt@kms_invalid_mode@bad-vsync-start:
    - {shard-dg1}:        [SKIP][6] ([i915#2575]) -> [WARN][7] +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-dg1-15/igt@kms_invalid_mode@bad-vsync-start.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-dg1-13/igt@kms_invalid_mode@bad-vsync-start.html

  * {igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3}:
    - {shard-dg1}:        NOTRUN -> [SKIP][8] +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-dg1-18/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - {shard-dg1}:        [SKIP][9] ([i915#2575]) -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-dg1-15/igt@kms_setmode@invalid-clone-exclusive-crtc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-dg1-13/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  
Known issues
------------

  Here are the changes found in Patchwork_104422v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [FAIL][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34]) ([i915#5032]) -> ([PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl9/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl9/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl9/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl8/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl8/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl8/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl3/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl10/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl10/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl10/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl9/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl9/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl9/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl8/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl8/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl8/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl1/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl1/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl10/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl10/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([i915#5327])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-glk:          NOTRUN -> [SKIP][59] ([fdo#109271]) +33 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-glk6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][60] -> [FAIL][61] ([i915#5784])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-tglb6/igt@gem_eio@kms.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb3/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#1888])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][63] ([i915#2842])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#2842])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][66] ([i915#2842])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
    - shard-kbl:          NOTRUN -> [FAIL][67] ([i915#2842])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-snb:          [PASS][68] -> [SKIP][69] ([fdo#109271]) +4 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-snb2/igt@gem_exec_flush@basic-uc-set-default.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-snb6/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-glk:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#4613])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-glk6/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#4613]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#4613]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#768]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_softpin@evict-single-offset:
    - shard-glk:          NOTRUN -> [FAIL][74] ([i915#4171])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-glk6/igt@gem_softpin@evict-single-offset.html

  * igt@gem_userptr_blits@input-checking:
    - shard-glk:          NOTRUN -> [DMESG-WARN][75] ([i915#4991])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-glk6/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#3297])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-kbl:          NOTRUN -> [FAIL][77] ([i915#3318])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl1/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][78] -> [DMESG-WARN][79] ([i915#5566] / [i915#716])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl6/igt@gen9_exec_parse@allowed-single.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#1902])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109293] / [fdo#109506])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#110892])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109303])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][84] -> [DMESG-WARN][85] ([i915#180])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl7/igt@i915_suspend@forcewake.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl3/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][86] -> [DMESG-WARN][87] ([i915#180]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl3/igt@i915_suspend@sysfs-reader.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#5286])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][89] ([i915#5286]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#110725] / [fdo#111614])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][91] ([i915#3743])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([fdo#111615])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#110723])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109278] / [i915#6095])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#3689])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#111615] / [i915#3689])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][97] ([i915#6095])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#6095])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#3886]) +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-glk6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#3886]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl6/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109278] / [i915#3886]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
    - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#3886])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#3886])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-hpd-with-enabled-mode:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109284] / [fdo#111827]) +6 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@kms_chamelium@dp-hpd-with-enabled-mode.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-kbl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl1/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-apl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl1/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color@pipe-d-ctm-0-25:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([fdo#109278] / [i915#1149])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@kms_color@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-a-ctm-max:
    - shard-glk:          NOTRUN -> [SKIP][109] ([fdo#109271] / [fdo#111827])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-glk6/igt@kms_color_chamelium@pipe-a-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([i915#3359])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][112] -> [INCOMPLETE][113] ([i915#4939])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-skl:          NOTRUN -> [SKIP][114] ([fdo#109271]) +121 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl3/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][116] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([fdo#109278]) +18 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@kms_cursor_legacy@pipe-d-single-move.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglb:         NOTRUN -> [SKIP][118] ([i915#4103])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          NOTRUN -> [FAIL][119] ([i915#4767])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109274]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a2:
    - shard-glk:          [PASS][121] -> [FAIL][122] ([i915#2122])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-glk1/igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a2.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-glk8/igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-skl:          [PASS][123] -> [FAIL][124] ([i915#2122]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
    - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#3701])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
    - shard-iclb:         [PASS][126] -> [FAIL][127] ([i915#1888] / [i915#2546]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][128] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
    - shard-iclb:         NOTRUN -> [SKIP][129] ([fdo#109280]) +16 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#533])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][131] ([fdo#108145] / [i915#265]) +2 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][132] ([fdo#108145] / [i915#265]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-b-tiling-y:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([i915#3536])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@kms_plane_lowres@pipe-b-tiling-y.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         NOTRUN -> [SKIP][134] ([i915#658])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         NOTRUN -> [SKIP][135] ([i915#2920])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
    - shard-kbl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#658])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl3/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#658])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
    - shard-iclb:         NOTRUN -> [SKIP][138] ([fdo#111068] / [i915#658])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-skl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#658])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglb:         NOTRUN -> [SKIP][140] ([i915#1911])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][141] -> [SKIP][142] ([fdo#109441])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb6/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         NOTRUN -> [SKIP][143] ([fdo#109441]) +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [PASS][144] -> [SKIP][145] ([i915#5519])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-tglb6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [PASS][146] -> [SKIP][147] ([i915#5519])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-kbl:          NOTRUN -> [SKIP][148] ([fdo#109271]) +87 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl6/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-iclb:         NOTRUN -> [SKIP][149] ([i915#3555]) +2 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][150] ([fdo#109271]) +32 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl1/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][151] ([i915#3555])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_vrr@flip-suspend.html

  * igt@nouveau_crc@pipe-c-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][152] ([i915#2530]) +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@nouveau_crc@pipe-c-ctx-flip-detection.html

  * igt@nouveau_crc@pipe-c-source-rg:
    - shard-tglb:         NOTRUN -> [SKIP][153] ([i915#2530])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@nouveau_crc@pipe-c-source-rg.html

  * igt@nouveau_crc@pipe-d-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][154] ([fdo#109278] / [i915#2530])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@nouveau_crc@pipe-d-source-rg.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-iclb:         NOTRUN -> [SKIP][155] ([fdo#109289])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@perf@unprivileged-single-ctx-counters.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-iclb:         NOTRUN -> [SKIP][156] ([fdo#109295]) +1 similar issue
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@prime_vgem@fence-flip-hang.html

  * igt@sysfs_clients@busy:
    - shard-iclb:         NOTRUN -> [SKIP][157] ([i915#2994])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][158] ([fdo#109271] / [i915#2994])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-7:
    - shard-glk:          NOTRUN -> [SKIP][159] ([fdo#109271] / [i915#2994])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-glk6/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@sema-50:
    - shard-tglb:         NOTRUN -> [SKIP][160] ([i915#2994])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@sysfs_clients@sema-50.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          NOTRUN -> [WARN][161] ([i915#4055])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-skl:          NOTRUN -> [FAIL][162] ([i915#1731]) +2 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel-balancer:
    - {shard-dg1}:        [SKIP][163] ([i915#2575]) -> [PASS][164] +7 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-dg1-15/igt@gem_exec_balancer@parallel-balancer.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-dg1-13/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-iclb:         [INCOMPLETE][165] ([i915#3371]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb6/igt@gem_exec_capture@pi@rcs0.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][167] ([i915#2846]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-glk7/igt@gem_exec_fair@basic-deadline.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-glk2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][169] ([i915#2842]) -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][171] ([i915#2849]) -> [PASS][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-snb:          [SKIP][173] ([fdo#109271]) -> [PASS][174] +2 similar issues
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-snb4/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@i915_pm_dc@dc9-dpms:
    - {shard-tglu}:       [SKIP][175] ([i915#4281]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-tglu-6/igt@i915_pm_dc@dc9-dpms.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglu-2/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [INCOMPLETE][177] ([i915#3614]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl4/igt@i915_suspend@debugfs-reader.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl3/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][179] ([i915#180]) -> [PASS][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@x-tiled-addfb-size-offset-overflow:
    - {shard-rkl}:        [SKIP][181] ([i915#1845] / [i915#4098]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-2/igt@kms_big_fb@x-tiled-addfb-size-offset-overflow.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-rkl-6/igt@kms_big_fb@x-tiled-addfb-size-offset-overflow.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - {shard-rkl}:        [SKIP][183] ([fdo#112022] / [i915#4070]) -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][185] ([i915#180]) -> [PASS][186] +1 similar issue
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-c-forked-move:
    - {shard-rkl}:        [SKIP][187] ([i915#4070]) -> [PASS][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-forked-move.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-forked-move.html

  * igt@kms_flip@nonexisting-fb@a-edp1:
    - shard-skl:          [DMESG-WARN][189] ([i915#1982]) -> [PASS][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl3/igt@kms_flip@nonexisting-fb@a-edp1.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl2/igt@kms_flip@nonexisting-fb@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][191] ([i915#2122]) -> [PASS][192] +1 similar issue
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - {shard-rkl}:        [SKIP][193] ([i915#1849] / [i915#4098]) -> [PASS][194] +4 similar issues
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b:
    - shard-tglb:         [INCOMPLETE][195] -> [PASS][196]
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-tglb8/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][197] ([fdo#109441]) -> [PASS][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [SKIP][199] ([i915#5519]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@perf@enable-disable:
    - {shard-dg1}:        [SKIP][201] ([i915#5608]) -> [PASS][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-dg1-15/igt@perf@enable-disable.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-dg1-13/igt@perf@enable-disable.html

  * igt@perf@polling-parameterized:
    - {shard-rkl}:        [FAIL][203] ([i915#5639]) -> [PASS][204]
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@perf@polling-parameterized.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-rkl-2/igt@perf@polling-parameterized.html
    - shard-skl:          [FAIL][205] ([i915#5639]) -> [PASS][206]
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl6/igt@perf@polling-parameterized.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl10/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [DMESG-WARN][207] ([i915#5614]) -> [SKIP][208] ([i915#4525]) +1 similar issue
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb4/igt@gem_exec_balancer@parallel.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [SKIP][209] ([i915#4525]) -> [DMESG-WARN][210] ([i915#5614])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb4/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][211] ([i915#4525]) -> [DMESG-FAIL][212] ([i915#5614])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][213] ([i915#658]) -> [SKIP][214] ([i915#2920])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [FAIL][215] ([i915#5939]) -> [SKIP][216] ([fdo#109642] / [fdo#111068] / [i915#658])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][217], [FAIL][218], [FAIL][219], [FAIL][220], [FAIL][221], [FAIL][222], [FAIL][223], [FAIL][224], [FAIL][225], [FAIL][226], [FAIL][227], [FAIL][228], [FAIL][229]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][230], [FAIL][231], [FAIL][232], [FAIL][233], [FAIL][234], [FAIL][235], [FAIL][236], [FAIL][237], [FAIL][238], [FAIL][239], [FAIL][240]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborted.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl1/igt@runner@aborted.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl4/igt@runner@aborted.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborted.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl4/igt@runner@aborted.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborted.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl3/igt@runner@aborted.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl1/igt@runner@aborted.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborted.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl7/igt@runner@aborted.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl7/igt@runner@aborted.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl4/igt@runner@aborted.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl3/igt@runner@aborted.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl4/igt@runner@aborted.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl4/igt@runner@aborted.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl1/igt@runner@aborted.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl7/igt@runner@aborted.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl3/igt@runner@aborted.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl7/igt@runner@aborted.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][241], [FAIL][242], [FAIL][243], [FAIL][244]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][245], [FAIL][246], [FAIL][247], [FAIL][248]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl2/igt@runner@aborted.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl6/igt@runner@aborted.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl3/igt@runner@aborted.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl6/igt@runner@aborted.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl3/igt@runner@aborted.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl3/igt@runner@aborted.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl6/igt@runner@aborted.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl7/igt@runner@aborted.html
    - shard-skl:          ([FAIL][249], [FAIL][250], [FAIL][251]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][252], [FAIL][253], [FAIL][254], [FAIL][255]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl1/igt@runner@aborted.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/igt@runner@aborted.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/igt@runner@aborted.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl2/igt@runner@aborted.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl6/igt@runner@aborted.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl9/igt@runner@aborted.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3371]: https://gitlab.freedesktop.org/drm/intel/issues/3371
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3736]: https://gitlab.freedesktop.org/drm/intel/issues/3736
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#4055]: https://gitlab.freedesktop.org/drm/intel/issues/4055
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4241]: https://gitlab.freedesktop.org/drm/intel/issues/4241
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5266]: https://gitlab.freedesktop.org/drm/intel/issues/5266
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5353]: https://gitlab.freedesktop.org/drm/intel/issues/5353
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5721]: https://gitlab.freedesktop.org/drm/intel/issues/5721
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#5923]: https://gitlab.freedesktop.org/drm/intel/issues/5923
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768


Build changes
-------------

  * Linux: CI_DRM_11705 -> Patchwork_104422v1

  CI-20190529: 20190529
  CI_DRM_11705: 18a2e6dbca526f996da04741cf5ef169e810a50e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6495: 7e2033da45f024a0348e6034fcb7f70a91b80ee9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104422v1: 18a2e6dbca526f996da04741cf5ef169e810a50e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/index.html

--===============1912046913480465828==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Expose per gt defaults in sysfs=
</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/104422/">https://patchwork.freedesktop.org/series/104422/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104422v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104422v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11705_full -&gt; Patchwork_104422v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_104422v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_104422v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
104422v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip=
:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@kms_big_fb@yf-tiled=
-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-dg1-15/igt@drm_read@short-buffer-block.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4422v1/shard-dg1-13/igt@drm_read@short-buffer-block.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-modeset-hang-oldfb@pipe-a:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-dg1-13/igt@kms_busy@extended-modeset=
-hang-oldfb@pipe-a.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-dg1-15/igt@kms_invalid_mode@bad-vsync-start.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#=
2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104422v1/shard-dg1-13/igt@kms_invalid_mode@bad-vsync-start.html">WARN</a=
> +2 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@=
pipe-a-hdmi-a-3}:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-dg1-18/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-dg1-15/igt@kms_setmode@invalid-clone-exclusive-crtc.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/257=
5">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104422v1/shard-dg1-13/igt@kms_setmode@invalid-clone-exclusive-cr=
tc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104422v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11705/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11705/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11705/shard-skl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/sha=
rd-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11705/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11705/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11705/shard-skl6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11705/shard-skl4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-sk=
l3/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1705/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11705/shard-skl10/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl10/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/sh=
ard-skl10/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5032">i915#5032</a>) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl9/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-s=
kl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_104422v1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v=
1/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104422v1/shard-skl8/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104422v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_104422v1/shard-skl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-sk=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104422v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104422v1/shard-skl3/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl2/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104422v1/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_104422v1/shard-skl2/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl=
1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104422v1/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl1/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/=
shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104422v1/shard-skl10/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl10/boot.=
html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@gem_ccs@block-copy-compres=
sed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5327">i915#5327</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-glk6/igt@gem_ccs@ctrl-surf-copy-new-=
ctx.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-tglb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-tglb3/igt@=
gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@gem_exec_balancer@parallel-=
out-fence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@gem_exec_fair@basic-none-s=
hare@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4422v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@gem_exec_fair@basic-pace-so=
lo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104422v1/shard-kbl3/igt@gem_exec_fair@basic-pace-sol=
o@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-snb2/igt@gem_exec_flush@basic-uc-set-default.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4422v1/shard-snb6/igt@gem_exec_flush@basic-uc-set-default.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-glk6/igt@gem_lmem_swapping@heavy-mul=
ti.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-kbl6/igt@gem_lmem_swapping@parallel-=
random-verify.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@gem_render_copy@linear-to-=
vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/768">i915#768</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-glk6/igt@gem_softpin@evict-single-of=
fset.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4171">i915#4171</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-glk6/igt@gem_userptr_blits@input-che=
cking.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@gem_userptr_blits@unsync-u=
nmap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-kbl1/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-apl6/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v=
1/shard-apl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@i915_pm_lpsp@screens-disab=
led.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1902">i915#1902</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@i915_pm_rpm@gem-execbuf-st=
ress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@i915_pm_rpm@modeset-non-lp=
sp-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D110892">fdo#110892</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@i915_query@query-topology-=
known-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-apl7/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-=
apl3/igt@i915_suspend@forcewake.html">DMESG-WARN</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-kbl3/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/sha=
rd-kbl7/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_big_fb@linear-64bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-s=
tride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@kms_ccs@pipe-a-bad-pixel-f=
ormat-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_ccs@pipe-a-bad-rotatio=
n-90-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_ccs@pipe-a-crc-primary=
-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_ccs@pipe-a-random-ccs-=
data-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@kms_ccs@pipe-b-crc-primary-=
basic-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-glk6/igt@kms_ccs@pipe-b-crc-primary-=
rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-kbl6/igt@kms_ccs@pipe-b-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_ccs@pipe-c-ccs-on-anoth=
er-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue=
</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104422v1/shard-apl1/igt@kms_ccs@pipe-c-ccs-on-anothe=
r-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@kms_ccs@pipe-c-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-with-enabled-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@kms_chamelium@dp-hpd-with-=
enabled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-kbl1/igt@kms_chamelium@hdmi-hpd-stor=
m-disable.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_chamelium@vga-edid-rea=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-apl1/igt@kms_chamelium@vga-hpd-for-e=
ach-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@kms_color@pipe-d-ctm-0-25.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1149">i915#1149</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-glk6/igt@kms_color_chamelium@pipe-a-=
ctm-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@kms_color_chamelium@pipe-d-=
ctm-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_cursor_crc@pipe-a-curs=
or-32x10-offscreen.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04422v1/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i91=
5#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-skl3/igt@kms_cursor_edge_walk@pipe-b=
-256x256-left-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +121 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_cursor_legacy@2x-long-=
flip-vs-cursor-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_cursor_legacy@2x-long-=
nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@kms_cursor_legacy@pipe-d-s=
ingle-move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109278">fdo#109278</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_flip@2x-wf_vblank-ts-c=
heck-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109274">fdo#109274</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-glk1/igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a2.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104422v1/shard-glk8/igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a2.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/212=
2">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104422v1/shard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/212=
2">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-skl3/igt@kms_flip_scaled_crc@flip-64=
bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@kms_frontbuffer_tracking@fb=
c-1p-primscrn-spr-indfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1888">i915#1888</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +16 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-apl1/igt@kms_pipe_crc_basic@compare-=
crc-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-kbl6/igt@kms_plane_alpha_blend@pipe-=
c-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-=
c-coverage-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-y:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@kms_plane_lowres@pipe-b-ti=
ling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3536">i915#3536</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-up=
date-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2920">i915#2920</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104422v1/shard-kbl3/igt@kms_psr2_sf@cursor-plane-upd=
ate-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104422v1/shard-apl1/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-skl3/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1911">i915#1911</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-i=
clb6/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_psr@psr2_sprite_plane_=
move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-tglb6/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_104422v1/shard-tglb3/igt@kms_psr_stress_test@flip-primary-in=
validate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb6/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_104422v1/shard-iclb5/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-kbl6/igt@kms_scaling_modes@scaling-m=
ode-full-aspect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>) +87 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@kms_setmode@invalid-clone-=
single-crtc-stealing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3555">i915#3555</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-apl1/igt@kms_vblank@pipe-d-ts-contin=
uation-idle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a>) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_vrr@flip-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@nouveau_crc@pipe-c-ctx-fli=
p-detection.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2530">i915#2530</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-rg:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@nouveau_crc@pipe-c-source-=
rg.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@nouveau_crc@pipe-d-source-=
rg.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@perf@unprivileged-single-c=
tx-counters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb3/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb5/igt@sysfs_clients@busy.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994">i=
915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-skl4/igt@sysfs_clients@fair-0.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-glk6/igt@sysfs_clients@fair-7.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-tglb7/igt@sysfs_clients@sema-50.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-skl3/igt@sysfs_heartbeat_interval@mi=
xed@rcs0.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4055">i915#4055</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-skl3/igt@sysfs_heartbeat_interval@mi=
xed@vcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1731">i915#1731</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-dg1-15/igt@gem_exec_balancer@parallel-balancer.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i9=
15#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104422v1/shard-dg1-13/igt@gem_exec_balancer@parallel-balancer.html">P=
ASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb6/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3371">i915#337=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104422v1/shard-iclb2/igt@gem_exec_capture@pi@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-glk7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
422v1/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04422v1/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#=
2849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104422v1/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_104422v1/shard-snb4/igt@gem_exec_flush@basic-batch-kernel-de=
fault-uc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-tglu-6/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/=
shard-tglu-2/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-kbl4/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3614">i915#3=
614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104422v1/shard-kbl3/igt@i915_suspend@debugfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_104422v1/shard-apl1/igt@i915_suspend@fence-restore-tiled2until=
ed.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-2/igt@kms_big_fb@x-tiled-addfb-size-offset-overflow=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104422v1/shard-rkl-6/igt@kms_big_fb@x-tiled-addfb-size=
-offset-overflow.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
12022">fdo#112022</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_104422v1/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor=
-64x21-offscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104422v1/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-forked-move:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-forked-move.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070">i9=
15#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104422v1/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-forked-move.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl3/igt@kms_flip@nonexisting-fb@a-edp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i91=
5#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104422v1/shard-skl2/igt@kms_flip@nonexisting-fb@a-edp1.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104422v1/shard-skl6/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</=
p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-rkl-6/igt@kms_front=
buffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> +4 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-tglb8/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pip=
e-b.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_104422v1/shard-tglb7/igt@kms_pipe_crc_basic@disable-crc-a=
fter-crtc-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104422v1/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb4/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104422v1/shard-iclb3/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-dg1-15/igt@perf@enable-disable.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/=
shard-dg1-13/igt@perf@enable-disable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11705/shard-rkl-1/igt@perf@polling-parameterized.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10442=
2v1/shard-rkl-2/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11705/shard-skl6/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422=
v1/shard-skl10/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb4/igt@gem_exec_balancer@parallel.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5614">i915#5=
614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104422v1/shard-iclb5/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_104422v1/shard-iclb4/igt@gem_exec_balancer@parallel-keep-subm=
it-fence.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5614">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104422v1/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">DME=
SG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/561=
4">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104422v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5939">i915#5939</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1044=
22v1/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#6=
58</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11705/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11705/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1705/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl1/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1170=
5/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/s=
hard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shar=
d-kbl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl7/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_104422v1/shard-kbl7/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/sh=
ard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl3/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4422v1/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl4/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104422v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kbl7/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_104422v1/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-kb=
l7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_104422v1/shard-kbl6/igt@runner@aborted.html">FAIL<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#=
180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">=
i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5257">i915#5257</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11705/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl6/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104422v1/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-apl6/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104422v1/shard-apl7/igt@runner@aborted.html">FAIL</a>) (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#=
3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312"=
>i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/5257">i915#5257</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11705/shard-skl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422=
v1/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl6/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104422v1/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104422v1/shard-skl6/igt@runner=
@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11705 -&gt; Patchwork_104422v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11705: 18a2e6dbca526f996da04741cf5ef169e810a50e @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6495: 7e2033da45f024a0348e6034fcb7f70a91b80ee9 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104422v1: 18a2e6dbca526f996da04741cf5ef169e810a50e @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1912046913480465828==--
