Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7F2243169
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Aug 2020 01:23:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 781396E960;
	Wed, 12 Aug 2020 23:23:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BAE7A6E95F;
 Wed, 12 Aug 2020 23:23:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B41A7A47E6;
 Wed, 12 Aug 2020 23:23:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 12 Aug 2020 23:23:40 -0000
Message-ID: <159727462070.25468.16526049701748786864@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200812223621.22292-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200812223621.22292-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Cancel_outstanding_work?=
 =?utf-8?q?_after_disabling_heartbeats_on_an_engine?=
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
Content-Type: multipart/mixed; boundary="===============1423124394=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1423124394==
Content-Type: multipart/alternative;
 boundary="===============2349803771662481588=="

--===============2349803771662481588==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915: Cancel outstanding work after disabling heartbeats on an engine
URL   : https://patchwork.freedesktop.org/series/80573/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8879 -> Patchwork_18350
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18350 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18350, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18350:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-threads:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bwr-2160/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bwr-2160/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_create@basic-files:
    - fi-byt-j1900:       [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-byt-j1900/igt@gem_ctx_create@basic-files.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-byt-j1900/igt@gem_ctx_create@basic-files.html
    - fi-snb-2600:        [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-snb-2600/igt@gem_ctx_create@basic-files.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-snb-2600/igt@gem_ctx_create@basic-files.html
    - fi-bsw-n3050:       [PASS][7] -> [FAIL][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-n3050/igt@gem_ctx_create@basic-files.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-n3050/igt@gem_ctx_create@basic-files.html
    - fi-ivb-3770:        [PASS][9] -> [FAIL][10] +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-ivb-3770/igt@gem_ctx_create@basic-files.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-ivb-3770/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_parallel@engines@contexts:
    - fi-bdw-gvtdvm:      [PASS][11] -> [FAIL][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html
    - fi-bsw-nick:        [PASS][13] -> [FAIL][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-nick/igt@gem_exec_parallel@engines@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-nick/igt@gem_exec_parallel@engines@contexts.html
    - fi-snb-2520m:       [PASS][15] -> [FAIL][16] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-snb-2520m/igt@gem_exec_parallel@engines@contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-snb-2520m/igt@gem_exec_parallel@engines@contexts.html
    - fi-ilk-650:         [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-ilk-650/igt@gem_exec_parallel@engines@contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-ilk-650/igt@gem_exec_parallel@engines@contexts.html
    - fi-elk-e7500:       [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-elk-e7500/igt@gem_exec_parallel@engines@contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-elk-e7500/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_parallel@engines@fds:
    - fi-hsw-4770:        [PASS][21] -> [FAIL][22] +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-hsw-4770/igt@gem_exec_parallel@engines@fds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-hsw-4770/igt@gem_exec_parallel@engines@fds.html
    - fi-bdw-5557u:       [PASS][23] -> [FAIL][24] +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bdw-5557u/igt@gem_exec_parallel@engines@fds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bdw-5557u/igt@gem_exec_parallel@engines@fds.html
    - fi-bsw-nick:        [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-nick/igt@gem_exec_parallel@engines@fds.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-nick/igt@gem_exec_parallel@engines@fds.html
    - fi-bsw-kefka:       [PASS][27] -> [FAIL][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-kefka/igt@gem_exec_parallel@engines@fds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-kefka/igt@gem_exec_parallel@engines@fds.html
    - fi-bsw-n3050:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-n3050/igt@gem_exec_parallel@engines@fds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-n3050/igt@gem_exec_parallel@engines@fds.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-bsw-kefka:       [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
    - fi-snb-2520m:       [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-snb-2520m/igt@i915_selftest@live@gem_contexts.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-snb-2520m/igt@i915_selftest@live@gem_contexts.html
    - fi-elk-e7500:       [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-elk-e7500/igt@i915_selftest@live@gem_contexts.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-elk-e7500/igt@i915_selftest@live@gem_contexts.html
    - fi-ivb-3770:        [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-ivb-3770/igt@i915_selftest@live@gem_contexts.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-ivb-3770/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-n3050:       [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
    - fi-ilk-650:         [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-ilk-650/igt@i915_selftest@live@gem_contexts.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-ilk-650/igt@i915_selftest@live@gem_contexts.html
    - fi-snb-2600:        [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-snb-2600/igt@i915_selftest@live@gem_contexts.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-snb-2600/igt@i915_selftest@live@gem_contexts.html
    - fi-hsw-4770:        [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html
    - fi-byt-j1900:       [PASS][47] -> [DMESG-FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-byt-j1900/igt@i915_selftest@live@gem_contexts.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-byt-j1900/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-nick:        [PASS][49] -> [DMESG-FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html
    - fi-bdw-5557u:       [PASS][51] -> [DMESG-FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_18350 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@engines@contexts:
    - fi-snb-2600:        [PASS][53] -> [INCOMPLETE][54] ([i915#82])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-snb-2600/igt@gem_exec_parallel@engines@contexts.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-snb-2600/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][55] -> [FAIL][56] ([i915#1888])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-u2:          [PASS][57] -> [DMESG-FAIL][58] ([i915#1233])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-kbl-r:           [PASS][59] -> [DMESG-WARN][60] ([i915#1982])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-kbl-r/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-kbl-r/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-kefka:       [PASS][61] -> [DMESG-WARN][62] ([i915#1982]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-u2:          [INCOMPLETE][63] ([i915#2045]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][65] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:
    - fi-skl-guc:         [DMESG-WARN][67] ([i915#2203]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][69] ([i915#1982]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-wf_vblank@d-dsi1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-wf_vblank@d-dsi1.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-x1275:       [DMESG-WARN][71] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][72] ([i915#1982] / [i915#62] / [i915#92] / [i915#95])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-x1275:       [DMESG-WARN][73] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][74] ([i915#62] / [i915#92]) +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][75] ([i915#62] / [i915#92]) -> [DMESG-WARN][76] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2045]: https://gitlab.freedesktop.org/drm/intel/issues/2045
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8879 -> Patchwork_18350

  CI-20190529: 20190529
  CI_DRM_8879: 383f247a5884778b21e17dc9537e0bdeae503953 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5768: 4ce2f30715836214d7b4452ada8c63b23eba73b7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18350: ae0b2f9b0adb6250629ebb13af3f053ea3a70665 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ae0b2f9b0adb drm/i915/gem: Always test execution status on closing the context
1437502f6ff0 drm/i915/gt: Always send a pulse down the engine after disabling heartbeat
040e2e6bab01 drm/i915: Cancel outstanding work after disabling heartbeats on an engine

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/index.html

--===============2349803771662481588==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915: Cancel outstanding work after disabling heartbeats on an engine</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80573/">https://patchwork.freedesktop.org/series/80573/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8879 -&gt; Patchwork_18350</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18350 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18350, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18350:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bwr-2160/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bwr-2160/igt@gem_close_race@basic-threads.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-byt-j1900/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-byt-j1900/igt@gem_ctx_create@basic-files.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-snb-2600/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-snb-2600/igt@gem_ctx_create@basic-files.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-n3050/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-n3050/igt@gem_ctx_create@basic-files.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-ivb-3770/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-ivb-3770/igt@gem_ctx_create@basic-files.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-nick/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-nick/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-snb-2520m/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-snb-2520m/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-ilk-650/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-ilk-650/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-elk-e7500/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-elk-e7500/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-hsw-4770/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-hsw-4770/igt@gem_exec_parallel@engines@fds.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bdw-5557u/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bdw-5557u/igt@gem_exec_parallel@engines@fds.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-nick/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-nick/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-kefka/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-kefka/igt@gem_exec_parallel@engines@fds.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-n3050/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-n3050/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-snb-2520m/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-snb-2520m/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-elk-e7500/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-elk-e7500/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-ivb-3770/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-ivb-3770/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-ilk-650/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-ilk-650/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-snb-2600/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-snb-2600/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-byt-j1900/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-byt-j1900/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18350 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-snb-2600/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-snb-2600/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1233">i915#1233</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-kbl-r/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-kbl-r/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2045">i915#2045</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-kbl-x1275/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-kbl-x1275/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-dsi1:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-wf_vblank@d-dsi1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-wf_vblank@d-dsi1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8879/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18350/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 37)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8879 -&gt; Patchwork_18350</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8879: 383f247a5884778b21e17dc9537e0bdeae503953 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5768: 4ce2f30715836214d7b4452ada8c63b23eba73b7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18350: ae0b2f9b0adb6250629ebb13af3f053ea3a70665 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ae0b2f9b0adb drm/i915/gem: Always test execution status on closing the context<br />
1437502f6ff0 drm/i915/gt: Always send a pulse down the engine after disabling heartbeat<br />
040e2e6bab01 drm/i915: Cancel outstanding work after disabling heartbeats on an engine</p>

</body>
</html>

--===============2349803771662481588==--

--===============1423124394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1423124394==--
