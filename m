Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD91357DED6
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jul 2022 11:53:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC29392A6C;
	Fri, 22 Jul 2022 09:53:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7876892A68;
 Fri, 22 Jul 2022 09:53:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 704BEAADDB;
 Fri, 22 Jul 2022 09:53:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4004431146658656985=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Fri, 22 Jul 2022 09:53:29 -0000
Message-ID: <165848360942.29542.7568959573296036270@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220719140424.430572-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220719140424.430572-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRml4?=
 =?utf-8?q?es_integer_overflow_or_integer_truncation_issues_in_page_lookup?=
 =?utf-8?q?s=2C_ttm_place_configuration_and_scatterlist_creation_=28rev9?=
 =?utf-8?q?=29?=
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

--===============4004431146658656985==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation (rev9)
URL   : https://patchwork.freedesktop.org/series/104704/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11935_full -> Patchwork_104704v9_full
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

  Here are the unknown changes that may have been introduced in Patchwork_104704v9_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@prime_self_import@export-vs-gem_close-race:
    - {shard-tglu}:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglu-3/igt@prime_self_import@export-vs-gem_close-race.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11935_full and Patchwork_104704v9_full:

### New IGT tests (38) ###

  * igt@gem_exec_balancer@waits:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 20.64] s

  * igt@gem_huc_copy@huc-copy:
    - Statuses : 2 pass(s) 8 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [0.63, 0.68] s

  * igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [0.57] s

  * igt@kms_flip@blocking-absolute-wf_vblank-interruptible@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [7.60, 7.80] s

  * igt@kms_flip@blocking-absolute-wf_vblank@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [7.61, 7.82] s

  * igt@kms_flip@blocking-wf_vblank@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [7.76, 8.10] s

  * igt@kms_flip@bo-too-big-interruptible@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [0.10, 0.38] s

  * igt@kms_flip@bo-too-big@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [0.14, 0.46] s

  * igt@kms_flip@busy-flip@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [0.65, 0.67] s

  * igt@kms_flip@dpms-off-confusion-interruptible@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [7.59] s

  * igt@kms_flip@dpms-off-confusion@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [7.63, 7.67] s

  * igt@kms_flip@dpms-vs-vblank-race-interruptible@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [2.76] s

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [7.73, 8.09] s

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [0.60] s

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [0.63] s

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [7.65] s

  * igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [7.62, 7.67] s

  * igt@kms_flip@flip-vs-fences-interruptible@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [7.62] s

  * igt@kms_flip@flip-vs-fences@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [7.65] s

  * igt@kms_flip@flip-vs-modeset-vs-hang@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [30.01, 30.02] s

  * igt@kms_flip@flip-vs-panning-interruptible@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [7.62] s

  * igt@kms_flip@flip-vs-panning-vs-hang@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [30.0, 30.00] s

  * igt@kms_flip@flip-vs-panning@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [7.65, 7.70] s

  * igt@kms_flip@flip-vs-rmfb-interruptible@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [7.59] s

  * igt@kms_flip@flip-vs-rmfb@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [7.61, 7.69] s

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [0.92] s

  * igt@kms_flip@modeset-vs-vblank-race-interruptible@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [2.78, 2.96] s

  * igt@kms_flip@modeset-vs-vblank-race@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [2.81] s

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [7.94, 7.96] s

  * igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [7.76, 7.97] s

  * igt@kms_flip@plain-flip-interruptible@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [0.58, 0.65] s

  * igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [7.96] s

  * igt@kms_flip@plain-flip-ts-check@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [7.95] s

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [0.61, 0.62] s

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [0.60, 0.65] s

  * igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [7.74] s

  * igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [7.75] s

  

