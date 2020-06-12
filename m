Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 600C91F7A46
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 17:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC6056E983;
	Fri, 12 Jun 2020 15:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 544816E12E;
 Fri, 12 Jun 2020 15:01:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4D2BDA47E0;
 Fri, 12 Jun 2020 15:01:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 12 Jun 2020 15:01:56 -0000
Message-ID: <159197411631.21335.16225008769485665348@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200612142551.30956-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200612142551.30956-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/execlists=3A_Lift_opportun?=
 =?utf-8?q?istic_process=5Fcsb_to_before_engine_lock?=
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

Series: series starting with [1/3] drm/i915/execlists: Lift opportunistic process_csb to before engine lock
URL   : https://patchwork.freedesktop.org/series/78262/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8621 -> Patchwork_17939
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17939 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17939, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17939/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17939:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - fi-cml-s:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-cml-s/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17939/fi-cml-s/igt@i915_selftest@live@hangcheck.html
    - fi-tgl-u2:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17939/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_17939 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-icl-guc:         [PASS][4] -> [DMESG-WARN][5] ([i915#1982])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-icl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17939/fi-icl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {fi-tgl-dsi}:       [DMESG-WARN][6] ([i915#1982]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17939/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][8] ([i915#1993]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-icl-y/igt@i915_selftest@live@execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17939/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][10] ([i915#1982]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17939/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-kefka:       [DMESG-WARN][12] ([i915#1982]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17939/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-guc:         [DMESG-WARN][14] ([i915#1982]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-icl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17939/fi-icl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [DMESG-WARN][16] ([i915#62] / [i915#92]) -> [DMESG-WARN][17] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17939/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][18] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][19] ([i915#62] / [i915#92]) +6 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17939/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

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

  * Linux: CI_DRM_8621 -> Patchwork_17939

  CI-20190529: 20190529
  CI_DRM_8621: acd803311fbd1e6adc38d10ca382a60c6c190be9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5708: f66c71e29de50bae880bc81ceb0517d4e3e2dfd8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17939: 40f4da6c47fe80933138e9f62c37a698cf8a0478 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

40f4da6c47fe drm/i915/execlists: Defer schedule_out until after the next dequeue
af00d3a11ae9 drm/i915/execlists: Replace direct submit with direct call to tasklet
2fb91b1dcbe9 drm/i915/execlists: Lift opportunistic process_csb to before engine lock

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17939/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
