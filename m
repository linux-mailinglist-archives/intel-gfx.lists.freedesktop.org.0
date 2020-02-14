Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C2D15DA5F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 16:12:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D05A6E3CE;
	Fri, 14 Feb 2020 15:12:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CAA1B6E3CE;
 Fri, 14 Feb 2020 15:12:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2B0CA0078;
 Fri, 14 Feb 2020 15:12:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Fri, 14 Feb 2020 15:12:23 -0000
Message-ID: <158169314376.9930.9219567268098621500@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200214114126.13192-1-manasi.d.navare@intel.com>
In-Reply-To: <20200214114126.13192-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2Cv3=2C1/3=5D_drm/i915=3A_Introduce_enc?=
 =?utf-8?b?b2Rlci0+Y29tcHV0ZV9jb25maWdfbGF0ZSgp?=
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

Series: series starting with [CI,v3,1/3] drm/i915: Introduce encoder->compute_config_late()
URL   : https://patchwork.freedesktop.org/series/73460/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7939 -> Patchwork_16570
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16570/index.html

Known issues
------------

  Here are the changes found in Patchwork_16570 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [PASS][1] -> [FAIL][2] ([i915#694]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16570/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][3] -> [DMESG-FAIL][4] ([i915#1052])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16570/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - {fi-ehl-1}:         [INCOMPLETE][5] ([i915#937]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/fi-ehl-1/igt@gem_exec_parallel@contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16570/fi-ehl-1/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][7] ([i915#694]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16570/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][9] ([fdo#108569]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/fi-icl-y/igt@i915_selftest@live_execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16570/fi-icl-y/igt@i915_selftest@live_execlists.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][11] ([i915#579]) -> [SKIP][12] ([fdo#109271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16570/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (44 -> 39)
------------------------------

  Additional (7): fi-hsw-peppy fi-glk-dsi fi-ivb-3770 fi-icl-u3 fi-bsw-kefka fi-skl-6600u fi-kbl-r 
  Missing    (12): fi-ilk-m540 fi-bdw-5557u fi-bsw-n3050 fi-hsw-4200u fi-byt-squawks fi-snb-2520m fi-ctg-p8600 fi-skl-lmem fi-blb-e6850 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7939 -> Patchwork_16570

  CI-20190529: 20190529
  CI_DRM_7939: cceb0c30a34af6ca96e35211ecdc5ca198d44e7e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5441: 534ca091fe4ffed916752165bc5becd7ff56cd84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16570: 37b9800907360eadba87ee6617b6aa29e9a38195 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

37b980090736 drm/i915/dp: Add all tiled and port sync conns to modeset
03c1e93c1b88 drm/i915/dp: Compute port sync crtc states post compute_config()
8a37e7c4b9de drm/i915: Introduce encoder->compute_config_late()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16570/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
