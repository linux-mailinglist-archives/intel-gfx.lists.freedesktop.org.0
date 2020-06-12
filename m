Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB6A1F7DF5
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 22:07:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B92F6E1B1;
	Fri, 12 Jun 2020 20:07:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE34D6E1B1;
 Fri, 12 Jun 2020 20:07:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8271A3C0D;
 Fri, 12 Jun 2020 20:07:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 12 Jun 2020 20:07:17 -0000
Message-ID: <159199243785.21335.9177201955553895472@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200612121731.19596-1-imre.deak@intel.com>
In-Reply-To: <20200612121731.19596-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/icl+=3A_Fix_hotplug_interrupt_disabling_after_storm_detec?=
 =?utf-8?q?tion?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/icl+: Fix hotplug interrupt disabling after storm detection
URL   : https://patchwork.freedesktop.org/series/78258/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8621 -> Patchwork_17937
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/index.html

Known issues
------------

  Here are the changes found in Patchwork_17937 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
#### Possible fixes ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-whl-u:           [DMESG-WARN][3] ([i915#95]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [DMESG-WARN][5] ([i915#1982]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][7] ([i915#1993]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-icl-y/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][9] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-kefka:       [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-guc:         [DMESG-WARN][15] ([i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-icl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-icl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][18] ([i915#62] / [i915#92]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#62] / [i915#92]) -> [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html

  
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#1993]: https://gitlab.freedesktop.org/drm/intel/issues/1993
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (49 -> 43)
------------------------------

  Additional (1): fi-tgl-u2 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8621 -> Patchwork_17937

  CI-20190529: 20190529
  CI_DRM_8621: acd803311fbd1e6adc38d10ca382a60c6c190be9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5708: f66c71e29de50bae880bc81ceb0517d4e3e2dfd8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17937: a09f4bc8ddb9cfad0f18bdaccada93f9e98d5c54 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a09f4bc8ddb9 drm/i915/icl+: Fix hotplug interrupt disabling after storm detection

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
