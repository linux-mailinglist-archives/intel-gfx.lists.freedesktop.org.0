Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AF658C809
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Aug 2022 13:59:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51E4110FD19;
	Mon,  8 Aug 2022 11:59:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 146BD9123F;
 Mon,  8 Aug 2022 11:58:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D6569A73C9;
 Mon,  8 Aug 2022 11:58:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6093618602680082965=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 08 Aug 2022 11:58:49 -0000
Message-ID: <165995992986.13151.11347255032050126226@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220808091137.1653599-1-jani.nikula@intel.com>
In-Reply-To: <20220808091137.1653599-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/2=5D_drm/i915/edid=3A_convert_DP=2C?=
 =?utf-8?q?_HDMI_and_LVDS_to_drm=5Fedid?=
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

--===============6093618602680082965==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v5,1/2] drm/i915/edid: convert DP, HDMI and LVDS to drm_edid
URL   : https://patchwork.freedesktop.org/series/107056/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11971_full -> Patchwork_107056v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107056v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107056v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107056v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_reloc@basic-wc-read:
    - shard-apl:          NOTRUN -> [TIMEOUT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl4/igt@gem_exec_reloc@basic-wc-read.html

  * igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:
    - shard-apl:          [PASS][2] -> [DMESG-WARN][3] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl7/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl2/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
    - shard-glk:          [PASS][4] -> [FAIL][5] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk9/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-glk3/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_3d:
    - shard-kbl:          [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@kms_3d.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@kms_3d.html
    - shard-snb:          [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-snb5/igt@kms_3d.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-snb4/igt@kms_3d.html
    - shard-skl:          [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl4/igt@kms_3d.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl9/igt@kms_3d.html

  * igt@kms_big_fb@x-tiled-addfb:
    - shard-apl:          [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl2/igt@kms_big_fb@x-tiled-addfb.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl8/igt@kms_big_fb@x-tiled-addfb.html

  * igt@kms_hdmi_inject@inject-4k:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl2/igt@kms_hdmi_inject@inject-4k.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl10/igt@kms_hdmi_inject@inject-4k.html
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl1/igt@kms_hdmi_inject@inject-4k.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl1/igt@kms_hdmi_inject@inject-4k.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-snb:          [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-snb6/igt@kms_hdmi_inject@inject-audio.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-snb6/igt@kms_hdmi_inject@inject-audio.html

  
#### Warnings ####

  * igt@kms_plane_alpha_blend@pipe-d-alpha-basic:
    - shard-apl:          [SKIP][23] ([fdo#109271]) -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl7/igt@kms_plane_alpha_blend@pipe-d-alpha-basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl2/igt@kms_plane_alpha_blend@pipe-d-alpha-basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:
    - {shard-tglu}:       [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglu-5/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-tglu-1/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - {shard-tglu}:       [PASS][27] -> [TIMEOUT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglu-4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-tglu-2/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_hdmi_inject@inject-audio:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-5/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_plane_alpha_blend@pipe-d-alpha-basic:
    - {shard-tglu}:       [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglu-5/igt@kms_plane_alpha_blend@pipe-d-alpha-basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-tglu-1/igt@kms_plane_alpha_blend@pipe-d-alpha-basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_107056v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][32] ([i915#4991])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl7/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@vcs1:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][33] ([i915#180])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs1.html

  * igt@gem_eio@in-flight-immediate:
    - shard-tglb:         [PASS][34] -> [TIMEOUT][35] ([i915#3063])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglb7/igt@gem_eio@in-flight-immediate.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-tglb5/igt@gem_eio@in-flight-immediate.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([i915#4525]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][38] -> [FAIL][39] ([i915#2842]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][40] -> [FAIL][41] ([i915#2842])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [PASS][42] -> [SKIP][43] ([fdo#109271])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][44] ([i915#2842])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][45] -> [FAIL][46] ([i915#2842]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_lmem_swapping@basic:
    - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#4613]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#4613]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#4613]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl7/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][50] ([i915#2658])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl4/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][51] ([i915#3318])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl4/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][52] ([i915#454])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([i915#4281])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#1937])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-apl:          [PASS][56] -> [TIMEOUT][57] ([i915#6168])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl2/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl6/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl4/igt@i915_suspend@debugfs-reader.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl1/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +162 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#3886]) +6 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#3886]) +5 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#3886]) +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl4/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +79 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl2/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs.html

  * igt@kms_chamelium@dp-hpd:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl7/igt@kms_chamelium@dp-hpd.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl2/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@kms_color_chamelium@pipe-c-ctm-0-75.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][68] ([i915#1319]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:
    - shard-apl:          [PASS][69] -> [FAIL][70] ([fdo#103375]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl7/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl2/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [PASS][71] -> [FAIL][72] ([i915#2346])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][73] -> [INCOMPLETE][74] ([i915#180] / [i915#1982] / [i915#4939])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][75] -> [FAIL][76] ([i915#79]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#2672]) +7 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#3555])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#2672] / [i915#3555]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-kbl:          [PASS][80] -> [DMESG-FAIL][81] ([i915#180])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][82] ([fdo#108145] / [i915#265]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][83] ([i915#265])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][84] ([fdo#108145] / [i915#265]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][85] ([fdo#108145] / [i915#265])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#658]) +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#658])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#658])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl7/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][89] -> [SKIP][90] ([fdo#109441]) +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb8/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [PASS][91] -> [SKIP][92] ([i915#5519])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - shard-iclb:         [PASS][93] -> [SKIP][94] ([i915#5519])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2437])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl6/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-kbl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2437]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@non-zero-reason:
    - shard-skl:          NOTRUN -> [TIMEOUT][97] ([i915#6473])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl7/igt@perf@non-zero-reason.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][98] -> [FAIL][99] ([i915#5639])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb2/igt@perf@polling-parameterized.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb8/igt@perf@polling-parameterized.html

  * igt@perf@short-reads:
    - shard-skl:          [PASS][100] -> [FAIL][101] ([i915#51])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl9/igt@perf@short-reads.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl7/igt@perf@short-reads.html

  * igt@sysfs_clients@fair-0:
    - shard-kbl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#2994]) +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@recycle:
    - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2994])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl4/igt@sysfs_clients@recycle.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271]) +145 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - {shard-rkl}:        [SKIP][105] ([i915#2582]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-1/igt@fbdev@unaligned-write.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@fbdev@unaligned-write.html

  * igt@feature_discovery@psr1:
    - {shard-rkl}:        [SKIP][107] ([i915#658]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@feature_discovery@psr1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@feature_discovery@psr1.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][109] ([i915#658]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb7/igt@feature_discovery@psr2.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-kbl:          [INCOMPLETE][111] ([i915#180]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
    - shard-apl:          [INCOMPLETE][113] ([i915#180]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-tglb:         [DMESG-WARN][115] ([i915#2411] / [i915#2867]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglb2/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-tglb1/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][117] ([i915#4525]) -> [PASS][118] +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-kbl:          [SKIP][119] ([fdo#109271]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][121] ([i915#2842]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-snb:          [FAIL][123] ([i915#4998]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][125] ([i915#5566] / [i915#716]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl4/igt@gen9_exec_parse@allowed-all.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [FAIL][127] ([i915#3524]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl9/igt@i915_pm_sseu@full-enable.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl7/igt@i915_pm_sseu@full-enable.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
    - shard-skl:          [FAIL][129] ([i915#2521]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - {shard-rkl}:        [SKIP][131] ([i915#1845] / [i915#4098]) -> [PASS][132] +12 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - {shard-tglu}:       [INCOMPLETE][133] ([i915#2295]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglu-6/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-tglu-8/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:
    - shard-iclb:         [FAIL][135] ([i915#5072]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb2/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][137] ([i915#2346]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
    - {shard-rkl}:        [SKIP][139] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][140] +4 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - {shard-rkl}:        [SKIP][141] ([fdo#110189] / [i915#3955]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][143] ([i915#79]) -> [PASS][144] +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-tglb:         [FAIL][145] ([i915#79]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [FAIL][147] ([i915#79]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [DMESG-WARN][149] ([i915#180] / [i915#1982]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [DMESG-WARN][151] ([i915#180]) -> [PASS][152] +8 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - {shard-rkl}:        [SKIP][153] ([i915#1849] / [i915#4098]) -> [PASS][154] +10 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
    - shard-kbl:          [FAIL][155] ([i915#1188]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-skl:          [INCOMPLETE][157] ([i915#4939]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:
    - {shard-rkl}:        [SKIP][159] ([i915#1849] / [i915#3558]) -> [PASS][160] +1 similar issue
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html

  * igt@kms_plane@plane-position-covered@pipe-a-planes:
    - {shard-rkl}:        [SKIP][161] ([i915#3558]) -> [PASS][162] +1 similar issue
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-1/igt@kms_plane@plane-position-covered@pipe-a-planes.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - {shard-rkl}:        [SKIP][163] ([i915#1849] / [i915#3546] / [i915#4070] / [i915#4098]) -> [PASS][164] +1 similar issue
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_properties@crtc-properties-legacy:
    - {shard-rkl}:        [SKIP][165] ([i915#1849]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@kms_properties@crtc-properties-legacy.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html

  * igt@kms_psr@primary_render:
    - {shard-rkl}:        [SKIP][167] ([i915#1072]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@kms_psr@primary_render.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_psr@primary_render.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][169] ([fdo#109441]) -> [PASS][170] +2 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb5/igt@kms_psr@psr2_sprite_plane_onoff.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - {shard-rkl}:        [SKIP][171] ([i915#5461]) -> [PASS][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:
    - {shard-rkl}:        [SKIP][173] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-rkl-2/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html

  * igt@perf@polling:
    - shard-skl:          [FAIL][175] ([i915#1542]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl2/igt@perf@polling.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl1/igt@perf@polling.html

  
#### Warnings ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][177] ([i915#3063]) -> [FAIL][178] ([i915#5784])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][179] ([i915#4525]) -> [FAIL][180] ([i915#6117])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][181] ([i915#2842]) -> [FAIL][182] ([i915#2849])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_selftest@mock@vma:
    - shard-skl:          [INCOMPLETE][183] ([i915#6473]) -> [INCOMPLETE][184] ([i915#6473] / [i915#6509])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-skl10/igt@i915_selftest@mock@vma.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl1/igt@i915_selftest@mock@vma.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [DMESG-WARN][185] ([i915#180]) -> [FAIL][186] ([fdo#103375])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-glk:          [SKIP][187] ([fdo#109271] / [i915#1888]) -> [SKIP][188] ([fdo#109271])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-glk8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_plane_lowres@tiling-4:
    - shard-tglb:         [SKIP][189] ([i915#5288]) -> [SKIP][190] ([fdo#112054] / [i915#5288])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-tglb5/igt@kms_plane_lowres@tiling-4.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-tglb7/igt@kms_plane_lowres@tiling-4.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][191] ([i915#2920]) -> [SKIP][192] ([i915#658])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb4/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][193] ([i915#658]) -> [SKIP][194] ([i915#2920]) +1 similar issue
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][195] ([fdo#111068] / [i915#658]) -> [SKIP][196] ([i915#2920])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][197], [FAIL][198], [FAIL][199], [FAIL][200]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][201], [FAIL][202], [FAIL][203], [FAIL][204]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl8/igt@runner@aborted.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl3/igt@runner@aborted.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl3/igt@runner@aborted.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl2/igt@runner@aborted.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl1/igt@runner@aborted.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl6/igt@runner@aborted.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl8/igt@runner@aborted.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl8/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][205], [FAIL][206], [FAIL][207], [FAIL][208], [FAIL][209], [FAIL][210], [FAIL][211], [FAIL][212], [FAIL][213], [FAIL][214], [FAIL][215]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][216], [FAIL][217], [FAIL][218], [FAIL][219], [FAIL][220], [FAIL][221], [FAIL][222], [FAIL][223]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6219])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl1/igt@runner@aborted.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl1/igt@runner@aborted.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl1/igt@runner@aborted.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@runner@aborted.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@runner@aborted.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@runner@aborted.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl4/igt@runner@aborted.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@runner@aborted.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@runner@aborted.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl4/igt@runner@aborted.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@runner@aborted.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@runner@aborted.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl1/igt@runner@aborted.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl1/igt@runner@aborted.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl1/igt@runner@aborted.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl1/igt@runner@aborted.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@runner@aborted.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl1/igt@runner@aborted.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
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
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3524]: https://gitlab.freedesktop.org/drm/intel/issues/3524
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#4998]: https://gitlab.freedesktop.org/drm/intel/issues/4998
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6168]: https://gitlab.freedesktop.org/drm/intel/issues/6168
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6473]: https://gitlab.freedesktop.org/drm/intel/issues/6473
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6509]: https://gitlab.freedesktop.org/drm/intel/issues/6509
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11971 -> Patchwork_107056v1

  CI-20190529: 20190529
  CI_DRM_11971: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6614: fbb4a4058b8f4119a079b2fda5c94aaacd850a78 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107056v1: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/index.html

--===============6093618602680082965==
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
<tr><td><b>Series:</b></td><td>series starting with [v5,1/2] drm/i915/edid:=
 convert DP, HDMI and LVDS to drm_edid</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/107056/">https://patchwork.freedesktop.org/series/107056/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107056v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107056v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11971_full -&gt; Patchwork_107056v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107056v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_107056v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
107056v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-wc-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-apl4/igt@gem_exec_reloc@basic-wc-rea=
d.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-apl7/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107056v1/shard-apl2/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-=
smem0.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-glk9/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107056v1/shard-glk3/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-=
smem0.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@i915_pm_rpm@gem-execbuf-stre=
ss@extra-wait-smem0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-kbl7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7056v1/shard-kbl7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">DMESG-WARN<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_3d:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-kbl7/igt@kms_3d.html">PASS</a> -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@kms_3d.h=
tml">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-snb5/igt@kms_3d.html">PASS</a> -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-snb4/igt@kms_3d.h=
tml">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-skl4/igt@kms_3d.html">PASS</a> -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl9/igt@kms_3d.h=
tml">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-addfb:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-apl2/igt@kms_big_fb@x-tiled-addfb.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shar=
d-apl8/igt@kms_big_fb@x-tiled-addfb.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-4k:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-skl2/igt@kms_hdmi_inject@inject-4k.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shar=
d-skl10/igt@kms_hdmi_inject@inject-4k.html">INCOMPLETE</a> +1 similar issue=
</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-kbl1/igt@kms_hdmi_inject@inject-4k.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shar=
d-kbl1/igt@kms_hdmi_inject@inject-4k.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-snb6/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/=
shard-snb6/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_plane_alpha_blend@pipe-d-alpha-basic:<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-apl7/igt@kms_plane_alpha_blend@pipe-d-alpha-basic.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_107056v1/shard-apl2/igt@kms_plane_alpha_blend@pipe-d-alpha-basic=
.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglu-5/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-sm=
em0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_107056v1/shard-tglu-1/igt@i915_pm_rpm@gem-execbuf-stress@extra-=
wait-smem0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglu-4/igt@i915_pm_rpm@system-suspend-execbuf.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07056v1/shard-tglu-2/igt@i915_pm_rpm@system-suspend-execbuf.html">TIMEOUT</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-rkl-5/igt@kms_hdmi_inject@inject-aud=
io.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-alpha-basic:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglu-5/igt@kms_plane_alpha_blend@pipe-d-alpha-basic.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_107056v1/shard-tglu-1/igt@kms_plane_alpha_blend@pipe-d-alpha-basic.htm=
l">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107056v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-skl7/igt@gem_create@create-massive.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@gem_ctx_isolation@preservat=
ion-s3@vcs1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-immediate:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglb7/igt@gem_eio@in-flight-immediate.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/=
shard-tglb5/igt@gem_eio@in-flight-immediate.html">TIMEOUT</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07056v1/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v=
1/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107=
056v1/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1=
/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-iclb4/igt@gem_exec_fair@basic-pace@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1070=
56v1/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@gem_lmem_swapping@basic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-apl2/igt@gem_lmem_swapping@parallel-=
random-verify-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-skl7/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-apl4/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">=
i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-skl4/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@i915_pm_dc@dc6-dpms.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i9=
15#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-ic=
lb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@i915_pm_lpsp@kms-lpsp@kms-l=
psp-dp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1937">i915#1937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-apl2/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7056v1/shard-apl6/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">TIMEOUT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6168">i915#616=
8</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-kbl4/igt@i915_suspend@debugfs-reader.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/s=
hard-kbl1/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-skl4/igt@kms_big_fb@4-tiled-max-hw-s=
tride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +162 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-skl6/igt@kms_ccs@pipe-a-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +6 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@kms_ccs@pipe-b-bad-pixel-fo=
rmat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-apl4/igt@kms_ccs@pipe-b-crc-sprite-p=
lanes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-apl2/igt@kms_ccs@pipe-b-random-ccs-d=
ata-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a>) +79 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-skl7/igt@kms_chamelium@dp-hpd.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-apl2/igt@kms_chamelium@hdmi-mode-tim=
ings.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@kms_color_chamelium@pipe-c-=
ctm-0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@kms_content_protection@lega=
cy.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1319">i915#1319</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-apl7/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107056v1/shard-apl2/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html"=
>FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375=
">fdo#103375</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_107056v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/sha=
rd-apl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_107056v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#7=
9</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i=
915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_107056v1/shard-kbl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">DMESG=
-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-=
a-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-skl9/igt@kms_plane_alpha_blend@pipe-=
a-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-=
a-constant-alpha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-apl2/igt@kms_plane_alpha_blend@pipe-=
b-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@kms_psr2_sf@cursor-plane-up=
date-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/658">i915#658</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-apl2/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-skl7/igt@kms_psr2_su@page_flip-xrgb8=
888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-i=
clb8/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-ov=
erlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_107056v1/shard-tglb5/igt@kms_psr_stress_test@invalidate-prima=
ry-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5519">i915#5519</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-ov=
erlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_107056v1/shard-iclb7/igt@kms_psr_stress_test@invalidate-prima=
ry-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5519">i915#5519</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-skl6/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-skl7/igt@perf@non-zero-reason.html">=
TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/647=
3">i915#6473</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb2/igt@perf@polling-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/s=
hard-iclb8/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl9/igt@perf@short-reads.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl7/=
igt@perf@short-reads.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/51">i915#51</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@sysfs_clients@fair-0.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-apl4/igt@sysfs_clients@recycle.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107056v1/shard-kbl7/igt@tools_test@sysfs_l3_parity.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) +145 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-1/igt@fbdev@unaligned-write.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/=
shard-rkl-6/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@feature_discovery@psr1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/s=
hard-rkl-6/igt@feature_discovery@psr1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb7/igt@feature_discovery@psr2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/s=
hard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
0">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_107056v1/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@rcs0.ht=
ml">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11971/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
0">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_107056v1/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.ht=
ml">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglb2/igt@gem_ctx_isolation@preservation-s3@vecs0.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2411">i915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2867">i915#2867</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_107056v1/shard-tglb1/igt@gem_ctx_isolation@preservatio=
n-s3@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_107056v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-kbl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_107056v1/shard-kbl4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107056v1/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctxn.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4998">i915#4998</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107=
056v1/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctxn.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl4/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5=
566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i=
915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_107056v1/shard-skl1/igt@gen9_exec_parse@allowed-all.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl9/igt@i915_pm_sseu@full-enable.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3524">i915#3524</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v=
1/shard-skl7/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107056v1/shard-skl1/igt@kms_async_flips@alternate-sy=
nc-async-flip@pipe-c-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate=
-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_big_fb=
@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> +12 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglu-6/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen=
12_rc_ccs_cc.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2295">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-tglu-8/igt@kms_ccs@pipe-a-c=
rc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@atomic-trans=
itions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5072">i915#5072</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-iclb2/igt@kms_cursor_legac=
y@cursor-vs-flip@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-glk6/igt@kms_cursor_legacy@=
flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt=
-ytiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_draw_crc@d=
raw-method-xrgb2101010-mmap-gtt-ytiled.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107056v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_107056v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i9=
15#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107056v1/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">=
i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_107056v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107056v1/shard-apl4/igt@kms_flip@flip-vs-suspend-int=
erruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107056v1/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> +8=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indf=
b-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_frontbuffer_t=
racking@psr-1p-primscrn-indfb-plflip-blt.html">PASS</a> +10 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915=
#1188</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107056v1/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-a-planes.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4939">i915#4939</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl4/igt@kms_plane@plane-pa=
nning-bottom-right-suspend@pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right@pipe-a-p=
lanes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_plane@plane-panning-=
bottom-right@pipe-a-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-1/igt@kms_plane@plane-position-covered@pipe-a-plane=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_plane@plane-position-covered@p=
ipe-a-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
49">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3546">i915#3546</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_plane_alpha_blen=
d@pipe-b-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@kms_properties@crtc-properties-legacy.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i=
915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_107056v1/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@kms_psr@primary_render.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1=
/shard-rkl-6/igt@kms_psr@primary_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb5/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10=
9441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107056v1/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html">PASS</a> =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5461">i915#5461</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-rkl-2/igt@kms_universal_plane@universal-plane-gen9-feat=
ures-pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-rkl-6/igt@kms_universa=
l_plane@universal-plane-gen9-features-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl2/igt@perf@polling.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-skl1=
/igt@perf@polling.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10705=
6v1/shard-tglb5/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_107056v1/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107056v1/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#28=
49</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@vma:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-skl10/igt@i915_selftest@mock@vma.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6473">i915#6473<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7056v1/shard-skl1/igt@i915_selftest@mock@vma.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6473">i915#6473</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6509">i915#6509</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_107056v1/shard-kbl1/igt@kms_flip@flip-vs-suspend-interrupt=
ible@c-dp1.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-sp=
r-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-glk8/igt@kms_frontbuffer=
_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-tglb5/igt@kms_plane_lowres@tiling-4.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5288">i915#5288</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10705=
6v1/shard-tglb7/igt@kms_plane_lowres@tiling-4.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D112054">fdo#112054</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5288">i915#5288</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107056v1/shard-iclb4/igt@kms_psr2_sf@cursor-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_107056v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107056v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11971/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-apl2/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl1/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_107056v1/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-apl8/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_107056v1/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#=
3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312"=
>i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/5257">i915#5257</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11971/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11971/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11971/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1971/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1197=
1/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11971/shard-kbl4/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/s=
hard-kbl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; (<=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard=
-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_107056v1/shard-kbl1/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10705=
6v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl1/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107056v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl4/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_107056v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107056v1/shard-kbl4/=
igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11971 -&gt; Patchwork_107056v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11971: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6614: fbb4a4058b8f4119a079b2fda5c94aaacd850a78 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107056v1: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6093618602680082965==--
