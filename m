Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 392F11521EE
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 22:23:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE1A46E90F;
	Tue,  4 Feb 2020 21:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5BB846E90F;
 Tue,  4 Feb 2020 21:23:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54D84A0078;
 Tue,  4 Feb 2020 21:23:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 04 Feb 2020 21:23:31 -0000
Message-ID: <158085141131.25087.10782331752301103048@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ29t?=
 =?utf-8?q?mit_early_to_GuC_=28rev2=29?=
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

Series: Commit early to GuC (rev2)
URL   : https://patchwork.freedesktop.org/series/72031/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7864 -> Patchwork_16406
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/index.html

Known issues
------------

  Here are the changes found in Patchwork_16406 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][1] -> [FAIL][2] ([i915#694])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][3] ([i915#178]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gtt:
    - fi-skl-6600u:       [TIMEOUT][5] ([fdo#111732] / [fdo#112271]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-skl-6600u/igt@i915_selftest@live_gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/fi-skl-6600u/igt@i915_selftest@live_gtt.html

  * igt@i915_selftest@live_perf:
    - fi-apl-guc:         [INCOMPLETE][7] ([fdo#103927]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-apl-guc/igt@i915_selftest@live_perf.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/fi-apl-guc/igt@i915_selftest@live_perf.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][9] ([fdo#112271]) -> [FAIL][10] ([i915#694])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][11] ([i915#725]) -> [DMESG-FAIL][12] ([i915#770])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770


Participating hosts (50 -> 38)
------------------------------

  Additional (3): fi-skl-lmem fi-glk-dsi fi-snb-2520m 
  Missing    (15): fi-ilk-m540 fi-bdw-samus fi-bsw-n3050 fi-byt-j1900 fi-hsw-4200u fi-byt-squawks fi-ilk-650 fi-ctg-p8600 fi-gdg-551 fi-elk-e7500 fi-blb-e6850 fi-tgl-y fi-byt-clapper fi-bsw-nick fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7864 -> Patchwork_16406

  CI-20190529: 20190529
  CI_DRM_7864: 5a140e2fc771e4c8b10d14e2db7bfb4996ee9d8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5417: 33cc93c8ba5daa0b7498f297a4f626844d895d06 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16406: e4ad6a295fb15116c45e09ae490589bb06ad736d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e4ad6a295fb1 HAX: drm/i915: default to enable_guc=2
1d318ae28200 drm/i915/uc: consolidate firmware cleanup
61eee547ff65 drm/i915/uc: Abort early on uc_init failure
0cd48e992b8b drm/i915/guc: Apply new uC status tracking to GuC submission as well
a5eb1097207f drm/i915/uc: Improve tracking of uC init status
0cecb99111fb drm/i915/uc: autogenerate uC checker functions
f0481b5c0bfb drm/i915/uc: Update the FW status on injected fetch error
2243201c583e drm/i915/guc: Kill USES_GUC_SUBMISSION macro
ebe1197848d5 drm/i915/guc: Kill USES_GUC macro
e5cb7d5a536e drm/i915/debugfs: Pass guc_log struct to i915_guc_log_info

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
