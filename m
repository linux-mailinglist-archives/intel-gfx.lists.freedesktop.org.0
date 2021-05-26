Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F14391EEA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 20:20:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27B2C6EDC3;
	Wed, 26 May 2021 18:20:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 723C46EDB7;
 Wed, 26 May 2021 18:20:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 60598A47E8;
 Wed, 26 May 2021 18:20:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nischal Varide" <nischal.varide@intel.com>
Date: Wed, 26 May 2021 18:20:49 -0000
Message-ID: <162205324935.13406.12946589024487398783@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210526020611.27572-1-nischal.varide@intel.com>
In-Reply-To: <20210526020611.27572-1-nischal.varide@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/xelpd=3A_Enabling_dithering_after_the_CC1?=
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
Content-Type: multipart/mixed; boundary="===============1382586284=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1382586284==
Content-Type: multipart/alternative;
 boundary="===============2492778281656254669=="

--===============2492778281656254669==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/xelpd: Enabling dithering after the CC1
URL   : https://patchwork.freedesktop.org/series/90583/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10133_full -> Patchwork_20199_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20199_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20199_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20199_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@modeset-transition@1x-outputs:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb2/igt@kms_atomic_transition@modeset-transition@1x-outputs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb2/igt@kms_atomic_transition@modeset-transition@1x-outputs.html

  
Known issues
------------

  Here are the changes found in Patchwork_20199_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-clear:
    - shard-snb:          [PASS][3] -> [INCOMPLETE][4] ([i915#2405] / [i915#2502])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-snb5/igt@gem_create@create-clear.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-snb2/igt@gem_create@create-clear.html

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][5] ([i915#3002])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-snb6/igt@gem_create@create-massive.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][6] ([i915#3002])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl1/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@clone:
    - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-snb7/igt@gem_ctx_persistence@clone.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][8] -> [FAIL][9] ([i915#2410])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][10] -> [TIMEOUT][11] ([i915#2369] / [i915#3063])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-tglb5/igt@gem_eio@unwedge-stress.html
    - shard-snb:          NOTRUN -> [FAIL][12] ([i915#3354])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-snb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-glk3/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fence@basic-wait@bcs0:
    - shard-kbl:          NOTRUN -> [SKIP][17] ([fdo#109271]) +15 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-kbl4/igt@gem_exec_fence@basic-wait@bcs0.html

  * igt@gem_exec_params@no-bsd:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([fdo#109283])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@gem_exec_params@no-bsd.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][19] -> [SKIP][20] ([i915#2190])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb8/igt@gem_huc_copy@huc-copy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-tglb6/igt@gem_huc_copy@huc-copy.html
    - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#2190])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#307])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb4/igt@gem_mmap_gtt@big-copy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb8/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-apl:          [PASS][24] -> [INCOMPLETE][25] ([i915#3468])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-apl8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-tglb:         [PASS][26] -> [INCOMPLETE][27] ([i915#3468])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-tglb2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-iclb:         [PASS][28] -> [INCOMPLETE][29] ([i915#2910] / [i915#3468])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-snb:          NOTRUN -> [INCOMPLETE][30] ([i915#2055] / [i915#3468])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
    - shard-kbl:          [PASS][31] -> [INCOMPLETE][32] ([i915#3468])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-kbl4/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-iclb:         [PASS][33] -> [INCOMPLETE][34] ([i915#3468])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-snb:          NOTRUN -> [INCOMPLETE][35] ([i915#3468])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-snb5/igt@gem_mmap_gtt@fault-concurrent.html
    - shard-iclb:         NOTRUN -> [INCOMPLETE][36] ([i915#3468])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb7/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-snb:          NOTRUN -> [INCOMPLETE][37] ([i915#3468] / [i915#3485])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-snb6/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-skl:          NOTRUN -> [INCOMPLETE][38] ([i915#3468])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl2/igt@gem_mmap_gtt@fault-concurrent-y.html
    - shard-apl:          NOTRUN -> [INCOMPLETE][39] ([i915#3468])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl7/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([i915#768]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3323])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-kbl4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][42] ([i915#2724])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-snb7/igt@gem_userptr_blits@vma-merge.html
    - shard-apl:          NOTRUN -> [FAIL][43] ([i915#3318])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl7/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [PASS][44] -> [TIMEOUT][45] ([i915#2795])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb8/igt@gem_vm_create@destroy-race.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-tglb1/igt@gem_vm_create@destroy-race.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109289])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][47] -> [DMESG-WARN][48] ([i915#1436] / [i915#716])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#112306])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#110892])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +278 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl7/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          NOTRUN -> [DMESG-WARN][52] ([i915#180])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl7/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-apl2/igt@i915_suspend@sysfs-reader.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([i915#1769])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#110725] / [fdo#111614])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb7/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#110723])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_ccs@pipe-d-crc-primary-basic:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109278]) +10 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_ccs@pipe-d-crc-primary-basic.html

  * igt@kms_chamelium@hdmi-cmp-planar-formats:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_chamelium@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-kbl4/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl3/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-snb:          NOTRUN -> [SKIP][62] ([fdo#109271] / [fdo#111827]) +28 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-snb7/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][63] -> [DMESG-WARN][64] ([i915#1982])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl10/igt@kms_color@pipe-b-ctm-0-75.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl2/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][66] ([i915#1319])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content_type_change:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109300] / [fdo#111066]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_content_protection@content_type_change.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][69] -> [INCOMPLETE][70] ([i915#146] / [i915#300])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
    - shard-kbl:          [PASS][71] -> [DMESG-WARN][72] ([i915#180]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][73] ([fdo#109271]) +507 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +57 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl3/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#2065])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb7/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109274]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][77] -> [FAIL][78] ([i915#79])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#109280]) +7 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-skl:          NOTRUN -> [FAIL][80] ([i915#49])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@static-toggle:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#1187])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_hdr@static-toggle.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#533]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl1/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][83] ([fdo#108145] / [i915#265])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][84] ([fdo#108145] / [i915#265]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][85] ([i915#265])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][86] ([i915#265])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][87] -> [FAIL][88] ([fdo#108145] / [i915#265]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#658]) +6 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109441])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][91] -> [SKIP][92] ([fdo#109441])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][93] ([IGT#2])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl3/igt@kms_sysfs_edid_timing.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109309])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2437])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-c-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#2530]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb7/igt@nouveau_crc@pipe-c-source-rg.html

  * igt@prime_nv_pcopy@test2:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109291])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@prime_nv_pcopy@test2.html

  * igt@sysfs_clients@busy:
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2994])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-kbl4/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@sema-25:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#2994])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl2/igt@sysfs_clients@sema-25.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#2994]) +4 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-apl2/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][101] ([i915#146] / [i915#198]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl10/igt@gem_eio@in-flight-suspend.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][103] ([i915#2842]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [SKIP][105] ([fdo#109271]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
    - shard-tglb:         [FAIL][107] ([i915#2842]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-glk:          [FAIL][109] ([i915#307]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk7/igt@gem_mmap_gtt@big-copy.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-glk6/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-iclb:         [INCOMPLETE][111] ([i915#3468]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-skl:          [INCOMPLETE][113] ([i915#198] / [i915#3468]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl10/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [FAIL][115] ([i915#307]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][117] ([i915#644]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][119] ([i915#72]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-rmfb@a-edp1:
    - shard-skl:          [DMESG-WARN][121] ([i915#1982]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl1/igt@kms_flip@flip-vs-rmfb@a-edp1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl7/igt@kms_flip@flip-vs-rmfb@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][123] ([i915#180]) -> [PASS][124] +3 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][125] ([i915#1188]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][127] ([fdo#109441]) -> [PASS][128] +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][129] ([i915#1722]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-skl9/igt@perf@polling-small-buf.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-skl1/igt@perf@polling-small-buf.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][131] ([i915#1804] / [i915#2684]) -> [WARN][132] ([i915#2684])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@execlists:
    - shard-iclb:         [INCOMPLETE][133] ([i915#2782] / [i915#3462]) -> [DMESG-FAIL][134] ([i915#3462])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb2/igt@i915_selftest@live@execlists.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb6/igt@i915_selftest@live@execlists.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][135] ([fdo#109349]) -> [CRASH][136] ([i915#3494])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-iclb:         [SKIP][137] ([i915#2920]) -> [SKIP][138] ([i915#658]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][139] ([i915#658]) -> [SKIP][140] ([i915#2920]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([i915#1814] / [i915#2722] / [i915#3002]) -> ([FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152]) ([i915#1814] / [i915#2722] / [i915#2782] / [i915#3002])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb6/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb4/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb3/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb5/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb1/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb8/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-iclb1/igt@runner@aborted.html
   [148]: https://intel-gfx-ci

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/index.html

--===============2492778281656254669==
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
<tr><td><b>Series:</b></td><td>drm/i915/xelpd: Enabling dithering after the=
 CC1</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/90583/">https://patchwork.freedesktop.org/series/90583/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20199/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20199/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10133_full -&gt; Patchwork_20199_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20199_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20199_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20199_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_atomic_transition@modeset-transition@1x-outputs:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-iclb2/igt@kms_atomic_transition@modeset-transition@1x-o=
utputs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20199/shard-iclb2/igt@kms_atomic_transition@modeset-transiti=
on@1x-outputs.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20199_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-snb5/igt@gem_create@create-clear.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-sn=
b2/igt@gem_create@create-clear.html">INCOMPLETE</a> ([i915#2405] / [i915#25=
02])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20199/shard-snb6/igt@gem_create@create-massive.html"=
>DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20199/shard-apl1/igt@gem_create@create-massive.html"=
>DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@clone:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-snb7/igt@gem_ctx_persistence@clone.html=
">SKIP</a> ([fdo#109271] / [i915#1099]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_201=
99/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#=
2410])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10133/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-tgl=
b5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063])=
</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20199/shard-snb2/igt@gem_eio@unwedge-stress.html">FA=
IL</a> ([i915#3354])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_201=
99/shard-glk3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/s=
hard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@bcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-kbl4/igt@gem_exec_fence@basic-wait@bcs0=
.html">SKIP</a> ([fdo#109271]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@gem_exec_params@no-bsd.html">=
SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10133/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-tglb=
6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20199/shard-apl1/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-iclb4/igt@gem_mmap_gtt@big-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-icl=
b8/igt@gem_mmap_gtt@big-copy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10133/shard-apl8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
199/shard-apl2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a=
> ([i915#3468])</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10133/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0199/shard-tglb2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE<=
/a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-iclb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20199/shard-iclb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">IN=
COMPLETE</a> ([i915#2910] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20199/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small=
-copy-xy.html">INCOMPLETE</a> ([i915#2055] / [i915#3468])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10133/shard-kbl1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20199/shard-kbl4/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPL=
ETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
199/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a>=
 ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20199/shard-snb5/igt@gem_mmap_gtt@fault-concurrent.h=
tml">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20199/shard-iclb7/igt@gem_mmap_gtt@fault-concurrent.=
html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-snb6/igt@gem_mmap_gtt@fault-concurrent-=
x.html">INCOMPLETE</a> ([i915#3468] / [i915#3485])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20199/shard-skl2/igt@gem_mmap_gtt@fault-concurrent-y=
.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20199/shard-apl7/igt@gem_mmap_gtt@fault-concurrent-y=
.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@gem_render_copy@x-tiled-to-ve=
box-yf-tiled.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-kbl4/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20199/shard-snb7/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> ([i915#2724])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20199/shard-apl7/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-tglb8/igt@gem_vm_create@destroy-race.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shar=
d-tglb1/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> ([i915#2795])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@gen7_exec_parse@chained-batch=
.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-skl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/s=
hard-skl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#14=
36] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@gen9_exec_parse@unaligned-jum=
p.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb7/igt@i915_pm_rpm@modeset-non-lpsp-=
stress.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-apl7/igt@i915_pm_rpm@modeset-pc8-reside=
ncy-stress.html">SKIP</a> ([fdo#109271]) +278 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-apl7/igt@i915_suspend@forcewake.html">D=
MESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-apl2/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-=
apl6/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_atomic_transition@plane-a=
ll-modeset-transition.html">SKIP</a> ([i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb7/igt@kms_big_fb@linear-8bpp-rotate=
-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-270.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_ccs@pipe-d-crc-primary-ba=
sic.html">SKIP</a> ([fdo#109278]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_chamelium@hdmi-cmp-planar=
-formats.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-kbl4/igt@kms_chamelium@hdmi-hpd-enable-=
disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-skl3/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-snb7/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-skl10/igt@kms_color@pipe-b-ctm-0-75.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard=
-skl2/igt@kms_color@pipe-b-ctm-0-75.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-apl1/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content_type_change:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_content_protection@conten=
t_type_change.html">SKIP</a> ([fdo#109300] / [fdo#111066]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-rapid-movement.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10133/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
199/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a=
> ([i915#146] / [i915#300])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10133/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
199/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a=
> ([i915#180]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-12=
8x128-right-edge.html">SKIP</a> ([fdo#109271]) +507 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-skl3/igt@kms_cursor_legacy@pipe-d-tortu=
re-move.html">SKIP</a> ([fdo#109271]) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb7/igt@kms_dp_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> ([i915#2065])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_flip@2x-modeset-vs-vblank=
-race-interruptible.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20199/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109280]) +7 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-skl3/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-spr-indfb-draw-render.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_hdr@static-toggle.html">S=
KIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-apl1/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20199/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-=
min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-apl1/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +6 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.=
html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/sh=
ard-iclb3/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> ([fdo#109441])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-apl3/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@kms_tv_load_detect@load-detec=
t.html">SKIP</a> ([fdo#109309])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-apl1/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb7/igt@nouveau_crc@pipe-c-source-rg.=
html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-iclb3/igt@prime_nv_pcopy@test2.html">SK=
IP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-kbl4/igt@sysfs_clients@busy.html">SKIP<=
/a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-skl2/igt@sysfs_clients@sema-25.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20199/shard-apl2/igt@sysfs_clients@sema-50.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-skl10/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a=
> ([i915#146] / [i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20199/shard-skl2/igt@gem_eio@in-flight-suspend.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20199/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PA=
SS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10133/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> ([=
fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20199/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10133/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20199/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-glk7/igt@gem_mmap_gtt@big-copy.html">FAIL</a> ([i915#30=
7]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_201=
99/shard-glk6/igt@gem_mmap_gtt@big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10133/shard-iclb1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INC=
OMPLETE</a> ([i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20199/shard-iclb3/igt@gem_mmap_gtt@cpuset-basic-small-co=
py.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10133/shard-skl10/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INC=
OMPLETE</a> ([i915#198] / [i915#3468]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_20199/shard-skl3/igt@gem_mmap_gtt@cpuset-ba=
sic-small-copy.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a=
> ([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20199/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL<=
/a> ([i915#644]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20199/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legac=
y.html">FAIL</a> ([i915#72]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20199/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-v=
s-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-skl1/igt@kms_flip@flip-vs-rmfb@a-edp1.html">DMESG-WARN<=
/a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20199/shard-skl7/igt@kms_flip@flip-vs-rmfb@a-edp1.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20199/shard-kbl7/igt@kms_flip@flip-vs-suspend-int=
erruptible@a-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#=
1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20199/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (=
[fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20199/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-skl9/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1=
722]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0199/shard-skl1/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20199/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.=
html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-iclb2/igt@i915_selftest@live@execlists.html">INCOMPLETE=
</a> ([i915#2782] / [i915#3462]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20199/shard-iclb6/igt@i915_selftest@live@execlist=
s.html">DMESG-FAIL</a> ([i915#3462])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a=
> ([fdo#109349]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20199/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">CRASH=
</a> ([i915#3494])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SK=
IP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20199/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.ht=
ml">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
4.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20199/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10133/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb4/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10133/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/shard-iclb5/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10133/shard-iclb1/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / =
[i915#2722] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20199/shard-iclb8/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20199/shard-ic=
lb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci">FAI=
L</a>, [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152]) ([i915#1814] / [=
i915#2722] / [i915#2782] / [i915#3002])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2492778281656254669==--

--===============1382586284==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1382586284==--
