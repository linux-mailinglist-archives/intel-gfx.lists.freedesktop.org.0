Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 676E5163BD8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 05:09:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378746E06E;
	Wed, 19 Feb 2020 04:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1265E6E06E;
 Wed, 19 Feb 2020 04:09:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A443A00CC;
 Wed, 19 Feb 2020 04:09:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 19 Feb 2020 04:09:33 -0000
Message-ID: <158208537301.21061.10762265985984394663@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218223327.11058-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200218223327.11058-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C01/10=5D_drm/i915/debugfs=3A_Pass_guc?=
 =?utf-8?q?=5Flog_struct_to_i915=5Fguc=5Flog=5Finfo?=
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

Series: series starting with [CI,01/10] drm/i915/debugfs: Pass guc_log struct to i915_guc_log_info
URL   : https://patchwork.freedesktop.org/series/73610/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7963 -> Patchwork_16611
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/index.html

Known issues
------------

  Here are the changes found in Patchwork_16611 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-icl-u3:          [PASS][1] -> [DMESG-WARN][2] ([i915#585]) +37 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@kms_frontbuffer_tracking@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/fi-icl-u3/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_active:
    - fi-icl-dsi:         [DMESG-FAIL][3] ([i915#765]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-dsi/igt@i915_selftest@live_active.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/fi-icl-dsi/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][5] ([i915#424]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-cml-s:           [DMESG-FAIL][7] ([i915#877]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-kbl-7500u:       [DMESG-FAIL][9] ([fdo#112406]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-kbl-7500u/igt@i915_selftest@live_gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/fi-kbl-7500u/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bsw-n3050:       [FAIL][11] ([i915#34]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][13] ([fdo#109315]) -> [SKIP][14] ([fdo#109315] / [i915#585])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][15] ([i915#579]) -> [SKIP][16] ([fdo#109271])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-icl-u3:          [SKIP][17] ([fdo#109284] / [fdo#111827]) -> [SKIP][18] ([fdo#109284] / [fdo#111827] / [i915#585])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@kms_chamelium@dp-hpd-fast.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/fi-icl-u3/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u3:          [SKIP][19] ([fdo#109285]) -> [SKIP][20] ([fdo#109285] / [i915#585])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@kms_force_connector_basic@force-load-detect.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/fi-icl-u3/igt@kms_force_connector_basic@force-load-detect.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (50 -> 36)
------------------------------

  Missing    (14): fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-glk-dsi fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-gdg-551 fi-cfl-8109u fi-skl-6700k2 fi-bdw-samus fi-byt-n2820 fi-bsw-nick fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7963 -> Patchwork_16611

  CI-20190529: 20190529
  CI_DRM_7963: e0d737598eb749378a5dc4ed3dfafc6f79d512cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16611: 50bb392a051d3d642110516f74f2a22ab49e90b4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

50bb392a051d HAX: drm/i915: default to enable_guc=2
ff1adf98f8d4 drm/i915/uc: consolidate firmware cleanup
65d24a2b9584 drm/i915/uc: Abort early on uc_init failure
0d79221ea12e drm/i915/guc: Apply new uC status tracking to GuC submission as well
cd5541c40e50 drm/i915/uc: Improve tracking of uC init status
ca3c50fa47ed drm/i915/uc: autogenerate uC checker functions
22e4c362bb86 drm/i915/uc: Update the FW status on injected fetch error
38db7bd09a6d drm/i915/guc: Kill USES_GUC_SUBMISSION macro
a6ea555cb6b1 drm/i915/guc: Kill USES_GUC macro
c9413e3a8cde drm/i915/debugfs: Pass guc_log struct to i915_guc_log_info

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