Known issues
------------

  Here are the changes found in Patchwork_104704v9_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-4x:
    - shard-tglb:         NOTRUN -> [SKIP][2] ([i915#1839])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@feature_discovery@display-4x.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglb:         NOTRUN -> [SKIP][3] ([i915#3555] / [i915#5325])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@gem_ccs@ctrl-surf-copy.html
    - shard-iclb:         NOTRUN -> [SKIP][4] ([i915#5327])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +6 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@hostile:
    - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-snb7/igt@gem_ctx_persistence@hostile.html
    - shard-tglb:         NOTRUN -> [FAIL][8] ([i915#2410])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@gem_ctx_persistence@hostile.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         NOTRUN -> [SKIP][9] ([i915#4525])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2846])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2846])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][16] -> [FAIL][17] ([i915#2842]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
    - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk8/igt@gem_exec_fair@basic-pace@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#109313])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_huc_copy@huc-copy (NEW):
    - {shard-rkl}:        NOTRUN -> [SKIP][21] ([i915#2190])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-rkl-5/igt@gem_huc_copy@huc-copy.html
    - {shard-tglu}:       NOTRUN -> [SKIP][22] ([i915#2190])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglu-4/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#4613])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#4613])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#4270])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_softpin@32b-excludes-last-page:
    - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271]) +135 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-snb7/igt@gem_softpin@32b-excludes-last-page.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#3297])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([fdo#109289]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@gen7_exec_parse@batch-without-end.html
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109289])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][30] -> [DMESG-WARN][31] ([i915#5566] / [i915#716])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#2856]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@gen9_exec_parse@allowed-single.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][33] ([i915#5566] / [i915#716])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl8/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([i915#2527] / [i915#2856]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@gen9_exec_parse@bb-start-out.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#454])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#111644] / [i915#1397] / [i915#2411])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-glk:          NOTRUN -> [SKIP][38] ([fdo#109271]) +35 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-glk5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109293] / [fdo#109506])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
    - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#109506] / [i915#2411])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_query@hwconfig_table:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +29 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl6/igt@i915_query@hwconfig_table.html
    - shard-tglb:         NOTRUN -> [SKIP][42] ([i915#6245])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@i915_query@hwconfig_table.html
    - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#6245])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@i915_query@hwconfig_table.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#2521])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#5286]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
    - shard-iclb:         NOTRUN -> [SKIP][49] ([i915#5286])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#111614])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@kms_big_fb@linear-8bpp-rotate-270.html
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#110725] / [fdo#111614])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-glk:          [PASS][52] -> [FAIL][53] ([i915#1888])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-glk7/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][54] ([i915#3743])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#111615]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#3886]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#111615] / [i915#3689]) +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#3689] / [i915#3886]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([i915#3689] / [i915#6095])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([i915#3689]) +5 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-crc-single:
    - shard-snb:          NOTRUN -> [SKIP][61] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-snb6/igt@kms_chamelium@dp-crc-single.html
    - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#109284] / [fdo#111827]) +7 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@kms_chamelium@dp-crc-single.html
    - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-glk5/igt@kms_chamelium@dp-crc-single.html
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@kms_chamelium@dp-crc-single.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl6/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html
    - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl6/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@kms_color_chamelium@pipe-d-gamma.html

  * igt@kms_cursor_crc@cursor-onscreen@pipe-a-edp-1-512x170:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#3359]) +7 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_cursor_crc@cursor-onscreen@pipe-a-edp-1-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen@pipe-c-edp-1-32x10:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#4462]) +7 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_cursor_crc@cursor-onscreen@pipe-c-edp-1-32x10.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1:
    - shard-skl:          NOTRUN -> [INCOMPLETE][71] ([i915#4939])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor@toggle:
    - shard-iclb:         [PASS][72] -> [FAIL][73] ([i915#2346]) +3 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#3528])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#3528])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#5287])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109274]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-plain-flip:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#109274] / [fdo#111825] / [i915#3637]) +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][79] -> [FAIL][80] ([i915#79])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-apl:          NOTRUN -> [FAIL][81] ([i915#79])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][82] -> [INCOMPLETE][83] ([i915#3614])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][84] -> [FAIL][85] ([i915#2122])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#2672]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         [PASS][87] -> [SKIP][88] ([i915#3555])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#2672]) +9 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [FAIL][90] ([i915#160]) +6 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109280]) +10 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271]) +19 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([fdo#109280] / [fdo#111825]) +16 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
    - shard-kbl:          [PASS][94] -> [FAIL][95] ([i915#1188]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][96] -> [FAIL][97] ([fdo#108145] / [i915#265])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][98] ([fdo#108145] / [i915#265])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271]) +90 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl9/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min.html

  * igt@kms_plane_lowres@tiling-y@pipe-c-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#3536]) +3 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@kms_plane_lowres@tiling-y@pipe-c-edp-1.html
    - shard-iclb:         NOTRUN -> [SKIP][101] ([i915#3536]) +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_plane_lowres@tiling-y@pipe-c-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-kbl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#658])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl6/igt@kms_psr2_sf@cursor-plane-update-sf.html
    - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#658])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl6/igt@kms_psr2_sf@cursor-plane-update-sf.html
    - shard-tglb:         NOTRUN -> [SKIP][104] ([i915#2920]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@kms_psr2_sf@cursor-plane-update-sf.html
    - shard-glk:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#658])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-glk5/igt@kms_psr2_sf@cursor-plane-update-sf.html
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#111068] / [i915#658])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-skl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#658]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-tglb:         NOTRUN -> [FAIL][108] ([i915#132] / [i915#3467]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][109] -> [SKIP][110] ([fdo#109441]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         NOTRUN -> [SKIP][111] ([fdo#109441])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [PASS][112] -> [SKIP][113] ([i915#5519])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglb:         NOTRUN -> [SKIP][114] ([fdo#111615] / [i915#5289])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_vblank@pipe-d-query-forked-busy:
    - shard-iclb:         NOTRUN -> [SKIP][115] ([fdo#109278]) +3 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_vblank@pipe-d-query-forked-busy.html

  * igt@kms_vrr@flip-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][116] ([i915#3555]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@kms_vrr@flip-dpms.html
    - shard-tglb:         NOTRUN -> [SKIP][117] ([i915#3555])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@kms_vrr@flip-dpms.html

  * igt@kms_writeback@writeback-check-output:
    - shard-iclb:         NOTRUN -> [SKIP][118] ([i915#2437])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_writeback@writeback-check-output.html
    - shard-kbl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#2437])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl6/igt@kms_writeback@writeback-check-output.html
    - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#2437])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl6/igt@kms_writeback@writeback-check-output.html
    - shard-tglb:         NOTRUN -> [SKIP][121] ([i915#2437])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@kms_writeback@writeback-check-output.html
    - shard-glk:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#2437])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-glk5/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
    - shard-tglb:         NOTRUN -> [SKIP][123] ([i915#2530])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html

  * igt@perf_pmu@rc6-suspend:
    - shard-skl:          [PASS][124] -> [INCOMPLETE][125] ([i915#4939]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl4/igt@perf_pmu@rc6-suspend.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl6/igt@perf_pmu@rc6-suspend.html

  * igt@prime_nv_pcopy@test3_1:
    - shard-tglb:         NOTRUN -> [SKIP][126] ([fdo#109291])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@prime_nv_pcopy@test3_1.html

  * igt@sysfs_clients@recycle:
    - shard-skl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#2994]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@split-10:
    - shard-iclb:         NOTRUN -> [SKIP][128] ([i915#2994])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@sysfs_clients@split-10.html
    - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#2994])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl8/igt@sysfs_clients@split-10.html
    - shard-tglb:         NOTRUN -> [SKIP][130] ([i915#2994])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@sysfs_clients@split-10.html
    - shard-glk:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#2994])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-glk5/igt@sysfs_clients@split-10.html

  * igt@sysfs_preempt_timeout@timeout@bcs0:
    - shard-skl:          [PASS][132] -> [FAIL][133] ([i915#3259])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl1/igt@sysfs_preempt_timeout@timeout@bcs0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl1/igt@sysfs_preempt_timeout@timeout@bcs0.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-snb:          [TIMEOUT][134] ([i915#5748]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-snb4/igt@gem_busy@close-race.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-snb2/igt@gem_busy@close-race.html

  * igt@gem_create@create-massive:
    - shard-kbl:          [DMESG-WARN][136] ([i915#4991]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl6/igt@gem_create@create-massive.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl6/igt@gem_create@create-massive.html
    - shard-snb:          [DMESG-WARN][138] ([i915#4991]) -> [PASS][139] +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-snb4/igt@gem_create@create-massive.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-snb7/igt@gem_create@create-massive.html
    - shard-apl:          [DMESG-WARN][140] ([i915#4991]) -> [PASS][141] +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl3/igt@gem_create@create-massive.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl6/igt@gem_create@create-massive.html
    - shard-tglb:         [DMESG-WARN][142] ([i915#4991]) -> [PASS][143] +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb7/igt@gem_create@create-massive.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@gem_create@create-massive.html
    - shard-glk:          [DMESG-WARN][144] ([i915#4991]) -> [PASS][145] +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk1/igt@gem_create@create-massive.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-glk5/igt@gem_create@create-massive.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-iclb:         [TIMEOUT][146] ([i915#3070]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb8/igt@gem_eio@in-flight-contexts-immediate.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb3/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][148] ([i915#4525]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb5/igt@gem_exec_balancer@parallel.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-kbl:          [SKIP][150] ([fdo#109271]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][152] ([i915#2842]) -> [PASS][153] +2 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][154] ([i915#2842]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_userptr_blits@input-checking:
    - shard-iclb:         [DMESG-WARN][156] ([i915#4991]) -> [PASS][157] +1 similar issue
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb7/igt@gem_userptr_blits@input-checking.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@gem_userptr_blits@input-checking.html
    - shard-skl:          [DMESG-WARN][158] ([i915#4991]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl7/igt@gem_userptr_blits@input-checking.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl9/igt@gem_userptr_blits@input-checking.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][160] ([i915#5129]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-kbl:          [WARN][162] ([i915#6405]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_selftest@perf@engine_cs:
    - shard-snb:          [SKIP][164] ([fdo#109271]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-snb2/igt@i915_selftest@perf@engine_cs.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-snb6/igt@i915_selftest@perf@engine_cs.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
    - shard-skl:          [FAIL][166] ([i915#2521]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [FAIL][168] ([i915#4767]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][170] ([i915#79]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@busy-flip@c-edp1:
    - shard-skl:          [FAIL][172] ([i915#5726]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl4/igt@kms_flip@busy-flip@c-edp1.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl9/igt@kms_flip@busy-flip@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:
    - shard-tglb:         [DMESG-WARN][174] ([i915#2411] / [i915#2867]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [FAIL][176] ([i915#2122]) -> [PASS][177]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [SKIP][178] ([i915#5176]) -> [PASS][179] +4 similar issues
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb1/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [SKIP][180] ([i915#5235]) -> [PASS][181] +2 similar issues
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][182] ([fdo#109441]) -> [PASS][183] +3 similar issues
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb3/igt@kms_psr@psr2_primary_blt.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][184] ([i915#1542]) -> [PASS][185] +1 similar issue
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl1/igt@perf@blocking.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl1/igt@perf@blocking.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][186] ([i915#5639]) -> [PASS][187]
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl9/igt@perf@polling-parameterized.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl6/igt@perf@polling-parameterized.html

  * igt@prime_self_import@export-vs-gem_close-race:
    - shard-tglb:         [FAIL][188] -> [PASS][189]
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb1/igt@prime_self_import@export-vs-gem_close-race.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-tglb8/igt@prime_self_import@export-vs-gem_close-race.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [FAIL][190] ([i915#6117]) -> [SKIP][191] ([i915#4525])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [INCOMPLETE][192] ([i915#3614] / [i915#4817]) -> [DMESG-WARN][193] ([i915#180])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@i915_suspend@forcewake.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-skl:          [SKIP][194] ([fdo#109271] / [i915#1888]) -> [SKIP][195] ([fdo#109271]) +1 similar issue
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][196] ([i915#658]) -> [SKIP][197] ([i915#2920]) +1 similar issue
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][198] ([fdo#111068] / [i915#658]) -> [SKIP][199] ([i915#2920])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-iclb:         [SKIP][200] ([i915#2920]) -> [SKIP][201] ([i915#658]) +1 similar issue
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][202], [FAIL][203]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][204], [FAIL][205], [FAIL][206], [FAIL][207], [FAIL][208]) ([fdo#109271] / [i915#180] / [i915#4312] / [i915#5257])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl3/igt@runner@aborted.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl8/igt@runner@aborted.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl2/igt@runner@aborted.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl8/igt@runner@aborted.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl3/igt@runner@aborted.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl4/igt@runner@aborted.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl4/igt@runner@aborted.html
    - shard-glk:          ([FAIL][209], [FAIL][210]) ([i915#3002] / [i915#4312] / [i915#5257]) -> [FAIL][211] ([i915#4312] / [i915#5257])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk7/igt@runner@aborted.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk1/igt@runner@aborted.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-glk1/igt@runner@aborted.html
    - shard-skl:          [FAIL][212] ([i915#3002] / [i915#4312] / [i915#5257]) -> [FAIL][213] ([i915#4312])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl7/igt@runner@aborted.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl7/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][214], [FAIL][215]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][216], [FAIL][217], [FAIL][218], [FAIL][219], [FAIL][220]) ([i915#180] / [i915#4312] / [i915#5257])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl6/igt@runner@aborted.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@runner@aborted.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl7/igt@runner@aborted.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl7/igt@runner@aborted.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl7/igt@runner@aborted.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl7/igt@runner@aborted.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#160]: https://gitlab.freedesktop.org/drm/intel/issues/160
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3259]: https://gitlab.freedesktop.org/drm/intel/issues/3259
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
  [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5129]: https://gitlab.freedesktop.org/drm/intel/issues/5129
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
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
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5726]: https://gitlab.freedesktop.org/drm/intel/issues/5726
  [i915#5748]: https://gitlab.freedesktop.org/drm/intel/issues/5748
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6331]: https://gitlab.freedesktop.org/drm/intel/issues/6331
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6405]: https://gitlab.freedesktop.org/drm/intel/issues/6405
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
  [i915#6474]: https://gitlab.freedesktop.org/drm/intel/issues/6474
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11935 -> Patchwork_104704v9

  CI-20190529: 20190529
  CI_DRM_11935: 2df3752997eeeba0843b7b1b9a27204a4e831355 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6594: 326629f105459f9bd201456a0454759628e6a43d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104704v9: 2df3752997eeeba0843b7b1b9a27204a4e831355 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/index.html

--===============4004431146658656985==
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
<tr><td><b>Series:</b></td><td>Fixes integer overflow or integer truncation=
 issues in page lookups, ttm place configuration and scatterlist creation (=
rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/104704/">https://patchwork.freedesktop.org/series/104704/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104704v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11935_full -&gt; Patchwork_104704v=
9_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 13)</h2>
<p>Additional (3): shard-rkl shard-dg1 shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
104704v9_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@prime_self_import@export-vs-gem_close-race:<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglu-3/igt@prime_self_import@export-=
vs-gem_close-race.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11935_full and Patchwork_1=
04704v9_full:</p>
<h3>New IGT tests (38)</h3>
<ul>
<li>
<p>igt@gem_exec_balancer@waits:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 20.64] s</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>Statuses : 2 pass(s) 8 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.63, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [7.60, 7.80] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [7.61, 7.82] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [7.76, 8.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.10, 0.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.14, 0.46] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@busy-flip@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.65, 0.67] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [7.63, 7.67] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-vs-vblank-race-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.76] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [7.73, 8.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.63] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [7.62, 7.67] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.62] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-modeset-vs-hang@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [30.01, 30.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.62] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-vs-hang@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [30.0, 30.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [7.65, 7.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [7.61, 7.69] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-wf_vblank-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.92] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.78, 2.96] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [7.94, 7.96] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [7.76, 7.97] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.58, 0.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.96] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.95] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@d-h=
dmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.61, 0.62] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.60, 0.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.74] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.75] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104704v9_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@feature_discovery@display-=
4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@gem_ccs@ctrl-surf-copy.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5325">i915#5325</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@gem_ccs@ctrl-surf-copy.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5327=
">i915#5327</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104704v9/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-snb7/igt@gem_ctx_persistence@hostile.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1099">i915#1099</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@gem_ctx_persistence@hostile=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2410">i915#2410</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@gem_exec_balancer@parallel=
-bb-first.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-kbl6/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/s=
hard-kbl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-glk1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/s=
hard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
704v9/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/=
shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 simila=
r issues</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-glk8/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/=
shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109313">fdo#109313</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy (NEW):</p>
<ul>
<li>
<p>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-rkl-5/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190"=
>i915#2190</a>)</p>
</li>
<li>
<p>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglu-4/igt@gem_huc_copy@huc-copy.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190=
">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@gem_lmem_swapping@heavy-ver=
ify-random-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@gem_lmem_swapping@verify-r=
andom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@gem_pxp@verify-pxp-key-cha=
nge-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@32b-excludes-last-page:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-snb7/igt@gem_softpin@32b-excludes-la=
st-page.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +135 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@gen7_exec_parse@batch-witho=
ut-end.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109289">fdo#109289</a>) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@gen7_exec_parse@batch-witho=
ut-end.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109289">fdo#109289</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-glk8/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/s=
hard-glk1/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@gen9_exec_parse@allowed-sin=
gle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2856">i915#2856</a>) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-apl8/igt@gen9_exec_parse@allowed-sing=
le.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5566">i915#5566</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/716">i915#716</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@gen9_exec_parse@bb-start-o=
ut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2856">i915#2856</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-icl=
b3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@i915_pm_rpm@dpms-mode-unse=
t-non-lpsp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111644">fdo#111644</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1397">i915#1397</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-glk5/igt@i915_pm_rpm@gem-execbuf-stre=
ss-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +35 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@i915_pm_rpm@gem-execbuf-str=
ess-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109506">fdo#109506</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@i915_pm_rpm@gem-execbuf-str=
ess-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109506">fdo#109506</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2411">i915#2411</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-apl6/igt@i915_query@hwconfig_table.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +29 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@i915_query@hwconfig_table.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
245">i915#6245</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@i915_query@hwconfig_table.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
245">i915#6245</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104704v9/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104704v9/shard-skl1/igt@kms_async_flips@alternate-sync-asy=
nc-flip@pipe-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@kms_big_fb@4-tiled-32bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5286">i915#5286</a>) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@kms_big_fb@4-tiled-32bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5286">i915#5286</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@kms_big_fb@linear-8bpp-rota=
te-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111614">fdo#111614</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@kms_big_fb@linear-8bpp-rota=
te-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111614">fdo#111614</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4704v9/shard-glk7/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-s=
tride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_big_fb@yf-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@kms_ccs@pipe-a-crc-primary-=
rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@kms_ccs@pipe-a-crc-primary=
-rotation-180-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3689">i915#3689</a>) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_ccs@pipe-a-random-ccs-=
data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_ccs@pipe-b-crc-primary=
-rotation-180-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_ccs@pipe-d-bad-pixel-f=
ormat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3689">i915#3689</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-single:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-snb6/igt@kms_chamelium@dp-crc-single.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@kms_chamelium@dp-crc-single=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +7 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-glk5/igt@kms_chamelium@dp-crc-single.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +3 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@kms_chamelium@dp-crc-single=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@kms_chamelium@vga-hpd-with-=
enabled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-apl6/igt@kms_color_chamelium@pipe-d-c=
tm-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-kbl6/igt@kms_color_chamelium@pipe-d-c=
tm-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@kms_color_chamelium@pipe-d=
-gamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen@pipe-a-edp-1-512x170:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_cursor_crc@cursor-onsc=
reen@pipe-a-edp-1-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3359">i915#3359</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen@pipe-c-edp-1-32x10:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_cursor_crc@cursor-onsc=
reen@pipe-c-edp-1-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4462">i915#4462</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@kms_cursor_crc@cursor-suspe=
nd@pipe-b-edp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4939">i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104704v9/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i=
915#2346</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@kms_dp_tiled_display@basic-=
test-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3528">i915#3528</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_dp_tiled_display@basic-=
test-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3528">i915#3528</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_draw_crc@draw-method-x=
rgb2101010-mmap-cpu-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
74">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3637">i915#3637</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_104704v9/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-inte=
rruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-apl6/igt@kms_flip@flip-vs-expired-vb=
lank@a-dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v=
9/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3614">i915#3614</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_104704v9/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-inte=
rruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling@pipe-a-default-mode.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb2/igt@=
kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-d=
efault-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-indfb-draw-pwrite.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/160">i915#160</a>) +6 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +10 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-kbl6/igt@kms_frontbuffer_tracking@ps=
r-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +19 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +16 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4704v9/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104704v9/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-al=
pha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@kms_plane_alpha_blend@pipe-=
b-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-skl9/igt@kms_plane_alpha_blend@pipe-=
d-constant-alpha-min.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +90 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y@pipe-c-edp-1:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@kms_plane_lowres@tiling-y@p=
ipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3536">i915#3536</a>) +3 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_plane_lowres@tiling-y@p=
ipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3536">i915#3536</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-kbl6/igt@kms_psr2_sf@cursor-plane-upd=
ate-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-apl6/igt@kms_psr2_sf@cursor-plane-upd=
ate-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@kms_psr2_sf@cursor-plane-up=
date-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2920">i915#2920</a>) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-glk5/igt@kms_psr2_sf@cursor-plane-upd=
ate-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_psr2_sf@cursor-plane-up=
date-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-skl9/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_psr@psr2_primary_page_=
flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3467">i915#3467</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shar=
d-iclb6/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@kms_psr@psr2_sprite_plane_=
move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb8/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_104704v9/shard-iclb5/igt@kms_psr_stress_test@flip-primary-in=
validate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-busy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_vblank@pipe-d-query-fo=
rked-busy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109278">fdo#109278</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@kms_vrr@flip-dpms.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i91=
5#3555</a>) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@kms_vrr@flip-dpms.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i91=
5#3555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-iclb7/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2437">i915#2437</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-kbl6/igt@kms_writeback@writeback-chec=
k-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2437">i915#2437</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-apl6/igt@kms_writeback@writeback-chec=
k-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2437">i915#2437</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglb1/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2437">i915#2437</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-glk5/igt@kms_writeback@writeback-chec=
k-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2437">i915#2437</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@nouveau_crc@pipe-c-ctx-fli=
p-skip-current-frame.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl4/igt@perf_pmu@rc6-suspend.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-sk=
l6/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/4939">i915#4939</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@prime_nv_pcopy@test3_1.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
91">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@sysfs_clients@recycle.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-iclb5/igt@sysfs_clients@split-10.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-apl8/igt@sysfs_clients@split-10.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-tglb7/igt@sysfs_clients@split-10.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-glk5/igt@sysfs_clients@split-10.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl1/igt@sysfs_preempt_timeout@timeout@bcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
704v9/shard-skl1/igt@sysfs_preempt_timeout@timeout@bcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3259">i915#3259</a>=
)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-snb4/igt@gem_busy@close-race.html">TIMEOUT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5748">i915#5748</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/=
shard-snb2/igt@gem_busy@close-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-kbl6/igt@gem_create@create-massive.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v9/shard-kbl6/igt@gem_create@create-massive.html">PASS</a></p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-snb4/igt@gem_create@create-massive.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v9/shard-snb7/igt@gem_create@create-massive.html">PASS</a> +1 similar =
issue</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-apl3/igt@gem_create@create-massive.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v9/shard-apl6/igt@gem_create@create-massive.html">PASS</a> +1 similar =
issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-tglb7/igt@gem_create@create-massive.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#499=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104704v9/shard-tglb1/igt@gem_create@create-massive.html">PASS</a> +1 simila=
r issue</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-glk1/igt@gem_create@create-massive.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v9/shard-glk5/igt@gem_create@create-massive.html">PASS</a> +1 similar =
issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb8/igt@gem_eio@in-flight-contexts-immediate.html">TI=
MEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3070"=
>i915#3070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104704v9/shard-iclb3/igt@gem_eio@in-flight-contexts-immediate.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb5/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1047=
04v9/shard-iclb1/igt@gem_exec_balancer@parallel.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl6/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104704v9/shard-kbl7/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4704v9/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104704v9/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-iclb7/igt@gem_userptr_blits@input-checking.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i=
915#4991</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104704v9/shard-iclb5/igt@gem_userptr_blits@input-checking.html">PASS=
</a> +1 similar issue</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-skl7/igt@gem_userptr_blits@input-checking.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i9=
15#4991</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104704v9/shard-skl9/igt@gem_userptr_blits@input-checking.html">PASS</=
a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5129">=
i915#5129</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104704v9/shard-skl4/igt@gem_workarounds@suspend-resume-fd.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6405">i915=
#6405</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104704v9/shard-kbl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf@engine_cs:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-snb2/igt@i915_selftest@perf@engine_cs.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v9/shard-snb6/igt@i915_selftest@perf@engine_cs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v9/shard-skl1/igt@kms_async_flips@alternate-sy=
nc-async-flip@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704=
v9/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-=
hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_104704v9/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblan=
k@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@busy-flip@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl4/igt@kms_flip@busy-flip@c-edp1.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5726">i915#5726</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704=
v9/shard-skl9/igt@kms_flip@busy-flip@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2411">i915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2867">i915#2867</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_104704v9/shard-tglb3/igt@kms_flip@flip-vs-suspen=
d-interruptible@d-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i=
915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104704v9/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-=
b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-=
format-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5176">i915#5176</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb1/igt@kms_p=
lane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html=
">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-iclb1/igt@km=
s_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-=
1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb3/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1047=
04v9/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl1/igt@perf@blocking.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl=
1/igt@perf@blocking.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl9/igt@perf@polling-parameterized.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10470=
4v9/shard-skl6/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@export-vs-gem_close-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-tglb1/igt@prime_self_import@export-vs-gem_close-race.ht=
ml">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104704v9/shard-tglb8/igt@prime_self_import@export-vs-gem_close-race.h=
tml">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104704v9/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl4/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3614">i915#3614</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#=
4817</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104704v9/shard-kbl7/igt@i915_suspend@forcewake.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-i=
ndfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-skl4/igt@kms_frontb=
uffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_104704v9/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continu=
ous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104704v9/shard-iclb2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104704v9/shard-iclb8/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl2/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104704v9/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104704v9/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-apl4/igt@=
runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-glk7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk1/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_104704v9/shard-glk1/igt@runner@aborted.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312=
">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5257">i915#5257</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-skl7/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704=
v9/shard-skl7/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl7/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104704v9/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104704v9/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v9/shard-kbl7/igt@=
runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11935 -&gt; Patchwork_104704v9</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11935: 2df3752997eeeba0843b7b1b9a27204a4e831355 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6594: 326629f105459f9bd201456a0454759628e6a43d @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104704v9: 2df3752997eeeba0843b7b1b9a27204a4e831355 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4004431146658656985==--
