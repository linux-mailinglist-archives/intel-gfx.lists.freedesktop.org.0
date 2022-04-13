Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E95B450013C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 23:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25B1910E1DA;
	Wed, 13 Apr 2022 21:35:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B29DC10E1DA;
 Wed, 13 Apr 2022 21:35:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD6A6A9932;
 Wed, 13 Apr 2022 21:35:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7539206010014706932=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Wed, 13 Apr 2022 21:35:31 -0000
Message-ID: <164988573166.28394.5358681711439356622@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220412225955.1802543-1-John.C.Harrison@Intel.com>
In-Reply-To: <20220412225955.1802543-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgVXBk?=
 =?utf-8?q?ate_to_GuC_v70?=
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

--===============7539206010014706932==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Update to GuC v70
URL   : https://patchwork.freedesktop.org/series/102626/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11496_full -> Patchwork_102626v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_102626v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [FAIL][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [FAIL][44], [PASS][45]) ([i915#5032])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl10/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl10/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl4/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl4/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl8/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl8/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl9/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl9/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl9/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl9/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl10/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl10/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl1/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl5/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl4/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@suspend-resume:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([i915#5327])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@gem_ccs@suspend-resume.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([i915#4525])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#2842]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-iclb:         NOTRUN -> [FAIL][51] ([i915#2842]) +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][52] -> [FAIL][53] ([i915#2849])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-snb:          [PASS][54] -> [SKIP][55] ([fdo#109271]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-snb4/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-kbl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl4/igt@gem_exec_suspend@basic-s3@smem.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-kbl7/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([i915#4613])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#4613])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl7/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_pread@exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][60] ([i915#2658])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][61] ([i915#2658])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#4270]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#768]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][64] ([i915#4991])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl4/igt@gem_userptr_blits@input-checking.html
    - shard-iclb:         NOTRUN -> [DMESG-WARN][65] ([i915#4991])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][66] -> [DMESG-WARN][67] ([i915#5566] / [i915#716])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-glk1/igt@gen9_exec_parse@allowed-all.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([i915#2856])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][69] -> [FAIL][70] ([i915#454])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#110892])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109293] / [fdo#109506])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-tglb:         [PASS][73] -> [FAIL][74] ([i915#2521])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-tglb1/igt@kms_async_flips@alternate-sync-async-flip.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-tglb2/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#5286]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][76] ([i915#3743])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3777])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-iclb:         [PASS][78] -> [FAIL][79] ([i915#1888])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb1/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3777])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-kbl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109278] / [i915#3886]) +5 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3886])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-kbl6/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-apl2/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl5/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl5/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_color@pipe-d-degamma:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109278] / [i915#1149])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_color@pipe-d-degamma.html

  * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-apl7/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-kbl6/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#3116])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271]) +38 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109278] / [fdo#109279])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109278] / [fdo#109279] / [i915#5691])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#1888] / [i915#5691])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109278]) +18 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109274]) +6 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dsc@basic-dsc-enable:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([i915#3840])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_dsc@basic-dsc-enable.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][99] -> [FAIL][100] ([i915#2122])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][101] -> [DMESG-WARN][102] ([i915#180]) +5 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][103] -> [DMESG-WARN][104] ([i915#180] / [i915#1982])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109280]) +11 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
    - shard-apl:          NOTRUN -> [SKIP][106] ([fdo#109271]) +24 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-apl2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
    - shard-skl:          [PASS][107] -> [FAIL][108] ([i915#1188]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl2/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl6/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][109] ([fdo#108145] / [i915#265]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format:
    - shard-iclb:         [PASS][110] -> [INCOMPLETE][111] ([i915#5236])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb8/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1-planes-upscale-downscale:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([i915#5235]) +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1-planes-upscale-downscale.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#111068] / [i915#658])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
    - shard-skl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#658])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][115] ([fdo#109441])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +85 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl8/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([fdo#109309])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#2437])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-iclb:         NOTRUN -> [SKIP][119] ([i915#2437]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-b-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#2530])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@nouveau_crc@pipe-b-source-outp-complete.html

  * igt@nouveau_crc@pipe-d-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109278] / [i915#2530])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@nouveau_crc@pipe-d-source-outp-inactive.html

  * igt@perf@polling-small-buf:
    - shard-skl:          NOTRUN -> [FAIL][122] ([i915#1722])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl5/igt@perf@polling-small-buf.html

  * igt@prime_nv_test@i915_blt_fill_nv_read:
    - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#109291])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@prime_nv_test@i915_blt_fill_nv_read.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#2994])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl5/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@sema-25:
    - shard-kbl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#2994])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-kbl6/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - shard-glk:          [DMESG-WARN][126] ([i915#118]) -> [PASS][127] +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-glk7/igt@gem_ctx_persistence@many-contexts.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-glk9/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@kms:
    - {shard-tglu}:       [INCOMPLETE][128] ([i915#5182]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-tglu-2/igt@gem_eio@kms.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-tglu-1/igt@gem_eio@kms.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-tglu}:       [FAIL][130] ([i915#2842]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][132] ([i915#2842]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-snb:          [SKIP][134] ([fdo#109271]) -> [PASS][135] +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-snb6/igt@gem_exec_flush@basic-uc-pro-default.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-snb7/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-skl:          [INCOMPLETE][136] ([i915#5436]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl4/igt@gem_exec_whisper@basic-fds-priority-all.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl5/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [FAIL][138] ([i915#4171]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [DMESG-WARN][140] ([i915#180]) -> [PASS][141] +2 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][142] ([i915#2346] / [i915#533]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [DMESG-WARN][144] ([i915#180]) -> [PASS][145] +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][146] ([fdo#108145] / [i915#265]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale:
    - shard-iclb:         [SKIP][148] ([i915#5235]) -> [PASS][149] +5 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][150] ([fdo#109441]) -> [PASS][151] +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [SKIP][152] ([i915#5519]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - shard-tglb:         [SKIP][154] ([i915#5519]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [DMESG-WARN][156] ([i915#5614]) -> [SKIP][157] ([i915#4525]) +2 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb2/igt@gem_exec_balancer@parallel.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/index.html

--===============7539206010014706932==
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
<tr><td><b>Series:</b></td><td>Update to GuC v70</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/102626/">https://patchwork.freedesktop.org/series/102626/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102626v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102626v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11496_full -&gt; Patchwork_102626v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102626v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11496/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl10/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl1/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11496/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_11496/shard-skl2/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl2/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/s=
hard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_11496/shard-skl3/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl4/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl4=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11496/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_11496/shard-skl5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl5/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1496/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11496/shard-skl6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shar=
d-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11496/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl8/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl8/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11496/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11496/shard-skl9/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/=
shard-skl9/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_102626v1/shard-skl9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_102626v1/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/sh=
ard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_102626v1/shard-skl10/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl7/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
102626v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_102626v1/shard-skl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl7=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_102626v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl6/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/s=
hard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_102626v1/shard-skl2/boot.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl2/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
02626v1/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_102626v1/shard-skl4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_102626v1/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl5/boot.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/sh=
ard-skl4/boot.html">PASS</a>) ([i915#5032])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@gem_ccs@suspend-resume.htm=
l">SKIP</a> ([i915#5327])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
02626v1/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> =
([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102=
626v1/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i9=
15#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@gem_exec_fair@basic-none@v=
ecs0.html">FAIL</a> ([i915#2842]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102=
626v1/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i9=
15#2849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-snb4/igt@gem_exec_flush@basic-batch-kernel-default-wb.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102626v1/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb=
.html">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-kbl4/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v=
1/shard-kbl7/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> ([i915=
#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@gem_lmem_swapping@parallel=
-multi.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-skl7/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@gem_pread@exhaustion.html"=
>WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-skl7/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@gem_pxp@create-regular-con=
text-1.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@gem_render_copy@yf-tiled-m=
c-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102626v1/shard-skl4/igt@gem_userptr_blits@input-chec=
king.html">DMESG-WARN</a> ([i915#4991])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@gem_userptr_blits@input-che=
cking.html">DMESG-WARN</a> ([i915#4991])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-glk1/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/s=
hard-glk1/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#5566]=
 / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@gen9_exec_parse@batch-inva=
lid-length.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-icl=
b6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@i915_pm_rpm@modeset-non-lp=
sp-stress-no-wait.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@i915_pm_rpm@modeset-pc8-re=
sidency-stress.html">SKIP</a> ([fdo#109293] / [fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-tglb1/igt@kms_async_flips@alternate-sync-async-flip.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102626v1/shard-tglb2/igt@kms_async_flips@alternate-sync-async-flip.htm=
l">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-180.html">SKIP</a> ([i915#5286]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-s=
tride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-s=
tride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#=
3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-iclb2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2626v1/shard-iclb1/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">FAIL</a> ([=
i915#1888])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-kbl1/igt@kms_big_fb@yf-tiled-max-hw-=
stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i9=
15#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_ccs@pipe-b-crc-sprite-=
planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886=
]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-kbl6/igt@kms_ccs@pipe-c-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-apl2/igt@kms_ccs@pipe-c-ccs-on-anoth=
er-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-skl5/igt@kms_ccs@pipe-c-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-skl5/igt@kms_chamelium@hdmi-aspect-r=
atio.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_chamelium@vga-hpd-with=
-enabled-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_color@pipe-d-degamma.h=
tml">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-apl7/igt@kms_color_chamelium@pipe-b-=
ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-kbl6/igt@kms_color_chamelium@pipe-c-=
ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-kbl1/igt@kms_cursor_crc@pipe-b-curso=
r-32x10-random.html">SKIP</a> ([fdo#109271]) +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@kms_cursor_crc@pipe-b-curs=
or-512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@kms_cursor_crc@pipe-c-curso=
r-512x170-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279] / [i915#5691]=
)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102626v1/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor=
-512x170-sliding.html">SKIP</a> ([fdo#109271] / [i915#1888] / [i915#5691])<=
/p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@kms_cursor_crc@pipe-d-curs=
or-256x256-rapid-movement.html">SKIP</a> ([fdo#109278]) +18 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> ([fdo#109274]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@basic-dsc-enable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_dsc@basic-dsc-enable.h=
tml">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_102626v1/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@=
ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v=
1/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915=
#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
02626v1/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WAR=
N</a> ([i915#180] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109280]) +11 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-apl2/igt@kms_frontbuffer_tracking@ps=
r-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> ([fdo#109271]) +24 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-skl2/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-=
edp-1-pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_102626v1/shard-skl6/igt@kms_hdr@bpc-switch-suspend@bpc=
-switch-suspend-edp-1-pipe-a.html">FAIL</a> ([i915#1188]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-=
c-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp=
-1-downscale-with-pixel-format:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-iclb8/igt@kms_plane_scaling@downscale-with-pixel-format=
-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shar=
d-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-=
b-edp-1-downscale-with-pixel-format.html">INCOMPLETE</a> ([i915#5236])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-b-edp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1-planes-upscale-downsc=
ale.html">SKIP</a> ([i915#5235]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102626v1/shard-skl5/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_c=
pu.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-skl8/igt@kms_scaling_modes@scaling-m=
ode-none@edp-1-pipe-a.html">SKIP</a> ([fdo#109271]) +85 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_tv_load_detect@load-de=
tect.html">SKIP</a> ([fdo#109309])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-skl4/igt@kms_writeback@writeback-inv=
alid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> ([i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@nouveau_crc@pipe-b-source-=
outp-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb7/igt@nouveau_crc@pipe-d-source-=
outp-inactive.html">SKIP</a> ([fdo#109278] / [i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-skl5/igt@perf@polling-small-buf.html=
">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_blt_fill_nv_read:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-iclb5/igt@prime_nv_test@i915_blt_fil=
l_nv_read.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-skl5/igt@sysfs_clients@busy.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-kbl6/igt@sysfs_clients@sema-25.html"=
>SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-glk7/igt@gem_ctx_persistence@many-contexts.html">DMESG-=
WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_102626v1/shard-glk9/igt@gem_ctx_persistence@many-contexts.ht=
ml">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-tglu-2/igt@gem_eio@kms.html">INCOMPLETE</a> ([i915#5182=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1026=
26v1/shard-tglu-1/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_102626v1/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102626v1/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-snb6/igt@gem_exec_flush@basic-uc-pro-default.html">SKIP=
</a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_102626v1/shard-snb7/igt@gem_exec_flush@basic-uc-pro-default.ht=
ml">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-skl4/igt@gem_exec_whisper@basic-fds-priority-all.html">=
INCOMPLETE</a> ([i915#5436]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_102626v1/shard-skl5/igt@gem_exec_whisper@basic-fds-pr=
iority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html">=
FAIL</a> ([i915#4171]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_102626v1/shard-glk7/igt@gem_softpin@allocator-evict-all-eng=
ines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-kbl1/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_102626v1/shard-kbl6/igt@i915_suspend@fence-restore-ti=
led2untiled.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-glk4/=
igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.htm=
l">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102626v1/shard-apl2/igt@kms_pipe_crc_basic@suspend-=
read-crc-pipe-c.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-skl7/igt@kms_plane_alpha_bl=
end@pipe-c-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-do=
wnscale:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5=
@pipe-a-edp-1-planes-downscale.html">SKIP</a> ([i915#5235]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102626v1/shard-iclb7=
/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-down=
scale.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11496/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (=
[fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102626v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a>=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11496/shard-iclb7/igt@kms_psr_stress_test@invalidate-primary-flip-ov=
erlay.html">SKIP</a> ([i915#5519]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_102626v1/shard-iclb1/igt@kms_psr_stress_test@in=
validate-primary-flip-overlay.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11496/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-ov=
erlay.html">SKIP</a> ([i915#5519]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_102626v1/shard-tglb3/igt@kms_psr_stress_test@in=
validate-primary-flip-overlay.html">PASS</a></p>
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
/CI_DRM_11496/shard-iclb2/igt@gem_exec_balancer@parallel.html">DMESG-WARN</=
a> ([i915#5614]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_102626v1/shard-iclb7/igt@gem_exec_balancer@parallel.html">SKIP</a=
> ([i915#4525]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7539206010014706932==--
