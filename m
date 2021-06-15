Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1EA3A88B4
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 20:38:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8492D6E17C;
	Tue, 15 Jun 2021 18:38:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 914E46E17C;
 Tue, 15 Jun 2021 18:38:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82E5DA8832;
 Tue, 15 Jun 2021 18:38:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 15 Jun 2021 18:38:19 -0000
Message-ID: <162378229950.8818.10216578806853849464@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210614120906.1616120-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210614120906.1616120-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Be_more_gentle_with_exiting_non-persistent_context_=28?=
 =?utf-8?q?rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============1914412434=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1914412434==
Content-Type: multipart/alternative;
 boundary="===============5354105634953196209=="

--===============5354105634953196209==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Be more gentle with exiting non-persistent context (rev4)
URL   : https://patchwork.freedesktop.org/series/89644/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10225_full -> Patchwork_20366_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20366_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20366_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20366_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@hostile:
    - shard-apl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-apl2/igt@gem_ctx_persistence@hostile.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl8/igt@gem_ctx_persistence@hostile.html
    - shard-kbl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl7/igt@gem_ctx_persistence@hostile.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl4/igt@gem_ctx_persistence@hostile.html
    - shard-iclb:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-iclb2/igt@gem_ctx_persistence@hostile.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-iclb6/igt@gem_ctx_persistence@hostile.html
    - shard-skl:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-skl8/igt@gem_ctx_persistence@hostile.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl8/igt@gem_ctx_persistence@hostile.html
    - shard-glk:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-glk4/igt@gem_ctx_persistence@hostile.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-glk5/igt@gem_ctx_persistence@hostile.html

  * igt@gem_exec_balancer@nohangcheck:
    - shard-tglb:         [PASS][11] -> [FAIL][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-tglb6/igt@gem_exec_balancer@nohangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-tglb5/igt@gem_exec_balancer@nohangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_20366_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_import_export@flink:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#750])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-tglb8/igt@drm_import_export@flink.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-tglb2/igt@drm_import_export@flink.html

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][15] ([i915#3002])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-snb5/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#1099]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#118] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-glk3/igt@gem_eio@in-flight-contexts-1us.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-glk9/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@kms:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-skl1/igt@gem_eio@kms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl7/igt@gem_eio@kms.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#2842]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][23] ([i915#2842])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#2842])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#2849])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#307])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][30] ([i915#2658])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-snb6/igt@gem_pwrite@basic-exhaustion.html
    - shard-apl:          NOTRUN -> [WARN][31] ([i915#2658])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl8/igt@gem_pwrite@basic-exhaustion.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#658]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#1937])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl1/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +23 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl2/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-snb:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +23 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-snb5/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271]) +17 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#3444]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][41] ([fdo#109271]) +462 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#79]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180]) +6 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#2642])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +45 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#49])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][52] ([i915#1188])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#533])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][55] ([fdo#108145] / [i915#265]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][56] ([i915#265]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#109441]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][60] ([IGT#2])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl1/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271]) +225 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl3/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2437])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl1/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@polling-parameterized:
    - shard-apl:          [PASS][63] -> [FAIL][64] ([i915#1542])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-apl6/igt@perf@polling-parameterized.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl6/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2994]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-apl1/igt@sysfs_clients@create.html

  * igt@sysfs_clients@sema-25:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2994])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl1/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-iclb:         [TIMEOUT][67] ([i915#3070]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-iclb4/igt@gem_eio@in-flight-contexts-immediate.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-iclb5/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][69] ([i915#2369] / [i915#3063]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-tglb1/igt@gem_eio@unwedge-stress.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][71] ([i915#2842]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [SKIP][73] ([fdo#109271]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [DMESG-WARN][75] ([i915#118] / [i915#95]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-glk9/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-skl:          [FAIL][77] ([i915#307]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-skl2/igt@gem_mmap_gtt@big-copy.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl3/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-glk:          [FAIL][81] ([i915#3444]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-glk9/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-glk4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic:
    - shard-tglb:         [DMESG-WARN][83] ([i915#2868]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-tglb5/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-tglb7/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][85] ([i915#79]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip_tiling@flip-changes-tiling@edp-1-pipe-a:
    - shard-skl:          [FAIL][87] -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling@edp-1-pipe-a.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl2/igt@kms_flip_tiling@flip-changes-tiling@edp-1-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][89] ([fdo#108145] / [i915#265]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][93] ([i915#180] / [i915#295]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@polling:
    - shard-skl:          [FAIL][95] ([i915#1542]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-skl10/igt@perf@polling.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl10/igt@perf@polling.html

  
#### Warnings ####

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][97] ([i915#658]) -> [SKIP][98] ([i915#2920]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
    - shard-iclb:         [SKIP][99] ([i915#2920]) -> [SKIP][100] ([i915#658]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602]) -> ([FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl7/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl6/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl2/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl7/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl1/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl7/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl7/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl6/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl4/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl1/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl2/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl6/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl6/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl7/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl6/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl7/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2642]: https://gitlab.freedesktop.org/drm/intel/issues/2642
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2868]: https://gitlab.freedesktop.org/drm/intel/issues/2868
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#307]: https://gitlab.freedesktop.org/drm/intel/issues/307
  [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3444]: https://gitlab.freedesktop.org/drm/intel/issues/3444
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_10225 -> Patchwork_20366

  CI-20190529: 20190529
  CI_DRM_10225: 52beaf52657f49ffda64af3c46548fb0907cf66d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6107: 2bec4e7619f04d2ca86006917acd3b5c86fb73a0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20366: dc08a49f1c9069b68e4e7bcf1ea112dad7647612 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/index.html

--===============5354105634953196209==
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
<tr><td><b>Series:</b></td><td>drm/i915: Be more gentle with exiting non-pe=
rsistent context (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/89644/">https://patchwork.freedesktop.org/series/89644/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20366/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20366/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10225_full -&gt; Patchwork_20366_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20366_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20366_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20366_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10225/shard-apl2/igt@gem_ctx_persistence@hostile.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard=
-apl8/igt@gem_ctx_persistence@hostile.html">FAIL</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10225/shard-kbl7/igt@gem_ctx_persistence@hostile.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard=
-kbl4/igt@gem_ctx_persistence@hostile.html">FAIL</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10225/shard-iclb2/igt@gem_ctx_persistence@hostile.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shar=
d-iclb6/igt@gem_ctx_persistence@hostile.html">FAIL</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10225/shard-skl8/igt@gem_ctx_persistence@hostile.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard=
-skl8/igt@gem_ctx_persistence@hostile.html">FAIL</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10225/shard-glk4/igt@gem_ctx_persistence@hostile.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard=
-glk5/igt@gem_ctx_persistence@hostile.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-tglb6/igt@gem_exec_balancer@nohangcheck.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/s=
hard-tglb5/igt@gem_exec_balancer@nohangcheck.html">FAIL</a> +1 similar issu=
e</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20366_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_import_export@flink:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-tglb8/igt@drm_import_export@flink.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-t=
glb2/igt@drm_import_export@flink.html">INCOMPLETE</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/750">i915#750</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-snb5/igt@gem_create@create-massive.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3002">i915#3002</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-snb7/igt@gem_ctx_persistence@legacy-eng=
ines-mixed-process.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1099">i915#1099</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-glk3/igt@gem_eio@in-flight-contexts-1us.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/s=
hard-glk9/igt@gem_eio@in-flight-contexts-1us.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-skl1/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl7/igt@gem_e=
io@kms.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1982">i915#1982</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/sh=
ard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10225/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366=
/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10225/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2036=
6/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#2849</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2036=
6/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/307">i915#307</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20366/shard-snb6/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/265=
8">i915#2658</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20366/shard-apl8/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/265=
8">i915#2658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-apl7/igt@i915_pm_dc@dc3co-vpb-simulatio=
n.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1937">i915#1937</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-kbl1/igt@kms_chamelium@hdmi-hpd-enable-=
disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-apl2/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11827">fdo#111827</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-snb5/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm=
-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-3=
2x10-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2036=
6/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3444">i915#3444</a>) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-12=
8x128-right-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +462 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20366/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/79">i915#79</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20366/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20366/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2642">i915#2642</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-skl1/igt@kms_frontbuffer_tracking@fbcps=
r-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +45 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-i=
ndfb-onoff.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20366/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-pri=
mscrn-spr-indfb-onoff.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">=
i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-apl2/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-skl1/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/s=
hard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-apl1/igt@kms_sysfs_edid_timing.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/=
2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-apl3/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +225 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-apl1/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-apl6/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard=
-apl6/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-apl1/igt@sysfs_clients@create.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-skl1/igt@sysfs_clients@sema-25.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-iclb4/igt@gem_eio@in-flight-contexts-immediate.html">TI=
MEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3070"=
>i915#3070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20366/shard-iclb5/igt@gem_eio@in-flight-contexts-immediate.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-tglb1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#30=
63</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20366/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20366/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20366/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i=
915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95=
">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20366/shard-glk9/igt@gem_exec_whisper@basic-queues-all.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-skl2/igt@gem_mmap_gtt@big-copy.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/307">i915#307</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard=
-skl3/igt@gem_mmap_gtt@big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i=
915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20366/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html">PASS</a>=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-glk9/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
444">i915#3444</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20366/shard-glk4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscr=
een.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-tglb5/igt@kms_cursor_legacy@nonblocking-modeset-vs-curs=
or-atomic.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2868">i915#2868</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20366/shard-tglb7/igt@kms_cursor_legacy@nonbl=
ocking-modeset-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i91=
5#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20366/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling@edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling@edp-1-pipe=
-a.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20366/shard-skl2/igt@kms_flip_tiling@flip-changes-tiling@edp-1-p=
ipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mi=
n.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20366/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-min.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20366/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/295">i915#295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20366/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-su=
spend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-skl10/igt@perf@polling.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-skl10/=
igt@perf@polling.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20366/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf=
-dmg-area-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10225/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i9=
15#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20366/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#=
658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10225/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl6/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10225/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10225/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl7/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10225/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/shard-kbl6/igt@runner@aborted.htm=
l">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/14=
36">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2505">i915#2505</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3363">i915#3363</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/602">i915#602</a>) -&gt; (<a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20366/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl2/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20366/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl6/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20366/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl6/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20366/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20366/shard-kbl7/=
igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2505">i915#2505</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10225 -&gt; Patchwork_20366</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10225: 52beaf52657f49ffda64af3c46548fb0907cf66d @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6107: 2bec4e7619f04d2ca86006917acd3b5c86fb73a0 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20366: dc08a49f1c9069b68e4e7bcf1ea112dad7647612 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5354105634953196209==--

--===============1914412434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1914412434==--
