Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A60787EB1FB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 15:19:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A219910E0BE;
	Tue, 14 Nov 2023 14:19:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4834A10E44B;
 Tue, 14 Nov 2023 14:19:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4005BA47E9;
 Tue, 14 Nov 2023 14:19:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1357962046442253448=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bagas Sanjaya" <bagasdotme@gmail.com>
Date: Tue, 14 Nov 2023 14:19:43 -0000
Message-ID: <169997158324.29254.7697168597848662330@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231114081033.27343-1-bagasdotme@gmail.com>
In-Reply-To: <20231114081033.27343-1-bagasdotme@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/dp=5Fmst=3A_Separate_=40failing=5Fport_list_in_drm=5Fdp=5Fmst?=
 =?utf-8?b?X2F0b21pY19jaGVja19tZ3IoKSBjb21tZW50?=
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

--===============1357962046442253448==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp_mst: Separate @failing_port list in drm_dp_mst_atomic_check_mgr() comment
URL   : https://patchwork.freedesktop.org/series/126377/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13871_full -> Patchwork_126377v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126377v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126377v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126377v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@drm_read@short-buffer-wakeup:
    - shard-apl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-apl2/igt@drm_read@short-buffer-wakeup.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-apl3/igt@drm_read@short-buffer-wakeup.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg2:          [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-dg2-6/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@i915_selftest@live@workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic}:
    - shard-rkl:          [PASS][5] -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic.html

  * {igt@drm_mm@drm_mm@drm_test_mm_highest}:
    - shard-rkl:          NOTRUN -> [TIMEOUT][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@drm_mm@drm_mm@drm_test_mm_highest.html

  * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid}:
    - shard-snb:          [PASS][8] -> [TIMEOUT][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb6/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb4/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid.html
    - shard-tglu:         [PASS][10] -> [TIMEOUT][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-tglu-2/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-3/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid.html

  * {igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_single_damage}:
    - shard-mtlp:         [PASS][12] -> [TIMEOUT][13] +1 other test timeout
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-mtlp-8/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_single_damage.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-6/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_single_damage.html

  * {igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode}:
    - shard-apl:          [PASS][14] -> [TIMEOUT][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-apl1/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-apl2/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html

  * {igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:
    - shard-glk:          [PASS][16] -> [TIMEOUT][17] +1 other test timeout
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-glk2/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-glk2/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html

  
Known issues
------------

  Here are the changes found in Patchwork_126377v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-snb:          ([PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42]) -> ([PASS][43], [FAIL][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67]) ([i915#8293])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb6/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb5/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb5/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb4/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb1/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb1/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb6/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb6/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb6/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb6/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb5/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb5/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb5/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb5/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb5/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb4/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb4/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb4/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb4/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb2/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb2/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb2/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb2/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb2/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#8411])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          [PASS][69] -> [SKIP][70] ([i915#8411])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@debugfs_test@basic-hwmon:
    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#9318])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@debugfs_test@basic-hwmon.html

  * igt@drm_fdinfo@busy-check-all@ccs0:
    - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#8414]) +12 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@drm_fdinfo@busy-check-all@ccs0.html

  * igt@drm_fdinfo@busy-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#8414]) +12 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@drm_fdinfo@busy-check-all@vecs1.html

  * igt@fbdev@info:
    - shard-rkl:          [PASS][74] -> [SKIP][75] ([i915#1849] / [i915#2582])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@fbdev@info.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@fbdev@info.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#7697])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@gem_basic@multigpu-create-close.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#3936])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_busy@semaphore.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#6335])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([fdo#109314])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@engines-hang:
    - shard-snb:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#1099]) +2 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb6/igt@gem_ctx_persistence@engines-hang.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#8555]) +2 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#8555])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_eio@kms:
    - shard-mtlp:         [PASS][83] -> [ABORT][84] ([i915#7892] / [i915#9414])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-mtlp-5/igt@gem_eio@kms.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-4/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][85] ([i915#8898])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb4/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4771])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#8555])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_capture@capture@vcs0-smem:
    - shard-mtlp:         [PASS][88] -> [DMESG-WARN][89] ([i915#5591])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-mtlp-8/igt@gem_exec_capture@capture@vcs0-smem.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-4/igt@gem_exec_capture@capture@vcs0-smem.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-glk:          NOTRUN -> [FAIL][90] ([i915#9606])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-glk6/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-pace:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#3539])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][92] ([i915#2842])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
    - shard-tglu:         [PASS][93] -> [FAIL][94] ([i915#2842])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-tglu-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-10/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [PASS][95] -> [FAIL][96] ([i915#2842]) +1 other test fail
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fence@submit:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#4812])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_exec_fence@submit.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#3539] / [i915#4852]) +4 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#5107])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([fdo#112283])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@gem_exec_params@secure-non-master.html
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([fdo#112283])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_params@secure-non-root:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([fdo#112283])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-cpu-noreloc:
    - shard-rkl:          [PASS][103] -> [SKIP][104] ([i915#3281]) +6 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-noreloc.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#3281]) +2 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-read-active.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#3281]) +3 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4537] / [i915#4812]) +2 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          [PASS][108] -> [SKIP][109] ([i915#7276])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#4860])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
    - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#4860])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#4613]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-glk:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#4613]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-glk6/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#4613]) +1 other test skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#4613])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [PASS][116] -> [TIMEOUT][117] ([i915#5493])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-apl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#4613]) +1 other test skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-apl7/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_mmap_gtt@basic-read-write-distinct:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#4077]) +11 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@gem_mmap_gtt@basic-read-write-distinct.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#4083])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@gem_mmap_wc@bad-object.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#4083]) +3 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#4083]) +5 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#3282]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          [PASS][124] -> [SKIP][125] ([i915#3282]) +5 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#3282])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#4270])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#4270]) +3 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#4270])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#4270])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_readwrite@read-write:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#3282]) +2 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_readwrite@read-write.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#768])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#8428]) +4 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#4885])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_softpin@evict-snoop.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#4079]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_tiled_pread_pwrite.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#3297]) +4 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@gem_userptr_blits@coherency-unsync.html
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#3297])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#3297])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#3323])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3281]) +13 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#3297] / [i915#4958])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-dg2:          NOTRUN -> [FAIL][142] ([i915#3318])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@gem_userptr_blits@vma-merge.html
    - shard-mtlp:         NOTRUN -> [FAIL][143] ([i915#3318])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@gem_userptr_blits@vma-merge.html

  * igt@gen3_render_linear_blits:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([fdo#109289]) +2 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@gen3_render_linear_blits.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([fdo#109289])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([fdo#109289]) +2 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-rkl:          [PASS][147] -> [SKIP][148] ([i915#2527]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@gen9_exec_parse@allowed-single.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#2527])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#2856]) +2 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#2527] / [i915#2856])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#2856]) +3 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@load:
    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#6227])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [PASS][154] -> [ABORT][155] ([i915#8489] / [i915#8668])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - shard-dg1:          [PASS][156] -> [FAIL][157] ([i915#3591])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([fdo#109293] / [fdo#109506])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#6621])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@i915_pm_rps@basic-api.html
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#6621])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#8925])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-6/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_pm_rps@thresholds-idle-park@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#3555] / [i915#8925])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-6/igt@i915_pm_rps@thresholds-idle-park@gt1.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#8925])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#5723])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@mock@memory_region:
    - shard-apl:          NOTRUN -> [DMESG-WARN][165] ([i915#9311])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-apl7/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][166] -> [FAIL][167] ([fdo#103375])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#4215] / [i915#5190])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#4212])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][170] ([i915#8247]) +3 other tests fail
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-14/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#3555])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#9531])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#1769] / [i915#3555])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#5286]) +3 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([fdo#111614]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#5190]) +15 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [PASS][177] -> [FAIL][178] ([i915#3743])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [FAIL][179] ([i915#3743])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          [PASS][180] -> [SKIP][181] ([i915#1845] / [i915#4098]) +7 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([fdo#110723]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([fdo#111615]) +6 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#4538] / [i915#5190]) +7 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][185] ([fdo#111615]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#4087] / [i915#7213]) +3 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#7828]) +3 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([fdo#111827])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-dg2:          NOTRUN -> [SKIP][189] ([fdo#111827]) +2 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_chamelium_color@ctm-green-to-red.html
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([fdo#111827])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#7828]) +4 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#7828]) +2 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#7828]) +10 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_color@ctm-signed@pipe-a:
    - shard-rkl:          [PASS][194] -> [SKIP][195] ([i915#4098]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@kms_color@ctm-signed@pipe-a.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_color@ctm-signed@pipe-a.html

  * igt@kms_color@degamma@pipe-a:
    - shard-mtlp:         NOTRUN -> [FAIL][196] ([i915#9257]) +3 other tests fail
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_color@degamma@pipe-a.html

  * igt@kms_content_protection@atomic@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][197] ([i915#7173]) +1 other test timeout
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html

  * igt@kms_content_protection@lic:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#7118])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#3555]) +6 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#3359])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#3359])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#3555] / [i915#8814])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-snb:          NOTRUN -> [SKIP][203] ([fdo#109271]) +128 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#3359])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([fdo#111767] / [fdo#111825])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#3546]) +4 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([fdo#109274] / [i915#5354]) +3 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][208] -> [FAIL][209] ([i915#2346]) +1 other test fail
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          NOTRUN -> [FAIL][210] ([i915#2346]) +1 other test fail
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#4103] / [i915#4213])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#8588])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_display_modes@mst-extended-mode-negative.html
    - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#8588])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#3804])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#4098]) +6 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_draw_crc@draw-method-mmap-gtt.html
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#8812])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#3555] / [i915#3840])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#3555] / [i915#3840])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#4881])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([fdo#111825]) +5 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#3637])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([fdo#109274] / [fdo#111767])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([fdo#111767] / [i915#3637])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][224] ([fdo#109274] / [i915#3637]) +1 other test skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([fdo#109274]) +6 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#3637] / [i915#4098]) +1 other test skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip@flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#8381])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#2587] / [i915#2672])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#2672] / [i915#3555])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#3555]) +6 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#2672])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#2672]) +3 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#2672]) +5 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][234] ([i915#3555] / [i915#8810])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-mtlp:         NOTRUN -> [SKIP][235] ([fdo#109285])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [PASS][236] -> [SKIP][237] ([i915#1849] / [i915#4098]) +6 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([fdo#111825] / [i915#1825]) +16 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][239] ([fdo#109280]) +8 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#5354]) +33 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#1825]) +15 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#8708]) +20 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#3023]) +10 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][244] ([i915#3458]) +1 other test skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#3458]) +18 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#8708]) +4 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][247] ([fdo#111825]) +1 other test skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
    - shard-apl:          NOTRUN -> [SKIP][248] ([fdo#109271]) +91 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#5460])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#3555] / [i915#8228])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1:
    - shard-mtlp:         [PASS][251] -> [ABORT][252] ([i915#9414])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-mtlp-6/igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-4/igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#3555] / [i915#8228])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#3555] / [i915#8228]) +3 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_hdr@static-toggle-suspend.html
    - shard-mtlp:         NOTRUN -> [SKIP][255] ([i915#3555] / [i915#8228])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#4816])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-mtlp:         NOTRUN -> [SKIP][257] ([fdo#109289])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][258] ([i915#4573]) +1 other test fail
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-apl7/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1.html

  * igt@kms_plane_lowres@tiling-x@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][259] ([i915#3582]) +3 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-2/igt@kms_plane_lowres@tiling-x@pipe-c-edp-1.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#1845] / [i915#4098]) +14 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#6953])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_plane_scaling@intel-max-src-size.html
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#6953] / [i915#8152])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#3555] / [i915#4098] / [i915#8152])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][264] ([i915#5235]) +5 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#5235]) +5 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][266] ([i915#5235]) +11 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][267] ([i915#3555] / [i915#5235]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#5235]) +15 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][269] ([i915#5235]) +3 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][270] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#6524] / [i915#6805]) +1 other test skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.html
    - shard-tglu:         NOTRUN -> [SKIP][272] ([i915#6524])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#658])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-glk:          NOTRUN -> [SKIP][274] ([fdo#109271] / [i915#658]) +1 other test skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-glk3/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#658]) +3 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglu:         NOTRUN -> [SKIP][276] ([fdo#109642] / [fdo#111068] / [i915#658])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@cursor_mmap_cpu:
    - shard-tglu:         NOTRUN -> [SKIP][277] ([fdo#110189]) +5 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_psr@cursor_mmap_cpu.html

  * igt@kms_psr@primary_render:
    - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#1072]) +4 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_psr@primary_render.html

  * igt@kms_psr@psr2_primary_render:
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#1072]) +9 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_psr@psr2_primary_render.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-glk:          NOTRUN -> [SKIP][280] ([fdo#109271]) +70 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-glk6/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr@sprite_mmap_gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][281] ([i915#4077]) +8 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_psr@sprite_mmap_gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#5461] / [i915#658])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][283] ([i915#4235])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-rkl:          [PASS][284] -> [INCOMPLETE][285] ([i915#8875] / [i915#9569])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-4/igt@kms_rotation_crc@sprite-rotation-90.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#3555] / [i915#4098])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@basic@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][287] ([i915#5465]) +1 other test fail
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb2/igt@kms_setmode@basic@pipe-a-vga-1.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-rkl:          NOTRUN -> [SKIP][288] ([i915#3555] / [i915#4098])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-rkl:          NOTRUN -> [SKIP][289] ([i915#8623])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-rkl:          NOTRUN -> [SKIP][290] ([fdo#109309])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-tglu:         [PASS][291] -> [FAIL][292] ([i915#9196])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
    - shard-mtlp:         [PASS][293] -> [FAIL][294] ([i915#9196])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html

  * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1:
    - shard-apl:          [PASS][295] -> [INCOMPLETE][296] ([i915#9159])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-apl2/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1.html

  * igt@kms_vrr@flip-basic:
    - shard-tglu:         NOTRUN -> [SKIP][297] ([i915#3555]) +1 other test skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_vrr@flip-basic.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#2436])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config:
    - shard-mtlp:         NOTRUN -> [SKIP][299] ([i915#7387])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@perf@global-sseu-config.html

  * igt@perf@mi-rpc:
    - shard-dg2:          NOTRUN -> [SKIP][300] ([i915#2434])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@perf@mi-rpc.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          NOTRUN -> [FAIL][301] ([i915#4349]) +3 other tests fail
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#8850])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@faulting-read@gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][303] ([i915#8440])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@perf_pmu@faulting-read@gtt.html

  * igt@perf_pmu@module-unload:
    - shard-dg2:          NOTRUN -> [FAIL][304] ([i915#5793])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@perf_pmu@module-unload.html

  * igt@prime_udl:
    - shard-dg2:          NOTRUN -> [SKIP][305] ([fdo#109291])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-rkl:          [PASS][306] -> [SKIP][307] ([fdo#109295] / [i915#3708] / [i915#4098])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@prime_vgem@basic-fence-flip.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][308] ([i915#3291] / [i915#3708])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          [PASS][309] -> [SKIP][310] ([fdo#109295] / [i915#3291] / [i915#3708])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@prime_vgem@basic-read.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@prime_vgem@basic-read.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled:
    - shard-dg2:          NOTRUN -> [FAIL][311] ([i915#9583]) +1 other test fail
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled:
    - shard-tglu:         NOTRUN -> [FAIL][312] ([i915#9583])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:
    - shard-apl:          NOTRUN -> [FAIL][313] ([i915#9583]) +1 other test fail
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-apl7/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled:
    - shard-rkl:          NOTRUN -> [FAIL][314] ([i915#9583])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled.html
    - shard-snb:          NOTRUN -> [FAIL][315] ([i915#9583]) +2 other tests fail
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb6/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled.html
    - shard-mtlp:         NOTRUN -> [FAIL][316] ([i915#9583]) +1 other test fail
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-2/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled.html

  * igt@v3d/v3d_get_param@base-params:
    - shard-dg2:          NOTRUN -> [SKIP][317] ([i915#2575]) +12 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@v3d/v3d_get_param@base-params.html

  * igt@v3d/v3d_perfmon@create-two-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][318] ([fdo#109315]) +5 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@v3d/v3d_perfmon@create-two-perfmon.html

  * igt@v3d/v3d_perfmon@destroy-invalid-perfmon:
    - shard-tglu:         NOTRUN -> [SKIP][319] ([fdo#109315] / [i915#2575]) +2 other tests skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@v3d/v3d_perfmon@destroy-invalid-perfmon.html

  * igt@v3d/v3d_submit_cl@single-out-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][320] ([i915#2575]) +6 other tests skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-2/igt@v3d/v3d_submit_cl@single-out-sync.html

  * igt@v3d/v3d_wait_bo@unused-bo-1ns:
    - shard-dg1:          NOTRUN -> [SKIP][321] ([i915#2575])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@v3d/v3d_wait_bo@unused-bo-1ns.html

  * igt@vc4/vc4_purgeable_bo@free-purged-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][322] ([i915#7711]) +2 other tests skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@vc4/vc4_purgeable_bo@free-purged-bo.html

  * igt@vc4/vc4_purgeable_bo@mark-purgeable:
    - shard-dg1:          NOTRUN -> [SKIP][323] ([i915#7711]) +1 other test skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@vc4/vc4_purgeable_bo@mark-purgeable.html

  * igt@vc4/vc4_tiling@get-bad-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][324] ([i915#7711]) +8 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@vc4/vc4_tiling@get-bad-modifier.html

  * igt@vc4/vc4_tiling@set-get:
    - shard-rkl:          NOTRUN -> [SKIP][325] ([i915#7711]) +2 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@vc4/vc4_tiling@set-get.html

  * igt@vc4/vc4_wait_bo@unused-bo-0ns:
    - shard-tglu:         NOTRUN -> [SKIP][326] ([i915#2575]) +1 other test skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@vc4/vc4_wait_bo@unused-bo-0ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          [FAIL][327] ([i915#7742]) -> [PASS][328]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@drm_fdinfo@virtual-idle.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@drm_fdinfo@virtual-idle.html

  * {igt@drm_mm@drm_mm@drm_test_mm_lowest}:
    - shard-rkl:          [TIMEOUT][329] -> [PASS][330] +1 other test pass
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-4/igt@drm_mm@drm_mm@drm_test_mm_lowest.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@drm_mm@drm_mm@drm_test_mm_lowest.html

  * igt@fbdev@eof:
    - shard-mtlp:         [DMESG-WARN][331] ([i915#2017]) -> [PASS][332]
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-mtlp-2/igt@fbdev@eof.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-8/igt@fbdev@eof.html

  * igt@fbdev@unaligned-write:
    - shard-rkl:          [SKIP][333] ([i915#2582]) -> [PASS][334]
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@fbdev@unaligned-write.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@fbdev@unaligned-write.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          [SKIP][335] ([i915#3281]) -> [PASS][336] +6 other tests pass
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@gem_bad_reloc@negative-reloc-lut.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_eio@kms:
    - shard-dg2:          [FAIL][337] ([i915#5784]) -> [PASS][338]
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-dg2-7/igt@gem_eio@kms.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@gem_eio@kms.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [FAIL][339] ([i915#2842]) -> [PASS][340]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [ABORT][341] ([i915#7975] / [i915#8213]) -> [PASS][342]
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][343] ([i915#3282]) -> [PASS][344] +3 other tests pass
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          [SKIP][345] ([i915#2527]) -> [PASS][346] +1 other test pass
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@gen9_exec_parse@allowed-all.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_hangman@error-state-basic:
    - shard-mtlp:         [ABORT][347] ([i915#9414]) -> [PASS][348] +1 other test pass
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-mtlp-4/igt@i915_hangman@error-state-basic.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-2/igt@i915_hangman@error-state-basic.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-dg1:          [FAIL][349] ([i915#3591]) -> [PASS][350]
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * {igt@kms_ccs@pipe-a-bad-aux-stride-y-tiled-gen12-rc-ccs-cc}:
    - shard-rkl:          [SKIP][351] ([i915#4098]) -> [PASS][352] +6 other tests pass
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_ccs@pipe-a-bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_ccs@pipe-a-bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-rkl:          [SKIP][353] ([i915#1849] / [i915#4098]) -> [PASS][354] +12 other tests pass
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-4:
    - shard-dg1:          [INCOMPLETE][355] -> [PASS][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-dg1-14/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-4.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-4.html

  * {igt@kms_pm_rpm@dpms-non-lpsp}:
    - shard-rkl:          [SKIP][357] ([i915#9519]) -> [PASS][358]
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_pm_rpm@dpms-non-lpsp.html

  * {igt@kms_pm_rpm@modeset-non-lpsp-stress}:
    - shard-dg1:          [SKIP][359] ([i915#9519]) -> [PASS][360]
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-dg1-19/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_rotation_crc@cursor-rotation-180:
    - shard-dg1:          [DMESG-WARN][361] ([i915#1982]) -> [PASS][362]
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-dg1-19/igt@kms_rotation_crc@cursor-rotation-180.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-12/igt@kms_rotation_crc@cursor-rotation-180.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-rkl:          [SKIP][363] ([i915#1845] / [i915#4098]) -> [PASS][364] +15 other tests pass
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-90.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-rkl:          [INCOMPLETE][365] ([i915#8875] / [i915#9569]) -> [PASS][366]
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-1/igt@kms_rotation_crc@sprite-rotation-270.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_rotation_crc@sprite-rotation-270.html

  * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options}:
    - shard-apl:          [TIMEOUT][367] -> [PASS][368] +1 other test pass
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-apl2/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-apl1/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html

  * {igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_no_fb}:
    - shard-tglu:         [TIMEOUT][369] -> [PASS][370] +2 other tests pass
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-tglu-8/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_no_fb.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_no_fb.html

  * {igt@kms_selftest@drm_format@drm_test_format_block_height_invalid}:
    - shard-snb:          [TIMEOUT][371] -> [PASS][372] +2 other tests pass
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb1/igt@kms_selftest@drm_format@drm_test_format_block_height_invalid.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb7/igt@kms_selftest@drm_format@drm_test_format_block_height_invalid.html

  * {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
    - shard-mtlp:         [TIMEOUT][373] -> [PASS][374]
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-mtlp-4/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-1/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html

  * igt@perf@gen12-group-exclusive-stream-sample-oa:
    - shard-rkl:          [SKIP][375] ([fdo#109289]) -> [PASS][376]
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-sample-oa.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@perf@gen12-group-exclusive-stream-sample-oa.html

  
#### Warnings ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          [ABORT][377] ([i915#9618]) -> [INCOMPLETE][378] ([i915#9408])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg1-14/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][379] ([i915#7957]) -> [SKIP][380] ([i915#9323]) +1 other test skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@gem_ccs@suspend-resume.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@gem_ccs@suspend-resume.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-tglu:         [WARN][381] ([i915#2681]) -> [FAIL][382] ([i915#2681] / [i915#3591])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@kms_async_flips@crc@pipe-a-edp-1:
    - shard-mtlp:         [DMESG-FAIL][383] ([i915#8561]) -> [FAIL][384] ([i915#8247]) +1 other test fail
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-mtlp-8/igt@kms_async_flips@crc@pipe-a-edp-1.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_async_flips@crc@pipe-a-edp-1.html

  * igt@kms_async_flips@crc@pipe-d-edp-1:
    - shard-mtlp:         [FAIL][385] ([i915#8247]) -> [DMESG-FAIL][386] ([i915#8561]) +1 other test dmesg-fail
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-mtlp-8/igt@kms_async_flips@crc@pipe-d-edp-1.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_async_flips@crc@pipe-d-edp-1.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-rkl:          [SKIP][387] ([i915#5286]) -> [SKIP][388] ([i915#1845] / [i915#4098]) +2 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          [SKIP][389] ([i915#1845] / [i915#4098]) -> [SKIP][390] ([i915#5286]) +4 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][391] ([i915#1845] / [i915#4098]) -> [SKIP][392] ([fdo#111614] / [i915#3638]) +1 other test skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          [SKIP][393] ([i915#1845] / [i915#4098]) -> [SKIP][394] ([fdo#111615])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          [SKIP][395] ([fdo#110723]) -> [SKIP][396] ([i915#1845] / [i915#4098]) +3 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][397] ([i915#1845] / [i915#4098]) -> [SKIP][398] ([fdo#110723]) +2 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][399] ([i915#7118]) -> [SKIP][400] ([i915#7118] / [i915#7162])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-dg2-7/igt@kms_content_protection@type1.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          [SKIP][401] ([i915#1845] / [i915#4098]) -> [SKIP][402] ([i915#3359]) +1 other test skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          [SKIP][403] ([i915#3555]) -> [SKIP][404] ([i915#1845] / [i915#4098])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-rkl:          [SKIP][405] ([fdo#111825]) -> [SKIP][406] ([i915#1845] / [i915#4098])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          [SKIP][407] ([i915#1845] / [i915#4098]) -> [SKIP][408] ([i915#4103])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][409] ([i915#1845] / [i915#4098]) -> [SKIP][410] ([fdo#111825]) +1 other test skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-rkl:          [SKIP][411] ([i915#1845] / [i915#4098]) -> [SKIP][412] ([fdo#111767] / [fdo#111825])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-rkl:          [SKIP][413] ([i915#4103]) -> [SKIP][414] ([i915#1845] / [i915#4098])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          [SKIP][415] ([i915#4098]) -> [SKIP][416] ([i915#3555] / [i915#3840])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_dsc@dsc-basic.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          [SKIP][417] ([i915#1845] / [i915#4098]) -> [SKIP][418] ([i915#3555] / [i915#3840])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][419] ([fdo#109285]) -> [SKIP][420] ([fdo#109285] / [i915#4098])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][421] ([fdo#111825]) -> [SKIP][422] ([i915#1849] / [i915#4098])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][423] ([i915#1849] / [i915#4098]) -> [SKIP][424] ([fdo#111825] / [i915#1825]) +25 other tests skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-rkl:          [SKIP][425] ([fdo#111825] / [i915#1825]) -> [SKIP][426] ([i915#1849] / [i915#4098]) +15 other tests skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][427] ([i915#1849] / [i915#4098]) -> [SKIP][428] ([fdo#111825])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          [SKIP][429] ([i915#1849] / [i915#4098]) -> [SKIP][430] ([i915#3023]) +15 other tests skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          [SKIP][431] ([i915#1849] / [i915#4098]) -> [SKIP][432] ([i915#5439])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-rkl:          [SKIP][433] ([i915#3023]) -> [SKIP][434] ([i915#1849] / [i915#4098]) +11 other tests skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [SKIP][435] ([i915#1845] / [i915#4098]) -> [SKIP][436] ([i915#3555] / [i915#8228])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_hdr@static-toggle.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@kms_hdr@static-toggle.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][437] ([i915#1845] / [i915#4098]) -> [SKIP][438] ([i915#3555]) +4 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-rkl:          [SKIP][439] ([fdo#111825]) -> [SKIP][440] ([fdo#111825] / [i915#8152])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][441] ([i915#5289]) -> [SKIP][442] ([i915#1845] / [i915#4098])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          [SKIP][443] ([fdo#111615] / [i915#5289]) -> [SKIP][444] ([i915#1845] / [i915#4098])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          [SKIP][445] ([i915#1845] / [i915#4098]) -> [SKIP][446] ([fdo#111615] / [i915#5289])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://git

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/index.html

--===============1357962046442253448==
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
<tr><td><b>Series:</b></td><td>drm/dp_mst: Separate @failing_port list in d=
rm_dp_mst_atomic_check_mgr() comment</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/126377/">https://patchwork.freedesktop.org/series/126377/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126377v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13871_full -&gt; Patchwork_126377v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126377v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_126377v1_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
126377v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-wakeup:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-apl2/igt@drm_read@short-buffer-wakeup.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/=
shard-apl3/igt@drm_read@short-buffer-wakeup.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-dg2-6/igt@i915_selftest@live@workarounds.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377=
v1/shard-dg2-1/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_opti=
mistic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_126377v1/shard-rkl-1/igt@drm_buddy@drm_buddy@drm_test_buddy_=
alloc_optimistic.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>{igt@drm_mm@drm_mm@drm_test_mm_highest}:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@drm_mm@drm_mm@drm_test_mm_=
highest.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid}:</p>
<ul>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13871/shard-snb6/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdlin=
e_invalid.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_126377v1/shard-snb4/igt@kms_selftest@drm_cmdline_parser@d=
rm_test_cmdline_invalid.html">TIMEOUT</a></p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13871/shard-tglu-2/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdl=
ine_invalid.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126377v1/shard-tglu-3/igt@kms_selftest@drm_cmdline_pars=
er@drm_test_cmdline_invalid.html">TIMEOUT</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_single_damage}:=
</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-mtlp-8/igt@kms_selftest@drm_damage_helper@drm_test_dama=
ge_iter_single_damage.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-6/igt@kms_selftest@drm_da=
mage_helper@drm_test_damage_iter_single_damage.html">TIMEOUT</a> +1 other t=
est timeout</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_dec=
ode}:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-apl1/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst=
_sideband_msg_req_decode.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-apl2/igt@kms_selftest@drm_d=
p_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-glk2/igt@kms_selftest@drm_framebuffer@drm_test_framebuf=
fer_create.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_126377v1/shard-glk2/igt@kms_selftest@drm_framebuffer@drm=
_test_framebuffer_create.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126377v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13871/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13871/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13871/shard-snb6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/sha=
rd-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13871/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb5/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13871/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13871/shard-snb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871=
/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13871/shard-snb4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-sn=
b2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3871/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13871/shard-snb1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shard-snb1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13871/shar=
d-snb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13871/shard-snb1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
377v1/shard-snb1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126377v1/shard-snb7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126377v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/sh=
ard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126377v1/shard-snb6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6377v1/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126377v1/shard-snb5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126377v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/sh=
ard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126377v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6377v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126377v1/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126377v1/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/sh=
ard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126377v1/shard-snb2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-snb1/boot.html"=
>PASS</a>) ([i915#8293])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@api_intel_bb@blit-reloc-k=
eep-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126377v1/shard-rkl-2/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a=
> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@debugfs_test@basic-hwmon.=
html">SKIP</a> ([i915#9318])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@ccs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@drm_fdinfo@busy-check-all=
@ccs0.html">SKIP</a> ([i915#8414]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@drm_fdinfo@busy-check-all@=
vecs1.html">SKIP</a> ([i915#8414]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@fbdev@info.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@f=
bdev@info.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_busy@semaphore.html">S=
KIP</a> ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@gem_create@create-ext-cpu-=
access-big.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-snb6/igt@gem_ctx_persistence@engines=
-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1099">i915#1099</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_ctx_persistence@heartb=
eat-hang.html">SKIP</a> ([i915#8555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-mtlp-5/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-4/ig=
t@gem_eio@kms.html">ABORT</a> ([i915#7892] / [i915#9414])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-snb4/igt@gem_eio@unwedge-stress.html=
">FAIL</a> ([i915#8898])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@gem_exec_balancer@bonded-d=
ual.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@gem_exec_balancer@noheart=
beat.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@vcs0-smem:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-mtlp-8/igt@gem_exec_capture@capture@vcs0-smem.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26377v1/shard-mtlp-4/igt@gem_exec_capture@capture@vcs0-smem.html">DMESG-WAR=
N</a> ([i915#5591])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-glk6/igt@gem_exec_capture@many-4k-ze=
ro.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_exec_fair@basic-pace.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-so=
lo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13871/shard-tglu-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6377v1/shard-tglu-10/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377=
v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1=
 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_exec_fence@submit.html=
">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@gem_exec_flush@basic-uc-ro=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3539">i915#3539</a> / [i915#4852]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@gem_exec_params@rsvd2-dir=
t.html">SKIP</a> ([i915#5107])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@gem_exec_params@secure-non-=
master.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D112283">fdo#112283</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@gem_exec_params@secure-non=
-master.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D112283">fdo#112283</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-noreloc.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1263=
77v1/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-noreloc.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) =
+6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-r=
ead-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@gem_exec_reloc@basic-wc-r=
ead-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@gem_exec_schedule@reorder=
-wide.html">SKIP</a> ([i915#4537] / [i915#4812]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
377v1/shard-rkl-4/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> ([i9=
15#7276])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@gem_fenced_exec_thrash@no-s=
pare-fences-busy.html">SKIP</a> ([i915#4860])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-=
spare-fences-busy.html">SKIP</a> ([i915#4860])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@gem_lmem_swapping@heavy-ve=
rify-random-ccs.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-glk6/igt@gem_lmem_swapping@massive-r=
andom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@gem_lmem_swapping@paralle=
l-random-verify.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@gem_lmem_swapping@paralle=
l-random-verify-ccs.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
377v1/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (=
[i915#5493])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-apl7/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write-distinct:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@gem_mmap_gtt@basic-read-wr=
ite-distinct.html">SKIP</a> ([i915#4077]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@gem_mmap_wc@bad-object.ht=
ml">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@gem_mmap_wc@set-cache-lev=
el.html">SKIP</a> ([i915#4083]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@gem_mmap_wc@write-wc-read-=
gtt.html">SKIP</a> ([i915#4083]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@gem_partial_pwrite_pread@=
reads-display.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_126377v1/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3282">i915#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@gem_partial_pwrite_pread@w=
rites-after-reads-display.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@gem_pxp@create-regular-bu=
ffer.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +3 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@gem_pxp@reject-modify-con=
text-protection-off-3.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@gem_pxp@verify-pxp-stale-b=
uf-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_readwrite@read-write.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@gem_render_copy@y-tiled-to=
-vebox-linear.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@gem_render_copy@yf-tiled-=
ccs-to-yf-tiled.html">SKIP</a> ([i915#8428]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@gem_tiled_pread_pwrite.htm=
l">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3297">i915#3297</a>) +4 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3297">i915#3297</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@gem_userptr_blits@dmabuf-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@gem_userptr_blits@relocat=
ions.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3281">i915#3281</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@gem_userptr_blits@sd-prob=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3297">i915#3297</a> / [i915#4958])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3318">i915#3318</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@gen3_render_linear_blits.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09289">fdo#109289</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@gen7_exec_parse@basic-all=
ocation.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@gen7_exec_parse@chained-ba=
tch.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@gen9_exec_parse@allowed-single.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377=
v1/shard-rkl-4/igt@gen9_exec_parse@allowed-single.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@gen9_exec_parse@batch-inva=
lid-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@gen9_exec_parse@batch-zer=
o-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@gen9_exec_parse@bb-start-=
far.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@gen9_exec_parse@valid-regi=
sters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2856">i915#2856</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@i915_module_load@load.htm=
l">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_126377v1/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> ([i915#8489] / [i915#8668])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126377v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FAIL</a=
> ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@i915_pm_rpm@gem-execbuf-st=
ress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@i915_pm_rps@basic-api.html=
">SKIP</a> ([i915#6621])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@i915_pm_rps@basic-api.html"=
>SKIP</a> ([i915#6621])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-6/igt@i915_pm_rps@thresholds-id=
le-park@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-6/igt@i915_pm_rps@thresholds-id=
le-park@gt1.html">SKIP</a> (<a href=3D"https://git">i915#3555</a> / [i915#8=
925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@i915_pm_rps@thresholds-par=
k@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-apl7/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6377v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_addfb_basic@basic-y-ti=
led-legacy.html">SKIP</a> ([i915#4215] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@kms_addfb_basic@framebuff=
er-vs-set-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg1-14/igt@kms_async_flips@crc@pipe-=
d-hdmi-a-4.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://git">i915#3555</a>)<=
/p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_atomic@plane-primary-ov=
erlay-mutable-zpos.html">SKIP</a> ([i915#9531])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a h=
ref=3D"https://git">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_big_fb@4-tiled-32bpp-r=
otate-0.html">SKIP</a> ([i915#5286]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_big_fb@4-tiled-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> ([i915#5190]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-180-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_big_fb@y-tiled-max-hw-strid=
e-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1845">i915#1845</a> / [i915#4098]) +7 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-r=
otate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D110723">fdo#110723</a>) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-mtlp-2/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>) +6 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) +7 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> ([i915#4087] / [i915#7213]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_chamelium_audio@dp-au=
dio.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_chamelium_color@ctm-b=
lue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_chamelium_color@ctm-gre=
en-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111827">fdo#111827</a>) +2 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_chamelium_color@ctm-gr=
een-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_chamelium_edid@hdmi-ed=
id-read.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_chamelium_frames@hdmi=
-cmp-planar-formats.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_chamelium_frames@hdmi-=
crc-multiple.html">SKIP</a> ([i915#7828]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@kms_color@ctm-signed@pipe-a.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/=
shard-rkl-5/igt@kms_color@ctm-signed@pipe-a.html">SKIP</a> ([i915#4098]) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma@pipe-a:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_color@degamma@pipe-a.=
html">FAIL</a> ([i915#9257]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_content_protection@at=
omic@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@kms_content_protection@lic=
.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_cursor_crc@cursor-off=
screen-32x10.html">SKIP</a> (<a href=3D"https://git">i915#3555</a>) +6 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@kms_cursor_crc@cursor-ons=
creen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-ran=
dom-32x32.html">SKIP</a> (<a href=3D"https://git">i915#3555</a> / [i915#881=
4])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-snb6/igt@kms_cursor_crc@cursor-rapid-=
movement-512x512.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +128 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid=
-movement-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3359">i915#3359</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_cursor_legacy@2x-long=
-cursor-vs-flip-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3546">i915#3546</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / [i915#5354]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_126377v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 other test fa=
il</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_display_modes@mst-exten=
ded-mode-negative.html">SKIP</a> ([i915#8588])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> ([i915#8588])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_draw_crc@draw-method-mm=
ap-gtt.html">SKIP</a> ([i915#4098]) +6 other tests skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_draw_crc@draw-method-mm=
ap-gtt.html">SKIP</a> ([i915#8812])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@kms_dsc@dsc-with-bpc-forma=
ts.html">SKIP</a> (<a href=3D"https://git">i915#3555</a> / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> (<a href=3D"https://git">i915#3555</a> / [i915#3840])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_fence_pin_leak.html">=
SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_flip@2x-absolute-wf_vb=
lank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111825">fdo#111825</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_flip@2x-absolute-wf_v=
blank-interruptible.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-blockin=
g-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111767">fdo#111767</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-blocki=
ng-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111767">fdo#111767</a> / [i915#3637])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_flip@2x-flip-vs-dpms-=
off-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / [i915#3637]) +1 other =
test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@kms_flip@2x-modeset-vs-vbl=
ank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109274">fdo#109274</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_flip@basic-flip-vs-wf_=
vblank.html">SKIP</a> ([i915#3637] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a> / <a href=3D"https://git">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href=3D"https://git"=
>i915#3555</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) =
+5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://git">i915#3555</a> / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_force_connector_basic=
@force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-move.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p=
-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1849">i915#1849</a> / [i915#4098]) +6 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +16 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +8 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([i915#5354]) +33 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +15 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +20 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +10 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +18 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-apl7/igt@kms_frontbuffer_tracking@fb=
cpsr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +91 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-y.html">SKIP</a> ([i915#5460])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_hdr@bpc-switch-suspend=
.html">SKIP</a> (<a href=3D"https://git">i915#3555</a> / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-mtlp-6/igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126377v1/shard-mtlp-4/igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1.html"=
>ABORT</a> ([i915#9414])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://git">i915#3555</a> / [i915#8228])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-dg2-1/igt@kms_hdr@static-toggle-suspe=
nd.html">SKIP</a> (<a href=3D"https://git">i915#3555</a> / [i915#8228]) +3 =
other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> (<a href=3D"https://git">i915#3555</a> / [i915#8228])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_pipe_b_c_ivb@enable-p=
ipe-c-while-b-has-3-lanes.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-apl7/igt@kms_plane_alpha_blend@alpha=
-transparent-fb@pipe-c-dp-1.html">FAIL</a> ([i915#4573]) +1 other test fail=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-2/igt@kms_plane_lowres@tiling-x=
@pipe-c-edp-1.html">SKIP</a> ([i915#3582]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_plane_multiple@tiling-=
y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1845">i915#1845</a> / [i915#4098]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_plane_scaling@intel-max=
-src-size.html">SKIP</a> ([i915#6953])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_plane_scaling@intel-max=
-src-size.html">SKIP</a> ([i915#6953] / [i915#8152])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation.html">SKIP</a> (<a href=3D"https://git=
">i915#3555</a> / [i915#4098] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-b-edp-1.html">SKIP</a> ([i91=
5#5235]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> ([i=
915#5235]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg1-13/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> ([=
i915#5235]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_plane_scaling@planes-=
downscale-factor-0-75@pipe-d-edp-1.html">SKIP</a> (<a href=3D"https://git">=
i915#3555</a> / [i915#5235]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-=
dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25@pipe-b-dp-4.html">SKIP</a> ([i915#5235]=
) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-=
hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#5=
235]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25.html">SKIP</a> (<a href=3D"https://git">i915#3555</a> / =
[i915#4098] / [i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> ([i915#6524] / [i915#6805]) +1 other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> ([i915#6524])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-sf.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-glk3/igt@kms_psr2_sf@cursor-plane-up=
date-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / [i915#658]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> ([i915#658]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109642">fdo#109642</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111068">fdo#111068</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_psr@cursor_mmap_cpu.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
0189">fdo#110189</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_psr@primary_render.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/107=
2">i915#1072</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@kms_psr@psr2_primary_rende=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1072">i915#1072</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-glk6/igt@kms_psr@psr2_sprite_blt.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a>) +70 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_mmap_gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@kms_psr@sprite_mmap_gtt.h=
tml">SKIP</a> ([i915#4077]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> ([i915#5461] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@kms_rotation_crc@primary-r=
otation-270.html">SKIP</a> ([i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-4/igt@kms_rotation_crc@sprite-rotation-90.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26377v1/shard-rkl-7/igt@kms_rotation_crc@sprite-rotation-90.html">INCOMPLET=
E</a> ([i915#8875] / [i915#9569])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@kms_setmode@basic-clone-si=
ngle-crtc.html">SKIP</a> (<a href=3D"https://git">i915#3555</a> / [i915#409=
8])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-snb2/igt@kms_setmode@basic@pipe-a-vg=
a-1.html">FAIL</a> ([i915#5465]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_setmode@invalid-clone-=
single-crtc.html">SKIP</a> (<a href=3D"https://git">i915#3555</a> / [i915#4=
098])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_tv_load_detect@load-de=
tect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109309">fdo#109309</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_126377v1/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak=
@pipe-b-hdmi-a-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-c-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126377v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-c-edp-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-apl2/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a=
-dp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_126377v1/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspe=
nd@pipe-a-dp-1.html">INCOMPLETE</a> ([i915#9159])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_vrr@flip-basic.html">=
SKIP</a> (<a href=3D"https://git">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@perf@global-sseu-config.h=
tml">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@perf@mi-rpc.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#243=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-11/igt@perf_pmu@busy-double-star=
t@vecs1.html">FAIL</a> ([i915#4349]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@perf_pmu@cpu-hotplug.html"=
>SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@faulting-read@gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-5/igt@perf_pmu@faulting-read@gt=
t.html">SKIP</a> ([i915#8440])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@perf_pmu@module-unload.htm=
l">FAIL</a> ([i915#5793])</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@prime_udl.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291">fdo#10929=
1</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/=
shard-rkl-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> / [i915#3=
708] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3291">i915#3291</a> / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-=
rkl-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / [i915#3708])<=
/li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signal=
ed:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@syncobj_timeline@invalid-m=
ulti-wait-all-available-unsubmitted-signaled.html">FAIL</a> ([i915#9583]) +=
1 other test fail</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submit=
ted-signaled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@syncobj_timeline@invalid-=
multi-wait-all-available-unsubmitted-submitted-signaled.html">FAIL</a> ([i9=
15#9583])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:=
</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-apl7/igt@syncobj_timeline@invalid-mu=
lti-wait-available-unsubmitted-submitted.html">FAIL</a> ([i915#9583]) +1 ot=
her test fail</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-=
signaled:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@syncobj_timeline@invalid-mu=
lti-wait-available-unsubmitted-submitted-signaled.html">FAIL</a> ([i915#958=
3])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-snb6/igt@syncobj_timeline@invalid-mul=
ti-wait-available-unsubmitted-submitted-signaled.html">FAIL</a> ([i915#9583=
]) +2 other tests fail</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-mtlp-2/igt@syncobj_timeline@invalid-m=
ulti-wait-available-unsubmitted-submitted-signaled.html">FAIL</a> ([i915#95=
83]) +1 other test fail</p>
</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@base-params:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-6/igt@v3d/v3d_get_param@base-par=
ams.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-two-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@v3d/v3d_perfmon@create-two=
-perfmon.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109315">fdo#109315</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@destroy-invalid-perfmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@v3d/v3d_perfmon@destroy-i=
nvalid-perfmon.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109315">fdo#109315</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@single-out-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-2/igt@v3d/v3d_submit_cl@single-=
out-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2575">i915#2575</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@unused-bo-1ns:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@v3d/v3d_wait_bo@unused-bo=
-1ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@free-purged-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-mtlp-7/igt@vc4/vc4_purgeable_bo@free=
-purged-bo.html">SKIP</a> ([i915#7711]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-purgeable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg1-16/igt@vc4/vc4_purgeable_bo@mark=
-purgeable.html">SKIP</a> ([i915#7711]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-dg2-7/igt@vc4/vc4_tiling@get-bad-mod=
ifier.html">SKIP</a> ([i915#7711]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-get:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@vc4/vc4_tiling@set-get.htm=
l">SKIP</a> ([i915#7711]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@unused-bo-0ns:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@vc4/vc4_wait_bo@unused-bo=
-0ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@drm_fdinfo@virtual-idle.html">FAIL</a> ([i915=
#7742]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_126377v1/shard-rkl-1/igt@drm_fdinfo@virtual-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@drm_mm@drm_mm@drm_test_mm_lowest}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-4/igt@drm_mm@drm_mm@drm_test_mm_lowest.html">TIMEOU=
T</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26377v1/shard-rkl-7/igt@drm_mm@drm_mm@drm_test_mm_lowest.html">PASS</a> +1 =
other test pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-mtlp-2/igt@fbdev@eof.html">DMESG-WARN</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard=
-mtlp-8/igt@fbdev@eof.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@fbdev@unaligned-write.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/=
shard-rkl-4/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3=
281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126377v1/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html">PASS</a> =
+6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-dg2-7/igt@gem_eio@kms.html">FAIL</a> ([i915#5784]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/sh=
ard-dg2-11/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126377v1/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html=
">ABORT</a> ([i915#7975] / [i915#8213]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@gem_exec_suspend=
@basic-s4-devices@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-u=
ncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@gem_partial_pwrite_pread@wri=
tes-after-reads-uncached.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
377v1/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html">PASS</a> +1 other t=
est pass</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-mtlp-4/igt@i915_hangman@error-state-basic.html">ABORT</=
a> ([i915#9414]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_126377v1/shard-mtlp-2/igt@i915_hangman@error-state-basic.html">PA=
SS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FA=
IL</a> ([i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_126377v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@rcs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-a-bad-aux-stride-y-tiled-gen12-rc-ccs-cc}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_ccs@pipe-a-bad-aux-stride-y-tiled-gen12-r=
c-ccs-cc.html">SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_ccs@pipe-a-bad-=
aux-stride-y-tiled-gen12-rc-ccs-cc.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-rend=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1849">i915#1849</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_frontbuffer_tra=
cking@fbc-rgb565-draw-render.html">PASS</a> +12 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-dg1-14/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-4.ht=
ml">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126377v1/shard-dg1-16/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi=
-a-4.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@dpms-non-lpsp}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([i91=
5#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126377v1/shard-rkl-1/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp-stress}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-dg1-19/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKI=
P</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_126377v1/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@cursor-rotation-180:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-dg1-19/igt@kms_rotation_crc@cursor-rotation-180.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_126377v1/shard-dg1-12/igt@kms_rotation_crc@cursor-rotation-180=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-90.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i9=
15#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_rotation_crc@primary-rotat=
ion-90.html">PASS</a> +15 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-1/igt@kms_rotation_crc@sprite-rotation-270.html">IN=
COMPLETE</a> ([i915#8875] / [i915#9569]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-7/igt@kms_rotation_crc=
@sprite-rotation-270.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options}:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-apl2/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdli=
ne_tv_options.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126377v1/shard-apl1/igt@kms_selftest@drm_cmdline_p=
arser@drm_test_cmdline_tv_options.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_no_fb=
}:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-tglu-8/igt@kms_selftest@drm_damage_helper@drm_test_dama=
ge_iter_no_damage_no_fb.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-tglu-8/igt@kms_selftest@d=
rm_damage_helper@drm_test_damage_iter_no_damage_no_fb.html">PASS</a> +2 oth=
er tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_format@drm_test_format_block_height_invalid}:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-snb1/igt@kms_selftest@drm_format@drm_test_format_block_=
height_invalid.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126377v1/shard-snb7/igt@kms_selftest@drm_format@d=
rm_test_format_block_height_invalid.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:<=
/p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-mtlp-4/igt@kms_selftest@drm_plane_helper@drm_test_check=
_invalid_plane_state.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_126377v1/shard-mtlp-1/igt@kms_selftest@drm_=
plane_helper@drm_test_check_invalid_plane_state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-sample-oa:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-sample-oa.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_126377v1/shard-rkl-1/igt@perf@gen12-group-exclusive-stream-s=
ample-oa.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html">ABORT=
</a> ([i915#9618]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126377v1/shard-dg1-14/igt@device_reset@unbind-reset-rebind.html=
">INCOMPLETE</a> ([i915#9408])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#=
7957]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126377v1/shard-rkl-2/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#9323]=
) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i9=
15#2681</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126377v1/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i=
915#2681</a> / [i915#3591])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-mtlp-8/igt@kms_async_flips@crc@pipe-a-edp-1.html">DMESG=
-FAIL</a> ([i915#8561]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126377v1/shard-mtlp-7/igt@kms_async_flips@crc@pipe-a-edp-1=
.html">FAIL</a> ([i915#8247]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-mtlp-8/igt@kms_async_flips@crc@pipe-d-edp-1.html">FAIL<=
/a> ([i915#8247]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_126377v1/shard-mtlp-7/igt@kms_async_flips@crc@pipe-d-edp-1.html"=
>DMESG-FAIL</a> ([i915#8561]) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP=
</a> ([i915#5286]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126377v1/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / [i915#4098]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> =
/ [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126377v1/shard-rkl-2/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> ([=
i915#5286]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-270=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111614">fdo#111614</a> / [i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb-s=
ize-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D110723">fdo#110723</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_big_fb@yf-til=
ed-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / [i915#40=
98]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1845">i915#1845</a> / [i915#4098]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_big_fb=
@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-dg2-7/igt@kms_content_protection@type1.html">SKIP</a> (=
[i915#7118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126377v1/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a>=
 ([i915#7118] / [i915#7162])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_cursor_crc@cursor-offsc=
reen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-32x10.ht=
ml">SKIP</a> (<a href=3D"https://git">i915#3555</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_=
cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / [i915#4098])</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-lega=
cy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_cursor_legacy@2x-long-flip=
-vs-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1845">i915#1845</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1845">i915#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@kms_cursor_l=
egacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-tra=
nsitions-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1845">i915#1845</a> / [i915#4098]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@=
kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">f=
do#111825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_cursor_legacy@cursorb=
-vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-toggle.html">SKIP</a> ([i915#4103]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_cursor_legacy@=
short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#4098]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12637=
7v1/shard-rkl-4/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href=3D"https://gi=
t">i915#3555</a> / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / [=
i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126377v1/shard-rkl-1/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href=
=3D"https://git">i915#3555</a> / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9285">fdo#109285</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_force_connector_basic@force-loa=
d-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109285">fdo#109285</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptra=
ck-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_frontbuffer_tracki=
ng@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1849">i915#1849</a> / [i915#4098]) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@km=
s_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#1=
11825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825=
">i915#1825</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indf=
b-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_frontbuffer=
_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / [i915#4098=
]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-flip=
track-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1849">i915#1849</a> / [i915#4098]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_fro=
ntbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1849">i915#1849</a> / [i915#4098]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-1/igt@kms_frontbuffe=
r_tracking@fbcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +15 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849=
">i915#1849</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-rend=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3023">i915#3023</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-rgb5=
65-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1849">i915#1849</a> / [i915#4098]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / [=
i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126377v1/shard-rkl-2/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=
=3D"https://git">i915#3555</a> / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845<=
/a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126377v1/shard-rkl-2/igt@kms_plane_multiple@tiling-yf.html">SKI=
P</a> (<a href=3D"https://git">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825"=
>fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_126377v1/shard-rkl-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
1825">fdo#111825</a> / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.=
html">SKIP</a> ([i915#5289]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_rotation_crc@primary-4-t=
iled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1845">i915#1845</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-1=
80.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111615">fdo#111615</a> / [i915#5289]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-5/igt@kms_rotation_crc=
@primary-yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1845">i915#1845</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13871/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-2=
70.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1845">i915#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_126377v1/shard-rkl-2/igt@kms_rotation_crc@pr=
imary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111615">fdo#111615</a> / [i915#5289])</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============1357962046442253448==--
