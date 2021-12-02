Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA34466A57
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 20:19:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C55D76FAA2;
	Thu,  2 Dec 2021 19:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 001246FAA2;
 Thu,  2 Dec 2021 19:19:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ECEDEA47DF;
 Thu,  2 Dec 2021 19:19:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1530357165634035191=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pallavi Mishra" <pallavi.mishra@intel.com>
Date: Thu, 02 Dec 2021 19:19:34 -0000
Message-ID: <163847277493.9457.11074252212045819043@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211202112807.42743-1-pallavi.mishra@intel.com>
In-Reply-To: <20211202112807.42743-1-pallavi.mishra@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_possible_null_ptr_dereferences?=
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

--===============1530357165634035191==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix possible null ptr dereferences
URL   : https://patchwork.freedesktop.org/series/97496/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10955_full -> Patchwork_21729_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21729_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21729_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21729_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_userptr_blits@huge-split:
    - shard-snb:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-snb7/igt@gem_userptr_blits@huge-split.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-snb4/igt@gem_userptr_blits@huge-split.html

  
Known issues
------------

  Here are the changes found in Patchwork_21729_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-tglb:         [PASS][5] -> [TIMEOUT][6] ([i915#3063])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-tglb1/igt@gem_eio@in-flight-contexts-immediate.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb3/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][7] -> [TIMEOUT][8] ([i915#2481] / [i915#3070])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb8/igt@gem_eio@unwedge-stress.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#4547])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-skl4/igt@gem_exec_capture@pi@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl4/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2846])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [PASS][15] -> [SKIP][16] ([fdo#109271])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#2842])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html
    - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#2842])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_params@secure-non-master:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#112283])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb5/igt@gem_exec_params@secure-non-master.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#2190])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#4613]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl4/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#4613])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][25] ([i915#2658])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#768])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb1/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_userptr_blits@input-checking:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][27] ([i915#3002])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb3/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][28] ([i915#3318])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#1902])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb5/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][30] ([i915#3614])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#2521])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3777]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][35] ([i915#3743])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][36] ([i915#3763])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3689]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +11 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3886]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-edid-change-during-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl4/igt@kms_chamelium@dp-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-cmp-planar-formats:
    - shard-glk:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@kms_chamelium@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl9/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271]) +151 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl4/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb3/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb5/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#3116])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb5/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          NOTRUN -> [TIMEOUT][49] ([i915#1319])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][50] ([i915#180])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109278]) +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html
    - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +14 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-iclb:         [PASS][54] -> [FAIL][55] ([i915#2346])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][56] ([i915#79])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2672])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([i915#3701])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-glk:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2672])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#111825]) +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109280]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][63] -> [DMESG-WARN][64] ([i915#1982])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][65] ([fdo#109271]) +43 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-glk:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#533])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-snb:          [PASS][70] -> [SKIP][71] ([fdo#109271])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-snb2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-snb6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][72] ([i915#265])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][74] ([i915#265])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-glk:          NOTRUN -> [FAIL][75] ([fdo#108145] / [i915#265])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][76] -> [FAIL][77] ([fdo#108145] / [i915#265]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2733])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#2920]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658]) +3 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl9/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#658]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#658])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
    - shard-glk:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#658]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
    - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#658])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109441])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][86] -> [SKIP][87] ([fdo#109441]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_selftest@all@check_plane_state:
    - shard-skl:          NOTRUN -> [INCOMPLETE][88] ([i915#4663])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl9/igt@kms_selftest@all@check_plane_state.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][89] -> [FAIL][90] ([i915#31])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-glk5/igt@kms_setmode@basic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271]) +70 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#533])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl10/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@nouveau_crc@pipe-c-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([i915#2530])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb3/igt@nouveau_crc@pipe-c-source-rg.html

  * igt@perf@polling:
    - shard-skl:          [PASS][94] -> [FAIL][95] ([i915#1542])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-skl10/igt@perf@polling.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl1/igt@perf@polling.html

  * igt@perf@polling-parameterized:
    - shard-skl:          NOTRUN -> [FAIL][96] ([i915#1542])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl6/igt@perf@polling-parameterized.html

  * igt@prime_vgem@basic-userptr:
    - shard-tglb:         NOTRUN -> [SKIP][97] ([i915#3301])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb5/igt@prime_vgem@basic-userptr.html

  * igt@sysfs_clients@split-10:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2994]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl9/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries_display_on:
    - shard-apl:          [DMESG-WARN][99] ([i915#165]) -> [PASS][100] +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl1/igt@debugfs_test@read_all_entries_display_on.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl7/igt@debugfs_test@read_all_entries_display_on.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-kbl:          [DMESG-WARN][101] ([i915#180]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][103] ([i915#3063] / [i915#3648]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [FAIL][105] ([i915#2842]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [SKIP][107] ([fdo#109271]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][109] ([i915#2849]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][111] ([i915#2190]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb3/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][113] ([i915#454]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:
    - shard-apl:          [DMESG-WARN][115] ([i915#180] / [i915#1982] / [i915#203] / [i915#62]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl1/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl7/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][117] ([i915#2346] / [i915#533]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@dp-1-pipe-a:
    - shard-apl:          [DMESG-WARN][119] ([i915#165] / [i915#180] / [i915#62]) -> [PASS][120] +12 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@dp-1-pipe-a.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@dp-1-pipe-a.html

  * igt@kms_flip@blocking-absolute-wf_vblank@c-dp1:
    - shard-apl:          [DMESG-WARN][121] ([i915#165] / [i915#180]) -> [PASS][122] +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl1/igt@kms_flip@blocking-absolute-wf_vblank@c-dp1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl7/igt@kms_flip@blocking-absolute-wf_vblank@c-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][123] ([i915#79]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-iclb:         [SKIP][125] ([i915#3701]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-apl:          [DMESG-WARN][127] ([i915#203]) -> [PASS][128] +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-skl:          [DMESG-WARN][129] ([i915#1982]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [DMESG-WARN][131] ([i915#180]) -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl3/igt@kms_hdr@bpc-switch-suspend.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - shard-apl:          [DMESG-WARN][133] ([i915#180] / [i915#203] / [i915#62]) -> [PASS][134] +5 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl1/igt@kms_invalid_mode@bad-vsync-end.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl7/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][135] ([fdo#10

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/index.html

--===============1530357165634035191==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix possible null ptr dereferences</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97496/">https://patchwork.freedesktop.org/series/97496/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10955_full -&gt; Patchwork_21729_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21729_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21729_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21729_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_userptr_blits@huge-split:<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-snb7/igt@gem_userptr_blits@huge-split.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-snb4/igt@gem_userptr_blits@huge-split.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21729_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-tglb1/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb3/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb8/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2481] / [i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-skl4/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl4/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk5/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb5/igt@gem_exec_params@secure-non-master.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl4/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb1/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb3/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb5/igt@i915_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#1902])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl4/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> ([i915#3614])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl4/igt@kms_chamelium@dp-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@kms_chamelium@hdmi-cmp-planar-formats.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl9/igt@kms_chamelium@hdmi-hpd-storm-disable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl4/igt@kms_color@pipe-d-ctm-0-5.html">SKIP</a> ([fdo#109271]) +151 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb3/igt@kms_color_chamelium@pipe-a-ctm-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb5/igt@kms_color_chamelium@pipe-b-gamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_color_chamelium@pipe-c-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb5/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_content_protection@legacy.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html">SKIP</a> ([fdo#109278]) +3 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html">SKIP</a> ([fdo#109271]) +14 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html">SKIP</a> ([fdo#111825]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109280]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +43 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-snb2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-snb6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl9/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@all@check_plane_state:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl9/igt@kms_selftest@all@check_plane_state.html">INCOMPLETE</a> ([i915#4663])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-glk5/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-glk2/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_vblank@pipe-d-wait-forked-hang.html">SKIP</a> ([fdo#109271]) +70 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl10/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb3/igt@nouveau_crc@pipe-c-source-rg.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-skl10/igt@perf@polling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl1/igt@perf@polling.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl6/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb5/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl9/igt@sysfs_clients@split-10.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries_display_on:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl1/igt@debugfs_test@read_all_entries_display_on.html">DMESG-WARN</a> ([i915#165]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl7/igt@debugfs_test@read_all_entries_display_on.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb8/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl1/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html">DMESG-WARN</a> ([i915#180] / [i915#1982] / [i915#203] / [i915#62]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl7/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@dp-1-pipe-a:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@dp-1-pipe-a.html">DMESG-WARN</a> ([i915#165] / [i915#180] / [i915#62]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@dp-1-pipe-a.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl1/igt@kms_flip@blocking-absolute-wf_vblank@c-dp1.html">DMESG-WARN</a> ([i915#165] / [i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl7/igt@kms_flip@blocking-absolute-wf_vblank@c-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html">DMESG-WARN</a> ([i915#203]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl3/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl3/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10955/shard-apl1/igt@kms_invalid_mode@bad-vsync-end.html">DMESG-WARN</a> ([i915#180] / [i915#203] / [i915#62]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21729/shard-apl7/igt@kms_invalid_mode@bad-vsync-end.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         [SKIP][135] ([fdo#10</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1530357165634035191==--
