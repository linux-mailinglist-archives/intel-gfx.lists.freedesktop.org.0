Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BFD4924E0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 12:32:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B02310E36F;
	Tue, 18 Jan 2022 11:32:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1ECE510E133;
 Tue, 18 Jan 2022 11:32:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 171B7A3C0D;
 Tue, 18 Jan 2022 11:32:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5591735148030978122=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 18 Jan 2022 11:32:11 -0000
Message-ID: <164250553105.25099.12505300904939956153@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_bandwith_related_cdclk_calculations?=
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

--===============5591735148030978122==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix bandwith related cdclk calculations
URL   : https://patchwork.freedesktop.org/series/98975/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11094_full -> Patchwork_22010_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22010_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22010_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22010_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb7/igt@i915_pm_rpm@system-suspend-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb7/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglb8/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglb5/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_persistence@smoketest:
    - {shard-tglu}:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglu-1/igt@gem_ctx_persistence@smoketest.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglu-7/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_schedule@smoketest@rcs0:
    - {shard-rkl}:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-1/igt@gem_exec_schedule@smoketest@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-5/igt@gem_exec_schedule@smoketest@rcs0.html

  * igt@i915_hangman@engine-hang@vcs0:
    - {shard-rkl}:        [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@i915_hangman@engine-hang@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-5/igt@i915_hangman@engine-hang@vcs0.html

  * igt@kms_cursor_legacy@all-pipes-forked-move:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-5/igt@kms_cursor_legacy@all-pipes-forked-move.html

  * igt@runner@aborted:
    - {shard-tglu}:       ([FAIL][12], [FAIL][13], [FAIL][14]) ([i915#3002] / [i915#4312]) -> ([FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18]) ([i915#2722] / [i915#3002] / [i915#4312])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglu-6/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglu-7/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglu-1/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglu-1/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglu-4/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglu-2/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglu-7/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22010_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([i915#4525]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][23] ([i915#4547])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl8/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_endless@dispatch@vecs0:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([i915#3778])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglb8/igt@gem_exec_endless@dispatch@vecs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglb3/igt@gem_exec_endless@dispatch@vecs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][26] ([i915#2846])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          NOTRUN -> [FAIL][27] ([i915#2842])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][28] -> [FAIL][29] ([i915#2842]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][30] -> [DMESG-WARN][31] ([i915#118])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#2190])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#4613]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][34] ([i915#2658])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3323])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl1/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3323])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][37] ([i915#3318])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl8/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][38] ([i915#454])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([i915#4281])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb4/igt@i915_pm_dc@dc9-dpms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][41] ([i915#3743]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3777]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3777])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271]) +18 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-apl7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886]) +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#3886]) +13 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl4/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-apl2/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +28 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl8/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-snb7/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-iclb:         [PASS][51] -> [FAIL][52] ([i915#2346])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
    - shard-glk:          [PASS][53] -> [FAIL][54] ([i915#2346] / [i915#533])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][55] -> [FAIL][56] ([i915#79])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#79])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][59] -> [DMESG-WARN][60] ([i915#180]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          NOTRUN -> [FAIL][61] ([i915#2122])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#4911])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-glk9/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-iclb:         [PASS][64] -> [SKIP][65] ([i915#3701])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +364 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +72 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-snb:          NOTRUN -> [SKIP][68] ([fdo#109271]) +35 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-snb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#1188])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#533])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          [PASS][72] -> [INCOMPLETE][73] ([i915#2828])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#533]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][75] ([fdo#108145] / [i915#265]) +7 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][76] ([i915#265]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658]) +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl3/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][78] -> [SKIP][79] ([fdo#109441])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2437])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@kms_writeback@writeback-check-output.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2994]) +5 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl3/igt@sysfs_clients@fair-0.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@q-smoketest-all:
    - {shard-rkl}:        ([INCOMPLETE][82], [PASS][83]) -> [PASS][84]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-5/igt@gem_ctx_shared@q-smoketest-all.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@gem_ctx_shared@q-smoketest-all.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-4/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-tglb:         [TIMEOUT][85] ([i915#3063]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglb8/igt@gem_eio@in-flight-contexts-1us.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][87] ([i915#4525]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb8/igt@gem_exec_balancer@parallel.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb2/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_create@forked@smem:
    - {shard-tglu}:       [INCOMPLETE][89] -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglu-7/igt@gem_exec_create@forked@smem.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglu-4/igt@gem_exec_create@forked@smem.html

  * igt@gem_exec_create@legacy@smem:
    - {shard-rkl}:        [DMESG-WARN][91] -> ([PASS][92], [PASS][93])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-5/igt@gem_exec_create@legacy@smem.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-5/igt@gem_exec_create@legacy@smem.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-4/igt@gem_exec_create@legacy@smem.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][94] ([i915#2846]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-glk2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [FAIL][96] ([i915#2842]) -> [PASS][97] +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [FAIL][98] ([i915#2842]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_reloc@basic-scanout@vecs0:
    - {shard-rkl}:        [SKIP][100] ([i915#3639]) -> [PASS][101] +3 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@gem_exec_reloc@basic-scanout@vecs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [DMESG-WARN][102] ([i915#180]) -> [PASS][103] +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-apl2/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [DMESG-WARN][104] ([i915#118]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-glk3/igt@gem_exec_whisper@basic-contexts-all.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-glk2/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][106] ([i915#2190]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglb1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_linear_blits@interruptible:
    - {shard-tglu}:       [FAIL][108] -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglu-7/igt@gem_linear_blits@interruptible.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglu-8/igt@gem_linear_blits@interruptible.html

  * igt@gem_mmap_offset@close-race:
    - {shard-rkl}:        [INCOMPLETE][110] -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-5/igt@gem_mmap_offset@close-race.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-2/igt@gem_mmap_offset@close-race.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][112] ([i915#454]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@gem-execbuf:
    - {shard-rkl}:        [SKIP][114] ([fdo#109308]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html

  * igt@i915_pm_rps@min-max-config-idle:
    - {shard-rkl}:        ([FAIL][116], [PASS][117]) ([i915#4016]) -> [PASS][118]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@i915_pm_rps@min-max-config-idle.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@i915_pm_rps@min-max-config-idle.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@reset:
    - {shard-dg1}:        [FAIL][119] ([i915#3719]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-dg1-16/igt@i915_pm_rps@reset.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-dg1-15/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][121] ([i915#3921]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-snb6/igt@i915_selftest@live@hangcheck.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180:
    - {shard-rkl}:        ([SKIP][123], [SKIP][124]) ([i915#1845]) -> [PASS][125]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - {shard-rkl}:        [SKIP][126] ([i915#1845]) -> [PASS][127] +18 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        [SKIP][128] ([i915#1845] / [i915#4098]) -> [PASS][129] +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - {shard-rkl}:        [SKIP][130] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][131] +2 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_color@pipe-a-ctm-blue-to-red.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - {shard-rkl}:        [SKIP][132] ([fdo#112022] / [i915#4070]) -> [PASS][133] +2 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - {shard-rkl}:        [SKIP][134] ([i915#1849] / [i915#4070]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:
    - {shard-rkl}:        ([SKIP][136], [SKIP][137]) ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][138]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - {shard-rkl}:        [SKIP][139] ([fdo#111825] / [i915#4070]) -> [PASS][140] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:
    - shard-tglb:         [DMESG-WARN][141] ([i915#1982]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglb2/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglb2/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-iclb:         [FAIL][143] ([i915#2346]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - {shard-rkl}:        ([SKIP][145], [SKIP][146]) ([fdo#111825] / [i915#4070]) -> [PASS][147]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-c-single-bo:
    - {shard-rkl}:        [SKIP][148] ([i915#4070]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/index.html

--===============5591735148030978122==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix bandwith related cdclk calculations</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98975/">https://patchwork.freedesktop.org/series/98975/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11094_full -&gt; Patchwork_22010_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22010_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22010_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22010_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb7/igt@i915_pm_rpm@system-suspend-devices.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb7/igt@i915_pm_rpm@system-suspend-devices.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglb8/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglb5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglu-1/igt@gem_ctx_persistence@smoketest.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglu-7/igt@gem_ctx_persistence@smoketest.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@smoketest@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-1/igt@gem_exec_schedule@smoketest@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-5/igt@gem_exec_schedule@smoketest@rcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-hang@vcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@i915_hangman@engine-hang@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-5/igt@i915_hangman@engine-hang@vcs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@all-pipes-forked-move:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-5/igt@kms_cursor_legacy@all-pipes-forked-move.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{shard-tglu}:       (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglu-6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglu-7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglu-1/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / [i915#4312]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglu-1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglu-4/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglu-2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglu-7/igt@runner@aborted.html">FAIL</a>) ([i915#2722] / [i915#3002] / [i915#4312])</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22010_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> ([i915#4525]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl8/igt@gem_exec_capture@pi@vcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglb8/igt@gem_exec_endless@dispatch@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglb3/igt@gem_exec_endless@dispatch@vecs0.html">INCOMPLETE</a> ([i915#3778])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl1/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl8/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl7/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb4/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-apl7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl4/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-apl2/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl8/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-snb7/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-glk9/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +364 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +72 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-snb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html">SKIP</a> ([fdo#109271]) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">INCOMPLETE</a> ([i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl3/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl10/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-skl3/igt@sysfs_clients@fair-0.html">SKIP</a> ([fdo#109271] / [i915#2994]) +5 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_shared@q-smoketest-all:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-5/igt@gem_ctx_shared@q-smoketest-all.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@gem_ctx_shared@q-smoketest-all.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-4/igt@gem_ctx_shared@q-smoketest-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglb8/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb8/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb2/igt@gem_exec_balancer@parallel.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked@smem:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglu-7/igt@gem_exec_create@forked@smem.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglu-4/igt@gem_exec_create@forked@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@legacy@smem:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-5/igt@gem_exec_create@legacy@smem.html">DMESG-WARN</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-5/igt@gem_exec_create@legacy@smem.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-4/igt@gem_exec_create@legacy@smem.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vecs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@gem_exec_reloc@basic-scanout@vecs0.html">SKIP</a> ([i915#3639]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-apl2/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-glk3/igt@gem_exec_whisper@basic-contexts-all.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-glk2/igt@gem_exec_whisper@basic-contexts-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@interruptible:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglu-7/igt@gem_linear_blits@interruptible.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglu-8/igt@gem_linear_blits@interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@close-race:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-5/igt@gem_mmap_offset@close-race.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-2/igt@gem_mmap_offset@close-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@i915_pm_rps@min-max-config-idle.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@i915_pm_rps@min-max-config-idle.html">PASS</a>) ([i915#4016]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@i915_pm_rps@min-max-config-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-dg1-16/igt@i915_pm_rps@reset.html">FAIL</a> ([i915#3719]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-dg1-15/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_color@pipe-a-ctm-blue-to-red.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_color@pipe-a-ctm-blue-to-red.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html">SKIP</a>) ([i915#1849] / [i915#4070] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglb2/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-tglb2/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">SKIP</a>) ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22010/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-single-bo:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-">SKIP</a> ([i915#4070]) -&gt; [PASS][149]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5591735148030978122==--
