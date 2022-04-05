Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6024F3D81
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 22:07:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6A1510EE6B;
	Tue,  5 Apr 2022 20:07:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7F0510EE6B;
 Tue,  5 Apr 2022 20:07:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C18D8A01BB;
 Tue,  5 Apr 2022 20:07:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6053469957254227416=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 05 Apr 2022 20:07:42 -0000
Message-ID: <164918926278.24159.13633117000410170454@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405105944.336896-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220405105944.336896-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_on_suspend_/_resume_time_with_VT-d_enabled?=
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

--===============6053469957254227416==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Improve on suspend / resume time with VT-d enabled
URL   : https://patchwork.freedesktop.org/series/102187/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11456_full -> Patchwork_22781_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 12)
------------------------------

  Missing    (1): shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22781_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - {shard-rkl}:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-rkl-1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-rkl-5/igt@i915_suspend@fence-restore-tiled2untiled.html

  
Known issues
------------

  Here are the changes found in Patchwork_22781_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [FAIL][15], [FAIL][16], [FAIL][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21]) ([i915#5032]) -> ([PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl10/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl10/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl9/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl9/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl9/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl5/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl10/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#5327])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][45] ([i915#4991])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl10/igt@gem_create@create-massive.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][46] ([i915#4991])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-apl8/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109314])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][50] -> [FAIL][51] ([i915#232])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-tglb7/igt@gem_eio@kms.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-tglb5/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([i915#4525])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-skl:          [PASS][53] -> [INCOMPLETE][54] ([i915#4547])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl7/igt@gem_exec_capture@pi@bcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl1/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          NOTRUN -> [FAIL][55] ([i915#2842])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][56] ([i915#2842])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][59] -> [FAIL][60] ([i915#2842]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109283])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb6/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][62] -> [SKIP][63] ([i915#2190])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-tglb2/igt@gem_huc_copy@huc-copy.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#4613]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#4613]) +4 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl7/igt@gem_lmem_swapping@heavy-verify-random.html
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-apl1/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#4270]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_render_copy@yf-tiled-to-vebox-linear:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([i915#768]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@gem_render_copy@yf-tiled-to-vebox-linear.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#3297])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109289]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#2856]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][72] ([i915#454])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [WARN][73] ([i915#2684])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][74] ([i915#1886])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl3/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#5286])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#110725] / [fdo#111614]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][77] ([i915#3743]) +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#110723])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3777]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3777]) +7 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3886]) +5 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-apl1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109278] / [i915#3886]) +4 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +22 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#111615] / [i915#3689])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb6/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_color@pipe-d-degamma:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109278] / [i915#1149]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_color@pipe-d-degamma.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +26 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl10/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#109284] / [fdo#111827])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-tglb2/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-apl1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-negative.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109278] / [fdo#109279])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#3359])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109278]) +25 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109274] / [fdo#109278]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][95] -> [FAIL][96] ([i915#2346])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][97] ([i915#2346] / [i915#533])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-glk:          NOTRUN -> [SKIP][98] ([fdo#109271]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-glk9/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-iclb:         NOTRUN -> [SKIP][99] ([i915#3528])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][100] ([i915#5287]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-4tiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][101] -> [FAIL][102] ([i915#79])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109274]) +3 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([i915#3701])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([i915#2587])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109280]) +15 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271]) +74 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-apl8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [FAIL][109] ([i915#1188])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl9/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#533]) +3 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][111] ([fdo#108145] / [i915#265]) +4 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
    - shard-apl:          NOTRUN -> [FAIL][112] ([fdo#108145] / [i915#265])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][113] ([i915#265]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-b-tiling-y:
    - shard-iclb:         NOTRUN -> [SKIP][114] ([i915#3536])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@kms_plane_lowres@pipe-b-tiling-y.html

  * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format:
    - shard-iclb:         [PASS][115] -> [SKIP][116] ([i915#5176]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-iclb6/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html

  * igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format:
    - shard-iclb:         [PASS][117] -> [INCOMPLETE][118] ([i915#5150] / [i915#5395])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-iclb8/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#658]) +4 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [PASS][120] -> [SKIP][121] ([fdo#109642] / [fdo#111068] / [i915#658])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][122] -> [SKIP][123] ([fdo#109441])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-iclb2/igt@kms_psr@psr2_basic.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb4/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         NOTRUN -> [SKIP][124] ([fdo#109441])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271]) +386 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl8/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:
    - shard-iclb:         NOTRUN -> [SKIP][126] ([i915#5030]) +2 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][127] ([IGT#2])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-apl1/igt@kms_sysfs_edid_timing.html
    - shard-skl:          NOTRUN -> [FAIL][128] ([IGT#2])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl7/igt@kms_sysfs_edid_timing.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-iclb:         NOTRUN -> [SKIP][129] ([fdo#109309])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [PASS][130] -> [INCOMPLETE][131] ([i915#2828])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vrr@flip-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][132] ([fdo#109502])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@kms_vrr@flip-dpms.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#2437]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl10/igt@kms_writeback@writeback-pixel-formats.html
    - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#2437])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-apl8/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-b-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][135] ([i915#2530]) +2 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb6/igt@nouveau_crc@pipe-b-source-rg.html

  * igt@prime_nv_pcopy@test3_5:
    - shard-iclb:         NOTRUN -> [SKIP][136] ([fdo#109291])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@prime_nv_pcopy@test3_5.html

  * igt@prime_vgem@basic-userptr:
    - shard-iclb:         NOTRUN -> [SKIP][137] ([i915#3301])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@prime_vgem@basic-userptr.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][138] ([i915#5098])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl4/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#2994])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-apl1/igt@sysfs_clients@create.html
    - shard-skl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#2994]) +3 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl7/igt@sysfs_clients@create.html

  * igt@sysfs_clients@split-10:
    - shard-iclb:         NOTRUN -> [SKIP][141] ([i915#2994])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@sysfs_clients@split-10.html

  * igt@sysfs_timeslice_duration@timeout@rcs0:
    - shard-skl:          [PASS][142] -> [FAIL][143] ([i915#3259])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-skl1/igt@sysfs_timeslice_duration@timeout@rcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl3/igt@sysfs_timeslice_duration@timeout@rcs0.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-nonblock:
    - {shard-rkl}:        [SKIP][144] ([i915#4098]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-rkl-1/igt@drm_read@short-buffer-nonblock.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-rkl-6/igt@drm_read@short-buffer-nonblock.html

  * igt@fbdev@eof:
    - {shard-rkl}:        ([SKIP][146], [SKIP][147]) ([i915#2582]) -> [PASS][148]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-rkl-1/igt@fbdev@eof.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-rkl-4/igt@fbdev@eof.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-rkl-6/igt@fbdev@eof.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-iclb:         [TIMEOUT][149] ([i915#3070]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-iclb5/igt@gem_eio@in-flight-contexts-1us.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb3/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_fair@basic-deadline:
    - {shard-rkl}:        [FAIL][151] ([i915#2846]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [FAIL][153] ([i915#2842]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/s

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/index.html

--===============6053469957254227416==
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
<tr><td><b>Series:</b></td><td>drm/i915: Improve on suspend / resume time w=
ith VT-d enabled</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/102187/">https://patchwork.freedesktop.org/series/102187/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22781/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11456_full -&gt; Patchwork_22781_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 12)</h2>
<p>Missing    (1): shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22781_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_suspend@fence-restore-tiled2untiled:<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-rkl-1/igt@i915_suspend@fence-restore-tiled2untiled.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22781/shard-rkl-5/igt@i915_suspend@fence-restore-tiled2untiled.html">DM=
ESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22781_full that come from known =
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
rk_22781/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22781/shard-skl9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl9/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22781/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22781/shard-skl8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl8/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22781/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22781/shard-skl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl6/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22781/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22781/shard-skl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl5/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22781/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22781/shard-skl4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl4/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22781/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22781/shard-skl3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl2/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22781/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22781/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-skl10/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22781/shard-skl10/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@gem_ccs@ctrl-surf-copy-new-ct=
x.html">SKIP</a> ([i915#5327])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/shard-skl10/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/shard-apl8/igt@gem_create@create-massive.html"=
>DMESG-WARN</a> ([i915#4991])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22781/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WA=
RN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@gem_ctx_param@set-priority-no=
t-supported.html">SKIP</a> ([fdo#109314])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-tglb7/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-tglb5/igt@gem=
_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@gem_exec_balancer@parallel-or=
dering.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-skl7/igt@gem_exec_capture@pi@bcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-s=
kl1/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.=
html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
781/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_227=
81/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#=
2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb6/igt@gem_exec_params@rsvd2-dirt.ht=
ml">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-tgl=
b7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@gem_lmem_swapping@heavy-rando=
m.html">SKIP</a> ([i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/shard-skl7/igt@gem_lmem_swapping@heavy-verify-=
random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +4 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/shard-apl1/igt@gem_lmem_swapping@heavy-verify-=
random.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@gem_pxp@create-protected-buff=
er.html">SKIP</a> ([i915#4270]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-linear:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@gem_render_copy@yf-tiled-to-v=
ebox-linear.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@gem_userptr_blits@unsync-over=
lap.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@gen7_exec_parse@chained-batch=
.html">SKIP</a> ([fdo#109289]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@gen9_exec_parse@valid-registe=
rs.html">SKIP</a> ([i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-skl8/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idl=
e.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-skl3/igt@i915_selftest@live@gt_pm.html"=
>DMESG-FAIL</a> ([i915#1886])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@kms_big_fb@4-tiled-32bpp-rota=
te-0.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_big_fb@linear-8bpp-rotate=
-90.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743]) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-0.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-skl3/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#37=
77]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-apl1/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_ccs@pipe-a-random-ccs-dat=
a-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +4 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +22 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-ro=
tation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb6/igt@kms_chamelium@dp-frame-dump.h=
tml">SKIP</a> ([fdo#109284] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_color@pipe-d-degamma.html=
">SKIP</a> ([fdo#109278] / [i915#1149]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-skl10/igt@kms_color_chamelium@pipe-b-ct=
m-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-tglb2/igt@kms_color_chamelium@pipe-b-ga=
mma.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-apl1/igt@kms_color_chamelium@pipe-d-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@kms_color_chamelium@pipe-d-ct=
m-negative.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@kms_cursor_crc@pipe-b-cursor-=
512x170-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-=
max-size-onscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_cursor_edge_walk@pipe-d-2=
56x256-left-edge.html">SKIP</a> ([fdo#109278]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@kms_cursor_legacy@2x-cursor-v=
s-flip-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22781/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-skl3/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/shard-glk9/igt@kms_dp_tiled_display@basic-test=
-pattern-with-chamelium.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/shard-iclb7/igt@kms_dp_tiled_display@basic-tes=
t-pattern-with-chamelium.html">SKIP</a> ([i915#3528])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb=
8888-mmap-wc-4tiled.html">SKIP</a> ([i915#5287]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22781/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ac-=
hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_flip@2x-flip-vs-panning-i=
nterruptible.html">SKIP</a> ([fdo#109274]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bp=
p-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bp=
p-ytile-to-32bpp-ytilercccs-upscaling.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109280]) +15 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280] / [fdo#111=
825]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-apl8/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +74 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-skl9/igt@kms_hdr@bpc-switch@bpc-switch-=
edp-1-pipe-a.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-skl9/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-al=
pha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +4 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-al=
pha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-y:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@kms_plane_lowres@pipe-b-tilin=
g-y.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-=
1-downscale-with-pixel-format:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-iclb6/igt@kms_plane_scaling@downscale-with-pixel-format=
-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-ic=
lb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp=
-1-downscale-with-pixel-format.html">SKIP</a> ([i915#5176]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-=
1-scaler-with-pixel-format:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-iclb8/igt@kms_plane_scaling@scaler-with-pixel-format-un=
ity-scaling@pipe-b-edp-1-scaler-with-pixel-format.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb2=
/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-=
scaler-with-pixel-format.html">INCOMPLETE</a> ([i915#5150] / [i915#5395])</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-skl6/igt@kms_psr2_sf@primary-plane-upda=
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
1/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109=
642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22781/shard-iclb4/=
igt@kms_psr@psr2_basic.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@kms_psr@psr2_cursor_render.ht=
ml">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-skl8/igt@kms_scaling_modes@scaling-mode=
-none@edp-1-pipe-a.html">SKIP</a> ([fdo#109271]) +386 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@kms_scaling_modes@scaling-mod=
e-none@edp-1-pipe-c.html">SKIP</a> ([i915#5030]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/shard-apl1/igt@kms_sysfs_edid_timing.html">FAI=
L</a> ([IGT#2])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/shard-skl7/igt@kms_sysfs_edid_timing.html">FAI=
L</a> ([IGT#2])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@kms_tv_load_detect@load-detec=
t.html">SKIP</a> ([fdo#109309])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22781/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">IN=
COMPLETE</a> ([i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb7/igt@kms_vrr@flip-dpms.html">SKIP<=
/a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/shard-skl10/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/shard-apl8/igt@kms_writeback@writeback-pixel-f=
ormats.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb6/igt@nouveau_crc@pipe-b-source-rg.=
html">SKIP</a> ([i915#2530]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@prime_nv_pcopy@test3_5.html">=
SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb8/igt@prime_vgem@basic-userptr.html=
">SKIP</a> ([i915#3301])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-skl4/igt@syncobj_timeline@transfer-time=
line-point.html">DMESG-FAIL</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/shard-apl1/igt@sysfs_clients@create.html">SKIP=
</a> ([fdo#109271] / [i915#2994])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22781/shard-skl7/igt@sysfs_clients@create.html">SKIP=
</a> ([fdo#109271] / [i915#2994]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22781/shard-iclb2/igt@sysfs_clients@split-10.html">=
SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-skl1/igt@sysfs_timeslice_duration@timeout@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22781/shard-skl3/igt@sysfs_timeslice_duration@timeout@rcs0.html">FAIL</a> (=
[i915#3259])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-nonblock:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-rkl-1/igt@drm_read@short-buffer-nonblock.html">SKIP</a>=
 ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22781/shard-rkl-6/igt@drm_read@short-buffer-nonblock.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11456/shard-rkl-1/igt@fbdev@eof.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11456/shard-rkl-4/igt@fbdev@eof.ht=
ml">SKIP</a>) ([i915#2582]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22781/shard-rkl-6/igt@fbdev@eof.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-iclb5/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT<=
/a> ([i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22781/shard-iclb3/igt@gem_eio@in-flight-contexts-1us.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (=
[i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22781/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11456/s">FAIL</a> ([i915#2842]) -&gt; [PASS][154]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6053469957254227416==--
