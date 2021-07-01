Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5663B93E4
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 17:26:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 072576EB3D;
	Thu,  1 Jul 2021 15:26:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 734E36EB3D;
 Thu,  1 Jul 2021 15:26:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6A74BA7DFB;
 Thu,  1 Jul 2021 15:26:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 01 Jul 2021 15:26:00 -0000
Message-ID: <162515316040.15054.12100352041464713995@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210701125346.10005-1-anshuman.gupta@intel.com>
In-Reply-To: <20210701125346.10005-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgbHBz?=
 =?utf-8?q?p_with_hdmi/dp_outputs?=
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
Content-Type: multipart/mixed; boundary="===============0086968807=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0086968807==
Content-Type: multipart/alternative;
 boundary="===============1784353647080852998=="

--===============1784353647080852998==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: lpsp with hdmi/dp outputs
URL   : https://patchwork.freedesktop.org/series/92108/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10297_full -> Patchwork_20506_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20506_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20506_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20506_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_20506_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][2] ([i915#3002])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-snb5/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#2896])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-tglb2/igt@gem_ctx_persistence@smoketest.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-tglb3/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-iclb:         NOTRUN -> [SKIP][6] ([fdo#109313])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][7] ([i915#3633]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-snb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#307])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-glk6/igt@gem_mmap_gtt@big-copy-odd.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-glk2/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][10] ([i915#2658])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-snb7/igt@gem_pread@exhaustion.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1436] / [i915#716])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-kbl4/igt@gen9_exec_parse@allowed-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-large:
    - shard-skl:          NOTRUN -> [FAIL][13] ([i915#3296])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl6/igt@gen9_exec_parse@bb-large.html
    - shard-kbl:          NOTRUN -> [FAIL][14] ([i915#3296])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-kbl7/igt@gen9_exec_parse@bb-large.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#109303])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@i915_query@query-topology-known-pci-ids.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1982])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-apl6/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-a-ctm-max:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@kms_color_chamelium@pipe-a-ctm-max.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-kbl7/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl9/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-snb:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +21 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-snb5/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][23] ([i915#1319])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#109278]) +4 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque:
    - shard-skl:          NOTRUN -> [FAIL][25] ([i915#3444])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x32-sliding:
    - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271]) +27 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-32x32-sliding.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge:
    - shard-glk:          [PASS][27] -> [DMESG-FAIL][28] ([i915#118] / [i915#70] / [i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-glk2/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109274] / [fdo#109278])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#533])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-apl1/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#198])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][33] ([i915#2122])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [PASS][34] -> [INCOMPLETE][35] ([i915#146] / [i915#198])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +83 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl6/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
    - shard-snb:          NOTRUN -> [SKIP][37] ([fdo#109271]) +430 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-snb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109280]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#1188])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][41] ([fdo#108145] / [i915#265]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][42] ([fdo#108145] / [i915#265])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][43] ([i915#265]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([fdo#108145] / [i915#265])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#658]) +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-apl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#658])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][48] -> [SKIP][49] ([fdo#109441]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][50] ([IGT#2])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-apl6/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][51] ([i915#180])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@nouveau_crc@pipe-c-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([i915#2530])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@nouveau_crc@pipe-c-source-outp-inactive.html

  * igt@perf@polling-parameterized:
    - shard-skl:          NOTRUN -> [FAIL][53] ([i915#1542])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl9/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +187 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-apl3/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@prime_nv_test@i915_import_pread_pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109291])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@prime_nv_test@i915_import_pread_pwrite.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2994]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-apl7/igt@sysfs_clients@create.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2994])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl6/igt@sysfs_clients@fair-0.html
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#2994])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-kbl7/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@recycle:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#2994])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@sysfs_clients@recycle.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][60] ([i915#2842]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][62] ([i915#2842]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][64] ([i915#2842]) -> [PASS][65] +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][66] ([i915#2842]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-sync@rcs0:
    - shard-kbl:          [SKIP][68] ([fdo#109271]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-kbl3/igt@gem_exec_fair@basic-sync@rcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-kbl3/igt@gem_exec_fair@basic-sync@rcs0.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][70] ([i915#307]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [TIMEOUT][72] ([i915#2795]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-tglb3/igt@gem_vm_create@destroy-race.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-tglb7/igt@gem_vm_create@destroy-race.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-iclb:         [DMESG-WARN][74] ([i915#3698]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb7/igt@i915_pm_dc@dc5-psr.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-iclb:         [FAIL][76] -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb8/igt@i915_pm_rpm@modeset-lpsp.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb6/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][78] ([i915#118] / [i915#95]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-glk8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][80] ([i915#3444]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][82] ([i915#2346] / [i915#533]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
    - shard-glk:          [FAIL][84] ([i915#79]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][86] ([i915#2122]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-skl:          [FAIL][88] ([i915#49]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][90] ([i915#123]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl6/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][92] ([i915#1188]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl3/igt@kms_hdr@bpc-switch.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][94] ([fdo#108145] / [i915#265]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][96] ([fdo#109441]) -> [PASS][97] +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@rc6-suspend:
    - shard-kbl:          [INCOMPLETE][98] ([i915#155] / [i915#794]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-kbl3/igt@perf_pmu@rc6-suspend.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-kbl7/igt@perf_pmu@rc6-suspend.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][100] ([i915#2684]) -> [WARN][101] ([i915#1804] / [i915#2684])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][102] ([i915#2920]) -> [SKIP][103] ([i915#658]) +3 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][104], [FAIL][105]) ([i915#3002] / [i915#3363]) -> ([FAIL][106], [FAIL][107], [FAIL][108]) ([fdo#109271] / [i915#1436] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#716])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-kbl3/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-kbl2/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-kbl2/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-kbl6/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-kbl3/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][109], [FAIL][110], [FAIL][111]) ([i915#3002] / [i915#3702]) -> ([FAIL][112], [FAIL][113]) ([i915#3002])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb7/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb2/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb6/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb3/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-iclb4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][114], [FAIL][115], [FAIL][116]) ([i915#180] / [i915#3002] / [i915#3363]) -> ([FAIL][117], [FAIL][118]) ([i915#1814] / [i915#3002] / [i915#3363])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-apl2/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-apl3/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-apl1/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-apl3/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-apl3/igt@runner@aborted.html

  
  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2795]: https://gitlab.freedesktop.org/drm/intel/issues/2795
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2896]: https://gitlab.freedesktop.org/drm/intel/issues/2896
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#307]: https://gitlab.freedesktop.org/drm/intel/issues/307
  [i915#3296]: https://gitlab.freedesktop.org/drm/intel/issues/3296
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3444]: https://gitlab.freedesktop.org/drm/intel/issues/3444
  [i915#3633]: https://gitlab.freedesktop.org/drm/intel/issues/3633
  [i915#3698]: https://gitlab.freedesktop.org/drm/intel/issues/3698
  [i915#3702]: https://gitlab.freedesktop.org/drm/intel/issues/3702
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_10297 -> Patchwork_20506

  CI-20190529: 20190529
  CI_DRM_10297: 96c7ad60de68518bdcd0d0e6381a2359034a0226 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6125: 5bb62cb290fa32777934de4b39e107ccd282f7e8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20506: b5cbf9ab064d49157bca393b17aa93a1d726d2ab @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/index.html

--===============1784353647080852998==
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
<tr><td><b>Series:</b></td><td>lpsp with hdmi/dp outputs</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/92108/">https://patchwork.freedesktop.org/series/92108/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20506/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20506/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10297_full -&gt; Patchwork_20506_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20506_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20506_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20506_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-async-flip.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20506_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-snb5/igt@gem_create@create-massive.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3002">i915#3002</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-snb5/igt@gem_ctx_persistence@legacy-eng=
ines-mixed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1099">i915#1099</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-tglb2/igt@gem_ctx_persistence@smoketest.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/s=
hard-tglb3/igt@gem_ctx_persistence@smoketest.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2896">i915#2896</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@gem_exec_flush@basic-batch-ke=
rnel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109313">fdo#109313</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-snb5/igt@gem_exec_reloc@basic-wide-acti=
ve@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3633">i915#3633</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-glk6/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-=
glk2/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/307">i915#307</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-snb7/igt@gem_pread@exhaustion.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i91=
5#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-kbl4/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shar=
d-kbl6/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20506/shard-skl6/igt@gen9_exec_parse@bb-large.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3296">=
i915#3296</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20506/shard-kbl7/igt@gen9_exec_parse@bb-large.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3296">=
i915#3296</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@i915_query@query-topology-kno=
wn-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-s=
kl5/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-apl6/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@kms_color_chamelium@pipe-a-ct=
m-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-kbl7/igt@kms_color_chamelium@pipe-a-ctm=
-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-skl9/igt@kms_color_chamelium@pipe-c-deg=
amma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-snb5/igt@kms_color_chamelium@pipe-inval=
id-ctm-matrix-sizes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-apl7/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@kms_cursor_crc@pipe-c-cursor-=
512x170-rapid-movement.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109278">fdo#109278</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-alpha-opaque:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-a=
lpha-opaque.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3444">i915#3444</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x32-sliding:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-3=
2x32-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20506/shard-glk2/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edg=
e.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/118">i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/70">i915#70</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@kms_cursor_legacy@cursorb-vs-=
flipa-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-apl1/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard=
-skl7/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-skl6/igt@kms_flip@flip-vs-expired-vblan=
k@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20506/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/146">i915#146</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-skl6/igt@kms_frontbuffer_tracking@fbc-1=
p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +83 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-snb7/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +430 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard=
-skl10/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20506/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-apl3/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658">i915#658</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-skl2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506=
/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-apl6/igt@kms_sysfs_edid_timing.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/=
2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-apl3/igt@kms_vblank@pipe-b-ts-continuat=
ion-suspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@nouveau_crc@pipe-c-source-out=
p-inactive.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-skl9/igt@perf@polling-parameterized.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/154=
2">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-apl3/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a>) +187 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_import_pread_pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@prime_nv_test@i915_import_pre=
ad_pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-apl7/igt@sysfs_clients@create.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20506/shard-skl6/igt@sysfs_clients@fair-0.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/29=
94">i915#2994</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20506/shard-kbl7/igt@sysfs_clients@fair-0.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/29=
94">i915#2994</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-iclb1/igt@sysfs_clients@recycle.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994">i=
915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20506/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
506/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20506/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
506/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-kbl3/igt@gem_exec_fair@basic-sync@rcs0.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20506/shard-kbl3/igt@gem_exec_fair@basic-sync@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/307">i915#30=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20506/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-tglb3/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2795">i915#2795=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0506/shard-tglb7/igt@gem_vm_create@destroy-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb7/igt@i915_pm_dc@dc5-psr.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3698">i915#3698</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/=
shard-iclb1/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb8/igt@i915_pm_rpm@modeset-lpsp.html">FAIL</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-=
iclb6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i=
915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95=
">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20506/shard-glk8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</=
a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
444">i915#3444</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20506/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscr=
een.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/533">i915#533</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-skl10/igt@kms_cursor_legac=
y@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20506/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20506/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-i=
nterruptible@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-i=
ndfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/49">i915#49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20506/shard-skl1/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-spr-indfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/123=
">i915#123</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20506/shard-skl6/igt@kms_frontbuffer_tracking@psr-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl3/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/shard-s=
kl10/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.ht=
ml">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108=
145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20506/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverag=
e-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20506/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-kbl3/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_205=
06/shard-kbl7/igt@perf_pmu@rc6-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#26=
84</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20506/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20506/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-d=
mg-area-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/658">i915#658</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-kbl2/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3363">i915#3363</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20506/shard-kbl2/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/sha=
rd-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20506/shard-kbl3/igt@runner@aborted.html">FAI=
L</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2505">i915#2505</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3363">i915#3363</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/716">i915#716</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-iclb2/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10297/shard-iclb6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3702">i915#3702</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/sh=
ard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_20506/shard-iclb4/igt@runner@aborted.html">=
FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002"=
>i915#3002</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10297/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/shard-apl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10297/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20506/sh=
ard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20506/shard-apl3/igt@runner@aborted.html">FA=
IL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i=
915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10297 -&gt; Patchwork_20506</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10297: 96c7ad60de68518bdcd0d0e6381a2359034a0226 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6125: 5bb62cb290fa32777934de4b39e107ccd282f7e8 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20506: b5cbf9ab064d49157bca393b17aa93a1d726d2ab @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1784353647080852998==--

--===============0086968807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0086968807==--
