Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC163C2308
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 13:42:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70DB06EA16;
	Fri,  9 Jul 2021 11:42:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 509556EA14;
 Fri,  9 Jul 2021 11:42:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4879FA00C9;
 Fri,  9 Jul 2021 11:42:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
Date: Fri, 09 Jul 2021 11:42:05 -0000
Message-ID: <162583092528.9812.17788083539326906124@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210708102549.27821-1-vandita.kulkarni@intel.com>
In-Reply-To: <20210708102549.27821-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU2V0?=
 =?utf-8?q?_BPP_in_the_kernel_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============2044099981=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2044099981==
Content-Type: multipart/alternative;
 boundary="===============6948362368825914559=="

--===============6948362368825914559==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Set BPP in the kernel (rev2)
URL   : https://patchwork.freedesktop.org/series/92312/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10320_full -> Patchwork_20554_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20554_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20554_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20554_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@u-independent@vecs0:
    - shard-kbl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-kbl6/igt@gem_exec_schedule@u-independent@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl6/igt@gem_exec_schedule@u-independent@vecs0.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs:
    - {shard-rkl}:        [FAIL][3] ([i915#3678]) -> [SKIP][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-1/igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs.html

  
Known issues
------------

  Here are the changes found in Patchwork_20554_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-snb2/igt@gem_ctx_persistence@engines-mixed.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][6] -> [TIMEOUT][7] ([i915#2369] / [i915#3063] / [i915#3648])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2846])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
    - shard-skl:          NOTRUN -> [FAIL][10] ([i915#2846])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-glk8/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][13] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html
    - shard-kbl:          [PASS][16] -> [FAIL][17] ([i915#2842])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][18] -> [SKIP][19] ([fdo#109271])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_params@secure-non-master:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#112283])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb5/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][21] ([i915#3633]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-snb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#307])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-glk2/igt@gem_mmap_gtt@big-copy-xy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-glk2/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#307])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_offset@clear:
    - shard-glk:          [PASS][26] -> [FAIL][27] ([i915#3160])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-glk1/igt@gem_mmap_offset@clear.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-glk4/igt@gem_mmap_offset@clear.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][28] ([i915#2658])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-snb7/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][29] ([i915#2658])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl8/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_softpin@full:
    - shard-snb:          NOTRUN -> [SKIP][30] ([fdo#109271]) +232 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-snb6/igt@gem_softpin@full.html

  * igt@gem_userptr_blits@input-checking:
    - shard-snb:          NOTRUN -> [DMESG-WARN][31] ([i915#3002])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-snb7/igt@gem_userptr_blits@input-checking.html

  * igt@gen3_render_tiledy_blits:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#109289])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb5/igt@gen3_render_tiledy_blits.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#112306])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@gen9_exec_parse@bb-start-out.html
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#112306])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@gen9_exec_parse@bb-start-out.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +270 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl8/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][36] -> [INCOMPLETE][37] ([i915#146] / [i915#636])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl4/igt@i915_suspend@forcewake.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl8/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#111615])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#3689])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb5/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +31 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl8/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109284] / [fdo#111827])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb5/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-snb:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-snb2/igt@kms_chamelium@hdmi-crc-multiple.html
    - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl6/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl8/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_content_protection@legacy:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109300] / [fdo#111066])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@kms_content_protection@legacy.html
    - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#111828])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][49] ([i915#1319])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-random:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3359])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-32x10-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#3444])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#533])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl8/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#533]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][55] -> [FAIL][56] ([i915#2122])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#111825]) +6 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@kms_flip@2x-plain-flip-ts-check.html
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109274]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][59] ([i915#180]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#2122])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +31 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109280]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-glk:          NOTRUN -> [SKIP][64] ([fdo#109271]) +4 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-glk1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([i915#1188])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([i915#1187])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb5/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][68] ([fdo#108145] / [i915#265]) +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][69] ([i915#265]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_lowres@pipe-d-tiling-x:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([i915#3536])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@kms_plane_lowres@pipe-d-tiling-x.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2733])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl4/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#658]) +4 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][75] -> [SKIP][76] ([fdo#109642] / [fdo#111068] / [i915#658])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][77] -> [SKIP][78] ([fdo#109441])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#109441])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@kms_psr@psr2_no_drrs.html
    - shard-tglb:         NOTRUN -> [FAIL][80] ([i915#132] / [i915#3467])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][81] -> [INCOMPLETE][82] ([i915#146] / [i915#198] / [i915#2828])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl9/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][83] -> [DMESG-WARN][84] ([i915#180])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-apl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2437])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl7/igt@kms_writeback@writeback-check-output.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][86] -> [FAIL][87] ([i915#1542])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-glk7/igt@perf@polling-parameterized.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-glk1/igt@perf@polling-parameterized.html

  * igt@prime_nv_test@i915_blt_fill_nv_read:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#109291])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@prime_nv_test@i915_blt_fill_nv_read.html
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109291])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@prime_nv_test@i915_blt_fill_nv_read.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2994]) +3 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl7/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@split-50:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2994])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl2/igt@sysfs_clients@split-50.html
    - shard-iclb:         NOTRUN -> [SKIP][92] ([i915#2994])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@sysfs_clients@split-50.html
    - shard-tglb:         NOTRUN -> [SKIP][93] ([i915#2994])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@sysfs_clients@split-50.html
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2994]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl4/igt@sysfs_clients@split-50.html

  * igt@vgem_basic@unload:
    - shard-snb:          NOTRUN -> [INCOMPLETE][95] ([i915#3744])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-snb7/igt@vgem_basic@unload.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - {shard-rkl}:        [SKIP][96] ([i915#2582]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-1/igt@fbdev@unaligned-write.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@fbdev@unaligned-write.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][98] ([i915#2842]) -> [PASS][99] +3 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-iclb:         [FAIL][100] ([i915#2842]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-iclb6/igt@gem_exec_fair@basic-pace@rcs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_reloc@basic-scanout@vecs0:
    - {shard-rkl}:        [SKIP][102] ([i915#3639]) -> [PASS][103] +3 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@gem_exec_reloc@basic-scanout@vecs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html

  * igt@gem_exec_suspend@basic-s3-devices:
    - {shard-rkl}:        [FAIL][104] -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-6/igt@gem_exec_suspend@basic-s3-devices.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-1/igt@gem_exec_suspend@basic-s3-devices.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [DMESG-WARN][106] ([i915#118] / [i915#95]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-glk1/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - {shard-rkl}:        [FAIL][108] ([i915#307]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@i915_pm_backlight@bad-brightness:
    - {shard-rkl}:        [SKIP][110] ([i915#3012]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@i915_pm_backlight@bad-brightness.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [INCOMPLETE][112] ([i915#151]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl4/igt@i915_pm_rpm@system-suspend.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl8/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_selftest@live@gt_pm:
    - {shard-rkl}:        [DMESG-FAIL][114] ([i915#1021]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@i915_selftest@live@gt_pm.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-5/igt@i915_selftest@live@gt_pm.html

  * igt@kms_atomic@plane-immutable-zpos:
    - {shard-rkl}:        [SKIP][116] ([i915#1845]) -> [PASS][117] +12 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-1/igt@kms_atomic@plane-immutable-zpos.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_atomic@plane-immutable-zpos.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-iclb:         [FAIL][118] -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-iclb4/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb6/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - {shard-rkl}:        [SKIP][120] ([i915#3721]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - {shard-rkl}:        [SKIP][122] ([i915#3638]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [FAIL][124] ([i915#3678]) -> [PASS][125] +3 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-b-degamma:
    - {shard-rkl}:        [SKIP][126] ([i915#1149] / [i915#1849]) -> [PASS][127] +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@kms_color@pipe-b-degamma.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_color@pipe-b-degamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement:
    - {shard-rkl}:        [SKIP][128] ([fdo#112022]) -> [PASS][129] +8 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - {shard-rkl}:        [SKIP][130] ([i915#1849]) -> [PASS][131] +23 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - {shard-rkl}:        [SKIP][132] ([fdo#111825]) -> [PASS][133] +2 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [FAIL][134] ([i915#2346]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - {shard-rkl}:        [SKIP][136] ([fdo#111314]) -> [PASS][137] +3 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][138] ([i915#79]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
    - shard-kbl:          [FAIL][140] ([i915#79]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-skl:          [DMESG-WARN][142] ([i915#1982]) -> [PASS][143] +2 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][144] ([i915#180]) -> [PASS][145]
   [144]:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/index.html

--===============6948362368825914559==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>Set BPP in the kernel (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92312/">https://patchwork.freedesktop.org/series/92312/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10320_full -&gt; Patchwork_20554_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20554_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20554_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20554_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_schedule@u-independent@vecs0:<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-kbl6/igt@gem_exec_schedule@u-independent@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl6/igt@gem_exec_schedule@u-independent@vecs0.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs:<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-1/igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs.html">FAIL</a> ([i915#3678]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20554_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-snb2/igt@gem_ctx_persistence@engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-tglb2/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-kbl3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-glk8/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb5/igt@gem_exec_params@secure-non-master.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-snb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#3633]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-glk2/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-glk2/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-glk1/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-glk4/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-snb7/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl8/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@full:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-snb6/igt@gem_softpin@full.html">SKIP</a> ([fdo#109271]) +232 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-snb7/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb5/igt@gen3_render_tiledy_blits.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> ([fdo#112306])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> ([fdo#112306])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl8/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> ([fdo#109271]) +270 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl4/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl8/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#146] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb5/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl8/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271]) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb5/igt@kms_chamelium@dp-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-snb2/igt@kms_chamelium@hdmi-crc-multiple.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl6/igt@kms_chamelium@hdmi-crc-multiple.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl8/igt@kms_chamelium@hdmi-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@kms_content_protection@legacy.html">SKIP</a> ([fdo#109300] / [fdo#111066])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@kms_content_protection@legacy.html">SKIP</a> ([fdo#111828])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl7/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-32x10-random.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">FAIL</a> ([i915#3444])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl8/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> ([fdo#111825]) +6 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> ([fdo#109274]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-glk1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html">SKIP</a> ([fdo#109271]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb5/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@kms_plane_lowres@pipe-d-tiling-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl4/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb3/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@kms_psr@psr2_no_drrs.html">FAIL</a> ([i915#132] / [i915#3467])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl9/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#146] / [i915#198] / [i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-apl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl7/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-glk7/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-glk1/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_blt_fill_nv_read:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@prime_nv_test@i915_blt_fill_nv_read.html">SKIP</a> ([fdo#109291])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@prime_nv_test@i915_blt_fill_nv_read.html">SKIP</a> ([fdo#109291])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-apl7/igt@sysfs_clients@fair-7.html">SKIP</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl2/igt@sysfs_clients@split-50.html">SKIP</a> ([fdo#109271] / [i915#2994])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb5/igt@sysfs_clients@split-50.html">SKIP</a> ([i915#2994])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-tglb2/igt@sysfs_clients@split-50.html">SKIP</a> ([i915#2994])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl4/igt@sysfs_clients@split-50.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-snb7/igt@vgem_basic@unload.html">INCOMPLETE</a> ([i915#3744])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-1/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-iclb6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vecs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@gem_exec_reloc@basic-scanout@vecs0.html">SKIP</a> ([i915#3639]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-6/igt@gem_exec_suspend@basic-s3-devices.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-1/igt@gem_exec_suspend@basic-s3-devices.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-glk1/igt@gem_exec_whisper@basic-queues-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#307]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@i915_pm_backlight@bad-brightness.html">SKIP</a> ([i915#3012]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl4/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a> ([i915#151]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl8/igt@i915_pm_rpm@system-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1021]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-5/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-immutable-zpos:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-1/igt@kms_atomic@plane-immutable-zpos.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_atomic@plane-immutable-zpos.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-iclb4/igt@kms_big_fb@linear-64bpp-rotate-0.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-iclb6/igt@kms_big_fb@linear-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#3721]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">SKIP</a> ([i915#3638]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">FAIL</a> ([i915#3678]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-degamma:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@kms_color@pipe-b-degamma.html">SKIP</a> ([i915#1149] / [i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_color@pipe-b-degamma.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html">PASS</a> +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/shard-skl2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20554/shard-skl2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="">DMESG-WARN</a> ([i915#180]) -&gt; [PASS][145]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6948362368825914559==--

--===============2044099981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2044099981==--
