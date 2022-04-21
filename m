Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A8F5094A6
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 03:30:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E543D10E0E5;
	Thu, 21 Apr 2022 01:30:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7506710E0E5;
 Thu, 21 Apr 2022 01:30:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 602CCA7DFB;
 Thu, 21 Apr 2022 01:30:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1250404828574008816=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 21 Apr 2022 01:30:09 -0000
Message-ID: <165050460934.10763.17508892051578329117@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220420181613.70033-1-matthew.auld@intel.com>
In-Reply-To: <20220420181613.70033-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915=3A_consider_min=5Fpag?=
 =?utf-8?q?e=5Fsize_when_migrating?=
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

--===============1250404828574008816==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/4] drm/i915: consider min_page_size when migrating
URL   : https://patchwork.freedesktop.org/series/102879/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11528_full -> Patchwork_102879v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102879v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102879v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102879v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-skl9/igt@i915_pm_sseu@full-enable.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl7/igt@i915_pm_sseu@full-enable.html

  
Known issues
------------

  Here are the changes found in Patchwork_102879v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([FAIL][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#4386]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl3/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl3/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl3/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl3/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl7/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@idempotent:
    - shard-snb:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#1099]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-snb6/igt@gem_ctx_persistence@idempotent.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][54] ([i915#5076] / [i915#5614])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb8/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][55] ([i915#5076] / [i915#5614])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][56] ([i915#5076] / [i915#5614])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][57] -> [FAIL][58] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][59] ([i915#2849])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-snb:          [PASS][60] -> [SKIP][61] ([fdo#109271])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_params@no-bsd:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#109283])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@gem_exec_params@no-bsd.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl4/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4613]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#4613]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_mmap_gtt@basic-write:
    - shard-skl:          [PASS][66] -> [DMESG-WARN][67] ([i915#1982]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-skl3/igt@gem_mmap_gtt@basic-write.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl10/igt@gem_mmap_gtt@basic-write.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][68] ([i915#2658])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-snb6/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][69] ([i915#2724])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-snb6/igt@gem_userptr_blits@vma-merge.html
    - shard-kbl:          NOTRUN -> [FAIL][70] ([i915#3318])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@gem_userptr_blits@vma-merge.html

  * igt@gen3_render_tiledx_blits:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#109289])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@gen3_render_tiledx_blits.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][72] -> [DMESG-WARN][73] ([i915#5566] / [i915#716])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#2527] / [i915#2856]) +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@gen9_exec_parse@bb-secure.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         NOTRUN -> [FAIL][75] ([i915#454])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][76] -> [FAIL][77] ([i915#454])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          [PASS][78] -> [FAIL][79] ([i915#454])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-skl3/igt@i915_pm_dc@dc6-psr.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl10/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          NOTRUN -> [INCOMPLETE][80] ([i915#5514])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl8/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][81] ([i915#180])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#5286]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#5286])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-glk:          [PASS][84] -> [DMESG-WARN][85] ([i915#118]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-glk4/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-glk9/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#111614]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb5/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#110725] / [fdo#111614])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb5/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3777])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][89] ([i915#3743]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3777])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#111615]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3886]) +4 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-snb:          NOTRUN -> [SKIP][93] ([fdo#109271]) +66 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-snb6/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#3689]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb6/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#3886]) +3 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#3886]) +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][97] ([fdo#111615] / [i915#3689]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-edid-change-during-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@kms_chamelium@dp-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-frame-dump:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl9/igt@kms_chamelium@hdmi-frame-dump.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-snb:          NOTRUN -> [SKIP][101] ([fdo#109271] / [fdo#111827])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-snb6/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109284] / [fdo#111827])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb5/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_color_chamelium@pipe-d-ctm-limited-range:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([i915#3319]) +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][105] ([i915#3359]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#109279] / [i915#3359]) +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([i915#4103])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][108] -> [FAIL][109] ([i915#2346])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][110] ([i915#2346] / [i915#533])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([i915#426])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb6/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][112] ([i915#5287])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled.html

  * igt@kms_dsc@xrgb8888-dsc-compression:
    - shard-tglb:         NOTRUN -> [SKIP][113] ([i915#3828])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_dsc@xrgb8888-dsc-compression.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-tglb:         NOTRUN -> [SKIP][114] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-kbl:          [PASS][115] -> [FAIL][116] ([i915#79])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
    - shard-glk:          [PASS][117] -> [FAIL][118] ([i915#79])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][119] ([fdo#109280] / [fdo#111825]) +10 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-skl:          NOTRUN -> [SKIP][120] ([fdo#109271]) +58 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-kbl:          NOTRUN -> [SKIP][121] ([fdo#109271]) +120 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-apl:          NOTRUN -> [SKIP][122] ([fdo#109271]) +83 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
    - shard-skl:          [PASS][123] -> [FAIL][124] ([i915#1188])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-skl4/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl6/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#533]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#533])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#533])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-skl:          [PASS][128] -> [INCOMPLETE][129] ([i915#4939])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][130] ([fdo#108145] / [i915#265])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][131] -> [FAIL][132] ([fdo#108145] / [i915#265]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][133] ([i915#265])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-d-tiling-y:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([i915#3536])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb6/igt@kms_plane_lowres@pipe-d-tiling-y.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-4:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([i915#5288])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_plane_multiple@atomic-pipe-d-tiling-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale:
    - shard-iclb:         [PASS][136] -> [SKIP][137] ([i915#5235]) +2 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-iclb6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#658])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-skl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#658])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl9/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-kbl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#658])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][141] -> [SKIP][142] ([fdo#109441])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb8/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-tglb:         NOTRUN -> [FAIL][143] ([i915#132] / [i915#3467]) +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [PASS][144] -> [SKIP][145] ([i915#5519])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
    - shard-iclb:         [PASS][146] -> [SKIP][147] ([i915#5519])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][148] -> [DMESG-WARN][149] ([i915#180]) +3 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][150] -> [DMESG-WARN][151] ([i915#180])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][152] ([i915#3555])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_vrr@flip-suspend.html

  * igt@nouveau_crc@pipe-c-source-rg:
    - shard-tglb:         NOTRUN -> [SKIP][153] ([i915#2530])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@nouveau_crc@pipe-c-source-rg.html

  * igt@perf@enable-disable:
    - shard-skl:          [PASS][154] -> [FAIL][155] ([i915#1352])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-skl7/igt@perf@enable-disable.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl3/igt@perf@enable-disable.html

  * igt@perf@short-reads:
    - shard-skl:          NOTRUN -> [FAIL][156] ([i915#51])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl9/igt@perf@short-reads.html

  * igt@prime_nv_pcopy@test3_3:
    - shard-tglb:         NOTRUN -> [SKIP][157] ([fdo#109291])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb6/igt@prime_nv_pcopy@test3_3.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][158] ([i915#5098])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl3/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@fair-1:
    - shard-skl:          NOTRUN -> [SKIP][159] ([fdo#109271] / [i915#2994])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl9/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@sema-10:
    - shard-kbl:          NOTRUN -> [SKIP][160] ([fdo#109271] / [i915#2994]) +2 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@sysfs_clients@sema-10.html

  * igt@sysfs_clients@sema-25:
    - shard-apl:          NOTRUN -> [SKIP][161] ([fdo#109271] / [i915#2994])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@sysfs_clients@sema-25.html

  * igt@sysfs_clients@sema-50:
    - shard-tglb:         NOTRUN -> [SKIP][162] ([i915#2994])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb6/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][163] ([i915#4525]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_endless@dispatch@vcs0:
    - shard-tglb:         [INCOMPLETE][165] ([i915#3778]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-tglb3/igt@gem_exec_endless@dispatch@vcs0.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb2/igt@gem_exec_endless@dispatch@vcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [FAIL][167] ([i915#2842]) -> [PASS][168] +1 similar issue
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-glk:          [DMESG-WARN][169] ([i915#118]) -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-glk6/igt@gem_exec_whisper@basic-fds-all.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-glk4/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][171] ([i915#2190]) -> [PASS][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          [INCOMPLETE][173] ([i915#5161]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-y.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-snb6/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-tglb:         [INCOMPLETE][175] ([i915#2411] / [i915#5420]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-tglb7/igt@i915_pm_rpm@system-suspend-modeset.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-skl:          [INCOMPLETE][177] ([i915#5502]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-skl3/igt@i915_selftest@live@gem_contexts.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl8/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [INCOMPLETE][179] -> [PASS][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl4/igt@i915_suspend@forcewake.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl3/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
    - shard-iclb:         [FAIL][181] ([i915#5072]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb3/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-iclb:         [FAIL][183] ([i915#2346]) -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@fill-fb:
    - shard-snb:          [SKIP][185] ([fdo#109271]) -> [PASS][186] +3 similar issues
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-snb4/igt@kms_draw_crc@fill-fb.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-snb4/igt@kms_draw_crc@fill-fb.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][187] ([i915#180]) -> [PASS][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [FAIL][189] ([i915#79]) -> [PASS][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [FAIL][191] ([i915#2122]) -> [PASS][192]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-skl7/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl1/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][193] ([i915#3701]) -> [PASS][194] +1 similar issue
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [DMESG-WARN][195] ([i915#180]) -> [PASS][196] +1 similar issue
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][197] ([i915#180]) -> [PASS][198] +3 similar issues
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format:
    - shard-iclb:         [INCOMPLETE][199] ([i915#5395]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-iclb2/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb7/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][201] ([fdo#109441]) -> [PASS][202] +1 similar issue
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  
#### Warnings ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][203] ([i915#3063] / [i915#3648]) -> [FAIL][204] ([i915#232])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][205] ([i915#4525]) -> [DMESG-WARN][206] ([i915#5614])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][207] ([i915#2852]) -> [FAIL][208] ([i915#2842])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][209] ([i915#2842]) -> [FAIL][210] ([i915#2851])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-sync@rcs0:
    - shard-skl:          [SKIP][211] ([fdo#109271]) -> [SKIP][212] ([fdo#109271] / [i915#1888])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-skl6/igt@gem_exec_fair@basic-sync@rcs0.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl9/igt@gem_exec_fair@basic-sync@rcs0.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen:
    - shard-skl:          [SKIP][213] ([fdo#109271] / [i915#1888]) -> [SKIP][214] ([fdo#109271])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-skl6/igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl9/igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][215] ([i915#2920]) -> [SKIP][216] ([i915#658])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][217] ([i915#2920]) -> [SKIP][218] ([fdo#111068] / [i915#658])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][219], [FAIL][220], [FAIL][221], [FAIL][222], [FAIL][223]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][224], [FAIL][225], [FAIL][226], [FAIL][227]) ([i915#3002] / [i915#4312] / [i915#5257])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl2/igt@runner@aborted.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl8/igt@runner@aborted.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl4/igt@runner@aborted.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl3/igt@runner@aborted.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl3/igt@runner@aborted.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl4/igt@runner@aborted.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl1/igt@runner@aborted.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl7/igt@runner@aborted.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl4/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][228], [FAIL][229], [FAIL][230], [FAIL][231], [FAIL][232], [FAIL][233], [FAIL][234], [FAIL][235], [FAIL][236], [FAIL][237], [FAIL][238], [FAIL][239], [FAIL][240]) ([i915#180] / [i915#4312] / [i915#5257] / [i915#92]) -> ([FAIL][241], [FAIL][242], [FAIL][243], [FAIL][244], [FAIL][245], [FAIL][246], [FAIL][247], [FAIL][248], [FAIL][249], [FAIL][250], [FAIL][251], [FAIL][252], [FAIL][253]) ([i915#180] / [i915#4312] / [i915#5257])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl6/igt@runner@aborted.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl7/igt@runner@aborted.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl4/igt@runner@aborted.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl1/igt@runner@aborted.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl3/igt@runner@aborted.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl1/igt@runner@aborted.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl7/igt@runner@aborted.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl7/igt@runner@aborted.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl1/igt@runner@aborted.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl7/igt@runner@aborted.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl4/igt@runner@aborted.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl6/igt@runner@aborted.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl1/igt@runner@aborted.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@runner@aborted.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl3/igt@runner@aborted.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl4/igt@runner@aborted.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@runner@aborted.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@runner@aborted.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@runner@aborted.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl3/igt@runner@aborted.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@runner@aborted.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl1/igt@runner@aborted.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl1/igt@runner@aborted.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl1/igt@runner@aborted.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl1/igt@runner@aborted.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1352]: https://gitlab.freedesktop.org/drm/intel/issues/1352
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2851]: https://gitlab.freedesktop.org/drm/intel/issues/2851
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3648]: https://gitlab.freedesktop.org/drm/intel/issues/3648
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
  [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5395]: https://gitlab.freedesktop.org/drm/intel/issues/5395
  [i915#5420]: https://gitlab.freedesktop.org/drm/intel/issues/5420
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5502]: https://gitlab.freedesktop.org/drm/intel/issues/5502
  [i915#5514]: https://gitlab.freedesktop.org/drm/intel/issues/5514
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Build changes
-------------

  * Linux: CI_DRM_11528 -> Patchwork_102879v1

  CI-20190529: 20190529
  CI_DRM_11528: bd638cf6c04abbc39e46649f820253a303131df5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6441: a44d1d4c9e7198a2d59d7dcaae38e340f7cadcf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102879v1: bd638cf6c04abbc39e46649f820253a303131df5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/index.html

--===============1250404828574008816==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/4] drm/i915: cons=
ider min_page_size when migrating</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/102879/">https://patchwork.freedesktop.org/series/102879/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102879v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102879v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11528_full -&gt; Patchwork_102879v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102879v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_102879v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
102879v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_sseu@full-enable:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-skl9/igt@i915_pm_sseu@full-enable.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shar=
d-skl7/igt@i915_pm_sseu@full-enable.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102879v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11528/shard-apl1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11528/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11528/shard-apl2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/sha=
rd-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11528/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11528/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11528/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528=
/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11528/shard-apl6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1528/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11528/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11528/shard-apl8/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4386">i915#4386</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102879v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl8/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-a=
pl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_102879v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v=
1/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_102879v1/shard-apl6/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_102879v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_102879v1/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-ap=
l4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_102879v1/shard-apl4/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl1/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1=
/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102879v1/shard-apl3/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_102879v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_102879v1/shard-apl2/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_102879v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl1/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_102879v1/shard-apl1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl1/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@idempotent:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-snb6/igt@gem_ctx_persistence@idempot=
ent.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb8/igt@gem_exec_balancer@parallel=
-bb-first.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5076">i915#5076</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5614">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@gem_exec_balancer@parallel-=
contexts.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5076">i915#5076</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5614">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@gem_exec_balancer@parallel=
-ordering.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5076">i915#5076</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5614">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v=
1/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-iclb5/igt@gem_exec_fair@basic-thrott=
le@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2849">i915#2849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-wb.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102879v1/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@gem_exec_params@no-bsd.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
83">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-skl4/igt@gem_lmem_swapping@heavy-mul=
ti.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@gem_lmem_swapping@parallel-=
random-engines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@gem_lmem_swapping@verify-r=
andom-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-skl3/igt@gem_mmap_gtt@basic-write.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shar=
d-skl10/igt@gem_mmap_gtt@basic-write.html">DMESG-WARN</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-snb6/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">=
i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102879v1/shard-snb6/igt@gem_userptr_blits@vma-merge.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2724">i915#2724</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@gem_userptr_blits@vma-merge.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3318">i915#3318</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledx_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@gen3_render_tiledx_blits.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-glk7/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/s=
hard-glk1/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@gen9_exec_parse@bb-secure.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2856">i915#2856</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i=
915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11528/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb=
3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/454">i915#454</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11528/shard-skl3/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl10=
/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/454">i915#454</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-skl8/igt@i915_selftest@live@execlist=
s.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5514">i915#5514</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@i915_suspend@debugfs-reader=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-iclb5/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-glk4/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10287=
9v1/shard-glk9/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>=
) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb5/igt@kms_big_fb@linear-8bpp-rot=
ate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111614">fdo#111614</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-iclb5/igt@kms_big_fb@x-tiled-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-s=
tride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3777">i915#3777</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-s=
tride-64bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@kms_big_fb@x-tiled-max-hw-s=
tride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3777">i915#3777</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@kms_ccs@pipe-a-bad-aux-stri=
de-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-snb6/igt@kms_ccs@pipe-a-crc-primary-=
basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +66 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb6/igt@kms_ccs@pipe-a-random-ccs-=
data-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3689">i915#3689</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-skl4/igt@kms_ccs@pipe-b-crc-primary-=
basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@kms_ccs@pipe-b-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@kms_ccs@pipe-c-bad-rotatio=
n-90-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@kms_chamelium@dp-edid-chang=
e-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-frame-dump:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-skl9/igt@kms_chamelium@hdmi-frame-du=
mp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@kms_color_chamelium@pipe-b-=
gamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-snb6/igt@kms_color_chamelium@pipe-c-=
ctm-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-iclb5/igt@kms_color_chamelium@pipe-c=
-ctm-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-limited-range:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_color_chamelium@pipe-d=
-ctm-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@kms_cursor_crc@pipe-b-curs=
or-32x32-sliding.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3319">i915#3319</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb6/igt@kms_cursor_crc@pipe-c-curs=
or-32x10-offscreen.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3359">i915#3359</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@kms_cursor_crc@pipe-c-curs=
or-512x512-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109279">fdo#109279</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3359">i915#3359</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_102879v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-skl7/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb6/igt@kms_dp_tiled_display@basic=
-test-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/426">i915#426</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_draw_crc@draw-method-r=
gb565-pwrite-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@xrgb8888-dsc-compression:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_dsc@xrgb8888-dsc-compr=
ession.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_flip@2x-flip-vs-modese=
t.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111825">fdo#111825</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_102879v1/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank-inter=
ruptible@c-dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_102879v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@c-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +10 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-skl4/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +58 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@kms_frontbuffer_tracking@ps=
r-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +120 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-apl6/igt@kms_frontbuffer_tracking@ps=
r-rgb565-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +83 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-skl4/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-=
edp-1-pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_102879v1/shard-skl6/igt@kms_hdr@bpc-switch-suspend@bpc=
-switch-suspend-edp-1-pipe-a.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-skl4/igt@kms_pipe_crc_basic@compare-=
crc-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/533">i915#533</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@kms_pipe_crc_basic@disable-=
crc-after-crtc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@kms_pipe_crc_basic@nonblock=
ing-crc-pipe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_102879v1/shard-skl4/igt@kms_plane@plane-panning-bottom=
-right-suspend@pipe-a-planes.html">INCOMPLETE</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4939">i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-=
a-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102879v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@kms_plane_alpha_blend@pipe-=
c-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-y:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb6/igt@kms_plane_lowres@pipe-d-ti=
ling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3536">i915#3536</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_plane_multiple@atomic-=
pipe-d-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5288">i915#5288</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-do=
wnscale:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-iclb6/igt@kms_plane_scaling@planes-downscale-factor-0-5=
@pipe-a-edp-1-planes-downscale.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb2/igt@kms_plane_s=
caling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915=
#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-skl9/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@kms_psr2_su@frontbuffer-xrg=
b8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v=
1/shard-iclb8/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_psr@psr2_sprite_plane_=
move.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3467">i915#3467</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11528/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-ov=
erlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_102879v1/shard-tglb1/igt@kms_psr_stress_test@flip-primary-inv=
alidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5519">i915#5519</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11528/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-ov=
erlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_102879v1/shard-iclb4/igt@kms_psr_stress_test@flip-primary-inv=
alidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5519">i915#5519</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102879v1/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102879v1/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb7/igt@kms_vrr@flip-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-rg:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb3/igt@nouveau_crc@pipe-c-source-=
rg.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-skl7/igt@perf@enable-disable.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-skl=
3/igt@perf@enable-disable.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1352">i915#1352</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-skl9/igt@perf@short-reads.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/51">i915#5=
1</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_3:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb6/igt@prime_nv_pcopy@test3_3.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
91">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-kbl3/igt@syncobj_timeline@invalid-tr=
ansfer-non-existent-point.html">DMESG-WARN</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5098">i915#5098</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-skl9/igt@sysfs_clients@fair-1.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@sysfs_clients@sema-10.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-apl3/igt@sysfs_clients@sema-25.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102879v1/shard-tglb6/igt@sysfs_clients@sema-50.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102879v1/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-tglb3/igt@gem_exec_endless@dispatch@vcs0.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i9=
15#3778</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_102879v1/shard-tglb2/igt@gem_exec_endless@dispatch@vcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2879v1/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-glk6/igt@gem_exec_whisper@basic-fds-all.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915=
#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102879v1/shard-glk4/igt@gem_exec_whisper@basic-fds-all.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/=
shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5161">i9=
15#5161</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_102879v1/shard-snb6/igt@gem_mmap_gtt@fault-concurrent-y.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-tglb7/igt@i915_pm_rpm@system-suspend-modeset.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2411=
">i915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5420">i915#5420</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_102879v1/shard-tglb7/igt@i915_pm_rpm@system-suspend-modeset=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-skl3/igt@i915_selftest@live@gem_contexts.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5502">i9=
15#5502</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_102879v1/shard-skl8/igt@i915_selftest@live@gem_contexts.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-kbl4/igt@i915_suspend@forcewake.html">INCOMPLETE</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/=
shard-kbl3/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-legacy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5072"=
>i915#5072</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_102879v1/shard-iclb3/igt@kms_cursor_legacy@cursor-vs-flip-legacy.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb5/igt@kms_cursor_legac=
y@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@fill-fb:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-snb4/igt@kms_draw_crc@fill-fb.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v=
1/shard-snb4/igt@kms_draw_crc@fill-fb.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2879v1/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102879v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank=
-interruptible@a-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-skl7/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915=
#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102879v1/shard-skl1/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3701">i915#3701</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-iclb8/igt@kms_flip_scaled_c=
rc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_102879v1/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-=
pipe-c.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-b-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@kms_plane@plane-pann=
ing-bottom-right-suspend@pipe-b-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-=
1-scaler-with-pixel-format:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-iclb2/igt@kms_plane_scaling@scaler-with-pixel-format-un=
ity-scaling@pipe-b-edp-1-scaler-with-pixel-format.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5395">i915#5395</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10287=
9v1/shard-iclb7/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scalin=
g@pipe-b-edp-1-scaler-with-pixel-format.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-iclb5/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2879v1/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3648">i915#36=
48</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_102879v1/shard-tglb1/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/232">i915#232</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_102879v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5614">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2852">i915=
#2852</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102879v1/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102879v1/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2851">i915#28=
51</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-skl6/igt@gem_exec_fair@basic-sync@rcs0.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
102879v1/shard-skl9/igt@gem_exec_fair@basic-sync@rcs0.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#18=
88</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-skl6/igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102879v1/shard-skl9/igt@kms_cursor_crc@pipe-d-cursor-32=
x32-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_102879v1/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continu=
ous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_102879v1/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-c=
ontinuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11528/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-apl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11528/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#=
5257</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102879v1/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl1/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_102879v1/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-apl4/=
igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11528/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11528/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl1/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11528/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl1/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1528/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1152=
8/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl7/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/s=
hard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11528/shard-kbl6/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11528/shar=
d-kbl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl6/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_102879v1/shard-kbl3/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/sh=
ard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2879v1/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102879v1/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl7/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_102879v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kb=
l1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_102879v1/shard-kbl1/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102879v1=
/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_102879v1/shard-kbl6/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11528 -&gt; Patchwork_102879v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11528: bd638cf6c04abbc39e46649f820253a303131df5 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6441: a44d1d4c9e7198a2d59d7dcaae38e340f7cadcf9 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102879v1: bd638cf6c04abbc39e46649f820253a303131df5 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1250404828574008816==--
