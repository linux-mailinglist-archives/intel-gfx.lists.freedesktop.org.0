Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D1A4F3D36
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 20:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9526E10E46F;
	Tue,  5 Apr 2022 18:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 72EF810E46F;
 Tue,  5 Apr 2022 18:39:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DA96A363D;
 Tue,  5 Apr 2022 18:39:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4364504633946805264=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 05 Apr 2022 18:39:27 -0000
Message-ID: <164918396740.24157.9383572114739685932@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405104114.20780-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220405104114.20780-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_skl=5Fpcode=5Ftry=5Frequest_function?=
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

--===============4364504633946805264==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix skl_pcode_try_request function
URL   : https://patchwork.freedesktop.org/series/102186/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11456_full -> Patchwork_22780_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22780_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22780_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 12)
------------------------------

  Missing    (1): shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22780_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@busy-flip@c-edp1:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl6/igt@kms_flip@busy-flip@c-edp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl5/igt@kms_flip@busy-flip@c-edp1.html

  * igt@sysfs_heartbeat_interval@mixed@bcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl3/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_flush@basic-uc-pro-default:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-rkl-5/igt@gem_exec_flush@basic-uc-pro-default.html

  
Known issues
------------

  Here are the changes found in Patchwork_22780_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [FAIL][17], [FAIL][18], [FAIL][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23]) ([i915#5032]) -> ([PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl10/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl10/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl9/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl9/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl5/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl1/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl10/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@drm_mm@all@replace:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#1373])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl6/igt@drm_mm@all@replace.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl5/igt@drm_mm@all@replace.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#5327])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][46] ([i915#4991])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-apl4/igt@gem_create@create-massive.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109314])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][48] ([i915#180])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-apl6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][49] -> [FAIL][50] ([i915#232])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-tglb7/igt@gem_eio@kms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-tglb2/igt@gem_eio@kms.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          [PASS][51] -> [INCOMPLETE][52] ([i915#4547])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl7/igt@gem_exec_capture@pi@vcs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl9/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          NOTRUN -> [FAIL][53] ([i915#2842])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][54] -> [FAIL][55] ([i915#2842])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][56] -> [FAIL][57] ([i915#2842]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109283])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][59] -> [SKIP][60] ([i915#2190])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-tglb2/igt@gem_huc_copy@huc-copy.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#4613]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl4/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#4270]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_render_copy@yf-tiled-to-vebox-linear:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#768]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@gem_render_copy@yf-tiled-to-vebox-linear.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-skl:          [PASS][65] -> [DMESG-WARN][66] ([i915#1982])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl5/igt@gem_set_tiling_vs_gtt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl9/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_spin_batch@legacy@default:
    - shard-apl:          [PASS][67] -> [FAIL][68] ([i915#2898])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-apl1/igt@gem_spin_batch@legacy@default.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-apl8/igt@gem_spin_batch@legacy@default.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109289]) +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#2856]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [WARN][71] ([i915#2684])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@gem-mmap-type@gtt:
    - shard-iclb:         [PASS][72] -> [INCOMPLETE][73] ([i915#5096])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-iclb3/igt@i915_pm_rpm@gem-mmap-type@gtt.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb4/igt@i915_pm_rpm@gem-mmap-type@gtt.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][74] ([i915#1886])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl3/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][75] -> [INCOMPLETE][76] ([i915#3921])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-snb5/igt@i915_selftest@live@hangcheck.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-snb4/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#5286])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271]) +265 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl5/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#110725] / [fdo#111614]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][80] ([i915#3743]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#110723])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3777]) +5 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +5 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-apl6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109278] / [i915#3886]) +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3886]) +16 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#111615] / [i915#3689])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-tglb1/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +18 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl7/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-apl4/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color@pipe-d-degamma:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109278] / [i915#1149]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_color@pipe-d-degamma.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#109284] / [fdo#111827])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-tglb1/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109278] / [fdo#109279])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([i915#3359])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109278]) +24 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-apl:          [PASS][96] -> [FAIL][97] ([i915#2346])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-apl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-glk:          NOTRUN -> [SKIP][98] ([fdo#109271]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-glk3/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([i915#5287]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-4tiled.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][100] ([fdo#109274]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-tglb:         [PASS][101] -> [DMESG-WARN][102] ([i915#2411] / [i915#2867])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          NOTRUN -> [INCOMPLETE][103] ([i915#4939])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][104] ([i915#2122])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl3/igt@kms_flip@flip-vs-wf_vblank-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([i915#2587])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109280]) +15 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][108] -> [DMESG-WARN][109] ([i915#180]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-apl:          NOTRUN -> [SKIP][110] ([fdo#109271]) +64 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-apl4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [FAIL][111] ([i915#1188])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl7/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#533]) +3 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][113] ([i915#265])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][114] ([fdo#108145] / [i915#265]) +2 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#658]) +4 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [PASS][116] -> [SKIP][117] ([fdo#109642] / [fdo#111068] / [i915#658])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb1/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         NOTRUN -> [SKIP][118] ([fdo#109441]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:
    - shard-iclb:         NOTRUN -> [SKIP][119] ([i915#5030]) +2 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109309])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_vrr@flip-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109502])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb1/igt@kms_vrr@flip-dpms.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#2437])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#2437])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-apl4/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-b-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][124] ([i915#2530]) +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@nouveau_crc@pipe-b-source-rg.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][125] -> [FAIL][126] ([i915#1542])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl7/igt@perf@polling-parameterized.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl9/igt@perf@polling-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [PASS][127] -> [DMESG-WARN][128] ([i915#262] / [i915#2867])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-iclb5/igt@perf_pmu@module-unload.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@perf_pmu@module-unload.html

  * igt@prime_nv_pcopy@test3_5:
    - shard-iclb:         NOTRUN -> [SKIP][129] ([fdo#109291])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@prime_nv_pcopy@test3_5.html

  * igt@prime_vgem@basic-userptr:
    - shard-iclb:         NOTRUN -> [SKIP][130] ([i915#3301])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@prime_vgem@basic-userptr.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][131] ([i915#5098])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl10/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@split-10:
    - shard-iclb:         NOTRUN -> [SKIP][132] ([i915#2994])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@sysfs_clients@split-10.html

  * igt@sysfs_clients@split-25:
    - shard-skl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#2994]) +2 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl10/igt@sysfs_clients@split-25.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-skl:          NOTRUN -> [WARN][134] ([i915#4055])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-skl:          NOTRUN -> [FAIL][135] ([i915#1731])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-kbl:          [PASS][136] -> [FAIL][137] ([i915#1755])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-kbl3/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-kbl6/igt@sysfs_timeslice_duration@timeout@vecs0.html
    - shard-tglb:         [PASS][138] -> [FAIL][139] ([i915#1755])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-tglb3/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-tglb5/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-iclb:         [TIMEOUT][140] ([i915#3070]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-iclb5/igt@gem_eio@in-flight-contexts-1us.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb8/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][142] ([i915#4525]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][144] ([i915#2842]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][146] ([i915#2842]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [FAIL][148] ([i915#2842]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_softpin@noreloc-s3:
    - shard-snb:          [SKIP][150] ([fdo#109271]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-snb5/igt@gem_softpin@noreloc-s3.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-snb5/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][152] ([i915#5566] / [i915#716]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@i2c:
    - shard-glk:          [FAIL][154] ([i915#5466]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-glk6/igt@i915_pm_rpm@i2c.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/index.html

--===============4364504633946805264==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix skl_pcode_try_request function=
</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/102186/">https://patchwork.freedesktop.org/series/102186/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22780/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22780/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11456_full -&gt; Patchwork_22780_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22780_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22780_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 12)</h2>
<p>Missing    (1): shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22780_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_flip@busy-flip@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-skl6/igt@kms_flip@busy-flip@c-edp1.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-=
skl5/igt@kms_flip@busy-flip@c-edp1.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl3/igt@sysfs_heartbeat_interval@mixed=
@bcs0.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_exec_flush@basic-uc-pro-default:<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-rkl-5/igt@gem_exec_flush@basic-uc-pro-d=
efault.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22780_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11456/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11456/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11456/shard-skl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/sha=
rd-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11456/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl5/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11456/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11456/shard-skl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl3/boot.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456=
/shard-skl3/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11456/shard-skl3/boot.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-sk=
l1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl10/boot.html">PASS</a>) ([i91=
5#5032]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22780/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22780/shard-skl9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl8/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22780/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22780/shard-skl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl7/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22780/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22780/shard-skl5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl5/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22780/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22780/shard-skl4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl3/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22780/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22780/shard-skl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl2/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22780/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22780/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl10/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22780/shard-skl10/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_mm@all@replace:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-skl6/igt@drm_mm@all@replace.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl5/ig=
t@drm_mm@all@replace.html">INCOMPLETE</a> ([i915#1373])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@gem_ccs@ctrl-surf-copy-new-ct=
x.html">SKIP</a> ([i915#5327])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-apl4/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@gem_ctx_param@set-priority-no=
t-supported.html">SKIP</a> ([fdo#109314])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-apl6/igt@gem_eio@in-flight-suspend.html=
">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-tglb7/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-tglb2/igt@gem=
_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-skl7/igt@gem_exec_capture@pi@vcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-s=
kl9/igt@gem_exec_capture@pi@vcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-apl4/igt@gem_exec_fair@basic-none@vecs0=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
780/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/sh=
ard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@gem_exec_params@rsvd2-dirt.ht=
ml">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-tgl=
b7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@gem_lmem_swapping@heavy-rando=
m.html">SKIP</a> ([i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl4/igt@gem_lmem_swapping@heavy-verify=
-multi.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@gem_pxp@create-protected-buff=
er.html">SKIP</a> ([i915#4270]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-linear:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@gem_render_copy@yf-tiled-to-v=
ebox-linear.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-skl5/igt@gem_set_tiling_vs_gtt.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-skl9=
/igt@gem_set_tiling_vs_gtt.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@legacy@default:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-apl1/igt@gem_spin_batch@legacy@default.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/sh=
ard-apl8/igt@gem_spin_batch@legacy@default.html">FAIL</a> ([i915#2898])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@gen7_exec_parse@chained-batch=
.html">SKIP</a> ([fdo#109289]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@gen9_exec_parse@valid-registe=
rs.html">SKIP</a> ([i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idl=
e.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-iclb3/igt@i915_pm_rpm@gem-mmap-type@gtt.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/s=
hard-iclb4/igt@i915_pm_rpm@gem-mmap-type@gtt.html">INCOMPLETE</a> ([i915#50=
96])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl3/igt@i915_selftest@live@gt_pm.html"=
>DMESG-FAIL</a> ([i915#1886])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-snb5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/sha=
rd-snb4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@kms_big_fb@4-tiled-32bpp-rota=
te-0.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl5/igt@kms_big_fb@linear-64bpp-rotate=
-90.html">SKIP</a> ([fdo#109271]) +265 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_big_fb@linear-8bpp-rotate=
-90.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-0.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl3/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#37=
77]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-apl6/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_ccs@pipe-a-random-ccs-dat=
a-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +3 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl2/igt@kms_ccs@pipe-b-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +16 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-tglb1/igt@kms_ccs@pipe-c-crc-primary-ro=
tation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_chamelium@dp-frame-dump.h=
tml">SKIP</a> ([fdo#109284] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl7/igt@kms_chamelium@hdmi-hpd-storm-d=
isable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-apl4/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_color@pipe-d-degamma.html=
">SKIP</a> ([fdo#109278] / [i915#1149]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-tglb1/igt@kms_color_chamelium@pipe-b-ga=
mma.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-=
512x170-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-=
max-size-onscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_cursor_edge_walk@pipe-d-2=
56x256-left-edge.html">SKIP</a> ([fdo#109278]) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic-transitions-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#1=
09278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22780/shard-apl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-glk3/igt@kms_dp_tiled_display@basic-tes=
t-pattern-with-chamelium.html">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@kms_draw_crc@draw-method-xrgb=
8888-mmap-wc-4tiled.html">SKIP</a> ([i915#5287]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_flip@2x-flip-vs-panning-i=
nterruptible.html">SKIP</a> ([fdo#109274]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22780/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@b-edp=
1.html">DMESG-WARN</a> ([i915#2411] / [i915#2867])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl9/igt@kms_flip@flip-vs-suspend-inter=
ruptible@c-edp1.html">INCOMPLETE</a> ([i915#4939])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-wf_vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl3/igt@kms_flip@flip-vs-wf_vblank-int=
erruptible@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bp=
p-ytile-to-32bpp-ytilercccs-upscaling.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109280]) +15 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280] / [fdo#111=
825]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2780/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</=
a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-apl4/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +64 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl7/igt@kms_hdr@bpc-switch@bpc-switch-=
edp-1-pipe-a.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl7/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2278=
0/shard-iclb1/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109=
642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@kms_psr@psr2_cursor_render.ht=
ml">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@kms_scaling_modes@scaling-mod=
e-none@edp-1-pipe-c.html">SKIP</a> ([i915#5030]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@kms_tv_load_detect@load-detec=
t.html">SKIP</a> ([fdo#109309])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb1/igt@kms_vrr@flip-dpms.html">SKIP<=
/a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl4/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-apl4/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@nouveau_crc@pipe-b-source-rg.=
html">SKIP</a> ([i915#2530]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-skl7/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard=
-skl9/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-iclb5/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/shard-ic=
lb6/igt@perf_pmu@module-unload.html">DMESG-WARN</a> ([i915#262] / [i915#286=
7])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@prime_nv_pcopy@test3_5.html">=
SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb6/igt@prime_vgem@basic-userptr.html=
">SKIP</a> ([i915#3301])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl10/igt@syncobj_timeline@transfer-tim=
eline-point.html">DMESG-FAIL</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-iclb5/igt@sysfs_clients@split-10.html">=
SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl10/igt@sysfs_clients@split-25.html">=
SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl3/igt@sysfs_heartbeat_interval@mixed=
@vcs0.html">WARN</a> ([i915#4055])</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22780/shard-skl3/igt@sysfs_heartbeat_interval@mixed=
@vecs0.html">FAIL</a> ([i915#1731])</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11456/shard-kbl3/igt@sysfs_timeslice_duration@timeout@vecs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22780/shard-kbl6/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</a> =
([i915#1755])</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11456/shard-tglb3/igt@sysfs_timeslice_duration@timeout@vecs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22780/shard-tglb5/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</a=
> ([i915#1755])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-iclb5/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT<=
/a> ([i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22780/shard-iclb8/igt@gem_eio@in-flight-contexts-1us.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22780/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22780/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22780/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22780/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-snb5/igt@gem_softpin@noreloc-s3.html">SKIP</a> ([fdo#10=
9271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22780/shard-snb5/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> ([i915#5566] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22780/shard-skl5/igt@gen9_exec_parse@allowed-sing=
le.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-glk6/igt@i915_pm_rpm@i2c.html">FAIL</a> ([i915#5466]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22780/sh=
ard">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============4364504633946805264==--
