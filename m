Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CA2525BDF
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 08:58:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BAAE10E22E;
	Fri, 13 May 2022 06:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 13A7610E02D;
 Fri, 13 May 2022 06:58:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 076CBAADD6;
 Fri, 13 May 2022 06:58:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3228114327759742311=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Fri, 13 May 2022 06:58:55 -0000
Message-ID: <165242513598.9640.4221417210778400185@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1652405421.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1652405421.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Media_freq_factor_and_per-gt_enhancements/fixes_=28rev?=
 =?utf-8?q?6=29?=
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

--===============3228114327759742311==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Media freq factor and per-gt enhancements/fixes (rev6)
URL   : https://patchwork.freedesktop.org/series/102665/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11646_full -> Patchwork_102665v6_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102665v6_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102665v6_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102665v6_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@i915_pm_freq_mult@media-freq@gt0} (NEW):
    - shard-iclb:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@prime_self_import@export-vs-gem_close-race:
    - shard-tglb:         [PASS][2] -> [FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb5/igt@prime_self_import@export-vs-gem_close-race.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@prime_self_import@export-vs-gem_close-race.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_hdr@bpc-switch@pipe-a-edp-1}:
    - shard-skl:          NOTRUN -> [FAIL][4] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl10/igt@kms_hdr@bpc-switch@pipe-a-edp-1.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11646_full and Patchwork_102665v6_full:

