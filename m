Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F0F166FF5
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 08:06:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 556C16EEA4;
	Fri, 21 Feb 2020 07:06:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 278B56EEA4;
 Fri, 21 Feb 2020 07:06:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4C7D1A47E4;
 Fri, 21 Feb 2020 07:06:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Akeem G Abodunrin" <akeem.g.abodunrin@intel.com>
Date: Fri, 21 Feb 2020 07:06:25 -0000
Message-ID: <158226878528.7916.11716426876205880475@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220225723.18857-1-akeem.g.abodunrin@intel.com>
In-Reply-To: <20200220225723.18857-1-akeem.g.abodunrin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU2Vj?=
 =?utf-8?q?urity_mitigation_for_Intel_Gen7/7=2E5_HWs?=
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

Series: Security mitigation for Intel Gen7/7.5 HWs
URL   : https://patchwork.freedesktop.org/series/73743/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7979 -> Patchwork_16653
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16653/index.html

Known issues
------------

  Here are the changes found in Patchwork_16653 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-lmem:        [PASS][1] -> [INCOMPLETE][2] ([CI#80] / [i915#424])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16653/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-kbl-7500u:       [PASS][3] -> [TIMEOUT][4] ([fdo#112271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16653/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
    - fi-bdw-5557u:       [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/fi-bdw-5557u/igt@i915_selftest@live_gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16653/fi-bdw-5557u/igt@i915_selftest@live_gtt.html

  
#### Warnings ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][7] ([i915#45]) -> [TIMEOUT][8] ([fdo#112271] / [i915#1084] / [i915#816])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16653/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][9] ([i915#694]) -> [TIMEOUT][10] ([fdo#112271] / [i915#1084])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16653/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [INCOMPLETE][11] ([CI#94] / [i915#460]) -> [FAIL][12] ([CI#94])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16653/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (45 -> 45)
------------------------------

  Additional (5): fi-bsw-n3050 fi-glk-dsi fi-bwr-2160 fi-ivb-3770 fi-skl-6600u 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7979 -> Patchwork_16653

  CI-20190529: 20190529
  CI_DRM_7979: 45d61ea8faa5bdb50719bed2de3dd2ef8e6f5a12 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5453: cae9a5881ed2c5be2c2518a255740b612a927f9a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16653: 49dc47834a5e83d9d0b9b879edd6b336ea77e8d9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

49dc47834a5e drm/i915/gen7: Clear all EU/L3 residual contexts
a3dc644c8ea3 drm/i915: Add mechanism to submit a context WA on ring submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16653/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
