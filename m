Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0637F514469
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 10:40:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A10710FC23;
	Fri, 29 Apr 2022 08:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1F0A10FBE7;
 Fri, 29 Apr 2022 08:40:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9EB1EAADD6;
 Fri, 29 Apr 2022 08:40:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5861334642560351896=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Fri, 29 Apr 2022 08:40:28 -0000
Message-ID: <165122162863.1654.3334084143410152816@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1651212016.git.mchehab@kernel.org>
In-Reply-To: <cover.1651212016.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgTGV0?=
 =?utf-8?q?_userspace_know_when_snd-hda-intel_needs_i915?=
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

--===============5861334642560351896==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Let userspace know when snd-hda-intel needs i915
URL   : https://patchwork.freedesktop.org/series/103315/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11550_full -> Patchwork_103315v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 13)
------------------------------

  Additional (3): shard-rkl shard-dg1 shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_103315v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_suspend@basic-s0@smem:
    - {shard-dg1}:        NOTRUN -> [INCOMPLETE][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-dg1-12/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@mock@hugepages:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-rkl-5/igt@i915_selftest@mock@hugepages.html

  * {igt@kms_concurrent@pipe-d@hdmi-a-3}:
    - {shard-dg1}:        NOTRUN -> [CRASH][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-dg1-18/igt@kms_concurrent@pipe-d@hdmi-a-3.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11550_full and Patchwork_103315v1_full:

### New IGT tests (4) ###

  * igt@kms_sequence@get-busy@hdmi-a-3-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [2.43] s

  * igt@kms_sequence@get-busy@hdmi-a-3-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [2.38] s

  * igt@kms_sequence@get-busy@hdmi-a-3-pipe-c:
    - Statuses : 1 pass(s)
    - Exec time: [2.38] s

  * igt@kms_sequence@get-busy@hdmi-a-3-pipe-d:
    - Statuses : 1 pass(s)
    - Exec time: [2.39] s

  

Known issues
------------

  Here are the changes found in Patchwork_103315v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [FAIL][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#5032]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl10/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl10/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl10/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl10/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl10/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl9/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl9/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl9/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl8/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl8/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl8/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl3/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +165 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl10/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [PASS][53] -> [FAIL][54] ([i915#2842])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk4/igt@gem_exec_fair@basic-none@vecs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-glk3/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [PASS][55] -> [SKIP][56] ([fdo#109271])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][57] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-snb:          [PASS][58] -> [SKIP][59] ([fdo#109271]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-snb2/igt@gem_exec_flush@basic-uc-prw-default.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-snb6/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_huc_copy@huc-copy:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2190])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#4613]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl9/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl8/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#4171])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk5/igt@gem_softpin@allocator-evict-all-engines.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#3323])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@i915_module_load@reload:
    - shard-skl:          [PASS][66] -> [DMESG-WARN][67] ([i915#1982])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl8/igt@i915_module_load@reload.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl9/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][68] ([i915#454])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#1937])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][70] -> [FAIL][71] ([i915#2521])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#3886]) +3 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl7/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +115 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886]) +6 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl9/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl6/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][77] ([i915#1319])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl7/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][78] -> [INCOMPLETE][79] ([i915#3614])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][80] -> [FAIL][81] ([i915#2346])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][82] -> [FAIL][83] ([i915#2122])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][84] -> [FAIL][85] ([i915#2122]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][86] -> [DMESG-WARN][87] ([i915#180]) +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3701])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#533])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][90] ([i915#265])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][91] ([i915#265])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format:
    - shard-iclb:         [PASS][92] -> [INCOMPLETE][93] ([i915#5293])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb4/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#658])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl9/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2437])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl7/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2437])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl8/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-skl:          NOTRUN -> [DMESG-WARN][97] ([i915#5098])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl10/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@sema-25:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2994]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl9/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [TIMEOUT][99] ([i915#3063]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-tglb7/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@kms:
    - shard-tglb:         [FAIL][101] ([i915#232]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb3/igt@gem_eio@kms.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][103] ([i915#2842]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][105] ([i915#2849]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-snb:          [SKIP][107] ([fdo#109271]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-snb6/igt@gem_exec_flush@basic-uc-rw-default.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-snb5/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-skl:          [INCOMPLETE][109] ([i915#5843]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/igt@gem_exec_whisper@basic-fds-forked-all.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl8/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_softpin@softpin:
    - shard-skl:          [DMESG-WARN][111] ([i915#1982]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl10/igt@gem_softpin@softpin.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl3/igt@gem_softpin@softpin.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-glk:          [FAIL][113] ([i915#2521]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip.html
    - shard-kbl:          [FAIL][115] ([i915#2521]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl3/igt@kms_async_flips@alternate-sync-async-flip.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-kbl6/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][117] ([i915#180]) -> [PASS][118] +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][119] ([i915#2346] / [i915#533]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][121] ([i915#79]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][123] ([i915#2122]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale:
    - shard-iclb:         [SKIP][125] ([i915#5235]) -> [PASS][126] +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-iclb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][127] ([fdo#109441]) -> [PASS][128] +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][129] ([i915#4939]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][131] ([i915#5639]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/igt@perf@polling-parameterized.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl10/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [FAIL][133] ([i915#232]) -> [FAIL][134] ([i915#5784])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-tglb8/igt@gem_eio@unwedge-stress.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][135] ([i915#588]) -> [SKIP][136] ([i915#658])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-apl:          [SKIP][137] ([fdo#109271] / [i915#3777]) -> [SKIP][138] ([fdo#109271]) +13 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-kbl:          [SKIP][139] ([fdo#109271] / [i915#3777]) -> [SKIP][140] ([fdo#109271]) +14 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
    - shard-skl:          [SKIP][141] ([fdo#109271] / [i915#3777]) -> [SKIP][142] ([fdo#109271]) +12 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-glk:          [SKIP][143] ([fdo#109271] / [i915#3777]) -> [SKIP][144] ([fdo#109271]) +17 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-glk4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - shard-snb:          [SKIP][145] ([fdo#109271] / [i915#5341]) -> [SKIP][146] ([fdo#109271])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-snb7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-snb2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][147] ([i915#2920]) -> [SKIP][148] ([i915#658])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         [SKIP][149] ([i915#2920]) -> [SKIP][150] ([fdo#111068] / [i915#658]) +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl4/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl3/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl8/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl6/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl3/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl4/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl3/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl4/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl2/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl1/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl2/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl8/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3736]: https://gitlab.freedesktop.org/drm/intel/issues/3736
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
  [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5293]: https://gitlab.freedesktop.org/drm/intel/issues/5293
  [i915#5303]: https://gitlab.freedesktop.org/drm/intel/issues/5303
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5843]: https://gitlab.freedesktop.org/drm/intel/issues/5843
  [i915#5849]: https://gitlab.freedesktop.org/drm/intel/issues/5849
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11550 -> Patchwork_103315v1

  CI-20190529: 20190529
  CI_DRM_11550: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6451: f055bd83bd831a938d639718c2359516224f15f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103315v1: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/index.html

--===============5861334642560351896==
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
<tr><td><b>Series:</b></td><td>Let userspace know when snd-hda-intel needs =
i915</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/103315/">https://patchwork.freedesktop.org/series/103315/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_103315v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_103315v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11550_full -&gt; Patchwork_103315v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 13)</h2>
<p>Additional (3): shard-rkl shard-dg1 shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
103315v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-dg1-12/igt@gem_exec_suspend@basic-s0=
@smem.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@hugepages:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-rkl-5/igt@i915_selftest@mock@hugepag=
es.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>{igt@kms_concurrent@pipe-d@hdmi-a-3}:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-dg1-18/igt@kms_concurrent@pipe-d@hdm=
i-a-3.html">CRASH</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11550_full and Patchwork_1=
03315v1_full:</p>
<h3>New IGT tests (4)</h3>
<ul>
<li>
<p>igt@kms_sequence@get-busy@hdmi-a-3-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@hdmi-a-3-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@hdmi-a-3-pipe-c:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@hdmi-a-3-pipe-d:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.39] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103315v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11550/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11550/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11550/shard-skl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/sha=
rd-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11550/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11550/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11550/shard-skl4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-sk=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1550/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11550/shard-skl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl10/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/sha=
rd-skl10/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5032">i915#5032</a>) -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_103315v1/shard-skl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-sk=
l10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_103315v1/shard-skl10/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl10/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10331=
5v1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_103315v1/shard-skl9/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl9/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_103315v1/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl8/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-=
skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_103315v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315=
v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_103315v1/shard-skl6/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl6/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_103315v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl4/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-s=
kl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_103315v1/shard-skl4/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v=
1/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_103315v1/shard-skl1/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_103315v1/shard-skl1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-skl10/igt@gem_exec_fair@basic-flow@r=
cs0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +165 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-glk4/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v=
1/shard-glk3/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1=
/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-iclb4/igt@gem_exec_fair@basic-pace@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-snb2/igt@gem_exec_flush@basic-uc-prw-default.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
3315v1/shard-snb6/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-skl8/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-skl9/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-apl8/igt@gem_lmem_swapping@verify-ra=
ndom-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-glk5/igt@gem_softpin@allocator-evict-all-engines.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_103315v1/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i91=
5#4171</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-apl2/igt@gem_userptr_blits@dmabuf-sy=
nc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-skl8/igt@i915_module_load@reload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard=
-skl9/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-skl7/igt@i915_pm_dc@dc6-psr.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i91=
5#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-l=
psp-dp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1937">i915#1937</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_103315v1/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521"=
>i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-apl7/igt@kms_ccs@pipe-a-crc-primary-=
basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-apl8/igt@kms_ccs@pipe-a-crc-sprite-p=
lanes-basic-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +115 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-skl9/igt@kms_ccs@pipe-a-random-ccs-d=
ata-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-apl7/igt@kms_color_chamelium@pipe-a-=
ctm-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-skl6/igt@kms_color_chamelium@pipe-d-=
ctm-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-apl7/igt@kms_content_protection@lic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
03315v1/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3614">i91=
5#3614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_103315v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_103315v1/shard-glk6/igt@kms_flip@2x-flip-vs-e=
xpired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_103315v1/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vbl=
ank-interruptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2122">i915#2122</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v=
1/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-skl8/igt@kms_flip_scaled_crc@flip-64=
bpp-ytile-to-16bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-skl9/igt@kms_pipe_crc_basic@suspend-=
read-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-apl7/igt@kms_plane_alpha_blend@pipe-=
b-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-=
c-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp=
-1-downscale-with-pixel-format:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-iclb4/igt@kms_plane_scaling@downscale-with-pixel-format=
-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shar=
d-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-=
b-edp-1-downscale-with-pixel-format.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5293">i915#5293</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-skl9/igt@kms_psr2_su@page_flip-p010.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-skl7/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-apl8/igt@kms_writeback@writeback-inv=
alid-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-skl10/igt@syncobj_timeline@invalid-t=
ransfer-non-existent-point.html">DMESG-WARN</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5098">i915#5098</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103315v1/shard-skl9/igt@sysfs_clients@sema-25.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915=
#3063</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_103315v1/shard-tglb7/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-tglb3/igt@gem_eio@kms.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/232">i915#232</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-tglb7=
/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
03315v1/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#=
2849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_103315v1/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-snb6/igt@gem_exec_flush@basic-uc-rw-default.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_103315v1/shard-snb5/igt@gem_exec_flush@basic-uc-rw-default.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-skl5/igt@gem_exec_whisper@basic-fds-forked-all.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/58=
43">i915#5843</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_103315v1/shard-skl8/igt@gem_exec_whisper@basic-fds-forked-all.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@softpin:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-skl10/igt@gem_softpin@softpin.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10331=
5v1/shard-skl3/igt@gem_softpin@softpin.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11550/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521"=
>i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_103315v1/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip.=
html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11550/shard-kbl3/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521"=
>i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_103315v1/shard-kbl6/igt@kms_async_flips@alternate-sync-async-flip.=
html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_103315v1/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html"=
>PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/533">i915#533</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-glk1/igt@kms_cursor_leg=
acy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_103315v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_103315v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblan=
k-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-b-edp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
3315v1/shard-iclb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downsca=
le-factor-0-5@pipe-b-edp-1-planes-upscale-downscale.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
103315v1/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4939">i915#4939</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_103315v1/shard-skl7/igt@kms_vblank@pipe-a-ts-continuation-s=
uspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-skl6/igt@perf@polling-parameterized.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10331=
5v1/shard-skl10/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-tglb5/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/232">i915#232</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/s=
hard-tglb8/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
03315v1/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-=
180-hflip-async-flip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3777">i915#3777</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl6/igt@kms_big_=
fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11550/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-=
0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3777">i915#3777</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-kbl7/igt@kms_big_fb=
@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>) +14 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11550/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-=
0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3777">i915#3777</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-skl1/igt@kms_big_fb=
@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>) +12 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-glk7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate=
-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3777">i915#3777</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-glk4/igt@kms_big_fb@yf-tile=
d-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +17 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-snb7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pip=
e-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5341">i915#5341</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_103315v1/shard-snb2/igt@kms_pipe_crc_basic@compar=
e-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_103315v1/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continu=
ous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11550/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_103315v1/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#=
111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658=
">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11550/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11550/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11550/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl6/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11550/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v=
1/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl3/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_103315v1/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl2/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_103315v1/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/shard-apl2/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_103315v1/shard-apl8/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103315v1/sh=
ard-apl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</=
li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11550 -&gt; Patchwork_103315v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11550: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6451: f055bd83bd831a938d639718c2359516224f15f9 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103315v1: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5861334642560351896==--
