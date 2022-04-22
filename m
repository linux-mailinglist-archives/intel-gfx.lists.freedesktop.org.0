Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1C750ADD5
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Apr 2022 04:37:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 306D610F9AB;
	Fri, 22 Apr 2022 02:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B07CC10F9AE;
 Fri, 22 Apr 2022 02:36:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0CCEA882E;
 Fri, 22 Apr 2022 02:36:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7229804214231456463=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mullati Siva" <siva.mullati@intel.com>
Date: Fri, 22 Apr 2022 02:36:59 -0000
Message-ID: <165059501970.14006.14646110751654043274@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220421172635.76236-1-siva.mullati@intel.com>
In-Reply-To: <20220421172635.76236-1-siva.mullati@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmVm?=
 =?utf-8?q?actor_CT_access_to_use_iosys=5Fmap?=
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

--===============7229804214231456463==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Refactor CT access to use iosys_map
URL   : https://patchwork.freedesktop.org/series/102949/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11537_full -> Patchwork_102949v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102949v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102949v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102949v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-tglb6/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  
Known issues
------------

  Here are the changes found in Patchwork_102949v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-apl:          NOTRUN -> [DMESG-WARN][5] ([i915#180])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl8/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-tglb:         [PASS][6] -> [TIMEOUT][7] ([i915#3063])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-tglb2/igt@gem_eio@in-flight-contexts-1us.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb7/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][8] -> [FAIL][9] ([i915#232])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb1/igt@gem_eio@unwedge-stress.html
    - shard-skl:          [PASS][10] -> [TIMEOUT][11] ([i915#3063])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-skl8/igt@gem_eio@unwedge-stress.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][12] ([i915#5076] / [i915#5614])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl6/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-kbl:          NOTRUN -> [DMESG-FAIL][13] ([i915#5076] / [i915#5614])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-tglb:         [PASS][16] -> [FAIL][17] ([i915#2842])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][18] -> [FAIL][19] ([i915#2842]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-snb:          [PASS][20] -> [SKIP][21] ([fdo#109271]) +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-snb5/igt@gem_exec_flush@basic-uc-set-default.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-snb6/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_params@no-vebox:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#109283])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@gem_exec_params@no-vebox.html
    - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#109283] / [i915#4877])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [PASS][24] -> [DMESG-WARN][25] ([i915#118])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-glk4/igt@gem_exec_whisper@basic-queues-priority.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-glk5/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][26] -> [SKIP][27] ([i915#2190])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#4613]) +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#4613])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#4613])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [WARN][31] ([i915#2658])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#768])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][33] ([i915#3318])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl7/igt@gem_userptr_blits@vma-merge.html
    - shard-glk:          NOTRUN -> [FAIL][34] ([i915#3318])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-glk2/igt@gem_userptr_blits@vma-merge.html
    - shard-kbl:          NOTRUN -> [FAIL][35] ([i915#3318])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl6/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][36] ([i915#454])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][37] -> [INCOMPLETE][38] ([i915#3614])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl7/igt@i915_suspend@debugfs-reader.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl4/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([i915#5286])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb8/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#5286])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#110725] / [fdo#111614])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3777])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3777]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3777])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][45] ([i915#3763])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][46] ([i915#3743]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#3886]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278] / [i915#3886]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#3886]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl4/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#3886])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-glk3/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([fdo#111615] / [i915#3689])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#3886]) +8 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl10/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-audio:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb8/igt@kms_chamelium@hdmi-audio.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl4/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-glk:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-glk2/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#109284] / [fdo#111827])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][60] ([i915#1319])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl4/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-random:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109278]) +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@kms_cursor_crc@pipe-c-cursor-max-size-random.html
    - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#3359])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-max-size-random.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#109274] / [fdo#111825])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109274] / [fdo#109278])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +216 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl10/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][66] -> [DMESG-WARN][67] ([i915#180]) +8 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [PASS][68] -> [INCOMPLETE][69] ([i915#4839])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-skl1/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][70] -> [FAIL][71] ([i915#2122]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109280]) +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#109280] / [fdo#111825])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +49 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:
    - shard-glk:          NOTRUN -> [SKIP][75] ([fdo#109271]) +19 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-glk2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          NOTRUN -> [INCOMPLETE][76] ([i915#4444])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][77] ([fdo#108145] / [i915#265])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][78] ([fdo#108145] / [i915#265])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#658]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][81] -> [DMESG-WARN][82] ([i915#180])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271]) +102 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl4/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#533]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2437])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl8/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-d-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#2530]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@nouveau_crc@pipe-d-source-outp-inactive.html
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109278] / [i915#2530])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@nouveau_crc@pipe-d-source-outp-inactive.html

  * igt@perf@polling-parameterized:
    - shard-skl:          NOTRUN -> [FAIL][88] ([i915#5639])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl10/igt@perf@polling-parameterized.html
    - shard-tglb:         [PASS][89] -> [FAIL][90] ([i915#5639])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-tglb5/igt@perf@polling-parameterized.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb2/igt@perf@polling-parameterized.html

  * igt@perf@stress-open-close:
    - shard-glk:          [PASS][91] -> [DMESG-FAIL][92] ([i915#5386])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-glk1/igt@perf@stress-open-close.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-glk8/igt@perf@stress-open-close.html

  * igt@prime_nv_api@i915_nv_double_import:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([fdo#109291])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@prime_nv_api@i915_nv_double_import.html
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109291])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@prime_nv_api@i915_nv_double_import.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-apl:          NOTRUN -> [DMESG-WARN][95] ([i915#5098])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl3/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
    - shard-glk:          NOTRUN -> [DMESG-WARN][96] ([i915#5098])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-glk3/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2994]) +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl10/igt@sysfs_clients@fair-0.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-1us:
    - {shard-rkl}:        [TIMEOUT][98] ([i915#3063]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-6/igt@gem_eio@in-flight-contexts-1us.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-1/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-tglu}:       [FAIL][100] ([i915#2842]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [FAIL][102] ([i915#2842]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][104] ([i915#2842]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][106] ([i915#2842]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-snb:          [SKIP][108] ([fdo#109271]) -> [PASS][109] +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-snb6/igt@gem_exec_flush@basic-uc-rw-default.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-snb2/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [DMESG-WARN][110] ([i915#118]) -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-glk3/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_mmap_wc@set-cache-level:
    - {shard-rkl}:        [SKIP][112] ([i915#1850]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-4/igt@gem_mmap_wc@set-cache-level.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          [DMESG-WARN][114] ([i915#180]) -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl4/igt@gem_workarounds@suspend-resume.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [DMESG-WARN][116] ([i915#5566] / [i915#716]) -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-glk2/igt@gen9_exec_parse@allowed-single.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html
    - shard-apl:          [DMESG-WARN][118] ([i915#5566] / [i915#716]) -> [PASS][119] +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl8/igt@gen9_exec_parse@allowed-single.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][120] ([i915#454]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@i2c:
    - {shard-rkl}:        [SKIP][122] ([fdo#109308]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-4/igt@i915_pm_rpm@i2c.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@i915_pm_rpm@i2c.html

  * igt@kms_atomic@test-only:
    - {shard-rkl}:        [SKIP][124] ([i915#1845] / [i915#4098]) -> [PASS][125] +15 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-2/igt@kms_atomic@test-only.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_atomic@test-only.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - {shard-rkl}:        ([SKIP][126], [SKIP][127]) ([i915#1845] / [i915#4098]) -> [PASS][128] +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-4/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-2/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - {shard-rkl}:        ([SKIP][129], [PASS][130]) ([fdo#112022] / [i915#4070]) -> [PASS][131]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:
    - {shard-rkl}:        [SKIP][132] ([fdo#112022] / [i915#4070]) -> [PASS][133] +2 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:
    - {shard-rkl}:        [SKIP][134] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - {shard-rkl}:        [SKIP][136] ([fdo#111825] / [i915#4070]) -> [PASS][137] +4 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-iclb:         [FAIL][138] -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@pipe-c-forked-move:
    - {shard-rkl}:        ([SKIP][140], [SKIP][141]) ([i915#4070]) -> [PASS][142]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-forked-move.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-forked-move.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-forked-move.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
    - {shard-rkl}:        ([SKIP][143], [SKIP][144]) ([fdo#111825] / [i915#4070]) -> [PASS][145]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-5/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-4/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - {shard-rkl}:        [SKIP][146] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][147] +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled:
    - {shard-rkl}:        ([SKIP][148], [SKIP][149]) ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][150]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][151] ([i915#180]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][153] ([i915#180]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt:
    - {shard-rkl}:        ([SKIP][155], [SKIP][156]) ([i915#1849] / [i915#4098]) -> [PASS][157] +2 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - {shard-rkl}:        ([PASS][158], [SKIP][159]) ([i915#1849] / [i915#4098]) -> [PASS][160]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_invalid_mode@int-max-clock:
    - {shard-rkl}:        [SKIP][161] ([i915#4278]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-5/igt@kms_invalid_mode@int-max-clock.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - {shard-rkl}:        [SKIP][163] ([i915#1849] / [i915#4098]) -> [PASS][164] +6 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:
    - {shard-rkl}:        [SKIP][165] ([i915#4070] / [i915#4098]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-4/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][167] ([fdo#108145] / [i915#265]) -> [PASS][168] +1 similar issue
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [DMESG-FAIL][169] ([i915#5614]) -> [SKIP][170] ([i915#4525])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][171] ([i915#4525]) -> [DMESG-WARN][172] ([i915#5614]) +2 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [FAIL][173] ([i915#4767]) -> [INCOMPLETE][174] ([i915#180])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-skl:          [SKIP][175] ([fdo#109271] / [i915#1888]) -> [SKIP][176] ([fdo#109271])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-skl8/igt@kms_flip@2x-flip-vs-suspend.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-skl4/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180], [FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187], [FAIL][188]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][189], [FAIL][190], [FAIL][191], [FAIL][192], [FAIL][193], [FAIL][194], [FAIL][195], [FAIL][196], [FAIL][197], [FAIL][198], [FAIL][199], [FAIL][200], [FAIL][201], [FAIL][202], [FAIL][203], [FAIL][204], [FAIL][205], [FAIL][206]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl7/igt@runner@aborted.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl6/igt@runner@aborted.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl7/igt@runner@aborted.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl4/igt@runner@aborted.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl3/igt@runner@aborted.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl3/igt@runner@aborted.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl7/igt@runner@aborted.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl1/igt@runner@aborted.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl4/igt@runner@aborted.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl4/igt@runner@aborted.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl6/igt@runner@aborted.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl7/igt@runner@aborted.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl6/igt@runner@aborted.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl7/igt@runner@aborted.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl7/igt@runner@aborted.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl6/igt@runner@aborted.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl6/igt@runner@aborted.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl7/igt@runner@aborted.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl7/igt@runner@aborted.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl7/igt@runner@aborted.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl4/igt@runner@aborted.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl4/igt@runner@aborted.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl4/igt@runner@aborted.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@runner@aborted.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@runner@aborted.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl1/igt@runner@aborted.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@runner@aborted.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@runner@aborted.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@runner@aborted.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][207], [FAIL][208], [FAIL][209], [FAIL][210], [FAIL][211], [FAIL][212], [FAIL][213]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][214], [FAIL][215], [FAIL][216], [FAIL][217], [FAIL][218]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl2/igt@runner@aborted.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl8/igt@runner@aborted.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl7/igt@runner@aborted.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl3/igt@runner@aborted.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl3/igt@runner@aborted.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl6/igt@runner@aborted.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl1/igt@runner@aborted.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl7/igt@runner@aborted.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl6/igt@runner@aborted.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl1/igt@runner@aborted.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl8/igt@runner@aborted.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
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
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3736]: https://gitlab.freedesktop.org/drm/intel/issues/3736
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
  [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
  [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4444]: https://gitlab.freedesktop.org/drm/intel/issues/4444
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
  [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
  [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
  [i915#5080]: https://gitlab.freedesktop.org/drm/intel/issues/5080
  [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5386]: https://gitlab.freedesktop.org/drm/intel/issues/5386
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Build changes
-------------

  * Linux: CI_DRM_11537 -> Patchwork_102949v1

  CI-20190529: 20190529
  CI_DRM_11537: d3f1b43f64dc51bfbb59fab5c6b950159c77207e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6444: df584c804e3a44431b0e5ae21c190b6e9acb35ab @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102949v1: d3f1b43f64dc51bfbb59fab5c6b950159c77207e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/index.html

--===============7229804214231456463==
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
<tr><td><b>Series:</b></td><td>Refactor CT access to use iosys_map</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/102949/">https://patchwork.freedesktop.org/series/102949/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102949v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11537_full -&gt; Patchwork_102949v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102949v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_102949v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
102949v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-tglb6/igt@i915_selftest@live@hangcheck.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1=
/shard-tglb3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-p=
write.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_102949v1/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb5=
65-draw-pwrite.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102949v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-apl8/igt@gem_ctx_isolation@preservat=
ion-s3@vcs0.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-tglb2/igt@gem_eio@in-flight-contexts-1us.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949=
v1/shard-tglb7/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11537/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-=
tglb1/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/232">i915#232</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11537/shard-skl8/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-s=
kl7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-kbl6/igt@gem_exec_balancer@parallel-=
contexts.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5076">i915#5076</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5614">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@gem_exec_balancer@parallel-=
ordering.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5076">i915#5076</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5614">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11537/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2949v1/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11537/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2949v1/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1=
/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-snb5/igt@gem_exec_flush@basic-uc-set-default.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2949v1/shard-snb6/igt@gem_exec_flush@basic-uc-set-default.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@gem_exec_params@no-vebox.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
283">fdo#109283</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@gem_exec_params@no-vebox.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
283">fdo#109283</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4877">i915#4877</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-glk4/igt@gem_exec_whisper@basic-queues-priority.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_102949v1/shard-glk5/igt@gem_exec_whisper@basic-queues-priority.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">=
i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-=
tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@gem_lmem_swapping@parallel-=
random-verify-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@gem_lmem_swapping@smem-oom=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@gem_lmem_swapping@verify-ra=
ndom-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">=
i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@gem_render_copy@x-tiled-to=
-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/768">i915#768</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-apl7/igt@gem_userptr_blits@vma-merge.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3318">i915#3318</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-glk2/igt@gem_userptr_blits@vma-merge.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3318">i915#3318</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-kbl6/igt@gem_userptr_blits@vma-merge.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3318">i915#3318</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-skl7/igt@i915_pm_dc@dc6-dpms.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i9=
15#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-kbl7/igt@i915_suspend@debugfs-reader.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/s=
hard-kbl4/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3614">i915#3614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-iclb8/igt@kms_big_fb@4-tiled-16bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-tglb5/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@kms_big_fb@linear-16bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-s=
tride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3777">i915#3777</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-s=
tride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3777">i915#3777</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-apl8/igt@kms_big_fb@y-tiled-max-hw-s=
tride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3777">i915#3777</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-s=
tride-64bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3763">i915#3763</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@kms_ccs@pipe-a-crc-primary-=
rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@kms_ccs@pipe-a-missing-ccs=
-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-apl4/igt@kms_ccs@pipe-a-random-ccs-d=
ata-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-glk3/igt@kms_ccs@pipe-b-bad-pixel-fo=
rmat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@kms_ccs@pipe-c-bad-pixel-f=
ormat-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-skl10/igt@kms_ccs@pipe-c-missing-ccs=
-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +8 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-iclb8/igt@kms_chamelium@hdmi-audio.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-apl4/igt@kms_chamelium@hdmi-edid-cha=
nge-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-glk2/igt@kms_chamelium@hdmi-hpd-for-=
each-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@kms_chamelium@hdmi-hpd-sto=
rm.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@kms_color_chamelium@pipe-b-=
ctm-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@kms_color_chamelium@pipe-b-=
gamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@kms_color_chamelium@pipe-d=
-ctm-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-apl4/igt@kms_content_protection@srm.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-random:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@kms_cursor_crc@pipe-c-curso=
r-max-size-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109278">fdo#109278</a>) +4 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@kms_cursor_crc@pipe-c-curso=
r-max-size-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3359">i915#3359</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:<=
/p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@kms_cursor_legacy@cursorb-v=
s-flipa-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@kms_cursor_legacy@cursorb-v=
s-flipa-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-skl10/igt@kms_cursor_legacy@pipe-d-t=
orture-move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a>) +216 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102949v1/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-skl1/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949=
v1/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4839">i915#4839</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_102949v1/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-inte=
rruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@kms_frontbuffer_tracking@ps=
r-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +49 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-glk2/igt@kms_frontbuffer_tracking@ps=
r-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +19 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-skl6/igt@kms_pipe_crc_basic@suspend-=
read-crc-pipe-c.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4444">i915#4444</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-apl8/igt@kms_plane_alpha_blend@pipe-=
a-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-skl10/igt@kms_plane_alpha_blend@pipe=
-a-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@kms_psr2_sf@overlay-plane-u=
pdate-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-apl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102949v1/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-apl4/igt@kms_vblank@pipe-d-wait-fork=
ed-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +102 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-skl1/igt@kms_vblank@pipe-d-wait-idle=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/533">i915#533</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-apl8/igt@kms_writeback@writeback-inv=
alid-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-inactive:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@nouveau_crc@pipe-d-source-o=
utp-inactive.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2530">i915#2530</a>) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@nouveau_crc@pipe-d-source-o=
utp-inactive.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2530">i915#2530</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-skl10/igt@perf@polling-parameterized.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5639">i915#5639</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11537/shard-tglb5/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/sh=
ard-tglb2/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-glk1/igt@perf@stress-open-close.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-=
glk8/igt@perf@stress-open-close.html">DMESG-FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5386">i915#5386</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_double_import:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-tglb3/igt@prime_nv_api@i915_nv_double=
_import.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109291">fdo#109291</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-iclb7/igt@prime_nv_api@i915_nv_double=
_import.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109291">fdo#109291</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-apl3/igt@syncobj_timeline@invalid-tra=
nsfer-non-existent-point.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5098">i915#5098</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102949v1/shard-glk3/igt@syncobj_timeline@invalid-tra=
nsfer-non-existent-point.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5098">i915#5098</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102949v1/shard-skl10/igt@sysfs_clients@fair-0.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-rkl-6/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#=
3063</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102949v1/shard-rkl-1/igt@gem_eio@in-flight-contexts-1us.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_102949v1/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2949v1/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
02949v1/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_102949v1/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-snb6/igt@gem_exec_flush@basic-uc-rw-default.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102949v1/shard-snb2/igt@gem_exec_flush@basic-uc-rw-default.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118"=
>i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_102949v1/shard-glk3/igt@gem_exec_whisper@basic-fds-priority.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-rkl-4/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1850">i915#1850</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102=
949v1/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-kbl4/igt@gem_workarounds@suspend-resume.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102949v1/shard-kbl3/igt@gem_workarounds@suspend-resume.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11537/shard-glk2/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915=
#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716"=
>i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_102949v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html">PASS</=
a> +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11537/shard-apl8/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915=
#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716"=
>i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_102949v1/shard-apl3/igt@gen9_exec_parse@allowed-single.html">PASS</=
a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard=
-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-rkl-4/igt@i915_pm_rpm@i2c.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shar=
d-rkl-6/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@test-only:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-rkl-2/igt@kms_atomic@test-only.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102=
949v1/shard-rkl-6/igt@kms_atomic@test-only.html">PASS</a> +15 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11537/shard-rkl-4/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/sh=
ard-rkl-2/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">SKIP</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102=
949v1/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11537/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen=
.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11537/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">P=
ASS</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D112022"=
>fdo#112022</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x21=
-offscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1120=
22">fdo#112022</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-al=
pha-opaque.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-ed=
ge.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_cursor_edge_walk@=
pipe-a-256x256-bottom-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-after-cursor-leg=
acy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_cursor_legacy@basic-=
flip-after-cursor-legacy.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size=
.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_102949v1/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-varying-=
size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-forked-move:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11537/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-forked-move.html">S=
KIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/s=
hard-rkl-2/igt@kms_cursor_legacy@pipe-c-forked-move.html">SKIP</a>) (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1=
/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-forked-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying=
-size:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11537/shard-rkl-5/igt@kms_cursor_legacy@short-flip-after-cursor-at=
omic-transitions-varying-size.html">SKIP</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-4/igt@kms_cursor_legacy@short=
-flip-after-cursor-atomic-transitions-varying-size.html">SKIP</a>) (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
02949v1/shard-rkl-6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-tr=
ansitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-unti=
led.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_draw_crc@draw-=
method-xrgb8888-pwrite-untiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11537/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xti=
led.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11537/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.h=
tml">SKIP</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_draw_crc@draw-meth=
od-xrgb8888-pwrite-xtiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2949v1/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102949v1/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11537/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
pri-shrfb-draw-blt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_11537/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p=
-primscrn-pri-shrfb-draw-blt.html">SKIP</a>) (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@=
kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt.html">PASS</=
a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11537/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaled=
primary.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledp=
rimary.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_frontbuffer_tracki=
ng@fbcpsr-shrfb-scaledprimary.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-rkl-5/igt@kms_invalid_mode@int-max-clock.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4278">i915#427=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
102949v1/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-rkl-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
49">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-=
crc-pipe-a.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-rkl-4/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-prem=
ult-vs-constant.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-rkl-6/igt@kms_plane_alph=
a_blend@pipe-b-coverage-vs-premult-vs-constant.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_102949v1/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-cove=
rage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">DME=
SG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/561=
4">i915#5614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_102949v1/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/452=
5">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i9=
15#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_102949v1/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
614">i915#5614</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949=
v1/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-skl8/igt@kms_flip@2x-flip-vs-suspend.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915=
#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102949v1/shard-skl4/igt@kms_flip@2x-flip-vs-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11537/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl4/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11537/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl3/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1537/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl1/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1153=
7/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl4/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/s=
hard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl7/igt@runner@aborted.html">FAIL=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002"=
>i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_102949v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/sh=
ard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl7/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2949v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl6/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102949v1/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl7/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_102949v1/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kb=
l4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_102949v1/shard-kbl4/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1=
/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_102949v1/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl1/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_102949v1/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-kbl3/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_102949v1/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard=
-kbl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)<=
/p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11537/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11537/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11537/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl6/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1537/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
102949v1/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl6/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_102949v1/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102949v1/shard-apl8/igt@=
runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_102949v1/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#30=
02</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i=
915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11537 -&gt; Patchwork_102949v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11537: d3f1b43f64dc51bfbb59fab5c6b950159c77207e @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6444: df584c804e3a44431b0e5ae21c190b6e9acb35ab @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102949v1: d3f1b43f64dc51bfbb59fab5c6b950159c77207e @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7229804214231456463==--
