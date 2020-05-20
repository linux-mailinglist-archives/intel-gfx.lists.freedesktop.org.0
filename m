Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0871DC07D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 22:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA5666E8A7;
	Wed, 20 May 2020 20:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B93AF6E8A6;
 Wed, 20 May 2020 20:47:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2F41A47E1;
 Wed, 20 May 2020 20:47:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 20 May 2020 20:47:22 -0000
Message-ID: <159000764270.30692.13114226985598592101@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200520075503.10388-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200520075503.10388-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/22=5D_drm/i915/gem=3A_Suppress_some_ran?=
 =?utf-8?q?dom_warnings?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [01/22] drm/i915/gem: Suppress some random warnings
URL   : https://patchwork.freedesktop.org/series/77459/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8509_full -> Patchwork_17724_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17724_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17724_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17724_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-skl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [FAIL][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl9/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl9/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl5/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl10/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl10/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl10/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl10/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl10/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl1/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@semaphore:
    - shard-kbl:          [PASS][50] -> [DMESG-WARN][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-kbl7/igt@gem_exec_balancer@semaphore.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-kbl6/igt@gem_exec_balancer@semaphore.html
    - shard-iclb:         [PASS][52] -> [DMESG-WARN][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-iclb6/igt@gem_exec_balancer@semaphore.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-iclb4/igt@gem_exec_balancer@semaphore.html

  * igt@gem_linear_blits@interruptible:
    - shard-snb:          [PASS][54] -> [FAIL][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-snb4/igt@gem_linear_blits@interruptible.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-snb4/igt@gem_linear_blits@interruptible.html

  * igt@runner@aborted:
    - shard-iclb:         NOTRUN -> [FAIL][56]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-iclb4/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_balancer@sliced}:
    - shard-kbl:          [PASS][57] -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-kbl4/igt@gem_exec_balancer@sliced.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-kbl2/igt@gem_exec_balancer@sliced.html
    - shard-tglb:         [PASS][59] -> [INCOMPLETE][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-tglb7/igt@gem_exec_balancer@sliced.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-tglb6/igt@gem_exec_balancer@sliced.html

  * {igt@gem_exec_fence@syncobj-invalid-wait}:
    - shard-snb:          [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-snb2/igt@gem_exec_fence@syncobj-invalid-wait.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-snb1/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-tglb:         [PASS][63] -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-tglb6/igt@gem_exec_fence@syncobj-invalid-wait.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-tglb3/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-skl:          [PASS][65] -> [FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl7/igt@gem_exec_fence@syncobj-invalid-wait.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl10/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-glk:          [PASS][67] -> [FAIL][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-glk7/igt@gem_exec_fence@syncobj-invalid-wait.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-glk5/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-apl:          [PASS][69] -> [FAIL][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-apl2/igt@gem_exec_fence@syncobj-invalid-wait.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-apl1/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-kbl:          [PASS][71] -> [FAIL][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-kbl3/igt@gem_exec_fence@syncobj-invalid-wait.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-kbl3/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-iclb:         [PASS][73] -> [FAIL][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-iclb8/igt@gem_exec_fence@syncobj-invalid-wait.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-iclb3/igt@gem_exec_fence@syncobj-invalid-wait.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8509_full and Patchwork_17724_full:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 7 pass(s)
    - Exec time: [0.03, 0.13] s

  

Known issues
------------

  Here are the changes found in Patchwork_17724_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][75] -> [DMESG-WARN][76] ([i915#180]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][77] -> [DMESG-WARN][78] ([i915#180])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-skl:          [PASS][79] -> [FAIL][80] ([i915#54])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-iclb:         [PASS][81] -> [DMESG-WARN][82] ([i915#128])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-iclb8/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-iclb3/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][83] -> [FAIL][84] ([fdo#108145] / [i915#265]) +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][85] -> [SKIP][86] ([fdo#109642] / [fdo#111068])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][87] -> [SKIP][88] ([fdo#109441]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Possible fixes ####

  * {igt@kms_flip@flip-vs-suspend@a-dp1}:
    - shard-apl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
    - shard-kbl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92] +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][93] ([i915#1188]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][95] ([fdo#108145] / [i915#265]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][99] ([i915#31]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-kbl2/igt@kms_setmode@basic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-kbl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][101] ([i915#588]) -> [SKIP][102] ([i915#658])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][103] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][104] ([i915#1319])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-apl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][105] ([i915#1319]) -> [FAIL][106] ([fdo#110321] / [fdo#110336])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-apl8/igt@kms_content_protection@legacy.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-apl6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][107] ([i915#1319]) -> [DMESG-FAIL][108] ([fdo#110321])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-apl2/igt@kms_content_protection@lic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-apl8/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][109] ([fdo#110321]) -> [TIMEOUT][110] ([i915#1319])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-apl4/igt@kms_content_protection@srm.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-apl1/igt@kms_content_protection@srm.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][111] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][112] ([fdo#108145] / [i915#265])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][113] ([i915#31]) -> [FAIL][114] ([i915#31] / [i915#95])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/shard-apl3/igt@kms_setmode@basic.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/shard-apl6/igt@kms_setmode@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8509 -> Patchwork_17724

  CI-20190529: 20190529
  CI_DRM_8509: ea6a2729d3d286137415319de4161042b0337e87 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5662: e79462659e0f45cd3f4f766f58cb792303c6bf9b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17724: b91e0003626c8e9af7d9bc5c6716d6dfb68a02c0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17724/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
