Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBE6563987
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 21:06:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 593A618ADEA;
	Fri,  1 Jul 2022 19:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ED85418ADE3;
 Fri,  1 Jul 2022 19:06:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2D0BA73C7;
 Fri,  1 Jul 2022 19:06:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6279800650069599051=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Fri, 01 Jul 2022 19:06:00 -0000
Message-ID: <165670236061.30283.10941989413712990245@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220701003110.24843-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20220701003110.24843-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/doc/rfc=3A_i915_VM=5FBIND_feature_design_+_uapi?=
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

--===============6279800650069599051==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/doc/rfc: i915 VM_BIND feature design + uapi
URL   : https://patchwork.freedesktop.org/series/105845/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11837_full -> Patchwork_105845v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105845v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105845v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105845v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_query@query-regions-unallocated:
    - {shard-dg1}:        NOTRUN -> [SKIP][1] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-dg1-17/igt@i915_query@query-regions-unallocated.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-1.50@execution@built-in-functions@gs-max-uvec2-uvec2:
    - pig-skl-6260u:      NOTRUN -> [CRASH][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/pig-skl-6260u/spec@glsl-1.50@execution@built-in-functions@gs-max-uvec2-uvec2.html

  
Known issues
------------

  Here are the changes found in Patchwork_105845v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [FAIL][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#4392])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk2/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk6/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk6/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk5/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk5/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk8/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk1/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk8/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk8/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk8/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk9/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk9/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk9/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk6/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][53] ([i915#4991])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl3/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-kbl:          [PASS][54] -> [INCOMPLETE][55] ([i915#6310])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl1/igt@gem_ctx_persistence@smoketest.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-iclb:         [PASS][56] -> [TIMEOUT][57] ([i915#3070])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb7/igt@gem_eio@in-flight-contexts-1us.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb3/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-skl:          [PASS][58] -> [TIMEOUT][59] ([i915#3063])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-skl7/igt@gem_eio@in-flight-contexts-immediate.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl7/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([i915#4525]) +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][62] -> [FAIL][63] ([i915#2842])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][64] -> [FAIL][65] ([i915#2842])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][66] -> [SKIP][67] ([fdo#109271])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#4613]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl1/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#4613]) +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#4613]) +5 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl6/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][71] ([i915#2658])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl4/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][72] ([i915#4991]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@gem_userptr_blits@input-checking.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][73] ([i915#454])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][74] -> [FAIL][75] ([i915#454])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-kbl:          [PASS][76] -> [DMESG-WARN][77] ([i915#62] / [i915#92]) +28 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl1/igt@i915_pm_rpm@dpms-non-lpsp.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][78] -> [INCOMPLETE][79] ([i915#3921])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-snb5/igt@i915_selftest@live@hangcheck.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-snb2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][80] -> [DMESG-WARN][81] ([i915#180]) +3 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-apl8/igt@i915_suspend@debugfs-reader.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][82] ([i915#3743]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +13 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +4 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
    - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3886]) +5 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#111615] / [i915#3689])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-tglb3/igt@kms_ccs@pipe-b-missing-ccs-buffer-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-crc-single:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl4/igt@kms_chamelium@dp-crc-single.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-glk:          NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk6/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827]) +30 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl9/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          NOTRUN -> [TIMEOUT][91] ([i915#1319]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          NOTRUN -> [TIMEOUT][92] ([i915#1319])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][93] ([i915#2346]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271]) +367 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl9/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@blocking-wf_vblank@a-edp1:
    - shard-skl:          NOTRUN -> [FAIL][95] ([i915#2122])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl3/igt@kms_flip@blocking-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][96] ([i915#79])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [PASS][97] -> [DMESG-WARN][98] ([i915#180] / [i915#62] / [i915#92])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [PASS][99] -> [FAIL][100] ([i915#4911])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][101] -> [SKIP][102] ([i915#3701])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#3701]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-kbl:          [PASS][104] -> [DMESG-WARN][105] ([i915#1982] / [i915#62] / [i915#92])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
    - shard-iclb:         [PASS][106] -> [FAIL][107] ([i915#1888] / [i915#2546])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][108] -> [DMESG-WARN][109] ([i915#180]) +7 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-glk:          NOTRUN -> [SKIP][110] ([fdo#109271]) +10 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-apl:          NOTRUN -> [SKIP][111] ([fdo#109271]) +135 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-kbl:          NOTRUN -> [SKIP][112] ([fdo#109271]) +62 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
    - shard-kbl:          [PASS][113] -> [FAIL][114] ([i915#1188]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl4/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl4/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][115] ([i915#265])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][116] ([fdo#108145] / [i915#265])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][117] ([i915#265])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][118] ([fdo#108145] / [i915#265]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][119] ([fdo#112054])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-tglb3/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_lowres@tiling-yf@pipe-a-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#3536]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb8/igt@kms_plane_lowres@tiling-yf@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][121] -> [SKIP][122] ([i915#5235]) +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-apl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#658])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl4/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#658]) +4 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-glk:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#658])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk6/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][126] -> [SKIP][127] ([fdo#109441]) +3 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb1/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [PASS][128] -> [SKIP][129] ([i915#5519])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#2437])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl4/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-glk:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#2437])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk6/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@polling-parameterized:
    - shard-skl:          NOTRUN -> [FAIL][132] ([i915#5639])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl9/igt@perf@polling-parameterized.html
    - shard-glk:          [PASS][133] -> [FAIL][134] ([i915#5639])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk3/igt@perf@polling-parameterized.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk7/igt@perf@polling-parameterized.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][135] ([i915#6310])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@sw_sync@sync_merge_same:
    - shard-skl:          NOTRUN -> [FAIL][136] ([i915#6140]) +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl1/igt@sw_sync@sync_merge_same.html

  * igt@sysfs_clients@fair-0:
    - shard-apl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#2994]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl1/igt@sysfs_clients@fair-0.html
    - shard-kbl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#2994])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@pidname:
    - shard-skl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#2994]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@sysfs_clients@pidname.html

  
#### Possible fixes ####

  * igt@fbdev@write:
    - {shard-rkl}:        [SKIP][140] ([i915#2582]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-5/igt@fbdev@write.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@fbdev@write.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][142] ([i915#6268]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - {shard-rkl}:        [SKIP][144] ([i915#6252]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_ctx_persistence@engines-hostile@vcs1:
    - {shard-dg1}:        [FAIL][146] ([i915#4883]) -> [PASS][147] +2 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-dg1-17/igt@gem_ctx_persistence@engines-hostile@vcs1.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-dg1-17/igt@gem_ctx_persistence@engines-hostile@vcs1.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][148] ([i915#2410]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-apl:          [FAIL][150] ([i915#5099]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-apl7/igt@gem_ctx_persistence@smoketest.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl3/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@kms:
    - shard-tglb:         [FAIL][152] ([i915#5784]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-tglb1/igt@gem_eio@kms.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - {shard-dg1}:        [FAIL][154] ([i915#5784]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-dg1-12/igt@gem_eio@reset-stress.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-dg1-18/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - {shard-tglu}:       [TIMEOUT][156] ([i915#3063]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-tglu-5/igt@gem_eio@unwedge-stress.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-tglu-5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][158] ([i915#4525]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb7/igt@gem_exec_balancer@parallel.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][160] ([i915#2842]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][162] ([i915#2842]) -> [PASS][163] +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - {shard-rkl}:        [SKIP][164] ([i915#3281]) -> [PASS][165] +4 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-gtt.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][166] ([i915#2190]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-tglb2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_wc@set-cache-level:
    - {shard-rkl}:        [SKIP][168] ([i915#1850]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_partial_pwrite_pread@reads:
    - {shard-rkl}:        [SKIP][170] ([i915#3282]) -> [PASS][171] +3 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][172] ([i915#644]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@batch-zero-length:
    - {shard-rkl}:        [SKIP][174] ([i915#2527]) -> [PASS][175] +1 similar issue
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-2/igt@gen9_exec_parse@batch-zero-length.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-5/igt@gen9_exec_parse@batch-zero-length.html

  * igt@i915_pm_backlight@bad-brightness:
    - {shard-rkl}:        [SKIP][176] ([i915#3012]) -> [PASS][177] +1 similar issue
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-5/igt@i915_pm_backlight@bad-brightness.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_rpm@fences:
    - {shard-rkl}:        [SKIP][178] ([i915#1849]) -> [PASS][179]
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-5/igt@i915_pm_rpm@fences.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@i915_pm_rpm@fences.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - {shard-dg1}:        [SKIP][180] ([i915#1397]) -> [PASS][181]
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-dg1-12/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][182] ([i915#180]) -> [PASS][183] +4 similar issues
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-a-degamma:
    - {shard-rkl}:        [SKIP][184] ([i915#1149] / [i915#1849] / [i915#4098]) -> [PASS][185]
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-5/igt@kms_color@pipe-a-degamma.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_color@pipe-a-degamma.html

  * igt@kms_color@pipe-b-degamma:
    - {shard-rkl}:        [SKIP][186] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][187]
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-2/igt@kms_color@pipe-b-degamma.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_color@pipe-b-degamma.html

  * igt@kms_color@pipe-c-invalid-gamma-lut-sizes:
    - {shard-rkl}:        [SKIP][188] ([i915#4070]) -> [PASS][189]
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-2/igt@kms_color@pipe-c-invalid-gamma-lut-sizes.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-5/igt@kms_color@pipe-c-invalid-gamma-lut-sizes.html

  * igt@kms_color@pipe-d-ctm-max:
    - {shard-dg1}:        [SKIP][190] ([i915#1836]) -> [PASS][191]
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-dg1-15/igt@kms_color@pipe-d-ctm-max.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-dg1-16/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1:
    - shard-skl:          [INCOMPLETE][192] ([i915#4939]) -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-skl1/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl9/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - {shard-rkl}:        [SKIP][194] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][195] +5 similar issues
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][196] ([i915#79]) -> [PASS][197]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [FAIL][198] ([i915#2122]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][200] ([i915#2122]) -> [PASS][201]
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@c-hdmi-a1:
    - {shard-dg1}:        [FAIL][202] -> [PASS][203] +4 similar issues
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-dg1-15/igt@kms_flip@wf_vblank-ts-check-interruptible@c-hdmi-a1.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-dg1-16/igt@kms_flip@wf_vblank-ts-check-interruptible@c-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - {shard-rkl}:        [SKIP][204] ([i915#3701]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][206] ([i915#3701]) -> [PASS][207] +1 similar issue
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
    - {shard-dg1}:        [SKIP][208] ([i915#5721]) -> [PASS][209]
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-slowdraw:
    - shard-iclb:         [FAIL][210] ([i915#1888] / [i915#2546]) -> [PASS][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-slowdraw.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-slowdraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - {shard-rkl}:        [SKIP][212] ([i915#1849] / [i915#4098]) -> [PASS][213] +24 similar issues
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_invalid_mode@uint-max-clock:
    - {shard-rkl}:        [SKIP][214] ([i915#4278]) -> [PASS][215] +1 similar issue
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-2/igt@kms_invalid_mode@uint-max-clock.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html

  * igt@kms_lease@empty_lease:
    - {shard-dg1}:        [WARN][216] ([i915#5971]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-dg1-15/igt@kms_lease@empty_lease.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-dg1-16/igt@kms_lease@empty_lease.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - {shard-rkl}:        [SKIP][218] ([i915#1849] / [i915#3558]) -> [PASS][219] +1 similar issue
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - {shard-rkl}:        [SKIP][220] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][221] +1 similar issue
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-75@pipe-d-hdmi-a-1:
    - {shard-dg1}:        [SKIP][222] ([i915#5176]) -> [PASS][223] +3 similar issues
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-75@pipe-d-hdmi-a-1.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-dg1-16/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-75@pipe-d-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20@pipe-d-hdmi-a-1:
    - {shard-dg1}:        [SKIP][224] -> [PASS][225] +4 similar issues
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-dg1-15/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d-hdmi-a-1.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d-hdmi-a-1.html

  * igt@kms_psr@primary_blt:
    - {shard-rkl}:        [SKIP][226] ([i915#1072]) -> [PASS][227] +1 similar issue
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-5/igt@kms_psr@primary_blt.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_psr@primary_blt.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][228] ([fdo#109441]) -> [PASS][229] +2 similar issues
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [SKIP][230] ([i915#5519]) -> [PASS][231]
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - {shard-rkl}:        [SKIP][232] ([i915#1845] / [i915#4098]) -> [PASS][233] +31 similar issues
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-90.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:
    - {shard-rkl}:        [SKIP][234] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][235] +1 similar issue
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][236] ([i915#180]) -> [PASS][237] +3 similar issues
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf@polling-parameterized:
    - {shard-rkl}:        [FAIL][238] ([i915#5639]) -> [PASS][239]
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-rkl-2/igt@perf@polling-parameterized.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-1/igt@perf@polling-parameterized.html

  * igt@perf@stress-open-close:
    - shard-glk:          [INCOMPLETE][240] ([i915#5213]) -> [PASS][241]
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk9/igt@perf@stress-open-close.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk6/igt@perf@stress-open-close.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][242] ([i915#2852]) -> [FAIL][243] ([i915#2842])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [SKIP][244] ([fdo#109271]) -> [FAIL][245] ([i915#2842])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-skl:          [SKIP][246] ([fdo#109271] / [fdo#111827] / [i915#1888]) -> [SKIP][247] ([fdo#109271] / [fdo#111827])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-skl9/igt@kms_chamelium@vga-hpd-with-enabled-mode.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl7/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
    - shard-kbl:          [SKIP][248] ([fdo#109271] / [fdo#111827]) -> [SKIP][249] ([fdo#109271] / [fdo#111827] / [i915#92])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl1/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-kbl:          [FAIL][250] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][251] ([fdo#108145] / [i915#62] / [i915#92])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][252] ([fdo#111068] / [i915#658]) -> [SKIP][253] ([i915#2920])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][254] ([i915#2920]) -> [SKIP][255] ([fdo#111068] / [i915#658]) +1 similar issue
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [SKIP][256] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][257] ([i915#5939])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-iclb5/igt@kms_psr2_su@page_flip-p010.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-kbl:          [SKIP][258] ([fdo#109271]) -> [SKIP][259] ([fdo#109271] / [i915#92]) +17 similar issues
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][260] ([i915#4312] / [i915#5257]) -> ([FAIL][261], [FAIL][262], [FAIL][263], [FAIL][264], [FAIL][265], [FAIL][266], [FAIL][267]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-skl9/igt@runner@aborted.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl3/igt@runner@aborted.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl3/igt@runner@aborted.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl9/igt@runner@aborted.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl7/igt@runner@aborted.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl3/igt@runner@aborted.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@runner@aborted.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][268], [FAIL][269], [FAIL][270], [FAIL][271], [FAIL][272], [FAIL][273], [FAIL][274], [FAIL][275]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92]) -> ([FAIL][276], [FAIL][277], [FAIL][278], [FAIL][279], [FAIL][280], [FAIL][281], [FAIL][282], [FAIL][283], [FAIL][284]) ([fdo#109271] / [i915#180] / [i915#4312] / [i915#5257] / [i915#92])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl6/igt@runner@aborted.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl1/igt@runner@aborted.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl1/igt@runner@aborted.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl1/igt@runner@aborted.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl6/igt@runner@aborted.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl7/igt@runner@aborted.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl7/igt@runner@aborted.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl6/igt@runner@aborted.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@runner@aborted.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@runner@aborted.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl1/igt@runner@aborted.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl1/igt@runner@aborted.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@runner@aborted.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl1/igt@runner@aborted.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl1/igt@runner@aborted.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@runner@aborted.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@runner@aborted.html

  

### Piglit changes ###

#### Issues hit ####

  * spec@!opengl 1.1@depthstencil-default_fb-blit samples=8:
    - pig-glk-j5005:      NOTRUN -> [CRASH][285] ([i915#6322])
   [285]: None

  * spec@!opengl 3.2@glsl-resource-not-bound 2darray:
    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][286] ([i915#6322])
   [286]: None

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4275]: https://gitlab.freedesktop.org/drm/intel/issues/4275
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4904]: https://gitlab.freedesktop.org/drm/intel/issues/4904
  [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5099]: https://gitlab.freedesktop.org/drm/intel/issues/5099
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5721]: https://gitlab.freedesktop.org/drm/intel/issues/5721
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#5971]: https://gitlab.freedesktop.org/drm/intel/issues/5971
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6310]: https://gitlab.freedesktop.org/drm/intel/issues/6310
  [i915#6322]: https://gitlab.freedesktop.org/drm/intel/issues/6322
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Build changes
-------------

  * Linux: CI_DRM_11837 -> Patchwork_105845v1

  CI-20190529: 20190529
  CI_DRM_11837: e19040cd831f5ac1c94bb265ebd846c94f6fed80 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6553: 3cf110f8dcd1f4f02cf84339664b413abdaebf7d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105845v1: e19040cd831f5ac1c94bb265ebd846c94f6fed80 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/index.html

--===============6279800650069599051==
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
<tr><td><b>Series:</b></td><td>drm/doc/rfc: i915 VM_BIND feature design + u=
api</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/105845/">https://patchwork.freedesktop.org/series/105845/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105845v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105845v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11837_full -&gt; Patchwork_105845v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105845v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_105845v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
105845v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_query@query-regions-unallocated:<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-dg1-17/igt@i915_query@query-regions-=
unallocated.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@glsl-1.50@execution@built-in-functions@gs-max-uvec2-uvec2:<ul>
<li>pig-skl-6260u:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/pig-skl-6260u/spec@glsl-1.50@execution@bui=
lt-in-functions@gs-max-uvec2-uvec2.html">CRASH</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105845v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11837/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11837/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11837/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11837/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11837/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11837/shard-glk6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11837/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1837/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11837/shard-glk1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shar=
d-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11837/shard-glk2/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk6/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
845v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_105845v1/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105845v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/sh=
ard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105845v1/shard-glk8/boot.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5845v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105845v1/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105845v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/sh=
ard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105845v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5845v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105845v1/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105845v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105845v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-glk6/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4392=
">i915#4392</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-apl3/igt@gem_create@create-massive.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-kbl1/igt@gem_ctx_persistence@smoketest.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1=
/shard-kbl7/igt@gem_ctx_persistence@smoketest.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6310">i915#6310</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb7/igt@gem_eio@in-flight-contexts-1us.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845=
v1/shard-iclb3/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3070">i915#3070</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-skl7/igt@gem_eio@in-flight-contexts-immediate.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05845v1/shard-skl7/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3=
063</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05845v1/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05845v1/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v=
1/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v=
1/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-apl1/igt@gem_lmem_swapping@heavy-mul=
ti.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@gem_lmem_swapping@heavy-ran=
dom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl6/igt@gem_lmem_swapping@smem-oom.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4613">i915#4613</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-apl4/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">=
i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@gem_userptr_blits@input-che=
cking.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4991">i915#4991</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@i915_pm_dc@dc6-dpms.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i9=
15#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-icl=
b3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-kbl1/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/sha=
rd-kbl6/igt@i915_pm_rpm@dpms-non-lpsp.html">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +28 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-snb5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/=
shard-snb2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-apl8/igt@i915_suspend@debugfs-reader.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/s=
hard-apl6/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-s=
tride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl1/igt@kms_ccs@pipe-a-bad-aux-stri=
de-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +13 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105845v1/shard-apl1/igt@kms_ccs@pipe-a-ccs-on-anothe=
r-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issues=
</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@kms_ccs@pipe-a-ccs-on-anothe=
r-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar issues=
</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-tglb3/igt@kms_ccs@pipe-b-missing-ccs=
-buffer-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-single:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-apl4/igt@kms_chamelium@dp-crc-single=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-glk6/igt@kms_chamelium@hdmi-hpd-stor=
m.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@kms_color_chamelium@pipe-a-=
degamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl9/igt@kms_color_chamelium@pipe-d-=
ctm-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-apl4/igt@kms_content_protection@lega=
cy.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1319">i915#1319</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@kms_content_protection@srm.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@kms_cursor_legacy@flip-vs-c=
ursor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl9/igt@kms_flip@2x-flip-vs-expired=
-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +367 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl3/igt@kms_flip@blocking-wf_vblank=
@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl6/igt@kms_flip@flip-vs-expired-vb=
lank-interruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v=
1/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-=
ytileccs-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_105845v1/shard-glk8/igt@kms_flip_scaled_crc@flip=
-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4911">i915#4911</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64=
bpp-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb2/igt@kms_flip_scaled_crc@=
flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@kms_flip_scaled_crc@flip-64=
bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-i=
ndfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-=
1p-offscren-pri-indfb-draw-blt.html">DMESG-WARN</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
indfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105845v1/shard-iclb3/igt@kms_frontbuffer_tracking@fb=
c-1p-primscrn-pri-indfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1888">i915#1888</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05845v1/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-glk6/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +10 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-apl1/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +135 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@kms_frontbuffer_tracking@fb=
cpsr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-kbl4/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v=
1/shard-kbl4/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-apl7/igt@kms_plane_alpha_blend@pipe-=
a-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@kms_plane_alpha_blend@pipe-=
a-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-glk6/igt@kms_plane_alpha_blend@pipe-=
b-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-=
c-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-tglb3/igt@kms_plane_lowres@tiling-yf=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
112054">fdo#112054</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf@pipe-a-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-iclb8/igt@kms_plane_lowres@tiling-yf=
@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3536">i915#3536</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb4/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb2/igt@kms_plan=
e_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235=
">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-apl4/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl3/igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-glk6/igt@kms_psr2_su@page_flip-xrgb8=
888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/sha=
rd-iclb1/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb4/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105845v1/shard-iclb5/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-apl4/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-glk6/igt@kms_writeback@writeback-fb-=
id.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105845v1/shard-skl9/igt@perf@polling-parameterized.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
639">i915#5639</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11837/shard-glk3/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/sha=
rd-glk7/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@ioctl-errors:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@prime_mmap_coherency@ioctl-=
errors.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/6310">i915#6310</a>)</li>
</ul>
</li>
<li>
<p>igt@sw_sync@sync_merge_same:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl1/igt@sw_sync@sync_merge_same.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/614=
0">i915#6140</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105845v1/shard-apl1/igt@sysfs_clients@fair-0.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2994">i915#2994</a>) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@sysfs_clients@fair-0.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2994">i915#2994</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@sysfs_clients@pidname.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-5/igt@fbdev@write.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-=
6/igt@fbdev@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105845v1/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i=
915#6252</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105845v1/shard-rkl-6/igt@gem_ctx_persistence@engines-hang@bcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hostile@vcs1:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-dg1-17/igt@gem_ctx_persistence@engines-hostile@vcs1.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/488=
3">i915#4883</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105845v1/shard-dg1-17/igt@gem_ctx_persistence@engines-hostile@vc=
s1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#=
2410</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105845v1/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-apl7/igt@gem_ctx_persistence@smoketest.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5099">i915#5099<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5845v1/shard-apl3/igt@gem_ctx_persistence@smoketest.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-tglb1/igt@gem_eio@kms.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-tglb=
7/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-dg1-12/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/=
shard-dg1-18/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-tglu-5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1058=
45v1/shard-tglu-5/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb7/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1058=
45v1/shard-iclb1/igt@gem_exec_balancer@parallel.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05845v1/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5845v1/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-gtt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5845v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt.html">PASS</a> +4 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/=
shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1850">i915#1850</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
845v1/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#328=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105845v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">PASS</a> +3 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/644">i915#6=
44</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105845v1/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-2/igt@gen9_exec_parse@batch-zero-length.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#=
2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105845v1/shard-rkl-5/igt@gen9_exec_parse@batch-zero-length.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-5/igt@i915_pm_backlight@bad-brightness.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3=
012</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105845v1/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html">PASS</a> =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-5/igt@i915_pm_rpm@fences.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/sha=
rd-rkl-6/igt@i915_pm_rpm@fences.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-dg1-12/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i9=
15#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105845v1/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105845v1/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html">PAS=
S</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-degamma:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-5/igt@kms_color@pipe-a-degamma.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#184=
9</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i9=
15#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105845v1/shard-rkl-6/igt@kms_color@pipe-a-degamma.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-degamma:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-2/igt@kms_color@pipe-b-degamma.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#184=
9</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070">i9=
15#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105845v1/shard-rkl-6/igt@kms_color@pipe-b-degamma.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-invalid-gamma-lut-sizes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-2/igt@kms_color@pipe-c-invalid-gamma-lut-sizes.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070=
">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105845v1/shard-rkl-5/igt@kms_color@pipe-c-invalid-gamma-lut-sizes=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-dg1-15/igt@kms_color@pipe-d-ctm-max.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10584=
5v1/shard-dg1-16/igt@kms_color@pipe-d-ctm-max.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-skl1/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4939">i915#4939</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105845v1/shard-skl9/igt@kms_cursor_crc@cursor-suspend@pipe=
-b-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-pwrite-untile=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_draw_crc@draw-=
method-rgb565-pwrite-untiled.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-=
hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105845v1/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblan=
k@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-glk2/igt@kms_flip@flip-vs-expired-vb=
lank-interruptible@a-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105845v1/shard-skl9/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@c-hdmi-a1:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-dg1-15/igt@kms_flip@wf_vblank-ts-check-interruptible@c-=
hdmi-a1.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_105845v1/shard-dg1-16/igt@kms_flip@wf_vblank-ts-check-inter=
ruptible@c-hdmi-a1.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3701">i915#3701</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_flip_scaled_crc=
@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3701">i915#3701</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-iclb1/igt@kms_flip_scaled_c=
rc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri=
-indfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5721">i915#5721</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-dg1-16/igt@kms_frontbuffer_=
tracking@fbc-1p-offscren-pri-indfb-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-slowdraw:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-slowdraw.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888=
">i915#1888</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2546">i915#2546</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_105845v1/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-sl=
owdraw.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_frontbuffer_tra=
cking@psr-1p-primscrn-cur-indfb-move.html">PASS</a> +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-2/igt@kms_invalid_mode@uint-max-clock.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4278">i915#42=
78</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105845v1/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_lease@empty_lease:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-dg1-15/igt@kms_lease@empty_lease.html">WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5971">i915#5971</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1=
/shard-dg1-16/igt@kms_lease@empty_lease.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-a-planes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_plane@plane-=
panning-bottom-right-suspend@pipe-a-planes.html">PASS</a> +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-m=
ax.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_plane_alpha_blend=
@pipe-b-constant-alpha-max.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-75@pipe-d-=
hdmi-a-1:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-with-modif=
iers-factor-0-75@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5176">i915#5176</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-dg1-16/igt@km=
s_plane_scaling@plane-downscale-with-modifiers-factor-0-75@pipe-d-hdmi-a-1.=
html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20@pipe-d-hdmi-a-1:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-dg1-15/igt@kms_plane_scaling@planes-upscale-20x20@pipe-=
d-hdmi-a-1.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_105845v1/shard-dg1-16/igt@kms_plane_scaling@planes-upsca=
le-20x20@pipe-d-hdmi-a-1.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-5/igt@kms_psr@primary_blt.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/=
shard-rkl-6/igt@kms_psr@primary_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105845v1/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105845v1/shard-tglb7/igt@kms_psr_stress_test@invalidat=
e-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-90.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i9=
15#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105845v1/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.h=
tml">PASS</a> +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-2/igt@kms_universal_plane@disable-primary-vs-flip-p=
ipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_105845v1/shard-rkl-6/igt@kms_universal_plan=
e@disable-primary-vs-flip-pipe-b.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_105845v1/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-sus=
pend.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-rkl-2/igt@perf@polling-parameterized.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1058=
45v1/shard-rkl-1/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-glk9/igt@perf@stress-open-close.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
845v1/shard-glk6/igt@perf@stress-open-close.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2852">i915=
#2852</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105845v1/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105845v1/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-skl9/igt@kms_chamelium@vga-hpd-with-enabled-mode.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105845v1/shard-skl7/igt@kms_chamelium@vga-hpd-wit=
h-enabled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-green-to-red:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-kbl1/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111827">fdo#111827</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@kms_color_chamelium@pipe-c-ct=
m-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html"=
>FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145=
">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105845v1/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-alpha-b=
asic.html">DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/62">i915#62</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-iclb2/igt@kms_psr2_sf@overlay-primar=
y-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_105845v1/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-iclb5/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642<=
/a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105845v1/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5939">i915#59=
39</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-kbl1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105845v1/shard-kbl6/igt@kms_rotation_crc@primary-yf-tiled-=
reflect-x-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/92">i915#92</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11837/shard-skl9/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/sh=
ard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl3/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5845v1/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl7/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105845v1/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-skl4/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_105845v1/shard-skl4/igt@runner@aborted.html">FAIL</a>) (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#30=
02</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i=
915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
257">i915#5257</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11837/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11837/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl1/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11837/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1837/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11837/shard-kbl6/igt@runner@aborted.html=
">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/92">i915#92</a>) -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
845v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105845v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl7/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105845v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/shard-kbl=
1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105845v1/shard-kbl6/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105845v1/=
shard-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>spec@!opengl 1.1@depthstencil-default_fb-blit samples=3D8:</p>
<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href=3D"None">CRASH</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/6322">i915#6322</a>)</li>
</ul>
</li>
<li>
<p>spec@!opengl 3.2@glsl-resource-not-bound 2darray:</p>
<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href=3D"None">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6322">i915#6322</a>)<=
/li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11837 -&gt; Patchwork_105845v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11837: e19040cd831f5ac1c94bb265ebd846c94f6fed80 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6553: 3cf110f8dcd1f4f02cf84339664b413abdaebf7d @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105845v1: e19040cd831f5ac1c94bb265ebd846c94f6fed80 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6279800650069599051==--
