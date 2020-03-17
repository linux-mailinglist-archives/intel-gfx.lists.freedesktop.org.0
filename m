Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB3118842C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 13:30:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 906C36E0E0;
	Tue, 17 Mar 2020 12:30:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 61DC96E0E0;
 Tue, 17 Mar 2020 12:30:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51C14A0094;
 Tue, 17 Mar 2020 12:30:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Tue, 17 Mar 2020 12:30:11 -0000
Message-ID: <158444821130.5180.3949006331197786@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200317112909.2624035-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200317112909.2624035-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv7=2C1/3=5D_drm/i915/perf=3A_remove_genera?=
 =?utf-8?q?ted_code?=
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

Series: series starting with [v7,1/3] drm/i915/perf: remove generated code
URL   : https://patchwork.freedesktop.org/series/74767/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8141 -> Patchwork_16990
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16990/index.html

Known issues
------------

  Here are the changes found in Patchwork_16990 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#1430] / [i915#656])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16990/fi-cfl-guc/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([fdo#111407])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16990/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bsw-n3050:       [PASS][5] -> [FAIL][6] ([i915#34])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16990/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [INCOMPLETE][7] ([i915#189]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16990/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8700k:       [INCOMPLETE][9] ([i915#656]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16990/fi-cfl-8700k/igt@i915_selftest@live@execlists.html

  
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (47 -> 42)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-tgl-dsi fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8141 -> Patchwork_16990

  CI-20190529: 20190529
  CI_DRM_8141: f7be958f2574d30bad18983c3afe2c5401674dfb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5513: 417c926459dacf062f2945d3ba01a3f94551b16f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16990: ab46c9416005df7020efc6e5b516486f7e4409e7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ab46c9416005 drm/i915/perf: introduce global sseu pinning
1623895d809c drm/i915/perf: remove redundant power configuration register override
dfa8113ae277 drm/i915/perf: remove generated code

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16990/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
