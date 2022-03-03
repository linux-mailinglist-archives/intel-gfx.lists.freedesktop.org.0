Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A36DD4CC73E
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 21:47:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1321310E489;
	Thu,  3 Mar 2022 20:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 032D910E489;
 Thu,  3 Mar 2022 20:47:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1208A0118;
 Thu,  3 Mar 2022 20:47:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4891394146702239106=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Thu, 03 Mar 2022 20:47:08 -0000
Message-ID: <164634042897.19817.3007209316854962277@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220303113252.212873-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20220303113252.212873-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/adl-n=3A_Add_stepping_info?=
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

--===============4891394146702239106==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/adl-n: Add stepping info
URL   : https://patchwork.freedesktop.org/series/100995/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11318_full -> Patchwork_22472_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22472_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_balancer@full-pulse:
    - {shard-dg1}:        [SKIP][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-dg1-15/igt@gem_exec_balancer@full-pulse.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-dg1-12/igt@gem_exec_balancer@full-pulse.html

  * {igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale}:
    - {shard-rkl}:        NOTRUN -> [SKIP][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - {shard-dg1}:        NOTRUN -> [SKIP][4] +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-dg1-16/igt@prime_mmap_coherency@ioctl-errors.html

  
Known issues
------------

  Here are the changes found in Patchwork_22472_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [FAIL][29]) ([i915#4392]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk4/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk9/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk9/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk1/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk1/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk2/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk8/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk8/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk6/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk6/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk9/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][55] ([i915#5076])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb7/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([i915#4525])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][58] -> [FAIL][59] ([i915#2842]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][60] -> [SKIP][61] ([i915#2190])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#4613])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@gem_lmem_swapping@random.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#644])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][66] ([i915#2658])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#768]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [PASS][68] -> [FAIL][69] ([i915#4171])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk5/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_softpin@evict-snoop:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109312])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@huge-split:
    - shard-glk:          NOTRUN -> [FAIL][71] ([i915#3376])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@gem_userptr_blits@huge-split.html

  * igt@gem_userptr_blits@input-checking:
    - shard-glk:          NOTRUN -> [DMESG-WARN][72] ([i915#4991])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109289]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][74] -> [DMESG-WARN][75] ([i915#1436] / [i915#716])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-apl7/igt@gen9_exec_parse@allowed-all.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl3/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-large:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#2856])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#4281])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#110892])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [PASS][79] -> [FAIL][80] ([i915#3048])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-skl1/igt@i915_pm_sseu@full-enable.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl1/igt@i915_pm_sseu@full-enable.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#111614])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb7/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#110725] / [fdo#111614])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [PASS][83] -> [DMESG-WARN][84] ([i915#118])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-glk:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3777])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][86] ([i915#3763])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3886])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([i915#3689]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb5/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_chamelium@dp-crc-fast:
    - shard-tglb:         NOTRUN -> [SKIP][89] ([fdo#109284] / [fdo#111827])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb7/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl2/igt@kms_chamelium@dp-edid-change-during-suspend.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-glk:          NOTRUN -> [SKIP][91] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-ctm-limited-range:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [fdo#111827])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl8/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][95] ([i915#1319]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][96] -> [DMESG-WARN][97] ([i915#180]) +6 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109278]) +13 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109274] / [fdo#109278])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#533])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl2/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][101] -> [INCOMPLETE][102] ([i915#180] / [i915#636])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-busy-flip:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109274])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_flip@2x-busy-flip.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][104] -> [FAIL][105] ([i915#79])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][106] -> [FAIL][107] ([i915#4911])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
    - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271]) +66 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([fdo#109280]) +9 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
    - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271]) +22 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move.html

  * igt@kms_getfb@getfb2-accept-ccs:
    - shard-skl:          [PASS][112] -> [DMESG-WARN][113] ([i915#1982])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-skl9/igt@kms_getfb@getfb2-accept-ccs.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl8/igt@kms_getfb@getfb2-accept-ccs.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][114] -> [FAIL][115] ([i915#1188])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([fdo#109289])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb8/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [PASS][117] -> [INCOMPLETE][118] ([i915#5128])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [PASS][119] -> [DMESG-WARN][120] ([i915#180]) +5 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([i915#3536])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-glk:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#658])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#109441]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][124] -> [SKIP][125] ([fdo#109441]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:
    - shard-iclb:         NOTRUN -> [SKIP][126] ([i915#5030]) +2 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c.html

  * igt@kms_vrr@flipline:
    - shard-glk:          NOTRUN -> [SKIP][127] ([fdo#109271]) +27 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_vrr@flipline.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#2437])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl8/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#2437])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl3/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-a-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][130] ([i915#2530])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@nouveau_crc@pipe-a-source-outp-inactive.html

  * igt@nouveau_crc@pipe-c-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][131] ([i915#2530])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb8/igt@nouveau_crc@pipe-c-source-outp-complete.html

  * igt@nouveau_crc@pipe-d-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][132] ([fdo#109278] / [i915#2530])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@nouveau_crc@pipe-d-ctx-flip-detection.html

  * igt@prime_nv_pcopy@test3_2:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109291])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@prime_nv_pcopy@test3_2.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][134] ([i915#5098])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl2/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@sema-25:
    - shard-apl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#2994])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl7/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-block:
    - {shard-rkl}:        [SKIP][136] ([i915#4098]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-rkl-5/igt@drm_read@short-buffer-block.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@drm_read@short-buffer-block.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - {shard-tglu}:       [TIMEOUT][138] ([i915#3063]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-tglu-3/igt@gem_eio@in-flight-contexts-10ms.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglu-5/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [FAIL][140] ([i915#2842]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][142] ([i915#2842]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][144] ([i915#2842]) -> [PASS][145] +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][146] ([i915#2849]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-priority:
    - shard-glk:          [DMESG-WARN][148] ([i915#118]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk2/igt@gem_exec_whisper@basic-contexts-priority.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@i915_pm_backlight@fade_with_dpms:
    - {shard-rkl}:        [SKIP][150] ([i915#3012]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-rkl-5/igt@i915_pm_backlight@fade_with_dpms.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][152] ([i915#454]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_3d:
    - {shard-dg1}:        [SKIP][154] -> [PASS][155] +25 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-dg1-15/igt@kms_3d.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-dg1-12/igt@kms_3d.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:
    - {shard-dg1}:        [FAIL][156] -> [PASS][157] +2 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-dg1-15/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-dg1-12/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][158] ([i915#1845] / [i915#4098]) -> [PASS][159] +2 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-rkl-5/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-a-degamma:
    - {shard-rkl}:        [SKIP][160] ([i915#1149] / [i915#1849]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-rkl-5/igt@kms_color@pipe-a-degamma.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@kms_color@pipe-a-degamma.html

  * igt@kms_concurrent@pipe-a:
    - {shard-rkl}:        [SKIP][162] ([i915#1845]) -> [PASS][163] +18 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-rkl-5/igt@kms_concurrent@pipe-a.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@kms_concurrent@pipe-a.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement:
    - {shard-rkl}:        [SKIP][164] ([fdo#112022]) -> [PASS][165] +6 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][166] ([i915#180]) -> [PASS][167] +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/index.html

--===============4891394146702239106==
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
<tr><td><b>Series:</b></td><td>drm/i915/adl-n: Add stepping info</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100995/">https://patchwork.freedesktop.org/series/100995/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22472/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22472/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11318_full -&gt; Patchwork_22472_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22472_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_balancer@full-pulse:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-dg1-15/igt@gem_exec_balancer@full-pulse.html">SKIP</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/s=
hard-dg1-12/igt@gem_exec_balancer@full-pulse.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@p=
ipe-a-edp-1-planes-upscale-downscale}:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@kms_plane_scaling@planes-upsc=
ale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.=
html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@ioctl-errors:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-dg1-16/igt@prime_mmap_coherency@ioctl-e=
rrors.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22472_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11318/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11318/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11318/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/sha=
rd-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11318/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk2/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11318/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11318/shard-glk3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318=
/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11318/shard-glk3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1318/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11318/shard-glk5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk5/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shar=
d-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11318/shard-glk4/boot.html">FAIL</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22472/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22472/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22472/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22472/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22472/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22472/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22472/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22472/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk9/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-tglb7/igt@gem_exec_balancer@parallel.ht=
ml">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2472/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i=
915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/sh=
ard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tgl=
b6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gem_lmem_swapping@heavy-rando=
m.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-glk8/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
72/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#=
644])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-glk8/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gem_render_copy@y-tiled-to-ve=
box-linear.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22472/shard-glk5/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</=
a> ([i915#4171])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gem_softpin@evict-snoop.html"=
>SKIP</a> ([fdo#109312])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@huge-split:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-glk8/igt@gem_userptr_blits@huge-split.h=
tml">FAIL</a> ([i915#3376])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-glk8/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gen7_exec_parse@basic-allowed=
.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-apl7/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shar=
d-apl3/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / =
[i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gen9_exec_parse@bb-large.html=
">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKI=
P</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@i915_pm_rpm@modeset-non-lpsp.=
html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-skl1/igt@i915_pm_sseu@full-enable.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-s=
kl1/igt@i915_pm_sseu@full-enable.html">FAIL</a> ([i915#3048])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-tglb7/igt@kms_big_fb@linear-64bpp-rotat=
e-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_big_fb@x-tiled-16bpp-rota=
te-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
472/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMESG-WARN</a>=
 ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-tglb5/igt@kms_ccs@pipe-d-bad-aux-stride=
-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-tglb7/igt@kms_chamelium@dp-crc-fast.htm=
l">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-apl2/igt@kms_chamelium@dp-edid-change-d=
uring-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_chamelium@dp-hpd-storm-dis=
able.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_color_chamelium@pipe-a-ct=
m-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-limited-range:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_color_chamelium@pipe-d-ct=
m-limited-range.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])=
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-skl8/igt@kms_color_chamelium@pipe-d-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-apl3/igt@kms_content_protection@lic.htm=
l">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2472/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_cursor_edge_walk@pipe-d-2=
56x256-left-edge.html">SKIP</a> ([fdo#109278]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_cursor_legacy@2x-nonblock=
ing-modeset-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-apl2/igt@kms_cursor_legacy@pipe-d-singl=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-=
kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915=
#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-busy-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_flip@2x-busy-flip.html">S=
KIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22472/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@b-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64b=
pp-ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_flip_scaled_crc@flip-32=
bpp-ytileccs-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-apl3/igt@kms_frontbuffer_tracking@psr-2=
p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +66 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109280]) +9 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-skl8/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#109271]) +22 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-tglb5/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-spr-indfb-move.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb2-accept-ccs:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-skl9/igt@kms_getfb@getfb2-accept-ccs.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shar=
d-skl8/igt@kms_getfb@getfb2-accept-ccs.html">DMESG-WARN</a> ([i915#1982])</=
li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-sk=
l10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-tglb8/igt@kms_pipe_b_c_ivb@from-pipe-c-=
to-b-with-3-lanes.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22472/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">=
INCOMPLETE</a> ([i915#5128])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22472/shard-apl8/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180]) +5 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_plane_lowres@pipe-a-tilin=
g-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_psr2_su@page_flip-xrgb8888=
.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.=
html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/=
shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441]=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_scaling_modes@scaling-mod=
e-none@edp-1-pipe-c.html">SKIP</a> ([i915#5030]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_vrr@flipline.html">SKIP</a=
> ([fdo#109271]) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22472/shard-skl8/igt@kms_writeback@writeback-invalid=
-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22472/shard-apl3/igt@kms_writeback@writeback-invalid=
-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@nouveau_crc@pipe-a-source-out=
p-inactive.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-complete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-tglb8/igt@nouveau_crc@pipe-c-source-out=
p-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@nouveau_crc@pipe-d-ctx-flip-d=
etection.html">SKIP</a> ([fdo#109278] / [i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@prime_nv_pcopy@test3_2.html">=
SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-apl2/igt@syncobj_timeline@transfer-time=
line-point.html">DMESG-FAIL</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22472/shard-apl7/igt@sysfs_clients@sema-25.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-rkl-5/igt@drm_read@short-buffer-block.html">SKIP</a> ([=
i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22472/shard-rkl-6/igt@drm_read@short-buffer-block.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-tglu-3/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOU=
T</a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22472/shard-tglu-5/igt@gem_eio@in-flight-contexts-10ms.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22472/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22472/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22472/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22472/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-glk2/igt@gem_exec_whisper@basic-contexts-priority.html"=
>DMESG-WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22472/shard-glk1/igt@gem_exec_whisper@basic-contexts-=
priority.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_dpms:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-rkl-5/igt@i915_pm_backlight@fade_with_dpms.html">SKIP</=
a> ([i915#3012]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22472/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472=
/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_3d:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-dg1-15/igt@kms_3d.html">SKIP</a> -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-dg1-12/igt@kms_3d=
.html">PASS</a> +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-dg1-15/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-0.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22472/shard-dg1-12/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-r=
otate-0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-rkl-5/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_r=
c_ccs_cc.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@kms_ccs@=
pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-degamma:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-rkl-5/igt@kms_color@pipe-a-degamma.html">SKIP</a> ([i91=
5#1149] / [i915#1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22472/shard-rkl-6/igt@kms_color@pipe-a-degamma.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-rkl-5/igt@kms_concurrent@pipe-a.html">SKIP</a> ([i915#1=
845]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2472/shard-rkl-6/igt@kms_concurrent@pipe-a.html">PASS</a> +18 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-mo=
vement.html">SKIP</a> ([fdo#112022]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@kms_cursor_crc@pipe-a-c=
ursor-256x256-rapid-movement.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11318/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DME=
SG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4891394146702239106==--
