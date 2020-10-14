Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1331328E3E9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 18:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 536176EABD;
	Wed, 14 Oct 2020 16:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C95589B67;
 Wed, 14 Oct 2020 16:03:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 758C4A3ECB;
 Wed, 14 Oct 2020 16:03:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Wed, 14 Oct 2020 16:03:03 -0000
Message-ID: <160269138347.21206.13648380728018113503@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201014045252.13608-1-anshuman.gupta@intel.com>
In-Reply-To: <20201014045252.13608-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSERD?=
 =?utf-8?q?P_2=2E2_DP_MST_Support_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1676908080=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1676908080==
Content-Type: multipart/alternative;
 boundary="===============7433935302136754145=="

--===============7433935302136754145==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDCP 2.2 DP MST Support (rev2)
URL   : https://patchwork.freedesktop.org/series/81538/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9137_full -> Patchwork_18696_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18696_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18696_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18696_full:

### IGT changes ###

#### Possible regressions ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-glk5/igt@device_reset@unbind-reset-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk8/igt@device_reset@unbind-reset-rebind.html

  * igt@i915_module_load@reload:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-skl7/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl3/igt@i915_module_load@reload.html
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-tglb5/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb1/igt@i915_module_load@reload.html
    - shard-kbl:          [PASS][7] -> [INCOMPLETE][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-kbl6/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl1/igt@i915_module_load@reload.html

  * igt@i915_module_load@reload-no-display:
    - shard-iclb:         [PASS][9] -> [INCOMPLETE][10] +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-iclb7/igt@i915_module_load@reload-no-display.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb5/igt@i915_module_load@reload-no-display.html

  * igt@i915_selftest@mock:
    - shard-glk:          NOTRUN -> [INCOMPLETE][11] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk5/igt@i915_selftest@mock.html
    - shard-iclb:         NOTRUN -> [INCOMPLETE][12] +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb1/igt@i915_selftest@mock.html

  * igt@i915_selftest@perf:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][13] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl6/igt@i915_selftest@perf.html
    - shard-tglb:         NOTRUN -> [INCOMPLETE][14] +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb3/igt@i915_selftest@perf.html
    - shard-skl:          NOTRUN -> [INCOMPLETE][15] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl3/igt@i915_selftest@perf.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [PASS][16] -> [FAIL][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@runner@aborted:
    - shard-kbl:          NOTRUN -> ([FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25], [FAIL][26]) ([i915#1436] / [i915#2292] / [i915#2439] / [i915#92] / [k.org#204565])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl4/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl1/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl6/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl1/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl2/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl1/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl7/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl2/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl6/igt@runner@aborted.html
    - shard-iclb:         NOTRUN -> ([FAIL][27], [FAIL][28], [FAIL][29], [FAIL][30], [FAIL][31], [FAIL][32], [FAIL][33], [FAIL][34], [FAIL][35]) ([i915#1580] / [i915#2283] / [i915#2292] / [i915#2439] / [k.org#204565])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb8/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb1/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb7/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb5/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb2/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb3/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb1/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb4/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb4/igt@runner@aborted.html
    - shard-tglb:         NOTRUN -> ([FAIL][36], [FAIL][37], [FAIL][38], [FAIL][39], [FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43], [FAIL][44]) ([i915#1759] / [i915#1852] / [i915#2045] / [i915#2292] / [i915#2439] / [k.org#204565])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb5/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb5/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb3/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb2/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb2/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb6/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb3/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb1/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb8/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-skl:          [FAIL][45] ([i915#1436]) -> ([FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49], [FAIL][50], [FAIL][51], [FAIL][52], [FAIL][53], [FAIL][54]) ([i915#1436] / [i915#1982] / [i915#2292] / [i915#2439] / [k.org#204565])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-skl4/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl9/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl6/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl3/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl5/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl3/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl8/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl7/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl10/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@core_hotunplug@hotrebind-lateclose}:
    - shard-iclb:         [PASS][55] -> [INCOMPLETE][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-iclb4/igt@core_hotunplug@hotrebind-lateclose.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb2/igt@core_hotunplug@hotrebind-lateclose.html
    - shard-tglb:         [PASS][57] -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-tglb7/igt@core_hotunplug@hotrebind-lateclose.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb3/igt@core_hotunplug@hotrebind-lateclose.html
    - shard-glk:          [PASS][59] -> [INCOMPLETE][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-glk7/igt@core_hotunplug@hotrebind-lateclose.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk1/igt@core_hotunplug@hotrebind-lateclose.html
    - shard-skl:          [PASS][61] -> [INCOMPLETE][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-skl4/igt@core_hotunplug@hotrebind-lateclose.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl8/igt@core_hotunplug@hotrebind-lateclose.html
    - shard-kbl:          [PASS][63] -> [INCOMPLETE][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-kbl7/igt@core_hotunplug@hotrebind-lateclose.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl6/igt@core_hotunplug@hotrebind-lateclose.html

  
Known issues
------------

  Here are the changes found in Patchwork_18696_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-apl:          [PASS][65] -> [INCOMPLETE][66] ([i915#1635]) +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-apl8/igt@device_reset@unbind-reset-rebind.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-apl7/igt@device_reset@unbind-reset-rebind.html
    - shard-tglb:         [PASS][67] -> [INCOMPLETE][68] ([i915#750])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-tglb1/igt@device_reset@unbind-reset-rebind.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb6/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [PASS][69] -> [FAIL][70] ([i915#2389]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-glk5/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk2/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-glk:          [PASS][71] -> [DMESG-WARN][72] ([i915#118] / [i915#95])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-glk7/igt@gem_exec_whisper@basic-fds.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk4/igt@gem_exec_whisper@basic-fds.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][73] -> [SKIP][74] ([i915#2190])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-tglb8/igt@gem_huc_copy@huc-copy.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [PASS][75] -> [TIMEOUT][76] ([i915#2424]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-skl2/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl9/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][77] -> [INCOMPLETE][78] ([i915#198])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-skl9/igt@i915_module_load@reload-with-fault-injection.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-kbl:          [PASS][79] -> [INCOMPLETE][80] ([i915#1373])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-kbl1/igt@i915_module_load@reload-with-fault-injection.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-apl:          [PASS][81] -> [INCOMPLETE][82] ([i915#1373] / [i915#1635])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-apl8/igt@i915_module_load@reload-with-fault-injection.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-apl8/igt@i915_module_load@reload-with-fault-injection.html
    - shard-iclb:         [PASS][83] -> [INCOMPLETE][84] ([i915#926])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-iclb6/igt@i915_module_load@reload-with-fault-injection.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][85] -> [INCOMPLETE][86] ([i915#300])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-skl:          [PASS][87] -> [DMESG-WARN][88] ([i915#1982]) +8 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-skl8/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl4/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge:
    - shard-glk:          [PASS][89] -> [DMESG-WARN][90] ([i915#1982])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-glk6/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk3/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][91] -> [FAIL][92] ([i915#79])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][93] -> [FAIL][94] ([i915#2122])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][95] -> [SKIP][96] ([fdo#109441]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb7/igt@kms_psr@psr2_suspend.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [PASS][97] -> [INCOMPLETE][98] ([i915#1373])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-iclb1/igt@perf_pmu@module-unload.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb3/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * igt@api_intel_bb@offset-control:
    - shard-skl:          [DMESG-WARN][99] ([i915#1982]) -> [PASS][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-skl6/igt@api_intel_bb@offset-control.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl8/igt@api_intel_bb@offset-control.html

  * igt@gem_exec_whisper@basic-queues:
    - shard-glk:          [DMESG-WARN][101] ([i915#118] / [i915#95]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-glk9/igt@gem_exec_whisper@basic-queues.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk4/igt@gem_exec_whisper@basic-queues.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][103] ([i915#2521]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-kbl6/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl6/igt@kms_async_flips@async-flip-with-page-flip-events.html
    - shard-tglb:         [FAIL][105] ([i915#2521]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-tglb5/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb3/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-iclb:         [DMESG-WARN][107] ([i915#1982]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-iclb3/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb6/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][109] -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][111] ([i915#1982]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         [FAIL][113] ([i915#2416]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence:
    - shard-skl:          [FAIL][115] ([i915#53]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][117] ([fdo#108145] / [i915#265]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][119] ([fdo#109441]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][121] ([i915#31]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-glk8/igt@kms_setmode@basic.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][123] ([i915#198]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-wait-busy-hang:
    - shard-glk:          [DMESG-WARN][125] ([i915#1982]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-glk2/igt@kms_vblank@pipe-b-wait-busy-hang.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk8/igt@kms_vblank@pipe-b-wait-busy-hang.html

  
#### Warnings ####

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [DMESG-WARN][127] ([i915#1982]) -> [INCOMPLETE][128] ([i915#1373])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-tglb3/igt@perf_pmu@module-unload.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb8/igt@perf_pmu@module-unload.html

  * igt@runner@aborted:
    - shard-glk:          [FAIL][129] ([i915#2439] / [k.org#202321]) -> ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([i915#2292] / [i915#2439] / [k.org#202321] / [k.org#204565])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/shard-glk1/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk2/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk7/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk5/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk1/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk9/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk3/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk8/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk5/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1852]: https://gitlab.freedesktop.org/drm/intel/issues/1852
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2045]: https://gitlab.freedesktop.org/drm/intel/issues/2045
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9137 -> Patchwork_18696

  CI-20190529: 20190529
  CI_DRM_9137: 9c7e985c2336328b14dd87c0f6a83af094f59d53 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5813: d4e6dd955a1dad02271aa41c9389f5097ee17765 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18696: ac59ab83da2ad34c09a723697b4ff7635e8b2cd7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/index.html

--===============7433935302136754145==
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
<tr><td><b>Series:</b></td><td>HDCP 2.2 DP MST Support (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/81538/">https://patchwork.freedesktop.org/series/81538/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18696/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18696/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9137_full -&gt; Patchwork_18696_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18696_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18696_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18696_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-glk5/igt@device_reset@unbind-reset-rebind.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/=
shard-glk8/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> +4 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-skl7/igt@i915_module_load@reload.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl3=
/igt@i915_module_load@reload.html">INCOMPLETE</a> +3 similar issues</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-tglb5/igt@i915_module_load@reload.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tgl=
b1/igt@i915_module_load@reload.html">INCOMPLETE</a> +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-kbl6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl1=
/igt@i915_module_load@reload.html">INCOMPLETE</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-iclb7/igt@i915_module_load@reload-no-display.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_186=
96/shard-iclb5/igt@i915_module_load@reload-no-display.html">INCOMPLETE</a> =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18696/shard-glk5/igt@i915_selftest@mock.html">INCOMP=
LETE</a> +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18696/shard-iclb1/igt@i915_selftest@mock.html">INCOM=
PLETE</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18696/shard-kbl6/igt@i915_selftest@perf.html">INCOMP=
LETE</a> +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18696/shard-tglb3/igt@i915_selftest@perf.html">INCOM=
PLETE</a> +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18696/shard-skl3/igt@i915_selftest@perf.html">INCOMP=
LETE</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb=
-pgflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18696/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-p=
rimscrn-indfb-pgflip-blt.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18696/shard-kbl4/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-=
kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18696/shard-kbl6/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/sha=
rd-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18696/shard-kbl2/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/=
shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl7/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_186=
96/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-kbl6/igt@runner@aborted.htm=
l">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/14=
36">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2292">i915#2292</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2439">i915#2439</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/92">i915#92</a> / <a href=3D"https://bugzilla.kernel.org/sh=
ow_bug.cgi?id=3D204565">k.org#204565</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18696/shard-iclb8/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard=
-iclb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_18696/shard-iclb7/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/=
shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb2/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8696/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb1/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18696/shard-iclb4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb4/igt@runner@ab=
orted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1580">i915#1580</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2283">i915#2283</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2292">i915#2292</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2439">i915#2439</a> / <a href=3D"https://bugzilla.=
kernel.org/show_bug.cgi?id=3D204565">k.org#204565</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18696/shard-tglb5/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard=
-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_18696/shard-tglb3/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/=
shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb2/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8696/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb3/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18696/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb8/igt@runner@ab=
orted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1759">i915#1759</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1852">i915#1852</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2045">i915#2045</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2292">i915#2292</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href=3D"https://bug=
zilla.kernel.org/show_bug.cgi?id=3D204565">k.org#204565</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-skl4/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-skl9/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18696/shard-skl6/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-sk=
l3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18696/shard-skl5/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard=
-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_18696/shard-skl8/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/sh=
ard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18696/shard-skl10/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1869=
6/shard-skl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2292">i915#2292</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <=
a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D204565">k.org#20456=
5</a>)</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@core_hotunplug@hotrebind-lateclose}:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-iclb4/igt@core_hotunplug@hotrebind-lateclose.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1869=
6/shard-iclb2/igt@core_hotunplug@hotrebind-lateclose.html">INCOMPLETE</a></=
p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-tglb7/igt@core_hotunplug@hotrebind-lateclose.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1869=
6/shard-tglb3/igt@core_hotunplug@hotrebind-lateclose.html">INCOMPLETE</a></=
p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-glk7/igt@core_hotunplug@hotrebind-lateclose.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696=
/shard-glk1/igt@core_hotunplug@hotrebind-lateclose.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-skl4/igt@core_hotunplug@hotrebind-lateclose.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696=
/shard-skl8/igt@core_hotunplug@hotrebind-lateclose.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-kbl7/igt@core_hotunplug@hotrebind-lateclose.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696=
/shard-kbl6/igt@core_hotunplug@hotrebind-lateclose.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18696_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-apl8/igt@device_reset@unbind-reset-rebind.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/s=
hard-apl7/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) +=
3 similar issues</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-tglb1/igt@device_reset@unbind-reset-rebind.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/=
shard-tglb6/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/750">i915#750</a>)</=
p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-glk5/igt@gem_exec_reloc@basic-many-active@vecs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18696/shard-glk2/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-glk7/igt@gem_exec_whisper@basic-fds.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-=
glk4/igt@gem_exec_whisper@basic-fds.html">DMESG-WARN</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-tglb=
6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-skl2/igt@gem_userptr_blits@unsync-unmap-cycles.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8696/shard-skl9/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIMEOUT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#242=
4</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-skl9/igt@i915_module_load@reload-with-fault-injection.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18696/shard-skl7/igt@i915_module_load@reload-with-fault-injection.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/198">i915#198</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-kbl1/igt@i915_module_load@reload-with-fault-injection.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18696/shard-kbl2/igt@i915_module_load@reload-with-fault-injection.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1373">i915#1373</a>)</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-apl8/igt@i915_module_load@reload-with-fault-injection.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18696/shard-apl8/igt@i915_module_load@reload-with-fault-injection.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1373">i915#1373</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-iclb6/igt@i915_module_load@reload-with-fault-injection.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18696/shard-iclb1/igt@i915_module_load@reload-with-fault-injection.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/926">i915#926</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8696/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/300">i915#30=
0</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-skl8/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18696/shard-skl4/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1982">i915#1982</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-glk6/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18696/shard-glk3/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18696/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18696/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interrup=
tible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-iclb7=
/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-iclb1/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-icl=
b3/igt@perf_pmu@module-unload.html">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1373">i915#1373</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@offset-control:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-skl6/igt@api_intel_bb@offset-control.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#19=
82</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18696/shard-skl8/igt@api_intel_bb@offset-control.html">PASS</a> +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-glk9/igt@gem_exec_whisper@basic-queues.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#1=
18</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i91=
5#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18696/shard-glk4/igt@gem_exec_whisper@basic-queues.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-kbl6/igt@kms_async_flips@async-flip-with-page-flip-events=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_18696/shard-kbl6/igt@kms_async_flips@async-flip-with-page-fl=
ip-events.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9137/shard-tglb5/igt@kms_async_flips@async-flip-with-page-flip-event=
s.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18696/shard-tglb3/igt@kms_async_flips@async-flip-with-page-=
flip-events.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-iclb3/igt@kms_big_fb@linear-64bpp-rotate-0.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i=
915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18696/shard-iclb6/igt@kms_big_fb@linear-64bpp-rotate-0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb=
-pgflip-blt.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18696/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-p=
rimscrn-shrfb-pgflip-blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-=
gtt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18696/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-=
rgb565-draw-mmap-gtt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-sh=
rfb-plflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2416">i915#2416</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_18696/shard-tglb3/igt@kms_frontbuffer_tracking=
@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequen=
ce.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/53">i915#53</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18696/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-=
sequence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18696/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-iclb4/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_186=
96/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-glk8/igt@kms_setmode@basic.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk6/ig=
t@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/198">i915#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18696/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-suspen=
d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-busy-hang:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-glk2/igt@kms_vblank@pipe-b-wait-busy-hang.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i9=
15#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18696/shard-glk8/igt@kms_vblank@pipe-b-wait-busy-hang.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-tglb3/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_186=
96/shard-tglb8/igt@perf_pmu@module-unload.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1373">i915#1373</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9137/shard-glk1/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href=3D=
"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/sh=
ard-glk2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18696/shard-glk7/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696=
/shard-glk5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk1/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
696/shard-glk9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18696/shard-glk8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/shard-glk6/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18696/shard-glk5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2292">i915#2292</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a hre=
f=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>=
 / <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D204565">k.org#2=
04565</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9137 -&gt; Patchwork_18696</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9137: 9c7e985c2336328b14dd87c0f6a83af094f59d53 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5813: d4e6dd955a1dad02271aa41c9389f5097ee17765 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18696: ac59ab83da2ad34c09a723697b4ff7635e8b2cd7 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7433935302136754145==--

--===============1676908080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1676908080==--
