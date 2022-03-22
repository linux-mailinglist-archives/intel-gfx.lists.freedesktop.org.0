Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEE54E4038
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 15:09:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFE3310E5AE;
	Tue, 22 Mar 2022 14:09:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4BFC110E5AE;
 Tue, 22 Mar 2022 14:09:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48BD3AADD6;
 Tue, 22 Mar 2022 14:09:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3591678516724256355=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Tue, 22 Mar 2022 14:09:43 -0000
Message-ID: <164795818326.20008.17253498566817096295@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220321223819.72833-1-michael.cheng@intel.com>
In-Reply-To: <20220321223819.72833-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgVXNl?=
 =?utf-8?q?_drm=5Fclflush*_instead_of_clflush?=
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

--===============3591678516724256355==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Use drm_clflush* instead of clflush
URL   : https://patchwork.freedesktop.org/series/101611/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11395_full -> Patchwork_22635_full
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

  Here are the unknown changes that may have been introduced in Patchwork_22635_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {shard-rkl}:        ([FAIL][1], [FAIL][2], [FAIL][3]) ([i915#2029] / [i915#3002] / [i915#4312]) -> ([FAIL][4], [FAIL][5], [FAIL][6], [FAIL][7]) ([i915#3002] / [i915#4312])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-1/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-1/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-1/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-rkl-2/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-rkl-5/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-rkl-1/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-rkl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22635_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [FAIL][28], [PASS][29], [PASS][30], [PASS][31]) ([i915#4392]) -> ([PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk9/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk9/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk8/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk8/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk3/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk5/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk5/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk8/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk8/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk9/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk9/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-skl:          [PASS][57] -> [INCOMPLETE][58] ([i915#1373] / [i915#4793])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#5099])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-tglb6/igt@gem_ctx_persistence@smoketest.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-tglb5/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-tglb:         [PASS][61] -> [TIMEOUT][62] ([i915#3063])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-tglb8/igt@gem_eio@in-flight-contexts-immediate.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-tglb3/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][63] -> [INCOMPLETE][64] ([i915#4843])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl8/igt@gem_eio@in-flight-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][65] -> [FAIL][66] ([i915#232])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [PASS][67] -> [SKIP][68] ([fdo#109271])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][69] ([i915#2842])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][70] -> [FAIL][71] ([i915#2842])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][72] ([i915#2842]) +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][73] -> [SKIP][74] ([i915#2190])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#4613]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-glk:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#4613])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#4613]) +5 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl4/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][78] ([i915#2658]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#4270])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3323])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-apl1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-glk:          NOTRUN -> [DMESG-WARN][81] ([i915#4991])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/igt@gem_userptr_blits@input-checking.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][82] -> [DMESG-WARN][83] ([i915#180]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#2856])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#658])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][86] -> [FAIL][87] ([i915#454])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_sseu@full-enable:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#4387])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@i915_pm_sseu@full-enable.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#1769])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#5286]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-glk:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3777])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][93] ([i915#3743]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3777]) +4 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#3886]) +14 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl4/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109278] / [i915#3886])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][97] ([fdo#109271]) +52 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#3886]) +3 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#3886])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-kbl7/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-hpd-after-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [fdo#111827])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-kbl7/igt@kms_chamelium@dp-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-glk:          NOTRUN -> [SKIP][101] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_color@pipe-c-deep-color:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109278] / [i915#3555])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_color@pipe-c-deep-color.html

  * igt@kms_color_chamelium@pipe-b-ctm-blue-to-red:
    - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-apl1/igt@kms_color_chamelium@pipe-b-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl4/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@type1:
    - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#109300] / [fdo#111066])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([fdo#109278] / [fdo#109279])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][109] -> [INCOMPLETE][110] ([i915#3614])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][111] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-iclb:         NOTRUN -> [FAIL][112] ([i915#2346])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-iclb:         [PASS][113] -> [FAIL][114] ([i915#2346])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][115] ([i915#5287])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][116] -> [FAIL][117] ([i915#79])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-kbl:          [PASS][118] -> [DMESG-WARN][119] ([i915#180])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [PASS][120] -> [INCOMPLETE][121] ([i915#4839] / [i915#636])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl1/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl10/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][122] ([i915#2122])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [PASS][123] -> [FAIL][124] ([i915#2122])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl9/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl8/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][125] -> [SKIP][126] ([i915#3701]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109280]) +15 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
    - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271]) +26 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
    - shard-skl:          [PASS][129] -> [FAIL][130] ([i915#1188]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl9/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl10/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][131] ([i915#3555])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#533])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-kbl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-glk:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#533]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#533]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-iclb:         NOTRUN -> [SKIP][135] ([fdo#109278]) +23 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][136] ([fdo#108145] / [i915#265]) +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][137] ([fdo#108145] / [i915#265]) +4 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][138] -> [FAIL][139] ([fdo#108145] / [i915#265])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [FAIL][140] ([fdo#108145] / [i915#265])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:
    - shard-kbl:          NOTRUN -> [SKIP][141] ([fdo#109271]) +4 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-kbl7/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-b-tiling-y:
    - shard-iclb:         NOTRUN -> [SKIP][142] ([i915#3536]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_plane_lowres@pipe-b-tiling-y.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale:
    - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271]) +295 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#658])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][145] ([fdo#109271] / [i915#658]) +1 similar issue
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-iclb:         NOTRUN -> [SKIP][146] ([fdo#109642] / [fdo#111068] / [i915#658])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][147] ([fdo#109441]) +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][148] -> [SKIP][149] ([fdo#109441]) +1 similar issue
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          NOTRUN -> [INCOMPLETE][150] ([i915#2828])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-glk:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#2437])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#2437]) +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl8/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-c-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][153] ([i915#2530]) +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@nouveau_crc@pipe-c-ctx-flip-detection.html

  * igt@perf@gen12-mi-rpc:
    - shard-iclb:         NOTRUN -> [SKIP][154] ([fdo#109289])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@perf@gen12-mi-rpc.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][155] -> [FAIL][156] ([i915#1542])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl10/igt@perf@polling-parameterized.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl9/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][157] -> [FAIL][158] ([i915#1722])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl9/igt@perf@polling-small-buf.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl9/igt@perf@polling-small-buf.html

  * igt@prime_nv_api@nv_i915_import_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][159] ([fdo#109291]) +2 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html

  * igt@syncobj_timeline@invalid-tra

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/index.html

--===============3591678516724256355==
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
<tr><td><b>Series:</b></td><td>Use drm_clflush* instead of clflush</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101611/">https://patchwork.freedesktop.org/series/101611/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22635/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22635/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11395_full -&gt; Patchwork_22635_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22635_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@runner@aborted:<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11395/shard-rkl-1/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-1/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-1/igt@runner@aborted.html">FAIL</a>) ([i915#2029] /=
 [i915#3002] / [i915#4312]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22635/shard-rkl-2/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-r=
kl-5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22635/shard-rkl-1/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/sh=
ard-rkl-2/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / [i915#4312])</l=
i>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22635_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11395/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11395/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11395/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11395/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11395/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11395/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11395/shard-glk3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1395/shard-glk2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11395/shard-glk1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shar=
d-glk1/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk1/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-gl=
k1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22635/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk2/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-gl=
k2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22635/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk3/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22635/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk4/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22635/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk5/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22635/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22635/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-gl=
k8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22635/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk8/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-gl=
k9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22635/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk9/boot.html">PASS</a>)</=
li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-skl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22635/shard-skl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">INCOMPLE=
TE</a> ([i915#1373] / [i915#4793])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-tglb6/igt@gem_ctx_persistence@smoketest.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/s=
hard-tglb5/igt@gem_ctx_persistence@smoketest.html">FAIL</a> ([i915#5099])</=
li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-tglb8/igt@gem_eio@in-flight-contexts-immediate.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22635/shard-tglb3/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a=
> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-skl8/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-=
skl7/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> ([i915#4843])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-tg=
lb5/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
635/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo=
#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/s=
hard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-glk6/igt@gem_exec_fair@basic-throttle@r=
cs0.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-tgl=
b7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@gem_lmem_swapping@heavy-rando=
m.html">SKIP</a> ([i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-glk7/igt@gem_lmem_swapping@parallel-ran=
dom-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-skl4/igt@gem_lmem_swapping@verify-rando=
m.html">SKIP</a> ([fdo#109271] / [i915#4613]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-skl7/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@gem_pxp@regular-baseline-src-=
copy-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-apl1/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-glk6/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-apl7/igt@gem_workarounds@suspend-resume-context.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22635/shard-apl6/igt@gem_workarounds@suspend-resume-context.html">DMESG-WA=
RN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@gen9_exec_parse@batch-without=
-end.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulati=
on.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-iclb4/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb3/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@i915_pm_sseu@full-enable.html=
">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_atomic_transition@plane-a=
ll-modeset-transition-fencing.html">SKIP</a> ([i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_big_fb@4-tiled-max-hw-str=
ide-32bpp-rotate-180.html">SKIP</a> ([i915#5286]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_big_fb@linear-64bpp-rotat=
e-90.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-glk6/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#37=
77]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-skl4/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +14 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_ccs@pipe-a-crc-primary-ba=
sic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-glk6/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +52 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886=
]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-kbl7/igt@kms_ccs@pipe-c-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-after-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-kbl7/igt@kms_chamelium@dp-hpd-after-sus=
pend.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_chamelium@vga-hpd-enable-d=
isable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-deep-color:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_color@pipe-c-deep-color.h=
tml">SKIP</a> ([fdo#109278] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-blue-to-red:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-apl1/igt@kms_color_chamelium@pipe-b-ctm=
-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_color_chamelium@pipe-c-ct=
m-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_color_chamelium@pipe-d-ct=
m-max.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-skl4/igt@kms_color_chamelium@pipe-d-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_content_protection@type1.=
html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2635/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</=
a> ([i915#3614])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cur=
sor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22635/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-siz=
e.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb=
2101010-pwrite-4tiled.html">SKIP</a> ([i915#5287])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22635/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a>=
 ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22635/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.ht=
ml">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-skl1/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/=
shard-skl10/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLETE</a> ([i915=
#4839] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-skl8/igt@kms_flip@plain-flip-fb-recreat=
e@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-skl9/igt@kms_flip@plain-flip-ts-check@a-edp1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
635/shard-skl8/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAIL</a> ([i91=
5#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22635/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701]) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280]) +15 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-apl1/igt@kms_frontbuffer_tracking@fbcps=
r-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109271]) +26 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-skl9/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-=
pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22635/shard-skl10/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpm=
s-edp-1-pipe-a.html">FAIL</a> ([i915#1188]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_hdr@static-toggle-suspend=
.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-kbl7/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_pipe_crc_basic@read-crc-p=
ipe-d-frame-sequence.html">SKIP</a> ([fdo#109278]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +4 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22635/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-kbl7/igt@kms_plane_alpha_blend@pipe-d-c=
onstant-alpha-min.html">SKIP</a> ([fdo#109271]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-y:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_plane_lowres@pipe-b-tilin=
g-y.html">SKIP</a> ([i915#3536]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-edp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-skl7/igt@kms_plane_scaling@planes-upsca=
le-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale.=
html">SKIP</a> ([fdo#109271]) +295 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-skl8/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.ht=
ml">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.=
html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/s=
hard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-skl7/igt@kms_vblank@pipe-b-ts-continuat=
ion-dpms-suspend.html">INCOMPLETE</a> ([i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-glk6/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-skl8/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@nouveau_crc@pipe-c-ctx-flip-d=
etection.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@perf@gen12-mi-rpc.html">SKIP<=
/a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-skl10/igt@perf@polling-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shar=
d-skl9/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-skl9/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl=
9/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_i915_import_twice_check_flink_name:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@prime_nv_api@nv_i915_import_t=
wice_check_flink_name.html">SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-tra</p>
</li>
</ul>

</body>
</html>

--===============3591678516724256355==--
