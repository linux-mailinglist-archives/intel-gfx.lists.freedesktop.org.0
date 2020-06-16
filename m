Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 613111FBF63
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 21:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C476E98F;
	Tue, 16 Jun 2020 19:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 11BEC6E98F;
 Tue, 16 Jun 2020 19:50:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09FF8A00E7;
 Tue, 16 Jun 2020 19:50:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 16 Jun 2020 19:50:33 -0000
Message-ID: <159233703300.4596.7457059522418906935@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200616141855.746-1-imre.deak@intel.com>
In-Reply-To: <20200616141855.746-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/tgl+=3A_Use_the_correct_DP?=
 =?utf-8?q?=5FTP=5F*_register_instances_in_MST_encoders?=
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

Series: series starting with [1/6] drm/i915/tgl+: Use the correct DP_TP_* register instances in MST encoders
URL   : https://patchwork.freedesktop.org/series/78423/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8635 -> Patchwork_17964
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/index.html

Known issues
------------

  Here are the changes found in Patchwork_17964 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-icl-guc:         [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-icl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/fi-icl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  
#### Possible fixes ####

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][5] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-guc:         [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-icl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/fi-icl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-kbl-x1275:       [DMESG-WARN][9] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][10] ([i915#62] / [i915#92])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-kbl-x1275/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/fi-kbl-x1275/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][11] ([fdo#109271]) -> [FAIL][12] ([i915#665] / [i915#704])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92]) -> [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#665]: https://gitlab.freedesktop.org/drm/intel/issues/665
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 42)
------------------------------

  Missing    (5): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8635 -> Patchwork_17964

  CI-20190529: 20190529
  CI_DRM_8635: f9acdb898773f94ac1bcb9a8826596f88412a53b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5711: 90611a0c90afa4a46496c78a4faf9638a1538ac3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17964: d302e0a23522a808ab7073bf458e7b70df70def3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d302e0a23522 drm/i915/dp_mst: Ensure the DPCD ACT sent flag is cleared before waiting for it
005be72f6fe4 drm/i915/dp_mst: Clear the ACT sent flag during encoder disabling too
1c1441217489 drm/i915/dp_mst: Clear only the ACT sent flag from DP_TP_STATUS
23865500149b drm/i915/dp_mst: Move clearing the ACT sent flag closer to its polling
94a0f7ad711f drm/i915/dp_mst: Disable link training fallback on MST links
15358e434948 drm/i915/tgl+: Use the correct DP_TP_* register instances in MST encoders

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
