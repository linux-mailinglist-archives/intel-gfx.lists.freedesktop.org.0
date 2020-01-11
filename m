Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2DB13841B
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Jan 2020 00:43:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA23D89125;
	Sat, 11 Jan 2020 23:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4DDFE89125;
 Sat, 11 Jan 2020 23:43:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D94FA0134;
 Sat, 11 Jan 2020 23:43:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Sat, 11 Jan 2020 23:43:28 -0000
Message-ID: <157878620822.16374.7269865606160116537@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200111231114.59208-1-michal.wajdeczko@intel.com>
In-Reply-To: <20200111231114.59208-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTWlz?=
 =?utf-8?q?c_GuC_CT_improvements?=
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

Series: Misc GuC CT improvements
URL   : https://patchwork.freedesktop.org/series/71927/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7725 -> Patchwork_16067
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16067/index.html

Known issues
------------

  Here are the changes found in Patchwork_16067 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [PASS][1] -> [INCOMPLETE][2] ([i915#671])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7725/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16067/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#563])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7725/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16067/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][5] ([i915#816]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7725/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16067/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_fence@basic-wait-default:
    - {fi-ehl-1}:         [INCOMPLETE][7] ([i915#937] / [i915#949]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7725/fi-ehl-1/igt@gem_exec_fence@basic-wait-default.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16067/fi-ehl-1/igt@gem_exec_fence@basic-wait-default.html

  * igt@gem_render_linear_blits@basic:
    - fi-icl-dsi:         [DMESG-WARN][9] ([i915#109]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7725/fi-icl-dsi/igt@gem_render_linear_blits@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16067/fi-icl-dsi/igt@gem_render_linear_blits@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][11] ([i915#553] / [i915#725]) -> [DMESG-FAIL][12] ([i915#563])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7725/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16067/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [i915#949]: https://gitlab.freedesktop.org/drm/intel/issues/949


Participating hosts (43 -> 38)
------------------------------

  Additional (4): fi-byt-j1900 fi-glk-dsi fi-kbl-7500u fi-snb-2600 
  Missing    (9): fi-hsw-4200u fi-hsw-peppy fi-skl-6770hq fi-byt-squawks fi-ctg-p8600 fi-gdg-551 fi-elk-e7500 fi-kbl-7560u fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7725 -> Patchwork_16067

  CI-20190529: 20190529
  CI_DRM_7725: 122b7c0d39d109d83b44be0ed515e53d39bfc0fa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16067: 78fc81508a2aedd739a4e8f4d317d12a9204345d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

78fc81508a2a drm/i915/guc: Use correct name for last CT fence
e65db0f0de6a drm/i915/guc: Update CTB helpers to use CT_ERROR
3de4fca5641b drm/i915/guc: Introduce CT_ERROR
fcb6ad56e500 drm/i915/guc: Simpler CT message size calculation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16067/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
