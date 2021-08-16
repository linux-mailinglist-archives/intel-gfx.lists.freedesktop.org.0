Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CCD3ED9C5
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 17:20:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC60D89F27;
	Mon, 16 Aug 2021 15:20:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF86E89F27;
 Mon, 16 Aug 2021 15:20:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4F84AA0EA;
 Mon, 16 Aug 2021 15:20:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8934041855609064873=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Desmond Cheong Zhi Xi" <desmondcheongzx@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Aug 2021 15:20:41 -0000
Message-ID: <162912724163.26192.10687462578109899010@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210815153740.195330-1-desmondcheongzx@gmail.com>
In-Reply-To: <20210815153740.195330-1-desmondcheongzx@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_avoid_races_with_modesetting_rights?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8934041855609064873==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: avoid races with modesetting rights
URL   : https://patchwork.freedesktop.org/series/93714/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10488_full -> Patchwork_20831_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20831_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20831_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20831_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_lease@cursor_implicit_plane:
    - shard-snb:          [PASS][1] -> [DMESG-WARN][2] +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-snb2/igt@kms_lease@cursor_implicit_plane.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb5/igt@kms_lease@cursor_implicit_plane.html

  * igt@kms_lease@implicit-plane-lease:
    - shard-tglb:         [PASS][3] -> [DMESG-WARN][4] +13 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-tglb5/igt@kms_lease@implicit-plane-lease.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb2/igt@kms_lease@implicit-plane-lease.html

  * igt@kms_lease@master-vs-lease:
    - shard-iclb:         [PASS][5] -> [DMESG-WARN][6] +13 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-iclb1/igt@kms_lease@master-vs-lease.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb8/igt@kms_lease@master-vs-lease.html
    - shard-snb:          NOTRUN -> [DMESG-WARN][7] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb6/igt@kms_lease@master-vs-lease.html

  * igt@perf_pmu@busy-double-start@vcs1:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-tglb5/igt@perf_pmu@busy-double-start@vcs1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb8/igt@perf_pmu@busy-double-start@vcs1.html

  