### New IGT tests (2) ###

  * igt@i915_pm_freq_mult@media-freq:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_102665v6_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [FAIL][52], [PASS][53], [PASS][54]) ([i915#4392])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk3/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk9/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk9/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk9/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk8/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk8/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk1/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk5/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk5/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk5/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk4/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk3/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk3/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk4/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk4/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#111827])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@feature_discovery@chamelium.html
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#111827])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb3/igt@feature_discovery@chamelium.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([i915#658]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@feature_discovery@psr2.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-glk:          NOTRUN -> [SKIP][58] ([fdo#109271]) +129 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
    - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#5327])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
    - shard-tglb:         NOTRUN -> [SKIP][60] ([i915#5325])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#1099]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#280])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@parallel:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][63] ([i915#5076] / [i915#5614])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#4525])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_endless@dispatch@vcs0:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][65] ([i915#3778])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb6/igt@gem_exec_endless@dispatch@vcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][66] ([i915#2842])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][67] -> [FAIL][68] ([i915#2842]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-snb:          NOTRUN -> [SKIP][69] ([fdo#109271]) +331 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109313])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb3/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
    - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#109313])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-snb:          [PASS][72] -> [SKIP][73] ([fdo#109271]) +3 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_params@no-bsd:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#109283])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb6/igt@gem_exec_params@no-bsd.html

  * igt@gem_exec_params@no-vebox:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271]) +231 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl5/igt@gem_exec_params@no-vebox.html
    - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109283])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@gem_exec_params@no-vebox.html
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#109283] / [i915#4877])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@gem_exec_params@no-vebox.html

  * igt@gem_huc_copy@huc-copy:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#2190])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@gem_huc_copy@huc-copy.html
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2190])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@gem_huc_copy@huc-copy.html
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2190])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl5/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#4613]) +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb7/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#4613]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#4613]) +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl2/igt@gem_lmem_swapping@parallel-multi.html
    - shard-glk:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#4613]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk9/igt@gem_lmem_swapping@parallel-multi.html
    - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#4613])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#4613]) +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl8/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          [PASS][87] -> [INCOMPLETE][88] ([i915#5161])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-y.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][89] ([i915#2658])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk2/igt@gem_pread@exhaustion.html
    - shard-snb:          NOTRUN -> [WARN][90] ([i915#2658])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-snb5/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#4270]) +5 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([i915#4270]) +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271]) +242 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl7/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
    - shard-iclb:         NOTRUN -> [SKIP][94] ([i915#768]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_softpin@evict-single-offset:
    - shard-kbl:          NOTRUN -> [FAIL][95] ([i915#4171])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@gem_softpin@evict-single-offset.html
    - shard-glk:          NOTRUN -> [FAIL][96] ([i915#4171])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk9/igt@gem_softpin@evict-single-offset.html
    - shard-apl:          NOTRUN -> [FAIL][97] ([i915#4171])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl2/igt@gem_softpin@evict-single-offset.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#3297]) +5 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@gem_userptr_blits@unsync-unmap-cycles.html
    - shard-iclb:         NOTRUN -> [SKIP][99] ([i915#3297]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb3/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen3_render_linear_blits:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109289]) +6 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb8/igt@gen3_render_linear_blits.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109289]) +4 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-tglb:         NOTRUN -> [SKIP][102] ([i915#2527] / [i915#2856]) +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb5/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([i915#2856]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb6/igt@gen9_exec_parse@batch-zero-length.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][104] -> [DMESG-WARN][105] ([i915#1982])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl2/igt@i915_module_load@reload-with-fault-injection.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-tglb:         NOTRUN -> [SKIP][106] ([i915#1904])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         NOTRUN -> [FAIL][107] ([i915#454])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          NOTRUN -> [FAIL][108] ([i915#454])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][109] -> [SKIP][110] ([i915#4281])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#111644] / [i915#1397] / [i915#2411]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109293] / [fdo#109506]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#110892]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-tglb:         NOTRUN -> [SKIP][114] ([fdo#109506] / [i915#2411])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#4387])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@i915_pm_sseu@full-enable.html
    - shard-iclb:         NOTRUN -> [SKIP][116] ([i915#4387])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-unsupported:
    - shard-tglb:         NOTRUN -> [SKIP][117] ([fdo#109302])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@i915_query@query-topology-unsupported.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][118] ([i915#2373])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][119] ([i915#1759])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@i915_selftest@live@gt_pm.html

  * igt@kms_atomic@atomic_plane_damage:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#4765])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb3/igt@kms_atomic@atomic_plane_damage.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([i915#1769]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
    - shard-tglb:         NOTRUN -> [SKIP][122] ([i915#1769]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][123] ([i915#5286]) +4 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][124] ([i915#5286]) +7 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][125] ([fdo#111614]) +6 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][126] ([fdo#110725] / [fdo#111614]) +5 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][127] ([i915#3743])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271]) +206 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
    - shard-iclb:         NOTRUN -> [SKIP][129] ([fdo#110723]) +4 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_joiner@basic:
    - shard-tglb:         NOTRUN -> [SKIP][130] ([i915#2705]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@kms_big_joiner@basic.html
    - shard-iclb:         NOTRUN -> [SKIP][131] ([i915#2705]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb6/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][132] ([i915#3689]) +13 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#3886]) +4 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
    - shard-iclb:         NOTRUN -> [SKIP][134] ([fdo#109278] / [i915#3886]) +5 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
    - shard-apl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#3886]) +7 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
    - shard-kbl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#3886]) +10 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl4/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][137] ([fdo#111615] / [i915#3689]) +4 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb8/igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#3886]) +5 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
    - shard-tglb:         NOTRUN -> [SKIP][139] ([i915#3689] / [i915#3886]) +4 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb5/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-iclb:         NOTRUN -> [SKIP][140] ([i915#3742])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb7/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [fdo#111827]) +18 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl2/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@dp-hpd-storm:
    - shard-iclb:         NOTRUN -> [SKIP][142] ([fdo#109284] / [fdo#111827]) +13 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb6/igt@kms_chamelium@dp-hpd-storm.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl10/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@hdmi-edid-read:
    - shard-tglb:         NOTRUN -> [SKIP][144] ([fdo#109284] / [fdo#111827]) +19 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb6/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][145] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-snb:          NOTRUN -> [SKIP][146] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-snb6/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color@pipe-b-deep-color:
    - shard-iclb:         NOTRUN -> [SKIP][147] ([fdo#109278] / [i915#3555])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_color@pipe-b-deep-color.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-iclb:         NOTRUN -> [SKIP][148] ([fdo#109278] / [i915#1149])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb4/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-75:
    - shard-iclb:         NOTRUN -> [SKIP][149] ([fdo#109278] / [fdo#109284] / [fdo#111827]) +2 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_color_chamelium@pipe-d-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-glk:          NOTRUN -> [SKIP][150] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk4/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglb:         NOTRUN -> [SKIP][151] ([i915#3116] / [i915#3299]) +2 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb3/igt@kms_content_protection@dp-mst-type-0.html
    - shard-iclb:         NOTRUN -> [SKIP][152] ([i915#3116])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][153] ([i915#1319])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl4/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@mei_interface:
    - shard-iclb:         NOTRUN -> [SKIP][154] ([fdo#109300] / [fdo#111066]) +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb4/igt@kms_content_protection@mei_interface.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][155] ([i915#2105])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl3/igt@kms_content_protection@uevent.html
    - shard-tglb:         NOTRUN -> [SKIP][156] ([i915#1063]) +1 similar issue
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb8/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][157] ([fdo#109278]) +47 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][158] ([fdo#109278] / [fdo#109279]) +2 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][159] ([i915#3319]) +5 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [PASS][160] -> [SKIP][161] ([fdo#109271]) +24 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][162] ([i915#3359]) +9 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x170-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][163] ([fdo#109279] / [i915#3359]) +9 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][164] ([fdo#109274] / [fdo#109278])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-tglb:         NOTRUN -> [SKIP][165] ([i915#4103]) +2 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][166] ([i915#5287]) +7 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb6/igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][167] ([i915#5287]) +3 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-4tiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][168] -> [FAIL][169] ([i915#4767])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][170] ([fdo#109274] / [fdo#111825]) +8 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][171] ([fdo#109274]) +2 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][172] -> [FAIL][173] ([i915#79]) +2 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][174] ([i915#79])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][175] -> [DMESG-WARN][176] ([i915#180]) +3 similar issues
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][177] -> [FAIL][178] ([i915#2122])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         NOTRUN -> [SKIP][179] ([i915#3701])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-tglb:         NOTRUN -> [SKIP][180] ([i915#2587])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
    - shard-skl:          NOTRUN -> [SKIP][181] ([fdo#109271] / [i915#3701])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-iclb:         [PASS][182] -> [SKIP][183] ([i915#3701])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling:
    - shard-iclb:         NOTRUN -> [SKIP][184] ([i915#2587])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-glk:          [PASS][185] -> [FAIL][186] ([i915#2546])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-tglb:         NOTRUN -> [SKIP][187] ([fdo#109280] / [fdo#111825]) +43 similar issues
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][188] ([fdo#109280]) +36 similar issues
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-glk:          NOTRUN -> [SKIP][189] ([fdo#109271] / [i915#533]) +2 similar issues
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][190] ([fdo#109271] / [i915#533]) +2 similar issues
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][191] ([fdo#109271] / [i915#533]) +1 similar issue
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl4/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
    - shard-apl:          NOTRUN -> [SKIP][192] ([fdo#109271] / [i915#533]) +1 similar issue
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          [PASS][193] -> [DMESG-WARN][194] ([i915#180]) +2 similar issues
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][195] ([fdo#108145] / [i915#265])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][196] -> [FAIL][197] ([fdo#108145] / [i915#265])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][198] ([fdo#108145] / [i915#265]) +3 similar issues
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][199] ([fdo#108145] / [i915#265])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_lowres@pipe-a-tiling-yf:
    - shard-iclb:         NOTRUN -> [SKIP][200] ([i915#3536]) +2 similar issues
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb3/igt@kms_plane_lowres@pipe-a-tiling-yf.html

  * igt@kms_plane_lowres@pipe-b-tiling-4:
    - shard-tglb:         NOTRUN -> [SKIP][201] ([i915#5288]) +2 similar issues
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@kms_plane_lowres@pipe-b-tiling-4.html
    - shard-iclb:         NOTRUN -> [SKIP][202] ([i915#5288]) +1 similar issue
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_plane_lowres@pipe-b-tiling-4.html

  * igt@kms_plane_lowres@pipe-b-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][203] ([fdo#111615] / [fdo#112054]) +1 similar issue
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb5/igt@kms_plane_lowres@pipe-b-tiling-yf.html

  * igt@kms_plane_lowres@pipe-d-tiling-y:
    - shard-tglb:         NOTRUN -> [SKIP][204] ([i915#3536]) +1 similar issue
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@kms_plane_lowres@pipe-d-tiling-y.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][205] ([fdo#111615]) +9 similar issues
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb3/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_plane_scaling@downscale-with-modifier-factor-0-25@pipe-a-edp-1-downscale-with-modifier:
    - shard-skl:          NOTRUN -> [SKIP][206] ([fdo#109271] / [i915#5176]) +2 similar issues
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl4/igt@kms_plane_scaling@downscale-with-modifier-factor-0-25@pipe-a-edp-1-downscale-with-modifier.html

  * igt@kms_plane_scaling@downscale-with-modifier-factor-0-25@pipe-c-edp-1-downscale-with-modifier:
    - shard-iclb:         NOTRUN -> [SKIP][207] ([i915#5176]) +2 similar issues
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@kms_plane_scaling@downscale-with-modifier-factor-0-25@pipe-c-edp-1-downscale-with-modifier.html

  * igt@kms_plane_scaling@downscale-with-modifier-factor-0-25@pipe-d-edp-1-downscale-with-modifier:
    - shard-tglb:         NOTRUN -> [SKIP][208] ([i915#5176]) +3 similar issues
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb6/igt@kms_plane_scaling@downscale-with-modifier-factor-0-25@pipe-d-edp-1-downscale-with-modifier.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-edp-1-planes-downscale:
    - shard-iclb:         NOTRUN -> [SKIP][209] ([i915#5235]) +2 similar issues
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-edp-1-planes-downscale.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1-planes-upscale-downscale:
    - shard-tglb:         NOTRUN -> [SKIP][210] ([i915#5235]) +7 similar issues
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1-planes-upscale-downscale.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][211] ([fdo#109271] / [i915#658]) +1 similar issue
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl9/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
    - shard-kbl:          NOTRUN -> [SKIP][212] ([fdo#109271] / [i915#658]) +3 similar issues
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         NOTRUN -> [SKIP][213] ([fdo#111068] / [i915#658]) +1 similar issue
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
    - shard-apl:          NOTRUN -> [SKIP][214] ([fdo#109271] / [i915#658])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
    - shard-tglb:         NOTRUN -> [SKIP][215] ([i915#2920]) +1 similar issue
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
    - shard-glk:          NOTRUN -> [SKIP][216] ([fdo#109271] / [i915#658])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][217] ([fdo#109441]) +3 similar issues
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-tglb:         NOTRUN -> [FAIL][218] ([i915#132] / [i915#3467]) +5 similar issues
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][219] -> [SKIP][220] ([fdo#109441]) +1 similar issue
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:
    - shard-iclb:         NOTRUN -> [SKIP][221] ([i915#5030]) +2 similar issues
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb7/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-iclb:         NOTRUN -> [SKIP][222] ([i915#3555]) +1 similar issue
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][223] ([i915#180])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_vrr@flip-basic:
    - shard-tglb:         NOTRUN -> [SKIP][224] ([i915#3555]) +3 similar issues
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@kms_vrr@flip-basic.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-tglb:         NOTRUN -> [SKIP][225] ([i915#2437]) +1 similar issue
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb5/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-kbl:          NOTRUN -> [SKIP][226] ([fdo#109271] / [i915#2437])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-a-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][227] ([i915#2530]) +2 similar issues
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@nouveau_crc@pipe-a-source-rg.html

  * igt@nouveau_crc@pipe-b-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][228] ([i915#2530]) +4 similar issues
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb8/igt@nouveau_crc@pipe-b-ctx-flip-detection.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-tglb:         NOTRUN -> [SKIP][229] ([fdo#109291]) +11 similar issues
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb3/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@prime_nv_test@nv_i915_sharing:
    - shard-iclb:         NOTRUN -> [SKIP][230] ([fdo#109291]) +7 similar issues
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb6/igt@prime_nv_test@nv_i915_sharing.html

  * igt@prime_vgem@fence-write-hang:
    - shard-iclb:         NOTRUN -> [SKIP][231] ([fdo#109295])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb7/igt@prime_vgem@fence-write-hang.html
    - shard-tglb:         NOTRUN -> [SKIP][232] ([fdo#109295])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@prime_vgem@fence-write-hang.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-apl:          NOTRUN -> [DMESG-WARN][233] ([i915#5098])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl2/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@busy:
    - shard-tglb:         NOTRUN -> [SKIP][234] ([i915#2994]) +1 similar issue
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@fair-3:
    - shard-apl:          NOTRUN -> [SKIP][235] ([fdo#109271] / [i915#2994])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl2/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@recycle:
    - shard-iclb:         NOTRUN -> [SKIP][236] ([i915#2994])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-kbl:          NOTRUN -> [SKIP][237] ([fdo#109271] / [i915#2994])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl3/igt@sysfs_clients@recycle-many.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-iclb:         NOTRUN -> [SKIP][238] ([fdo#109307])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb7/igt@tools_test@sysfs_l3_parity.html
    - shard-tglb:         NOTRUN -> [SKIP][239] ([fdo#109307])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-skl:          [INCOMPLETE][240] ([i915#4793]) -> [PASS][241]
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][242] ([i915#2846]) -> [PASS][243]
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk7/igt@gem_exec_fair@basic-deadline.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [FAIL][244] ([i915#2842]) -> [PASS][245]
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][246] ([i915#2842]) -> [PASS][247] +1 similar issue
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglb:         [FAIL][248] ([i915#2842]) -> [PASS][249] +1 similar issue
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [INCOMPLETE][250] ([i915#4939]) -> [PASS][251]
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl7/igt@i915_suspend@debugfs-reader.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl10/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@system-suspend-without-i915:
    - shard-snb:          [DMESG-WARN][252] -> [PASS][253]
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-snb6/igt@i915_suspend@system-suspend-without-i915.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-snb6/igt@i915_suspend@system-suspend-without-i915.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-snb:          [INCOMPLETE][254] -> [PASS][255]
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-skl:          [SKIP][256] ([fdo#109271]) -> [PASS][257] +38 similar issues
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl1/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][258] ([i915#180] / [i915#1982]) -> [PASS][259]
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [DMESG-WARN][260] ([i915#180]) -> [PASS][261] +1 similar issue
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][262] ([i915#2122]) -> [PASS][263]
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-tglb:         [INCOMPLETE][264] -> [PASS][265]
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
    - shard-iclb:         [SKIP][266] ([i915#5235]) -> [PASS][267] +2 similar issues
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-iclb:         [SKIP][268] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb5/igt@kms_psr2_su@page_flip-xrgb8888.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][270] ([fdo#109441]) -> [PASS][271]
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [SKIP][272] ([i915#5519]) -> [PASS][273]
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [SKIP][274] ([i915#5519]) -> [PASS][275]
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][276] ([i915#4525]) -> [DMESG-WARN][277] ([i915#5614])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [DMESG-WARN][278] ([i915#5614]) -> [SKIP][279] ([i915#4525]) +1 similar issue
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [DMESG-FAIL][280] ([i915#5614]) -> [SKIP][281] ([i915#4525])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          [SKIP][282] ([fdo#109271]) -> [FAIL][283] ([i915#3743]) +1 similar issue
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          [SKIP][284] ([fdo#109271]) -> [SKIP][285] ([fdo#109271] / [i915#3886]) +2 similar issues
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl9/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          [SKIP][286] ([fdo#109271] / [i915#1888] / [i915#3886]) -> [SKIP][287] ([fdo#109271] / [i915#3886])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl10/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl10/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-skl:          [SKIP][288] ([fdo#109271] / [i915#3886]) -> [SKIP][289] ([fdo#109271]) +1 similar issue
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl10/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl1/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
    - shard-skl:          [SKIP][290] ([fdo#109271]) -> [SKIP][291] ([fdo#109271] / [i915#3701])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-skl:          [FAIL][292] ([fdo#108145] / [i915#265]) -> [SKIP][293] ([fdo#109271])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][294] ([i915#658]) -> [SKIP][295] ([i915#2920])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][296] ([i915#2920]) -> [SKIP][297] ([i915#658])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-iclb4/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][298], [FAIL][299], [FAIL][300], [FAIL][301], [FAIL][302], [FAIL][303], [FAIL][304], [FAIL][305], [FAIL][306], [FAIL][307], [FAIL][308], [FAIL][309], [FAIL][310]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92]) -> ([FAIL][311], [FAIL][312], [FAIL][313], [FAIL][314], [FAIL][315], [FAIL][316], [FAIL][317], [FAIL][318], [FAIL][319], [FAIL][320], [FAIL][321], [FAIL][322], [FAIL][323], [FAIL][324]) ([i915#180] / [i915#4312] / [i915#5257] / [i915#92])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl6/igt@runner@aborted.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl6/igt@runner@aborted.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl6/igt@runner@aborted.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl6/igt@runner@aborted.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl6/igt@runner@aborted.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl3/igt@runner@aborted.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl1/igt@runner@aborted.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl4/igt@runner@aborted.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl4/igt@runner@aborted.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl3/igt@runner@aborted.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl1/igt@runner@aborted.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl1/igt@runner@aborted.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl4/igt@runner@aborted.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@runner@aborted.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@runner@aborted.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@runner@aborted.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@runner@aborted.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@runner@aborted.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl3/igt@runner@aborted.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@runner@aborted.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl4/igt@runner@aborted.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@runner@aborted.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl7/igt@runner@aborted.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl7/igt@runner@aborted.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@runner@aborted.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@runner@aborted.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][325], [FAIL][326], [FAIL][327], [FAIL][328], [FAIL][329], [FAIL][330], [FAIL][331], [FAIL][332]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][333], [FAIL][334], [FAIL][335], [FAIL][336], [FAIL][337], [FAIL][338], [FAIL][339], [FAIL][340]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl7/igt@runner@aborted.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl1/igt@runner@aborted.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl2/igt@runner@aborted.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl6/igt@runner@aborted.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl6/igt@runner@aborted.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl8/igt@runner@aborted.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl2/igt@runner@aborted.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl1/igt@runner@aborted.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl8/igt@runner@aborted.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl7/igt@runner@aborted.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl4/igt@runner@aborted.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl7/igt@runner@aborted.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl7/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][341], [FAIL][342], [FAIL][343], [FAIL][344], [FAIL][345], [FAIL][346], [FAIL][347], [FAIL][348], [FAIL][349], [FAIL][350], [FAIL][351]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][352], [FAIL][353], [FAIL][354], [FAIL][355], [FAIL][356], [FAIL][357], [FAIL][358], [FAIL][359], [FAIL][360]) ([i915#4312] / [i915#5257])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb8/igt@runner@aborted.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb8/igt@runner@aborted.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb5/igt@runner@aborted.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb7/igt@runner@aborted.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb8/igt@runner@aborted.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb2/igt@runner@aborted.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb2/igt@runner@aborted.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb6/igt@runner@aborted.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb7/igt@runner@aborted.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb3/igt@runner@aborted.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb7/igt@runner@aborted.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb3/igt@runner@aborted.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb3/igt@runner@aborted.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb5/igt@runner@aborted.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@runner@aborted.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@runner@aborted.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb5/igt@runner@aborted.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb5/igt@runner@aborted.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@runner@aborted.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1904]: https://gitlab.freedesktop.org/drm/intel/issues/1904
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4765]: https://gitlab.freedesktop.org/drm/intel/issues/4765
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4793]: https://gitlab.freedesktop.org/drm/intel/issues/4793
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
  [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
  [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
  [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Build changes
-------------

  * IGT: IGT_6471 -> IGTPW_7094
  * Linux: CI_DRM_11646 -> Patchwork_102665v6

  CI-20190529: 20190529
  CI_DRM_11646: 8e5417afe580e2eac869c09e1454d174078523fd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_7094: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7094/index.html
  IGT_6471: 1d6816f1200520f936a799b7b0ef2e6f396abb16 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102665v6: 8e5417afe580e2eac869c09e1454d174078523fd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/index.html

--===============3228114327759742311==
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
<tr><td><b>Series:</b></td><td>drm/i915: Media freq factor and per-gt enhan=
cements/fixes (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/102665/">https://patchwork.freedesktop.org/series/102665/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102665v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11646_full -&gt; Patchwork_102665v=
6_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102665v6_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_102665v6_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
102665v6_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@i915_pm_freq_mult@media-freq@gt0} (NEW):</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@i915_pm_freq_mult@media-fr=
eq@gt0.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@export-vs-gem_close-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-tglb5/igt@prime_self_import@export-vs-gem_close-race.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_102665v6/shard-tglb2/igt@prime_self_import@export-vs-gem_close-race.h=
tml">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_hdr@bpc-switch@pipe-a-edp-1}:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-skl10/igt@kms_hdr@bpc-switch@pipe-a-=
edp-1.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11646_full and Patchwork_1=
02665v6_full:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@i915_pm_freq_mult@media-freq:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102665v6_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11646/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11646/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11646/shard-glk7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/sha=
rd-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11646/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11646/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11646/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11646/shard-glk3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1646/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11646/shard-glk1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11646/shard-glk9/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk3/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102=
665v6/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_102665v6/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_102665v6/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/sh=
ard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_102665v6/shard-glk1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2665v6/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_102665v6/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_102665v6/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/sh=
ard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_102665v6/shard-glk6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2665v6/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_102665v6/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_102665v6/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/sh=
ard-glk3/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_102665v6/shard-glk4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-glk4/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4392=
">i915#4392</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@chamelium:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@feature_discovery@chamelium=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb3/igt@feature_discovery@chamelium=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@feature_discovery@psr2.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658=
">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-glk5/igt@gem_ccs@ctrl-surf-copy-new-c=
tx.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +129 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@gem_ccs@ctrl-surf-copy-new-=
ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5327">i915#5327</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb6/igt@gem_ccs@ctrl-surf-copy-new-=
ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5325">i915#5325</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-snb2/igt@gem_ctx_persistence@legacy-=
engines-mixed-process.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1099">i915#1099</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/280">=
i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@gem_exec_balancer@parallel.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5076">i915#5076</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5614">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb6/igt@gem_exec_endless@dispatch@=
vcs0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3778">i915#3778</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@gem_exec_fair@basic-none-s=
olo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v=
6/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-snb5/igt@gem_exec_flush@basic-batch-k=
ernel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a>) +331 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb3/igt@gem_exec_flush@basic-batch-=
kernel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109313">fdo#109313</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@gem_exec_flush@basic-batch-=
kernel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109313">fdo#109313</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-uc.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102665v6/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb6/igt@gem_exec_params@no-bsd.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
83">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-skl5/igt@gem_exec_params@no-vebox.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a>) +231 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@gem_exec_params@no-vebox.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
283">fdo#109283</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@gem_exec_params@no-vebox.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
283">fdo#109283</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4877">i915#4877</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190"=
>i915#2190</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@gem_huc_copy@huc-copy.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2190">i915#2190</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-skl5/igt@gem_huc_copy@huc-copy.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb7/igt@gem_lmem_swapping@heavy-ver=
ify-multi-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@gem_lmem_swapping@heavy-ver=
ify-multi-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-apl2/igt@gem_lmem_swapping@parallel-m=
ulti.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>) +2 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-glk9/igt@gem_lmem_swapping@parallel-m=
ulti.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@gem_lmem_swapping@parallel-m=
ulti.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-skl8/igt@gem_lmem_swapping@verify-ra=
ndom-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-y.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665=
v6/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5161">i915#5161</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-glk2/igt@gem_pread@exhaustion.html">W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i=
915#2658</a>)</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-snb5/igt@gem_pread@exhaustion.html">W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i=
915#2658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@gem_pxp@protected-raw-src-=
copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4270">i915#4270</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@gem_pxp@reject-modify-cont=
ext-protection-off-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4270">i915#4270</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-kbl7/igt@gem_render_copy@x-tiled-to-v=
ebox-yf-tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +242 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@gem_render_copy@x-tiled-to-=
vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/768">i915#768</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@gem_softpin@evict-single-off=
set.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4171">i915#4171</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-glk9/igt@gem_softpin@evict-single-off=
set.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4171">i915#4171</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-apl2/igt@gem_softpin@evict-single-off=
set.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4171">i915#4171</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@gem_userptr_blits@unsync-un=
map-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3297">i915#3297</a>) +5 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb3/igt@gem_userptr_blits@unsync-un=
map-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3297">i915#3297</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb8/igt@gen3_render_linear_blits.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@gen7_exec_parse@batch-with=
out-end.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb5/igt@gen9_exec_parse@allowed-si=
ngle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2856">i915#2856</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb6/igt@gen9_exec_parse@batch-zero=
-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2856">i915#2856</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl2/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102665v6/shard-skl6/igt@i915_module_load@reload-with-fault-injection=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@i915_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1904">i915#1904</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb3/igt@i915_pm_dc@dc6-psr.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i91=
5#454</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-skl8/igt@i915_pm_dc@dc6-psr.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915=
#454</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-ic=
lb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@i915_pm_rpm@dpms-mode-unse=
t-non-lpsp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111644">fdo#111644</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1397">i915#1397</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2411">i915#2411</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb7/igt@i915_pm_rpm@gem-execbuf-st=
ress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109506">fdo#109506</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@i915_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D110892">fdo#110892</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@i915_pm_rpm@modeset-pc8-re=
sidency-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109506">fdo#109506</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@i915_pm_sseu@full-enable.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/43=
87">i915#4387</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@i915_pm_sseu@full-enable.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/43=
87">i915#4387</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@i915_query@query-topology-=
unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@i915_selftest@live@gt_lrc.=
html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2373">i915#2373</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@i915_selftest@live@gt_pm.h=
tml">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1759">i915#1759</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic_plane_damage:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb3/igt@kms_atomic@atomic_plane_da=
mage.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4765">i915#4765</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1769">i915#1769</a>) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1769">i915#1769</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_big_fb@4-tiled-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5286">i915#5286</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5286">i915#5286</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@kms_big_fb@x-tiled-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@kms_big_fb@x-tiled-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111614">fdo#111614</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-s=
tride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +206 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb4/igt@kms_big_fb@yf-tiled-max-hw-=
stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D110723">fdo#110723</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@kms_big_joiner@basic.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2705">=
i915#2705</a>) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb6/igt@kms_big_joiner@basic.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2705">=
i915#2705</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@kms_ccs@pipe-a-bad-pixel-f=
ormat-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3689">i915#3689</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-glk2/igt@kms_ccs@pipe-a-crc-sprite-pl=
anes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar iss=
ues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb1/igt@kms_ccs@pipe-a-crc-sprite-p=
lanes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar is=
sues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-apl8/igt@kms_ccs@pipe-a-crc-sprite-pl=
anes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +7 similar iss=
ues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-kbl4/igt@kms_ccs@pipe-a-crc-sprite-pl=
anes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +10 similar is=
sues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb8/igt@kms_ccs@pipe-a-random-ccs-=
data-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-anothe=
r-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb5/igt@kms_ccs@pipe-b-ccs-on-anoth=
er-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb7/igt@kms_cdclk@mode-transition.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-apl2/igt@kms_chamelium@dp-crc-multip=
le.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb6/igt@kms_chamelium@dp-hpd-storm=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-skl10/igt@kms_chamelium@hdmi-aspect-=
ratio.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb6/igt@kms_chamelium@hdmi-edid-re=
ad.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@kms_chamelium@hdmi-hpd-stor=
m.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-snb6/igt@kms_chamelium@vga-hpd-witho=
ut-ddc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111827">fdo#111827</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-deep-color:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_color@pipe-b-deep-colo=
r.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb4/igt@kms_color@pipe-d-ctm-max.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1149">i915#1149</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-75:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_color_chamelium@pipe-d=
-ctm-0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-glk4/igt@kms_color_chamelium@pipe-d-=
degamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb3/igt@kms_content_protection@dp-m=
st-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3299">i915#3299</a>) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@kms_content_protection@dp-m=
st-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3116">i915#3116</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-kbl4/igt@kms_content_protection@lic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb4/igt@kms_content_protection@mei=
_interface.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109300">fdo#109300</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111066">fdo#111066</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-kbl3/igt@kms_content_protection@ueven=
t.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2105">i915#2105</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb8/igt@kms_content_protection@ueve=
nt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1063">i915#1063</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb4/igt@kms_cursor_crc@pipe-a-curs=
or-max-size-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109278">fdo#109278</a>) +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb4/igt@kms_cursor_crc@pipe-b-curs=
or-512x170-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109279">fdo#109279</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb6/igt@kms_cursor_crc@pipe-c-curs=
or-32x32-onscreen.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3319">i915#3319</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102665v6/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a>) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@kms_cursor_crc@pipe-d-curs=
or-512x170-rapid-movement.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3359">i915#3359</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@kms_cursor_crc@pipe-d-curs=
or-512x512-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109279">fdo#109279</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3359">i915#3359</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb6/igt@kms_cursor_legacy@cursorb-=
vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb6/igt@kms_draw_crc@draw-method-r=
gb565-pwrite-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5287">i915#5287</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb3/igt@kms_draw_crc@draw-method-x=
rgb2101010-mmap-gtt-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5287">i915#5287</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/sha=
rd-skl6/igt@kms_fbcon_fbt@psr-suspend.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@kms_flip@2x-blocking-absol=
ute-wf_vblank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +8 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@kms_flip@2x-plain-flip-fb-=
recreate-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109274">fdo#109274</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_102665v6/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-inte=
rruptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/79">i915#79</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-skl3/igt@kms_flip@flip-vs-expired-vb=
lank@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102665v6/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_102665v6/shard-skl1/igt@kms_flip@plain-flip-ts-check-interrupti=
ble@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@kms_flip_scaled_crc@flip-32=
bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-skl1/igt@kms_flip_scaled_crc@flip-32b=
pp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-64bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilercccs-upscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-s=
hrfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_102665v6/shard-glk2/igt@kms_frontbuffer_tracking@=
fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +43 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +36 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-glk6/igt@kms_pipe_crc_basic@disable-=
crc-after-crtc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/533">i915#533</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-skl4/igt@kms_pipe_crc_basic@hang-rea=
d-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/533">i915#533</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-kbl4/igt@kms_pipe_crc_basic@nonblocki=
ng-crc-pipe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/533">i915#533</a>) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-apl6/igt@kms_pipe_crc_basic@nonblocki=
ng-crc-pipe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/533">i915#533</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-b-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_102665v6/shard-kbl6/igt@kms_plane@plane-panning-bottom=
-right-suspend@pipe-b-planes.html">DMESG-WARN</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-skl4/igt@kms_plane_alpha_blend@pipe-=
a-constant-alpha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102665v6/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@kms_plane_alpha_blend@pipe-=
b-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-apl2/igt@kms_plane_alpha_blend@pipe-=
b-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-yf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb3/igt@kms_plane_lowres@pipe-a-ti=
ling-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3536">i915#3536</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-4:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb2/igt@kms_plane_lowres@pipe-b-til=
ing-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5288">i915#5288</a>) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_plane_lowres@pipe-b-til=
ing-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5288">i915#5288</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb5/igt@kms_plane_lowres@pipe-b-ti=
ling-yf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111615">fdo#111615</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D112054">fdo#112054</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-y:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@kms_plane_lowres@pipe-d-ti=
ling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3536">i915#3536</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb3/igt@kms_plane_multiple@atomic-=
pipe-b-tiling-yf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111615">fdo#111615</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-modifier-factor-0-25@pipe-a-edp-1-d=
ownscale-with-modifier:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-skl4/igt@kms_plane_scaling@downscale=
-with-modifier-factor-0-25@pipe-a-edp-1-downscale-with-modifier.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/517=
6">i915#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-modifier-factor-0-25@pipe-c-edp-1-d=
ownscale-with-modifier:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@kms_plane_scaling@downscal=
e-with-modifier-factor-0-25@pipe-c-edp-1-downscale-with-modifier.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915=
#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-modifier-factor-0-25@pipe-d-edp-1-d=
ownscale-with-modifier:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb6/igt@kms_plane_scaling@downscal=
e-with-modifier-factor-0-25@pipe-d-edp-1-downscale-with-modifier.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915=
#5176</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-edp-1-planes-d=
ownscale:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-b-edp-1-planes-downscale.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-=
edp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-d-edp-1-planes-upscale-downscale.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/52=
35">i915#5235</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-skl9/igt@kms_psr2_sf@overlay-plane-up=
date-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-kbl4/igt@kms_psr2_sf@overlay-plane-up=
date-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-d=
mg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/658">i915#658</a>) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-apl7/igt@kms_psr2_sf@plane-move-sf-dm=
g-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@kms_psr2_sf@plane-move-sf-d=
mg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2920">i915#2920</a>) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-glk6/igt@kms_psr2_sf@plane-move-sf-dm=
g-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_c=
pu.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109441">fdo#109441</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@kms_psr@psr2_cursor_plane_=
onoff.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3467">i915#3467</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6=
/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb7/igt@kms_scaling_modes@scaling-=
mode-none@edp-1-pipe-c.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5030">i915#5030</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb2/igt@kms_setmode@basic-clone-si=
ngle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@kms_vblank@pipe-c-ts-contin=
uation-suspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@kms_vrr@flip-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb5/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2437">i915#2437</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-kbl7/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb5/igt@nouveau_crc@pipe-a-source-=
rg.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2530">i915#2530</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb8/igt@nouveau_crc@pipe-b-ctx-fli=
p-detection.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2530">i915#2530</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb3/igt@prime_nv_api@i915_nv_reimp=
ort_twice_check_flink_name.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109291">fdo#109291</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_i915_sharing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb6/igt@prime_nv_test@nv_i915_shar=
ing.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109291">fdo#109291</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb7/igt@prime_vgem@fence-write-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@prime_vgem@fence-write-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-apl2/igt@syncobj_timeline@invalid-tr=
ansfer-non-existent-point.html">DMESG-WARN</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5098">i915#5098</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@sysfs_clients@busy.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994">i=
915#2994</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-apl2/igt@sysfs_clients@fair-3.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-iclb8/igt@sysfs_clients@recycle.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102665v6/shard-kbl3/igt@sysfs_clients@recycle-many.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-iclb7/igt@tools_test@sysfs_l3_parity.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09307">fdo#109307</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102665v6/shard-tglb1/igt@tools_test@sysfs_l3_parity.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09307">fdo#109307</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
793">i915#4793</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_102665v6/shard-skl1/igt@gem_ctx_isolation@preservation-s3@bcs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-glk7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102=
665v6/shard-glk9/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2665v6/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
02665v6/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-tglb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102665v6/shard-tglb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl7/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4=
939</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_102665v6/shard-skl10/igt@i915_suspend@debugfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@system-suspend-without-i915:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-snb6/igt@i915_suspend@system-suspend-without-i915.html"=
>DMESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_102665v6/shard-snb6/igt@i915_suspend@system-suspend-without-i915.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INC=
OMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102665v6/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_102665v6/shard-skl1/igt@kms_cursor_edge_walk@pipe-b-256x256=
-left-edge.html">PASS</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915=
#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102665v6/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_102665v6/shard-apl8/igt@kms_flip@flip-vs-suspend-interrupt=
ible@a-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_102665v6/shard-skl9/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-a-planes.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@kms_plane@plane-pannin=
g-bottom-right-suspend@pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-e=
dp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6=
/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-=
5@pipe-a-edp-1-planes-upscale-downscale.html">PASS</a> +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb5/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109=
642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068"=
>fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_102665v6/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb4/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2665v6/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_102665v6/shard-tglb8/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_102665v6/shard-iclb4/igt@kms_psr_stress_test@invalidat=
e-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102665v6/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/561=
4">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5614">i915#5614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102665v6/shard-iclb7/igt@gem_exec_balancer@parallel-kee=
p-submit-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4525">i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html">DME=
SG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/561=
4">i915#5614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_102665v6/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/452=
5">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate=
-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_102665v6/shard-skl7/igt@kms_big_fb@yf-tiled-m=
ax-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_r=
c_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_102665v6/shard-skl9/igt@kms_ccs@pipe-a-bad-rotatio=
n-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl10/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_til=
ed_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1888">i915#1888</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl10/igt@kms=
_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109=
271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3886">=
i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl10/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_=
mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3886">i915#3886</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_102665v6/shard-skl1/igt@kms_ccs@pipe-c-random-=
ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-=
ytile-upscaling.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_102665v6/shard-skl1/igt@kms_flip_scaled_crc=
@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html"=
>FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145=
">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_102665v6/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-=
basic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
58">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_102665v6/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuou=
s-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_102665v6/shard-iclb4/igt@kms_psr2_sf@overlay-plane-move-conti=
nuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11646/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11646/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl3/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1646/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl4/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1164=
6/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl3/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/s=
hard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl1/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shar=
d-kbl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; (<a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-=
kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665=
v6/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl1/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102665v6/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl3/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_102665v6/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl4/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/sh=
ard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl7/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2665v6/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-kbl6/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102665v6/shard-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92=
</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11646/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11646/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1646/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.html=
">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl8/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102665v6/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl1/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_102665v6/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl7/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_102665v6/shard-apl4/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/sh=
ard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_102665v6/shard-apl7/igt@runner@aborted.html"=
>FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180"=
>i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb8/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11646/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11646/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11646/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb6/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11646/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11646/shard-tglb7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v=
6/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb3/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102665v6/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb7/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_102665v6/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tg=
lb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_102665v6/shard-tglb5/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665=
v6/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_102665v6/shard-tglb3/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
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
<li>IGT: IGT_6471 -&gt; IGTPW_7094</li>
<li>Linux: CI_DRM_11646 -&gt; Patchwork_102665v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11646: 8e5417afe580e2eac869c09e1454d174078523fd @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGTPW_7094: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7094/index.htm=
l<br />
  IGT_6471: 1d6816f1200520f936a799b7b0ef2e6f396abb16 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102665v6: 8e5417afe580e2eac869c09e1454d174078523fd @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3228114327759742311==--
