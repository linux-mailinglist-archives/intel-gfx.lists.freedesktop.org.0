Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB304D4261
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 09:21:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC18310F978;
	Thu, 10 Mar 2022 08:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 735AF10F978;
 Thu, 10 Mar 2022 08:21:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E5CDAADD3;
 Thu, 10 Mar 2022 08:21:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3898322424032688866=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Thu, 10 Mar 2022 08:21:29 -0000
Message-ID: <164690048940.17009.12783956851766987639@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220310003404.27499-1-matthew.s.atwood@intel.com>
In-Reply-To: <20220310003404.27499-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/uapi=3A_Add_DRM=5FI915=5FQUERY=5FGEOMETRY=5FSUBSLICES?=
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

--===============3898322424032688866==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/uapi: Add DRM_I915_QUERY_GEOMETRY_SUBSLICES
URL   : https://patchwork.freedesktop.org/series/101219/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11346_full -> Patchwork_22527_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22527_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22527_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22527_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html

  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
    - shard-skl:          [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-skl8/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-skl5/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html

  * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-dp-1-pipe-a:
    - shard-kbl:          [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-kbl1/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-dp-1-pipe-a.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-dp-1-pipe-a.html

  * igt@kms_plane_lowres@pipe-a-tiling-4:
    - shard-tglb:         NOTRUN -> [SKIP][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb8/igt@kms_plane_lowres@pipe-a-tiling-4.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_balancer@persistence:
    - {shard-rkl}:        [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-rkl-5/igt@gem_exec_balancer@persistence.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-rkl-5/igt@gem_exec_balancer@persistence.html

  * igt@kms_mmap_write_crc@main:
    - {shard-dg1}:        NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-dg1-13/igt@kms_mmap_write_crc@main.html

  * igt@kms_plane_lowres@pipe-d-tiling-4:
    - {shard-dg1}:        NOTRUN -> [SKIP][11] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-dg1-12/igt@kms_plane_lowres@pipe-d-tiling-4.html

  
Known issues
------------

  Here are the changes found in Patchwork_22527_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [FAIL][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36]) ([i915#4392]) -> ([PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk3/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk9/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk9/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk9/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk8/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk8/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk7/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk7/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk6/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk6/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk6/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk5/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk1/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk1/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk2/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk2/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk9/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk9/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk9/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk3/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk7/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk6/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk6/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk6/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk5/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk3/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk4/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk5/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk5/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk4/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([i915#658])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-iclb2/igt@feature_discovery@psr2.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb7/igt@feature_discovery@psr2.html

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][64] ([i915#4991])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-kbl3/igt@gem_create@create-massive.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         NOTRUN -> [TIMEOUT][65] ([i915#2481] / [i915#3070])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][66] ([i915#5076])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb6/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][67] ([i915#3371])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb1/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271]) +113 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-skl2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][69] -> [FAIL][70] ([i915#2842])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][71] -> [FAIL][72] ([i915#2842])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][73] -> [FAIL][74] ([i915#2842])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-glk:          [PASS][75] -> [FAIL][76] ([i915#2842]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#4613]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-skl2/igt@gem_lmem_swapping@parallel-random.html
    - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#4613])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb8/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#4613])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk5/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@verify:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#4613])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-apl7/igt@gem_lmem_swapping@verify.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][81] ([i915#2658])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-skl4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#4270])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb6/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#4270])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#768]) +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb7/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [PASS][85] -> [FAIL][86] ([i915#4171])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_softpin@evict-snoop:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109312])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([i915#3297])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb3/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#3297])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb7/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][90] ([i915#4991])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-skl2/igt@gem_userptr_blits@input-checking.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][91] -> [DMESG-WARN][92] ([i915#180])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-apl6/igt@gem_workarounds@suspend-resume.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-apl2/igt@gem_workarounds@suspend-resume.html

  * igt@gen3_render_tiledy_blits:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([fdo#109289]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb3/igt@gen3_render_tiledy_blits.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109289]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([i915#2856])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb7/igt@gen9_exec_parse@secure-batches.html
    - shard-tglb:         NOTRUN -> [SKIP][96] ([i915#2527] / [i915#2856])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb3/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][97] -> [FAIL][98] ([i915#454])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-apl:          NOTRUN -> [SKIP][99] ([fdo#109271]) +78 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-apl6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#5286])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([i915#5286])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#110725] / [fdo#111614])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb8/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-glk:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#3777])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#3777]) +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-skl5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#110723])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
    - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#111615])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#3886]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk5/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][108] ([fdo#111615] / [i915#3689])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#3886]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-apl7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109278] / [i915#3886]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#3886]) +7 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-skl2/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109278]) +12 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-glk:          NOTRUN -> [SKIP][114] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk5/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@hdmi-hpd:
    - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-skl5/igt@kms_chamelium@hdmi-hpd.html

  * igt@kms_chamelium@vga-frame-dump:
    - shard-apl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-apl7/igt@kms_chamelium@vga-frame-dump.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-kbl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [fdo#111827])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][118] ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_color_chamelium@pipe-d-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][119] ([fdo#109278] / [fdo#109279]) +3 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
    - shard-kbl:          NOTRUN -> [SKIP][120] ([fdo#109271]) +32 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][121] ([fdo#109279] / [i915#3359]) +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-max-size-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][122] ([i915#3359])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-max-size-offscreen.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb7/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
    - shard-tglb:         NOTRUN -> [SKIP][124] ([fdo#109274] / [fdo#111825]) +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb3/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
    - shard-iclb:         [PASS][125] -> [FAIL][126] ([i915#5072])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-iclb2/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([i915#5287])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb8888-render-4tiled.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-iclb:         NOTRUN -> [SKIP][128] ([fdo#109274]) +5 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb8/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][129] -> [FAIL][130] ([i915#2122]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][131] -> [SKIP][132] ([i915#3701])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109280]) +14 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([fdo#109280] / [fdo#111825]) +6 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-iclb:         NOTRUN -> [SKIP][135] ([i915#1839])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-glk:          NOTRUN -> [FAIL][136] ([fdo#108145] / [i915#265])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk5/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][137] ([fdo#108145] / [i915#265])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][138] -> [FAIL][139] ([fdo#108145] / [i915#265])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][140] ([fdo#108145] / [i915#265]) +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-skl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#658])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-skl2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         NOTRUN -> [SKIP][142] ([fdo#109441])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-glk:          NOTRUN -> [SKIP][143] ([fdo#109271]) +40 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk5/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][144] -> [SKIP][145] ([fdo#109441]) +2 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [i915#2437])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-skl4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-b-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][147] ([i915#2530]) +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-tglb6/igt@nouveau_crc@pipe-b-ctx-flip-detection.html

  * igt@nouveau_crc@pipe-d-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][148] ([fdo#109278] / [i915#2530])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@nouveau_crc@pipe-d-source-rg.html

  * igt@prime_nv_api@nv_i915_import_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][149] ([fdo#109291])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb8/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-iclb:         NOTRUN -> [SKIP][150] ([fdo#109295])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@prime_vgem@fence-flip-hang.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-glk:          NOTRUN -> [DMESG-FAIL][151] ([i915#5098])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk5/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#2994]) +3 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-skl2/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@fair-0:
    - shard-apl:          NOTRUN -> [SKIP][153] ([fdo#109271] / [i915#2994]) +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-apl7/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@sema-50:
    - shard-iclb:         NOTRUN -> [SKIP][154] ([i915#2994]) +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb8/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][155] ([i915#2410]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-ti

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/index.html

--===============3898322424032688866==
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
<tr><td><b>Series:</b></td><td>drm/i915/uapi: Add DRM_I915_QUERY_GEOMETRY_S=
UBSLICES</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101219/">https://patchwork.freedesktop.org/series/101219/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22527/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22527/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11346_full -&gt; Patchwork_22527_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22527_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22527_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22527_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22527/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linea=
r.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-skl8/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-=
pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22527/shard-skl5/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms=
-edp-1-pipe-a.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-dp-1-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-kbl1/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-=
dp-1-pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22527/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@bpc-swi=
tch-suspend-dp-1-pipe-a.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-tglb8/igt@kms_plane_lowres@pipe-a-tilin=
g-4.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_balancer@persistence:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-rkl-5/igt@gem_exec_balancer@persistence.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/s=
hard-rkl-5/igt@gem_exec_balancer@persistence.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_mmap_write_crc@main:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-dg1-13/igt@kms_mmap_write_crc@main.html=
">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-4:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-dg1-12/igt@kms_plane_lowres@pipe-d-tili=
ng-4.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22527_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11346/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk3/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk3/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11346/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11346/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11346/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk4/boot.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11346/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11346/shard-glk8/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346=
/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11346/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1346/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11346/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/shar=
d-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11346/shard-glk3/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22527/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22527/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22527/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22527/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22527/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22527/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22527/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22527/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-glk4/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-ic=
lb7/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-kbl3/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@gem_eio@unwedge-stress.html">=
TIMEOUT</a> ([i915#2481] / [i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-tglb6/igt@gem_exec_balancer@parallel-or=
dering.html">DMESG-FAIL</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-tglb1/igt@gem_exec_capture@pi@vcs0.html=
">INCOMPLETE</a> ([i915#3371])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-skl2/igt@gem_exec_fair@basic-flow@rcs0.=
html">SKIP</a> ([fdo#109271]) +113 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2527/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2527/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_225=
27/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/s=
hard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22527/shard-skl2/igt@gem_lmem_swapping@parallel-rand=
om.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22527/shard-iclb8/igt@gem_lmem_swapping@parallel-ran=
dom.html">SKIP</a> ([i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-glk5/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-apl7/igt@gem_lmem_swapping@verify.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-skl4/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-tglb6/igt@gem_pxp@create-regular-contex=
t-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@gem_pxp@verify-pxp-execution-=
after-suspend-resume.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb7/igt@gem_render_copy@yf-tiled-mc-c=
cs-to-vebox-yf-tiled.html">SKIP</a> ([i915#768]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22527/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</=
a> ([i915#4171])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@gem_softpin@evict-snoop.html"=
>SKIP</a> ([fdo#109312])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22527/shard-tglb3/igt@gem_userptr_blits@create-destr=
oy-unsync.html">SKIP</a> ([i915#3297])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22527/shard-iclb7/igt@gem_userptr_blits@create-destr=
oy-unsync.html">SKIP</a> ([i915#3297])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-skl2/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-apl6/igt@gem_workarounds@suspend-resume.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/s=
hard-apl2/igt@gem_workarounds@suspend-resume.html">DMESG-WARN</a> ([i915#18=
0])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-tglb3/igt@gen3_render_tiledy_blits.html=
">SKIP</a> ([fdo#109289]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@gen7_exec_parse@oacontrol-tra=
cking.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22527/shard-iclb7/igt@gen9_exec_parse@secure-batches=
.html">SKIP</a> ([i915#2856])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22527/shard-tglb3/igt@gen9_exec_parse@secure-batches=
.html">SKIP</a> ([i915#2527] / [i915#2856])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/shard-iclb3=
/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-apl6/igt@i915_pm_rpm@modeset-pc8-reside=
ncy-stress.html">SKIP</a> ([fdo#109271]) +78 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-tglb3/igt@kms_big_fb@4-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_big_fb@4-tiled-max-hw-str=
ide-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb8/igt@kms_big_fb@x-tiled-8bpp-rotat=
e-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-glk5/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-skl5/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3=
777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22527/shard-iclb7/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#110723])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22527/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#111615])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-glk5/igt@kms_ccs@pipe-a-bad-aux-stride-=
y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary-ro=
tation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-apl7/igt@kms_ccs@pipe-b-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_ccs@pipe-c-crc-sprite-pla=
nes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886=
]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-skl2/igt@kms_ccs@pipe-c-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_ccs@pipe-d-random-ccs-dat=
a-yf_tiled_ccs.html">SKIP</a> ([fdo#109278]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_chamelium@dp-frame-dump.h=
tml">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-glk5/igt@kms_chamelium@dp-mode-timings.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-skl5/igt@kms_chamelium@hdmi-hpd.html">S=
KIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-frame-dump:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-apl7/igt@kms_chamelium@vga-frame-dump.h=
tml">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_color_chamelium@pipe-d-ct=
m-negative.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +3 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-3=
2x10-random.html">SKIP</a> ([fdo#109271]) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-rapid-movement.html">SKIP</a> ([fdo#109279] / [i915#3359]) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-max-size-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-=
max-size-offscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22527/shard-iclb7/igt@kms_cursor_legacy@2x-long-nonb=
locking-modeset-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278=
]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22527/shard-tglb3/igt@kms_cursor_legacy@2x-long-nonb=
locking-modeset-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#111825=
]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-legacy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-iclb2/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22527/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html">FAIL=
</a> ([i915#5072])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-render-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb=
8888-render-4tiled.html">SKIP</a> ([i915#5287])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb8/igt@kms_flip@2x-nonexisting-fb.ht=
ml">SKIP</a> ([fdo#109274]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@b-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22527/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible=
@b-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22527/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109280]) +14 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:</=
p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-tglb6/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> ([fdo#109280] / [fdo#11=
1825]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_multipipe_modeset@basic-m=
ax-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-glk5/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22527/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-skl2/igt@kms_psr2_sf@overlay-plane-upda=
te-continuous-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html"=
>SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-glk5/igt@kms_psr@psr2_primary_mmap_gtt.=
html">SKIP</a> ([fdo#109271]) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11346/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22527/sh=
ard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109441]) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-skl4/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-tglb6/igt@nouveau_crc@pipe-b-ctx-flip-d=
etection.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@nouveau_crc@pipe-d-source-rg.=
html">SKIP</a> ([fdo#109278] / [i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_i915_import_twice_check_flink_name:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb8/igt@prime_nv_api@nv_i915_import_t=
wice_check_flink_name.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb3/igt@prime_vgem@fence-flip-hang.ht=
ml">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-glk5/igt@syncobj_timeline@transfer-time=
line-point.html">DMESG-FAIL</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-skl2/igt@sysfs_clients@busy.html">SKIP<=
/a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-apl7/igt@sysfs_clients@fair-0.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22527/shard-iclb8/igt@sysfs_clients@sema-50.html">S=
KIP</a> ([i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_ctx_persistence@many-contexts:<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti"=
>FAIL</a> ([i915#2410]) -&gt; [PASS][156]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3898322424032688866==--
