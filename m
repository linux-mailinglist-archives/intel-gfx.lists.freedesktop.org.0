Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B98AA626C10
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Nov 2022 22:50:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71B3C10E1C0;
	Sat, 12 Nov 2022 21:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 702B710E1C0;
 Sat, 12 Nov 2022 21:49:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68625A0003;
 Sat, 12 Nov 2022 21:49:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7466683088087319449=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 12 Nov 2022 21:49:59 -0000
Message-ID: <166828979937.14832.7610279233805255542@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Finish_=28de=29gamma_readout_=28rev7=29?=
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

--===============7466683088087319449==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Finish (de)gamma readout (rev7)
URL   : https://patchwork.freedesktop.org/series/79614/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12372_full -> Patchwork_79614v7_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_79614v7_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_79614v7_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_79614v7_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-snb:          [PASS][3] -> [DMESG-WARN][4] +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-snb2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-snb2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-glk6/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-glk9/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-skl7/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl6/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-iclb:         [PASS][9] -> [DMESG-WARN][10] +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-iclb5/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb2/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-edp-1:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-tglb2/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-edp-1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb8/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-edp-1.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-apl1/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl7/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
    - shard-glk:          [PASS][15] -> [INCOMPLETE][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-glk2/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-glk6/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
    - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] +8 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-tglb3/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb1/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-skl1/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html

  * igt@kms_plane@pixel-format@pipe-a-planes:
    - shard-iclb:         [PASS][21] -> [INCOMPLETE][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-iclb7/igt@kms_plane@pixel-format@pipe-a-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb5/igt@kms_plane@pixel-format@pipe-a-planes.html

  
#### Warnings ####

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1:
    - shard-skl:          [FAIL][23] ([i915#4573]) -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-skl6/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_persistence@hostile:
    - {shard-dg1}:        [PASS][25] -> [INCOMPLETE][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-dg1-17/igt@gem_ctx_persistence@hostile.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-dg1-18/igt@gem_ctx_persistence@hostile.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - {shard-rkl}:        [SKIP][27] ([i915#1845] / [i915#4098]) -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
    - {shard-dg1}:        [PASS][29] -> [DMESG-WARN][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-dg1-15/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-dg1-17/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  
Known issues
------------

  Here are the changes found in Patchwork_79614v7_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#6268])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb6/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([i915#4525]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#2846])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-glk9/igt@gem_exec_fair@basic-deadline.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_params@secure-non-root:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#112283])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@gem_exec_params@secure-non-root.html

  * igt@gem_lmem_swapping@random:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#4613]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@gem_lmem_swapping@random.html
    - shard-glk:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#4613]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@gem_lmem_swapping@random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][40] ([i915#7248])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@gem_pwrite@basic-exhaustion.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][41] ([i915#7248])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][42] ([i915#4991])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@gem_userptr_blits@input-checking.html
    - shard-glk:          NOTRUN -> [DMESG-WARN][43] ([i915#4991])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][44] -> [DMESG-WARN][45] ([i915#5566] / [i915#716])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-apl3/igt@gen9_exec_parse@allowed-single.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl2/igt@gen9_exec_parse@allowed-single.html
    - shard-glk:          [PASS][46] -> [DMESG-WARN][47] ([i915#5566] / [i915#716])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-glk8/igt@gen9_exec_parse@allowed-single.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-glk7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#2527] / [i915#2856])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#4275])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-apl2/igt@i915_pm_dc@dc9-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl7/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([fdo#111644] / [i915#1397] / [i915#2411])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#5286]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#111615])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#3689])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#3886]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#3886]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([i915#3689] / [i915#6095])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([i915#3689] / [i915#3886]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#111615] / [i915#3689]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl6/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_color_chamelium@degamma:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_color_chamelium@degamma.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#3359])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([fdo#109274] / [fdo#111825] / [i915#3637]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#79])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#2122])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-iclb:         [PASS][71] -> [SKIP][72] ([i915#3555])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#2672]) +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#2587] / [i915#2672]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#3555]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#2672] / [i915#3555]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#109280] / [fdo#111825]) +7 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#6497]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][79] ([fdo#109271]) +29 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:
    - shard-skl:          [PASS][80] -> [DMESG-WARN][81] ([i915#1982])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-skl1/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl6/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][82] ([i915#4573]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl6/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#5176]) +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271]) +54 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#658])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl6/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][86] -> [SKIP][87] ([fdo#109441]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb8/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-tglb:         NOTRUN -> [FAIL][88] ([i915#132] / [i915#3467])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [PASS][89] -> [SKIP][90] ([i915#5519])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@sysfs_clients@recycle-many:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#2994])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@sysfs_clients@recycle-many.html
    - shard-glk:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2994])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@sysfs_clients@recycle-many.html

  
#### Possible fixes ####

  * igt@drm_read@empty-nonblock:
    - {shard-rkl}:        [SKIP][93] ([i915#4098]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-rkl-3/igt@drm_read@empty-nonblock.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-6/igt@drm_read@empty-nonblock.html

  * igt@fbdev@pan:
    - {shard-rkl}:        [SKIP][95] ([i915#2582]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-rkl-1/igt@fbdev@pan.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-6/igt@fbdev@pan.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][97] ([i915#6268]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [FAIL][99] ([i915#2410]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][101] ([i915#4525]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-iclb3/igt@gem_exec_balancer@parallel.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [FAIL][103] ([i915#2842]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [FAIL][105] ([i915#2842]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb6/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][107] ([i915#6258]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-1/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][109] ([i915#2684]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - {shard-rkl}:        [FAIL][111] ([i915#7478]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-rkl-3/igt@i915_pm_rpm@system-suspend-devices.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-2/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - {shard-rkl}:        [SKIP][113] ([fdo#109308]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-rkl-3/igt@i915_pm_rpm@system-suspend-modeset.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - {shard-rkl}:        [SKIP][115] ([fdo#110189] / [i915#3955]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][117] ([i915#79]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - {shard-rkl}:        [SKIP][119] ([i915#1849] / [i915#4098]) -> [PASS][120] +12 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@kms_plane@plane-position-hole-dpms@pipe-b-planes:
    - {shard-rkl}:        [SKIP][121] ([i915#3558]) -> [PASS][122] +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-rkl-3/igt@kms_plane@plane-position-hole-dpms@pipe-b-planes.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms@pipe-b-planes.html

  * igt@kms_properties@plane-properties-atomic:
    - {shard-rkl}:        [SKIP][123] ([i915#1849]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-rkl-1/igt@kms_properties@plane-properties-atomic.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr@cursor_render:
    - {shard-rkl}:        [SKIP][125] ([i915#1072]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-rkl-1/igt@kms_psr@cursor_render.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-6/igt@kms_psr@cursor_render.html

  * igt@kms_psr@primary_blt:
    - shard-skl:          [DMESG-WARN][127] ([i915#1982]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-skl6/igt@kms_psr@primary_blt.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl1/igt@kms_psr@primary_blt.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][129] ([fdo#109441]) -> [PASS][130] +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-iclb1/igt@kms_psr@psr2_sprite_render.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [SKIP][131] ([i915#5519]) -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-iclb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-tglb:         [INCOMPLETE][133] -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-tglb5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-idle:
    - {shard-rkl}:        [SKIP][135] ([i915#1845] / [i915#4098]) -> [PASS][136] +21 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-rkl-3/igt@kms_vblank@pipe-b-ts-continuation-idle.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continuation-idle.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][137] ([i915#1542]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-skl1/igt@perf@blocking.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl10/igt@perf@blocking.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - {shard-rkl}:        [SKIP][139] ([fdo#109289]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-4/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@perf_pmu@busy-idle@vcs0:
    - {shard-dg1}:        [FAIL][141] ([i915#4349]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-dg1-12/igt@perf_pmu@busy-idle@vcs0.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-dg1-13/igt@perf_pmu@busy-idle@vcs0.html

  * igt@perf_pmu@interrupts:
    - shard-skl:          [FAIL][143] ([i915#7318]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-skl4/igt@perf_pmu@interrupts.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl4/igt@perf_pmu@interrupts.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - {shard-dg1}:        [FAIL][145] ([i915#1755]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-dg1-15/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-dg1-12/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_pread@exhaustion:
    - shard-glk:          [WARN][147] ([i915#2658]) -> [INCOMPLETE][148] ([i915#7248])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-glk6/igt@gem_pread@exhaustion.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-glk9/igt@gem_pread@exhaustion.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:
    - shard-apl:          [DMESG-FAIL][149] ([IGT#6]) -> [FAIL][150] ([i915#4573]) +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-apl2/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl6/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][151] ([i915#658]) -> [SKIP][152] ([i915#2920]) +1 similar issue
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][153] ([fdo#111068] / [i915#658]) -> [SKIP][154] ([i915#2920])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158]) ([i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-apl1/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-apl3/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-apl1/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-apl1/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl2/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl2/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl6/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl3/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl7/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl3/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl8/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl7/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl3/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl3/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4275]: https://gitlab.freedesktop.org/drm/intel/issues/4275
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7318]: https://gitlab.freedesktop.org/drm/intel/issues/7318
  [i915#7478]: https://gitlab.freedesktop.org/drm/intel/issues/7478
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12372 -> Patchwork_79614v7

  CI-20190529: 20190529
  CI_DRM_12372: 2cc304afd4967ceffd14940ff73a8beb31778f90 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7051: 7da9f813cdacb80d4471fc6ddb493bae9c46913d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_79614v7: 2cc304afd4967ceffd14940ff73a8beb31778f90 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/index.html

--===============7466683088087319449==
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
<tr><td><b>Series:</b></td><td>drm/i915: Finish (de)gamma readout (rev7)</t=
d></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/79614/">https://patchwork.freedesktop.org/series/79614/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v7/index.html">https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_79614v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12372_full -&gt; Patchwork_79614v7=
_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_79614v7_full absolutely ne=
ed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_79614v7_full, please notify your bug team to allo=
w them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
79614v7_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-snb4/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_79614v7/shard-snb4/igt@i915_module_load@reload-with-fault-injection.=
html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-snb2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614=
v7/shard-snb2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">DMESG-WARN</a> +6 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-180:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12372/shard-glk6/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7961=
4v7/shard-glk9/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">DMESG-WARN</a> =
+4 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12372/shard-skl7/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7961=
4v7/shard-skl6/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">INCOMPLETE</a> =
+3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-iclb5/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7961=
4v7/shard-iclb2/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">DMESG-WARN</a> +=
4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-edp-1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-tglb2/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a=
-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_79614v7/shard-tglb8/igt@kms_cursor_crc@cursor-offscreen-256x=
85@pipe-a-edp-1.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12372/shard-apl1/igt@kms_plane@pixel-format-source-clamping@pipe-a-p=
lanes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_79614v7/shard-apl7/igt@kms_plane@pixel-format-source-clamping=
@pipe-a-planes.html">DMESG-WARN</a> +8 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12372/shard-glk2/igt@kms_plane@pixel-format-source-clamping@pipe-a-p=
lanes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_79614v7/shard-glk6/igt@kms_plane@pixel-format-source-clamping=
@pipe-a-planes.html">INCOMPLETE</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12372/shard-tglb3/igt@kms_plane@pixel-format-source-clamping@pipe-b-=
planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_79614v7/shard-tglb1/igt@kms_plane@pixel-format-source-clampi=
ng@pipe-b-planes.html">DMESG-WARN</a> +8 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12372/shard-skl1/igt@kms_plane@pixel-format-source-clamping@pipe-b-p=
lanes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_79614v7/shard-skl6/igt@kms_plane@pixel-format-source-clamping=
@pipe-b-planes.html">DMESG-WARN</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a-planes:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-iclb7/igt@kms_plane@pixel-format@pipe-a-planes.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
79614v7/shard-iclb5/igt@kms_plane@pixel-format@pipe-a-planes.html">INCOMPLE=
TE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-skl6/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4573">i915#4573</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_79614v7/shard-skl1/igt@kms_plane_alpha_blend@alpha-basic@pip=
e-c-edp-1.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-dg1-17/igt@gem_ctx_persistence@hostile.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/=
shard-dg1-18/igt@gem_ctx_persistence@hostile.html">INCOMPLETE</a> +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-0:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12372/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#18=
45</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i=
915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_79614v7/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">DMESG=
-WARN</a></p>
</li>
<li>
<p>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12372/shard-dg1-15/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7961=
4v7/shard-dg1-17/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">DMESG-WARN</a> =
+2 similar issues</p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_79614v7_full that come from know=
n issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v=
7/shard-tglb6/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7=
9614v7/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525<=
/a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-glk9/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/s=
hard-glk5/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@gem_exec_params@secure-non-=
root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@gem_lmem_swapping@random.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/461=
3">i915#4613</a>) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@gem_lmem_swapping@random.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4613">i915#4613</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@gem_pwrite@basic-exhaustion.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7248">i915#7248</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@gem_pwrite@basic-exhaustion.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7248">i915#7248</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@gem_userptr_blits@input-chec=
king.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4991">i915#4991</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@gem_userptr_blits@input-check=
ing.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4991">i915#4991</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12372/shard-apl3/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/=
shard-apl2/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>=
)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12372/shard-glk8/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/=
shard-glk7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>=
)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@gen9_exec_parse@secure-batc=
hes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-apl2/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl7=
/igt@i915_pm_dc@dc9-dpms.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4275">i915#4275</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@i915_pm_rpm@modeset-non-lps=
p.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111644">fdo#111644</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1397">i915#1397</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-apl1/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shar=
d-apl3/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_big_fb@4-tiled-16bpp-ro=
tate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_ccs@pipe-a-bad-aux-stri=
de-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-skl6/igt@kms_ccs@pipe-a-bad-aux-strid=
e-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@kms_ccs@pipe-a-crc-primary-r=
otation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_ccs@pipe-b-crc-primary-=
rotation-180-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_ccs@pipe-c-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_ccs@pipe-d-random-ccs-d=
ata-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3689">i915#3689</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-skl6/igt@kms_chamelium@dp-hpd-enable-=
disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@kms_chamelium@hdmi-crc-multi=
ple.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@degamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_color_chamelium@degamma=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_cursor_crc@cursor-slidi=
ng-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_flip@2x-flip-vs-dpms-of=
f-vs-modeset.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3637">i915#3637</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_79614v7/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_79614v7/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2=
122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp=
-xtile-downscaling@pipe-a-default-mode.html">PASS</a> -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb2/igt@kms_=
flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-=
mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-iclb3/igt@kms_flip_scaled_crc@flip-32=
bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-iclb6/igt@kms_flip_scaled_crc@flip-32=
bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-iclb2/igt@kms_flip_scaled_crc@flip-64=
bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555<=
/a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-iclb2/igt@kms_flip_scaled_crc@flip-64=
bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915=
#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_frontbuffer_tracking@fb=
c-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +7 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_frontbuffer_tracking@fb=
cpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/6497">i915#6497</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@kms_frontbuffer_tracking@psr=
-2p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +29 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-skl1/igt@kms_plane@pixel-format-source-clamping@pipe-a-=
planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_79614v7/shard-skl6/igt@kms_plane@pixel-format-source-clampin=
g@pipe-a-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-skl6/igt@kms_plane_alpha_blend@alpha-=
transparent-fb@pipe-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe=
-c-edp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_plane_scaling@plane-dow=
nscale-with-pixel-format-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-skl6/igt@kms_plane_scaling@planes-dow=
nscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +54 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-skl6/igt@kms_psr2_su@page_flip-p010.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-iclb8=
/igt@kms_psr@psr2_dpms.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@kms_psr@psr2_primary_page_f=
lip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3467">i915#3467</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_79614v7/shard-tglb7/igt@kms_psr_stress_test@flip-primary-inv=
alidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v7/shard-tglb5/igt@sysfs_clients@recycle-many.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
994">i915#2994</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v7/shard-glk5/igt@sysfs_clients@recycle-many.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2994">i915#2994</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@empty-nonblock:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-rkl-3/igt@drm_read@empty-nonblock.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7=
/shard-rkl-6/igt@drm_read@empty-nonblock.html">PASS</a> +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-rkl-1/igt@fbdev@pan.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-rkl-6/=
igt@fbdev@pan.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
79614v7/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#=
2410</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_79614v7/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-iclb3/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7961=
4v7/shard-iclb1/igt@gem_exec_balancer@parallel.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79=
614v7/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7=
9614v7/shard-iclb6/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6258">i=
915#6258</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_79614v7/shard-rkl-1/igt@i915_hangman@engine-engine-error@bcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#26=
84</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_79614v7/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-rkl-3/igt@i915_pm_rpm@system-suspend-devices.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7478">i915=
#7478</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_79614v7/shard-rkl-2/igt@i915_pm_rpm@system-suspend-devices.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-rkl-3/igt@i915_pm_rpm@system-suspend-modeset.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo=
#109308</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_79614v7/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_79614v7/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i9=
15#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_79614v7/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_79614v7/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-mo=
desetfrombusy.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-rkl-3/igt@kms_plane@plane-position-hole-dpms@pipe-b-pla=
nes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_79614v7/shard-rkl-6/igt@kms_plane@plane-position-hole-dpm=
s@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-rkl-1/igt@kms_properties@plane-properties-atomic.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_79614v7/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-rkl-1/igt@kms_psr@cursor_render.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/s=
hard-rkl-6/igt@kms_psr@cursor_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-skl6/igt@kms_psr@primary_blt.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v=
7/shard-skl1/igt@kms_psr@primary_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-iclb1/igt@kms_psr@psr2_sprite_render.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79=
614v7/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a> +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-iclb7/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_79614v7/shard-iclb8/igt@kms_psr_stress_test@flip-prima=
ry-invalidate-overlay.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-tglb5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspen=
d.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_79614v7/shard-tglb5/igt@kms_vblank@pipe-b-ts-continuation-d=
pms-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-idle:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-rkl-3/igt@kms_vblank@pipe-b-ts-continuation-idle.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">=
i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_79614v7/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continuation-idl=
e.html">PASS</a> +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-skl1/igt@perf@blocking.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-skl1=
0/igt@perf@blocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109289">fdo#10928=
9</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
79614v7/shard-rkl-4/igt@perf@gen12-oa-tlb-invalidate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle@vcs0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-dg1-12/igt@perf_pmu@busy-idle@vcs0.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v=
7/shard-dg1-13/igt@perf_pmu@busy-idle@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-skl4/igt@perf_pmu@interrupts.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/7318">i915#7318</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shar=
d-skl4/igt@perf_pmu@interrupts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-dg1-15/igt@sysfs_timeslice_duration@timeout@vecs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1755"=
>i915#1755</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_79614v7/shard-dg1-12/igt@sysfs_timeslice_duration@timeout@vecs0.ht=
ml">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-glk6/igt@gem_pread@exhaustion.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/s=
hard-glk9/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-apl2/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.=
html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu=
-tools/issues/6">IGT#6</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_79614v7/shard-apl6/igt@kms_plane_alpha_blend@alpha-bas=
ic@pipe-c-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4573">i915#4573</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_79614v7/shard-iclb2/igt@kms_psr2_sf@overlay-plane-=
move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12372/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v7/shard-iclb2/igt@kms_psr2_sf@overlay-plane-u=
pdate-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12372/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-apl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12372/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_79614v7/shard-apl2/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614=
v7/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl6/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_79614v7/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_79614v7/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl8/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_79614v7/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/shard-apl3=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v7/shard-apl3/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v7/sha=
rd-apl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12372 -&gt; Patchwork_79614v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12372: 2cc304afd4967ceffd14940ff73a8beb31778f90 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7051: 7da9f813cdacb80d4471fc6ddb493bae9c46913d @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_79614v7: 2cc304afd4967ceffd14940ff73a8beb31778f90 @ git://anong=
it.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7466683088087319449==--
