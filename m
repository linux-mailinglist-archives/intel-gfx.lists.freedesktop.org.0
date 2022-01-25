Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DB649B4DF
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 14:21:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BC5010E303;
	Tue, 25 Jan 2022 13:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B7EE10E303;
 Tue, 25 Jan 2022 13:21:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 140F9A77A5;
 Tue, 25 Jan 2022 13:21:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5138793435052100779=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Date: Tue, 25 Jan 2022 13:21:31 -0000
Message-ID: <164311689103.27364.9594187611620936078@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220125085801.1025521-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20220125085801.1025521-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgTWlu?=
 =?utf-8?q?or_Fixes_and_Refactoring_for_HDMI_PCON_stuff?=
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

--===============5138793435052100779==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Minor Fixes and Refactoring for HDMI PCON stuff
URL   : https://patchwork.freedesktop.org/series/99311/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11132_full -> Patchwork_22097_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22097_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22097_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22097_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_plane@plane-panning-top-left@pipe-a-planes:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-tglb3/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-tglb8/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html

  
#### Warnings ####

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][3] ([i915#180]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl6/igt@gem_workarounds@suspend-resume.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl4/igt@gem_workarounds@suspend-resume.html

  
Known issues
------------

  Here are the changes found in Patchwork_22097_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][5], [PASS][6], [FAIL][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) ([i915#4386]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl3/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl3/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl7/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl8/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl3/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl3/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl6/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl6/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl4/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl6/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl4/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-3x:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([i915#1839])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb1/igt@feature_discovery@display-3x.html

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][56] ([i915#4991])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl1/igt@gem_create@create-massive.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [PASS][57] -> [DMESG-WARN][58] ([i915#180]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-kbl3/igt@gem_eio@in-flight-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-kbl6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([i915#4525]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-iclb2/igt@gem_exec_balancer@parallel.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb5/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#4525])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][62] ([i915#2842]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109283])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb1/igt@gem_exec_params@no-blt.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4613]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl4/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#4613])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-kbl7/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#4613])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl10/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][68] ([i915#2658])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb4/igt@gem_pwrite@basic-exhaustion.html
    - shard-tglb:         NOTRUN -> [WARN][69] ([i915#2658])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-tglb7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#4270]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#768])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html

  * igt@gem_spin_batch@legacy@bsd:
    - shard-apl:          [PASS][72] -> [FAIL][73] ([i915#2898])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl2/igt@gem_spin_batch@legacy@bsd.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl2/igt@gem_spin_batch@legacy@bsd.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][74] ([i915#4990])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl6/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][75] -> [DMESG-WARN][76] ([i915#1436] / [i915#716])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#2856]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb4/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#658])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [FAIL][79] ([i915#2680])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [PASS][80] -> [INCOMPLETE][81] ([i915#151])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][82] -> [DMESG-WARN][83] ([i915#180]) +6 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#110725] / [fdo#111614])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][85] ([i915#3743])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3777]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3777])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#110723]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109278] / [i915#3886]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3886]) +6 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl4/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3886]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-kbl7/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([i915#3742])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl6/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-kbl7/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-75:
    - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl10/igt@kms_color_chamelium@pipe-d-ctm-0-75.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglb:         NOTRUN -> [SKIP][97] ([i915#3116] / [i915#3299])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-tglb7/igt@kms_content_protection@dp-mst-type-0.html
    - shard-iclb:         NOTRUN -> [SKIP][98] ([i915#3116])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb4/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][100] ([fdo#109274] / [fdo#109278]) +3 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([i915#426])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][102] -> [INCOMPLETE][103] ([i915#180])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][104] -> [FAIL][105] ([i915#79])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109274]) +3 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb4/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][107] -> [FAIL][108] ([i915#79])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [PASS][109] -> [INCOMPLETE][110] ([i915#636])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][111] ([i915#2122])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][112] -> [FAIL][113] ([i915#4911])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-glk4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-iclb:         [PASS][114] -> [FAIL][115] ([i915#1888] / [i915#2546])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +160 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl1/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([fdo#109280]) +14 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][118] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][119] -> [FAIL][120] ([i915#1188])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#533])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-kbl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#533])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl4/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][123] ([fdo#108145] / [i915#265]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][124] ([fdo#108145] / [i915#265])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][125] ([i915#265])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
    - shard-iclb:         NOTRUN -> [SKIP][126] ([fdo#109278]) +21 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html

  * igt@kms_plane_lowres@pipe-b-tiling-y:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([i915#3536])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb1/igt@kms_plane_lowres@pipe-b-tiling-y.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#658])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
    - shard-iclb:         [PASS][129] -> [SKIP][130] ([fdo#109642] / [fdo#111068] / [i915#658])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-kbl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#658])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-kbl7/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#658]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl4/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][133] -> [SKIP][134] ([fdo#109441]) +3 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         NOTRUN -> [SKIP][135] ([fdo#109441])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-kbl:          NOTRUN -> [SKIP][136] ([fdo#109271]) +17 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-kbl7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][137] -> [DMESG-WARN][138] ([i915#180] / [i915#295])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][139] ([fdo#109271]) +129 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl4/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-skl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#533]) +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl10/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#2437])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl10/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#2437])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-c-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][143] ([i915#2530]) +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@nouveau_crc@pipe-c-source-rg.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-iclb:         NOTRUN -> [SKIP][144] ([fdo#109289])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb1/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][145] -> [FAIL][146] ([i915#1542])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-glk1/igt@perf@polling-parameterized.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-glk9/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-tglb:         NOTRUN -> [SKIP][147] ([fdo#109291]) +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-tglb7/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html
    - shard-iclb:         NOTRUN -> [SKIP][148] ([fdo#109291]) +1 similar issue
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb4/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@prime_vgem@basic-userptr:
    - shard-iclb:         NOTRUN -> [SKIP][149] ([i915#3301])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@fence-write-hang:
    - shard-iclb:         NOTRUN -> [SKIP][150] ([fdo#109295])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@prime_vgem@fence-write-hang.html

  * igt@runner@aborted:
    - shard-skl:          NOTRUN -> ([FAIL][151], [FAIL][152], [FAIL][153]) ([i915#1436] / [i915#1814] / [i915#3002] / [i915#4312])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl10/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl1/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl6/igt@runner@aborted.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][154] ([fdo#109271] / [i915#2994]) +2 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-skl9/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-1:
    - shard-apl:          NOTRUN -> [SKIP][155] ([fdo#109271] / [i915#2994])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl6/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@split-25:
    - shard-iclb:         NOTRUN -> [SKIP][156] ([i915#2994])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-iclb1/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][157] ([i915#180]) -> [PASS][158] +4 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/index.html

--===============5138793435052100779==
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
<tr><td><b>Series:</b></td><td>Minor Fixes and Refactoring for HDMI PCON st=
uff</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/99311/">https://patchwork.freedesktop.org/series/99311/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22097/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22097/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11132_full -&gt; Patchwork_22097_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22097_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22097_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22097_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_plane@plane-panning-top-left@pipe-a-planes:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-tglb3/igt@kms_plane@plane-panning-top-left@pipe-a-plane=
s.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22097/shard-tglb8/igt@kms_plane@plane-panning-top-left@pipe-a-pla=
nes.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_workarounds@suspend-resume:<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-apl6/igt@gem_workarounds@suspend-resume.html">DMESG-WAR=
N</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22097/shard-apl4/igt@gem_workarounds@suspend-resume.html">INCOM=
PLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22097_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11132/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl2/boot.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11132/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11132/shard-apl2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/sha=
rd-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11132/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11132/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11132/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132=
/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11132/shard-apl6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-ap=
l7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1132/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11132/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11132/shard-apl1/boot.html">PASS</a>) ([i915#4386]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22097/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22097/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22097/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22097/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22097/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22097/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22097/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22097/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-apl4/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb1/igt@feature_discovery@display-3x.=
html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl1/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-kbl3/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-=
kbl6/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> ([i915#180]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-iclb2/igt@gem_exec_balancer@parallel.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shar=
d-iclb5/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i915#4525]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@gem_exec_balancer@parallel-ke=
ep-submit-fence.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@gem_exec_fair@basic-pace-solo=
@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb1/igt@gem_exec_params@no-blt.html">=
SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-apl4/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@gem_lmem_swapping@heavy-verif=
y-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-kbl7/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl10/igt@gem_lmem_swapping@smem-oom.ht=
ml">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22097/shard-iclb4/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22097/shard-tglb7/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@gem_pxp@verify-pxp-stale-ctx-=
execution.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@gem_render_copy@y-tiled-mc-cc=
s-to-y-tiled-ccs.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@legacy@bsd:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-apl2/igt@gem_spin_batch@legacy@bsd.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-=
apl2/igt@gem_spin_batch@legacy@bsd.html">FAIL</a> ([i915#2898])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl6/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#4990])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-skl9/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/s=
hard-skl10/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1=
436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb4/igt@gen9_exec_parse@unaligned-jum=
p.html">SKIP</a> ([i915#2856]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulati=
on.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idl=
e.html">FAIL</a> ([i915#2680])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_220=
97/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (=
[i915#151])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22097/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html">DMES=
G-WARN</a> ([i915#180]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_big_fb@x-tiled-8bpp-rotat=
e-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-0.html">SKIP</a> ([fdo#110723]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_ccs@pipe-b-crc-sprite-pla=
nes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl4/igt@kms_ccs@pipe-c-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-kbl7/igt@kms_ccs@pipe-c-missing-ccs-buf=
fer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_cdclk@mode-transition.htm=
l">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-apl6/igt@kms_chamelium@dp-hpd-storm-dis=
able.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_color_chamelium@pipe-a-ct=
m-limited-range.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-kbl7/igt@kms_color_chamelium@pipe-c-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-75:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl10/igt@kms_color_chamelium@pipe-d-ct=
m-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22097/shard-tglb7/igt@kms_content_protection@dp-mst-=
type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22097/shard-iclb4/igt@kms_content_protection@dp-mst-=
type-0.html">SKIP</a> ([i915#3116])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb4/igt@kms_cursor_legacy@2x-long-fli=
p-vs-cursor-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +3 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_dp_tiled_display@basic-te=
st-pattern.html">SKIP</a> ([i915#426])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard-=
apl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22097/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-=
hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb4/igt@kms_flip@2x-flip-vs-modeset-v=
s-hang.html">SKIP</a> ([fdo#109274]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22097/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22097/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">INCOMPLETE</a> ([i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl6/igt@kms_flip@plain-flip-ts-check-i=
nterruptible@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-glk4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-=
ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-onoff.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22097/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-p=
rimscrn-cur-indfb-onoff.html">FAIL</a> ([i915#1888] / [i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl1/igt@kms_frontbuffer_tracking@fbc-1=
p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +160 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109280]) +14 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-tglb7/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shar=
d-skl6/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-kbl7/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-apl4/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_plane_alpha_blend@pipe-d-=
constant-alpha-max.html">SKIP</a> ([fdo#109278]) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-y:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb1/igt@kms_plane_lowres@pipe-b-tilin=
g-y.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22097/shard-apl3/igt@kms_psr2_su@frontbuffer-xrgb888=
8.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11132/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097=
/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#1096=
42] / [fdo#111068] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-kbl7/igt@kms_psr2_su@page_flip-p010.htm=
l">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl4/igt@kms_psr2_su@page_flip-xrgb8888=
.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/sh=
ard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@kms_psr@psr2_no_drrs.html">SK=
IP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-kbl7/igt@kms_rotation_crc@primary-y-til=
ed-reflect-x-90.html">SKIP</a> ([fdo#109271]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22097/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-apl4/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> ([fdo#109271]) +129 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl10/igt@kms_vblank@pipe-d-wait-idle.h=
tml">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl10/igt@kms_writeback@writeback-check=
-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-apl4/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@nouveau_crc@pipe-c-source-rg.=
html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb1/igt@perf@gen12-unprivileged-singl=
e-ctx-counters.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-glk1/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shard=
-glk9/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22097/shard-tglb7/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> ([fdo#109291]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22097/shard-iclb4/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> ([fdo#109291]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@prime_vgem@basic-userptr.html=
">SKIP</a> ([i915#3301])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb8/igt@prime_vgem@fence-write-hang.h=
tml">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22097/shard-skl10/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22097/shar=
d-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22097/shard-skl6/igt@runner@aborted.html">FAIL=
</a>) ([i915#1436] / [i915#1814] / [i915#3002] / [i915#4312])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-skl9/igt@sysfs_clients@fair-0.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-apl6/igt@sysfs_clients@fair-1.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22097/shard-iclb1/igt@sysfs_clients@split-25.html">=
SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22097/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@=
vcs0.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec</p>
</li>
</ul>

</body>
</html>

--===============5138793435052100779==--