Known issues
------------

  Here are the changes found in Patchwork_20831_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([i915#658])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-iclb2/igt@feature_discovery@psr2.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb7/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#1099]) +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb6/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][13] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][16] ([i915#2724])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb7/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-apl2/igt@i915_suspend@forcewake.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl6/igt@i915_suspend@forcewake.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#3689])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb7/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3886]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3886]) +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271]) +96 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl8/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl8/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html
    - shard-tglb:         NOTRUN -> [SKIP][24] ([fdo#109284] / [fdo#111827])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb7/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#109284] / [fdo#111827])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb3/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb6/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl4/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][29] ([i915#1319])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#300])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#2346])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +14 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl4/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#79])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-panning-interruptible@a-edp1:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1982])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-skl8/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl7/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][39] ([i915#180]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-snb:          NOTRUN -> [SKIP][40] ([fdo#109271]) +348 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +32 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#1188])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_lease@cursor_implicit_plane:
    - shard-kbl:          [PASS][44] -> [DMESG-WARN][45] ([i915#1610]) +10 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-kbl7/igt@kms_lease@cursor_implicit_plane.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl7/igt@kms_lease@cursor_implicit_plane.html

  * igt@kms_lease@invalid-create-leases:
    - shard-skl:          NOTRUN -> [DMESG-WARN][46] ([i915#1610]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl6/igt@kms_lease@invalid-create-leases.html

  * igt@kms_lease@lease-uevent:
    - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#1610]) +8 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-apl1/igt@kms_lease@lease-uevent.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl1/igt@kms_lease@lease-uevent.html

  * igt@kms_lease@lease_unleased_connector:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][49] ([i915#1610])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl2/igt@kms_lease@lease_unleased_connector.html

  * igt@kms_lease@lease_unleased_crtc:
    - shard-skl:          [PASS][50] -> [DMESG-WARN][51] ([i915#1610]) +11 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-skl3/igt@kms_lease@lease_unleased_crtc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl10/igt@kms_lease@lease_unleased_crtc.html

  * igt@kms_lease@master-vs-lease:
    - shard-apl:          NOTRUN -> [DMESG-WARN][52] ([i915#1610]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl8/igt@kms_lease@master-vs-lease.html

  * igt@kms_lease@multimaster-lease:
    - shard-glk:          [PASS][53] -> [DMESG-WARN][54] ([i915#1610]) +13 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-glk5/igt@kms_lease@multimaster-lease.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-glk4/igt@kms_lease@multimaster-lease.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl8/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_su@page_flip:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#658])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl6/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][61] -> [SKIP][62] ([fdo#109441])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb7/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2437])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl6/igt@kms_writeback@writeback-fb-id.html

  * igt@sysfs_clients@pidname:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2994]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@sysfs_clients@pidname.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-tglb:         [FAIL][65] ([i915#2846]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-tglb5/igt@gem_exec_fair@basic-deadline.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][67] ([i915#2842]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [SKIP][69] ([fdo#109271]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-kbl1/igt@gem_softpin@noreloc-s3.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl2/igt@gem_softpin@noreloc-s3.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [INCOMPLETE][73] ([i915#636]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][75] ([i915#1188]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][79] ([fdo#109441]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [DMESG-WARN][81] -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][83] ([i915#2920]) -> [SKIP][84] ([i915#658]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][85] ([i915#658]) -> [SKIP][86] ([i915#2920]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602]) -> ([FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#2505] / [i915#3002] / [i915#3363])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-kbl1/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-kbl1/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-kbl1/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-kbl7/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-kbl3/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-kbl1/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl1/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl2/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl1/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl2/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl2/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl2/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl2/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl1/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl3/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl7/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl7/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl6/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl6/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl7/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl7/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl7/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][110], [FAIL][111]) ([i915#3002]) -> ([FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127]) ([i915#1814] / [i915#2426] / [i915#3002] / [i915#3690])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-iclb4/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-iclb3/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb2/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb7/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb1/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb6/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb4/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb6/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb8/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb8/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb6/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb5/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb1/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb3/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb3/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb5/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb3/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb8/igt@runner@aborted.html
    - shard-apl:          ([FAIL][128], [FAIL][129]) ([fdo#109271] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#3363])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-apl8/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-apl2/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl6/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl1/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl7/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl6/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl1/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl7/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl8/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl3/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl2/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl8/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl1/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl2/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][146], [FAIL][147]) ([i915#3002]) -> ([FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162]) ([i915#2426] / [i915#3002] / [i915#3690])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-tglb8/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-tglb5/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb6/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb2/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb5/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb7/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb1/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb7/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb1/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb5/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb5/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb1/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb3/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb7/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb5/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb3/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb2/igt@runner@aborted.html
    - shard-snb:          [FAIL][163] ([i915#3002]) -> ([FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174]) ([i915#2426] / [i915#3002])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-snb6/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb6/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb2/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb6/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb5/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb5/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb2/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb2/igt@runner@aborted.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb6/igt@runner@aborted.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb5/igt@runner@aborted.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb5/igt@runner@aborted.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb6/igt@runner@aborted.html
    - shard-skl:          ([FAIL][175], [FAIL][176], [FAIL][177]) ([i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][178], [FAIL][179], [FAIL][180], [FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187], [FAIL][188], [FAIL][189], [FAIL][190], [FAIL][191], [FAIL][192], [FAIL][193]) ([i915#1814] / [i915#2426] / [i915#3002] / [i915#3363])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-skl1/igt@runner@aborted.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-skl10/igt@runner@aborted.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-skl6/igt@runner@aborted.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl10/igt@runner@aborted.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl10/igt@runner@aborted.html
   [180]: https://intel-gfx-ci.01.org/tree/drm

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/index.html

--===============8934041855609064873==
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
<tr><td><b>Series:</b></td><td>drm: avoid races with modesetting rights</td=
></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/93714/">https://patchwork.freedesktop.org/series/93714/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20831/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20831/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10488_full -&gt; Patchwork_20831_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20831_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20831_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20831_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_lease@cursor_implicit_plane:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-snb2/igt@kms_lease@cursor_implicit_plane.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/=
shard-snb5/igt@kms_lease@cursor_implicit_plane.html">DMESG-WARN</a> +6 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_lease@implicit-plane-lease:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-tglb5/igt@kms_lease@implicit-plane-lease.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/=
shard-tglb2/igt@kms_lease@implicit-plane-lease.html">DMESG-WARN</a> +13 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_lease@master-vs-lease:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10488/shard-iclb1/igt@kms_lease@master-vs-lease.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-=
iclb8/igt@kms_lease@master-vs-lease.html">DMESG-WARN</a> +13 similar issues=
</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20831/shard-snb6/igt@kms_lease@master-vs-lease.html"=
>DMESG-WARN</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-tglb5/igt@perf_pmu@busy-double-start@vcs1.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831=
/shard-tglb8/igt@perf_pmu@busy-double-start@vcs1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20831_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-ic=
lb7/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-snb6/igt@gem_ctx_persistence@legacy-eng=
ines-mixed-process.html">SKIP</a> ([fdo#109271] / [i915#1099]) +4 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.=
html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
831/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-snb7/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#2724])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-apl2/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl=
6/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-tglb7/igt@kms_ccs@pipe-a-ccs-on-another=
-bo-yf_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-apl6/igt@kms_ccs@pipe-b-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]=
) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-apl8/igt@kms_ccs@pipe-c-random-ccs-data=
-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +96 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20831/shard-apl8/igt@kms_chamelium@hdmi-hpd-enable-d=
isable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues<=
/p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20831/shard-tglb7/igt@kms_chamelium@hdmi-hpd-enable-=
disable-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-iclb3/igt@kms_chamelium@vga-hpd-after-s=
uspend.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-snb6/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-skl4/igt@kms_color_chamelium@pipe-a-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-apl8/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0831/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</=
a> ([i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20831/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-skl4/igt@kms_cursor_legacy@pipe-d-tortu=
re-move.html">SKIP</a> ([fdo#109271]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20831/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a>=
 ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-skl8/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20831/shard-skl7/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.=
html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-apl2/igt@kms_flip@flip-vs-suspend-inter=
ruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2=
p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +348 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@kms_frontbuffer_tracking@fbcps=
r-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +32 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard=
-skl6/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor_implicit_plane:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-kbl7/igt@kms_lease@cursor_implicit_plane.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/=
shard-kbl7/igt@kms_lease@cursor_implicit_plane.html">DMESG-WARN</a> ([i915#=
1610]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_lease@invalid-create-leases:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-skl6/igt@kms_lease@invalid-create-lease=
s.html">DMESG-WARN</a> ([i915#1610]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-uevent:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-apl1/igt@kms_lease@lease-uevent.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl=
1/igt@kms_lease@lease-uevent.html">DMESG-WARN</a> ([i915#1610]) +8 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease_unleased_connector:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-kbl2/igt@kms_lease@lease_unleased_conne=
ctor.html">DMESG-WARN</a> ([i915#1610])</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease_unleased_crtc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-skl3/igt@kms_lease@lease_unleased_crtc.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/sh=
ard-skl10/igt@kms_lease@lease_unleased_crtc.html">DMESG-WARN</a> ([i915#161=
0]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_lease@master-vs-lease:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-apl8/igt@kms_lease@master-vs-lease.html=
">DMESG-WARN</a> ([i915#1610]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_lease@multimaster-lease:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-glk5/igt@kms_lease@multimaster-lease.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shar=
d-glk4/igt@kms_lease@multimaster-lease.html">DMESG-WARN</a> ([i915#1610]) +=
13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-apl8/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-b-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20831/shard-kbl1/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend@pipe-b-planes.html">DMESG-WARN</a> ([i915#180]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-apl6/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-skl6/igt@kms_psr2_su@page_flip.html">SK=
IP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb=
7/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-apl6/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@sysfs_clients@pidname.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-tglb5/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (=
[i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20831/shard-tglb5/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20831/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP=
</a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20831/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-kbl1/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([=
i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20831/shard-kbl2/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">INCOMPLET=
E</a> ([i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20831/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#=
1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20831/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.htm=
l">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-apl8/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-iclb7/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([f=
do#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20831/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspen=
d.html">DMESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20831/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-dpms=
-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-=
2.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20831/shard-iclb7/igt@kms_psr2_sf@overlay-plane-upd=
ate-sf-dmg-area-2.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
1.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20831/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10488/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-kbl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10488/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-kbl1/igt@runner@aborted.h=
tml">FAIL</a>) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i91=
5#3363] / [i915#602]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20831/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl2/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20831/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl2/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20831/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kb=
l2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20831/shard-kbl4/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard=
-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20831/shard-kbl1/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/sh=
ard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20831/shard-kbl7/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831=
/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl6/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
831/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20831/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-kbl7/igt@runner@aborted=
.html">FAIL</a>) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i=
915#2505] / [i915#3002] / [i915#3363])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-iclb4/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-iclb3/igt@runner@a=
borted.html">FAIL</a>) ([i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20831/shard-iclb2/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2083=
1/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb1/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20831/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20831/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb8/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20831/shard-iclb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb6/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20831/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-iclb1/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20831/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-ic=
lb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20831/shard-iclb5/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/sha=
rd-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20831/shard-iclb8/igt@runner@aborted.html">F=
AIL</a>) ([i915#1814] / [i915#2426] / [i915#3002] / [i915#3690])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-apl2/igt@runner@abo=
rted.html">FAIL</a>) ([fdo#109271] / [i915#1814] / [i915#3002] / [i915#3363=
]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_208=
31/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl3/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20831/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl1/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20831/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20831/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20831/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl7/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20831/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl3/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20831/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl8/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20831/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-apl2/=
igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#1814] / [i915#2426] =
/ [i915#3002] / [i915#3363])</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-tglb5/igt@runner@a=
borted.html">FAIL</a>) ([i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20831/shard-tglb6/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2083=
1/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb5/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20831/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20831/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb1/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20831/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb5/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20831/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tglb3/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20831/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-tg=
lb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20831/shard-tglb3/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/sha=
rd-tglb2/igt@runner@aborted.html">FAIL</a>) ([i915#2426] / [i915#3002] / [i=
915#3690])</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10488/shard-snb6/igt@runner@aborted.html">FAIL</a> ([i915#3002]) -&g=
t; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/sha=
rd-snb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20831/shard-snb2/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/=
shard-snb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb5/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_208=
31/shard-snb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb2/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20831/shard-snb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb6/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20831/shard-snb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-snb5/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20831/shard-snb6/igt@runner@aborted.html">FAIL</a>) ([i915#2426] / [i=
915#3002])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10488/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10488/shard-skl10/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10488/shard-skl6/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i=
915#3002] / [i915#3363]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20831/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20831/shard-skl1=
0/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm">FAIL</a>, [FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184], [F=
AIL][185], [FAIL][186], [FAIL][187], [FAIL][188], [FAIL][189], [FAIL][190],=
 [FAIL][191], [FAIL][192], [FAIL][193]) ([i915#1814] / [i915#2426] / [i915#=
3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8934041855609064873==--
