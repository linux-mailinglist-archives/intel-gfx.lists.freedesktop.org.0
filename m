Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAD557588D
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jul 2022 02:13:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E54BB10FB75;
	Fri, 15 Jul 2022 00:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 01D8210F811;
 Fri, 15 Jul 2022 00:13:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EDB47A00CC;
 Fri, 15 Jul 2022 00:13:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9190421236830089426=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Fri, 15 Jul 2022 00:13:48 -0000
Message-ID: <165784402892.10567.17387404416214858673@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220713133818.3699604-1-bob.beckett@collabora.com>
In-Reply-To: <20220713133818.3699604-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_ttm_for_internal_=28rev4=29?=
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

--===============9190421236830089426==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: ttm for internal (rev4)
URL   : https://patchwork.freedesktop.org/series/104909/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11893_full -> Patchwork_104909v4_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_104909v4_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_104909v4_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104909v4_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@wide@rcs0:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-glk3/igt@gem_exec_schedule@wide@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-glk5/igt@gem_exec_schedule@wide@rcs0.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@system-suspend-devices:
    - {shard-rkl}:        [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-rkl-1/igt@i915_pm_rpm@system-suspend-devices.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-5/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - {shard-rkl}:        [SKIP][5] ([i915#1849] / [i915#4098]) -> [FAIL][6] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  
Known issues
------------

  Here are the changes found in Patchwork_104909v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1099])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-snb5/igt@gem_ctx_persistence@engines-mixed.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-skl:          NOTRUN -> [DMESG-WARN][10] ([i915#1982])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#4525]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#2842]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-kbl6/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#2842])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][19] ([i915#2842])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-sync@rcs0:
    - shard-kbl:          [PASS][20] -> [SKIP][21] ([fdo#109271])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-kbl6/igt@gem_exec_fair@basic-sync@rcs0.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#4613])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-glk9/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#4613]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@gem_lmem_swapping@heavy-verify-random.html
    - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#4613])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_pxp@display-protected-crc:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#4270])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@gem_pxp@display-protected-crc.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#3297]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#109289])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#2527] / [i915#2856])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@reload:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-skl4/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl10/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#454])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-skl10/igt@i915_pm_dc@dc6-psr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@pc8-residency:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#109506] / [i915#2411])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@i915_pm_rpm@pc8-residency.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [PASS][34] -> [DMESG-WARN][35] ([i915#5591])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-tglb7/igt@i915_selftest@live@hangcheck.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#5286]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#111614]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][38] ([i915#3763])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][39] -> [DMESG-FAIL][40] ([i915#118] / [i915#1888])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-glk6/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-glk6/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][41] ([i915#3743]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#111615]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#3689] / [i915#6095]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3886]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-kbl6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
    - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886]) +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#3886]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-glk9/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_rc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#6095])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#3689] / [i915#3886])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-snb:          NOTRUN -> [SKIP][49] ([fdo#109271]) +72 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-snb5/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#3886]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-apl4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-audio-edid:
    - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-apl3/igt@kms_chamelium@dp-audio-edid.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
    - shard-glk:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-glk9/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-snb:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-snb5/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#1063])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:
    - shard-tglb:         [PASS][57] -> [DMESG-WARN][58] ([i915#2411] / [i915#2867])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-tglb8/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb5/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][59] ([i915#2346]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
    - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#2346])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#5287])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271]) +9 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-kbl6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#109274] / [fdo#111825] / [i915#3637])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#2672]) +8 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +150 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([i915#2672])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-snb:          [PASS][68] -> [SKIP][69] ([fdo#109271])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [FAIL][70] ([i915#160]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#109280] / [fdo#111825]) +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +13 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-apl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][73] ([fdo#109271]) +38 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-glk9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          NOTRUN -> [INCOMPLETE][74] ([i915#4939])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl6/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][75] ([i915#265])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-glk9/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][76] ([fdo#108145] / [i915#265]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-kbl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-kbl6/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#2920])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-iclb:         [PASS][79] -> [SKIP][80] ([fdo#109642] / [fdo#111068] / [i915#658])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-iclb3/igt@kms_psr2_su@page_flip-xrgb8888.html
    - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#658]) +4 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl1/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         NOTRUN -> [FAIL][82] ([i915#132] / [i915#3467])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_psr@psr2_suspend.html

  * igt@nouveau_crc@pipe-d-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#2530])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@nouveau_crc@pipe-d-ctx-flip-detection.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [PASS][84] -> [DMESG-WARN][85] ([i915#2867])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-tglb8/igt@perf_pmu@module-unload.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb5/igt@perf_pmu@module-unload.html

  * igt@prime_nv_test@i915_blt_fill_nv_read:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#109291])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@prime_nv_test@i915_blt_fill_nv_read.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#2994]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@fair-3:
    - shard-glk:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2994])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-glk9/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@recycle:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-apl3/igt@sysfs_clients@recycle.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-read:
    - {shard-rkl}:        [SKIP][90] ([i915#2582]) -> [PASS][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-rkl-1/igt@fbdev@unaligned-read.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-6/igt@fbdev@unaligned-read.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - {shard-rkl}:        [SKIP][92] ([i915#3281]) -> [PASS][93] +10 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][94] ([i915#4525]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][96] ([i915#2842]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [FAIL][98] ([i915#2842]) -> [PASS][99] +4 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-apl:          [FAIL][100] ([i915#2842]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-apl7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-apl4/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglb:         [FAIL][102] ([i915#2842]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - {shard-rkl}:        [SKIP][104] ([fdo#109313]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_pwrite@basic-random:
    - {shard-rkl}:        [SKIP][106] ([i915#3282]) -> [PASS][107] +4 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-rkl-1/igt@gem_pwrite@basic-random.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-5/igt@gem_pwrite@basic-random.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109] +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-kbl:          [DMESG-WARN][110] ([i915#5566] / [i915#716]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-kbl4/igt@gen9_exec_parse@allowed-single.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-kbl6/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@valid-registers:
    - {shard-rkl}:        [SKIP][112] ([i915#2527]) -> [PASS][113] +5 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-rkl-1/igt@gen9_exec_parse@valid-registers.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_pm_backlight@bad-brightness:
    - {shard-rkl}:        [SKIP][114] ([i915#3012]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-rkl-1/igt@i915_pm_backlight@bad-brightness.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_rpm@cursor-dpms:
    - {shard-rkl}:        [SKIP][116] ([i915#1849]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-rkl-1/igt@i915_pm_rpm@cursor-dpms.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions:
    - shard-tglb:         [INCOMPLETE][118] -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-tglb8/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions.html

  * igt@kms_dp_aux_dev:
    - {shard-rkl}:        [SKIP][120] ([i915#1257]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-rkl-1/igt@kms_dp_aux_dev.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-6/igt@kms_dp_aux_dev.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [FAIL][122] ([i915#79]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
    - shard-glk:          [FAIL][124] ([i915#2122]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-glk1/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - {shard-rkl}:        [SKIP][126] ([i915#1849] / [i915#4098]) -> [PASS][127] +6 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
    - shard-kbl:          [FAIL][128] ([i915#1188]) -> [PASS][129] +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - {shard-rkl}:        [SKIP][130] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@cursor_mmap_gtt:
    - {shard-rkl}:        [SKIP][132] ([i915#1072]) -> [PASS][133] +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-rkl-1/igt@kms_psr@cursor_mmap_gtt.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][134] ([fdo#109441]) -> [PASS][135] +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - {shard-rkl}:        [SKIP][136] ([i915#1845] / [i915#4098]) -> [PASS][137] +11 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-270.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-270.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][138] ([i915#4525]) -> [FAIL][139] ([i915#6117])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][140] ([i915#2849]) -> [FAIL][141] ([i915#2842])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][142] ([i915#2920]) -> [SKIP][143] ([i915#658])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][144] ([i915#658]) -> [SKIP][145] ([i915#2920]) +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][146] ([fdo#111068] / [i915#658]) -> [SKIP][147] ([i915#2920])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-skl:          [SKIP][148] ([fdo#109271]) -> [SKIP][149] ([fdo#109271] / [i915#1888])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-skl1/igt@kms_psr@psr2_primary_mmap_gtt.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl10/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][150], [FAIL][151]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-skl6/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-skl5/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl5/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl6/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl7/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl2/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][156], [FAIL][157], [FAIL][158]) ([fdo#109271] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#716]) -> ([FAIL][159], [FAIL][160]) ([i915#3002] / [i915#4312] / [i915#5257])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-kbl1/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-kbl7/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-kbl4/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-kbl1/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-kbl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#160]: https://gitlab.freedesktop.org/drm/intel/issues/160
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
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
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3593]: https://gitlab.freedesktop.org/drm/intel/issues/3593
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6405]: https://gitlab.freedesktop.org/drm/intel/issues/6405
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11893 -> Patchwork_104909v4

  CI-20190529: 20190529
  CI_DRM_11893: 932d346f9726fae3af81aba5e4362b428f6e3c56 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6582: c7f7fabcd7c075bfee48cbb79b5990894743204d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104909v4: 932d346f9726fae3af81aba5e4362b428f6e3c56 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/index.html

--===============9190421236830089426==
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
<tr><td><b>Series:</b></td><td>drm/i915: ttm for internal (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/104909/">https://patchwork.freedesktop.org/series/104909/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104909v4/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104909v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11893_full -&gt; Patchwork_104909v=
4_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_104909v4_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_104909v4_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
104909v4_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_schedule@wide@rcs0:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-glk3/igt@gem_exec_schedule@wide@rcs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/s=
hard-glk5/igt@gem_exec_schedule@wide@rcs0.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-rkl-1/igt@i915_pm_rpm@system-suspend-devices.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4909v4/shard-rkl-5/igt@i915_pm_rpm@system-suspend-devices.html">FAIL</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-=
multidraw.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_104909v4/shard-rkl-6/igt@kms_frontbuffer_trac=
king@fbcpsr-1p-pri-indfb-multidraw.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104909v4_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104909v4/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-snb5/igt@gem_ctx_persistence@engines=
-mixed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@gem_ctx_persistence@heartbe=
at-hang.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04909v4/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
909v4/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4=
/shard-kbl6/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4909v4/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-iclb4/igt@gem_exec_fair@basic-pace@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4=
/shard-kbl6/igt@gem_exec_fair@basic-sync@rcs0.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-glk9/igt@gem_lmem_swapping@heavy-ver=
ify-multi-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@gem_lmem_swapping@heavy-veri=
fy-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4613">i915#4613</a>) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4613">i915#4613</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@gem_pxp@display-protected-=
crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@gem_userptr_blits@readonly=
-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3297">i915#3297</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@gen7_exec_parse@basic-offs=
et.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@gen9_exec_parse@secure-bat=
ches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-skl4/igt@i915_module_load@reload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard=
-skl10/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-skl10/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl=
4/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@i915_pm_rpm@pc8-residency.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09506">fdo#109506</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-tglb7/igt@i915_selftest@live@hangcheck.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4=
/shard-tglb5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_big_fb@linear-8bpp-rot=
ate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111614">fdo#111614</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-s=
tride-64bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3763">i915#3763</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-glk6/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
909v4/shard-glk6/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">DMESG-FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i91=
5#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-s=
tride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_ccs@pipe-a-crc-primary=
-rotation-180-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104909v4/shard-kbl6/igt@kms_ccs@pipe-a-crc-sprite-pl=
anes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar iss=
ue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@kms_ccs@pipe-a-crc-sprite-pl=
anes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar iss=
ues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-glk9/igt@kms_ccs@pipe-a-random-ccs-d=
ata-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_ccs@pipe-b-crc-primary=
-basic-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_ccs@pipe-b-missing-ccs=
-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-snb5/igt@kms_ccs@pipe-c-bad-pixel-fo=
rmat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +72 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-apl4/igt@kms_ccs@pipe-c-ccs-on-anoth=
er-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio-edid:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-apl3/igt@kms_chamelium@dp-audio-edid=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@kms_chamelium@dp-crc-multip=
le.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-glk9/igt@kms_chamelium@hdmi-crc-nonp=
lanar-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-snb5/igt@kms_color_chamelium@pipe-a-=
ctm-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_color_chamelium@pipe-d=
-ctm-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1063">i915#1063</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-tglb8/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104909v4/shard-tglb5/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2411">i915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2867">i915#2867</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@kms_cursor_legacy@flip-vs-cu=
rsor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 similar issue<=
/p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11893/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transit=
ions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_104909v4/shard-glk7/igt@kms_cursor_legacy@flip-vs=
-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_draw_crc@draw-method-r=
gb565-pwrite-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-kbl6/igt@kms_fbcon_fbt@psr-suspend.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_flip@2x-modeset-vs-vbl=
ank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-iclb1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@kms_flip_scaled_crc@flip-64=
bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#1=
09271</a>) +150 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb=
-pgflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104909v4/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p=
-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/160">i915#160</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +4 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-apl4/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +13 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-glk9/igt@kms_frontbuffer_tracking@ps=
r-2p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +38 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-skl6/igt@kms_frontbuffer_tracking@ps=
r-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4939">i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-glk9/igt@kms_plane_alpha_blend@pipe-=
b-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@kms_plane_alpha_blend@pipe-=
b-constant-alpha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-kbl6/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_psr2_sf@plane-move-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11893/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v=
4/shard-iclb3/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#=
658</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104909v4/shard-skl1/igt@kms_psr2_su@page_flip-xrgb88=
88.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_psr@psr2_suspend.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/132">=
i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
467">i915#3467</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@nouveau_crc@pipe-d-ctx-fli=
p-detection.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-tglb8/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard=
-tglb5/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_blt_fill_nv_read:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-tglb8/igt@prime_nv_test@i915_blt_fil=
l_nv_read.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-skl9/igt@sysfs_clients@busy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-glk9/igt@sysfs_clients@fair-3.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-apl3/igt@sysfs_clients@recycle.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-rkl-1/igt@fbdev@unaligned-read.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/=
shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3=
281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104909v4/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html">PASS</a> =
+10 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104909v4/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104909v4/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4909v4/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> +4 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11893/shard-apl7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104909v4/shard-apl4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11893/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104909v4/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109313">fdo#109313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104909v4/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel=
-default-cmd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-rkl-1/igt@gem_pwrite@basic-random.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v=
4/shard-rkl-5/igt@gem_pwrite@basic-random.html">PASS</a> +4 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-apl1/igt@gem_workarounds@suspend-resume-context.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104909v4/shard-apl4/igt@gem_workarounds@suspend-resume-context.h=
tml">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-kbl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104909v4/shard-kbl6/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-rkl-1/igt@gen9_exec_parse@valid-registers.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#25=
27</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104909v4/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html">PASS</a> +5=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-rkl-1/igt@i915_pm_backlight@bad-brightness.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3=
012</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104909v4/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-rkl-1/igt@i915_pm_rpm@cursor-dpms.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v=
4/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-tglb8/igt@kms_cursor_legacy@cursor-vs-flip@atomic-trans=
itions.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104909v4/shard-tglb8/igt@kms_cursor_legacy@cursor-vs-f=
lip@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-rkl-1/igt@kms_dp_aux_dev.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1257">i915#1257</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-r=
kl-6/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104909v4/shard-glk6/igt@kms_flip@flip-vs-expired-vblank=
-interruptible@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible@b-h=
dmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104909v4/shard-glk1/igt@kms_flip@plain-flip-ts-check-i=
nterruptible@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-rte.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i91=
5#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409=
8">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104909v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-rte.htm=
l">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915=
#1188</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104909v4/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">PASS<=
/a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
49">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104909v4/shard-rkl-6/igt@kms_plane_alpha_blend@pipe=
-a-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-rkl-1/igt@kms_psr@cursor_mmap_gtt.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v=
4/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html">PASS</a> +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104909v4/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-270.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i=
915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_104909v4/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-270=
.html">PASS</a> +11 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104909v4/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#=
2849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104909v4/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_104909v4/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continu=
ous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_104909v4/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104909v4/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-skl1/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104909v4/shard-skl10/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1=
888</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-skl5/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl5/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104909v4/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-skl7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104909v4/shard-skl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#431=
2</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i9=
15#5257</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11893/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11893/shard-kbl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11893/shard-kbl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#=
5257</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">=
i915#716</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104909v4/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104909v4/shard-kbl4/igt@r=
unner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11893 -&gt; Patchwork_104909v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11893: 932d346f9726fae3af81aba5e4362b428f6e3c56 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6582: c7f7fabcd7c075bfee48cbb79b5990894743204d @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104909v4: 932d346f9726fae3af81aba5e4362b428f6e3c56 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============9190421236830089426==--
