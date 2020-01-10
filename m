Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9341379A9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 23:29:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E37E46E0EE;
	Fri, 10 Jan 2020 22:29:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 17E566E0EE;
 Fri, 10 Jan 2020 22:29:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0DAEFA00FD;
 Fri, 10 Jan 2020 22:29:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Fri, 10 Jan 2020 22:29:34 -0000
Message-ID: <157869537402.30836.15400794218051180297@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110162930.88968-1-michal.wajdeczko@intel.com>
In-Reply-To: <20200110162930.88968-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_ops_to_intel=5Fuc_=28rev3=29?=
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

Series: Add ops to intel_uc (rev3)
URL   : https://patchwork.freedesktop.org/series/70716/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7721 -> Patchwork_16059
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16059/index.html

Known issues
------------

  Here are the changes found in Patchwork_16059 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-WARN][2] ([i915#889])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16059/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][3] -> [DMESG-FAIL][4] ([i915#656])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16059/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gt_engines:
    - fi-cfl-8700k:       [PASS][5] -> [DMESG-FAIL][6] ([i915#889]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-cfl-8700k/igt@i915_selftest@live_gt_engines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16059/fi-cfl-8700k/igt@i915_selftest@live_gt_engines.html

  * igt@i915_selftest@live_gt_pm:
    - fi-cfl-8700k:       [PASS][7] -> [DMESG-WARN][8] ([i915#889]) +23 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16059/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][9] -> [DMESG-WARN][10] ([i915#44])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16059/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - {fi-ehl-1}:         [INCOMPLETE][11] ([i915#937]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-ehl-1/igt@gem_exec_gttfill@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16059/fi-ehl-1/igt@gem_exec_gttfill@basic.html

  * igt@gem_render_linear_blits@basic:
    - fi-icl-dsi:         [DMESG-WARN][13] ([i915#109]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-icl-dsi/igt@gem_render_linear_blits@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16059/fi-icl-dsi/igt@gem_render_linear_blits@basic.html

  * igt@gem_sync@basic-each:
    - fi-tgl-y:           [INCOMPLETE][15] ([i915#472] / [i915#707]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-tgl-y/igt@gem_sync@basic-each.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16059/fi-tgl-y/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][17] ([i915#553] / [i915#725]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16059/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (47 -> 40)
------------------------------

  Additional (4): fi-hsw-4770r fi-ilk-650 fi-byt-n2820 fi-snb-2520m 
  Missing    (11): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-kbl-7500u fi-ctg-p8600 fi-gdg-551 fi-ivb-3770 fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7721 -> Patchwork_16059

  CI-20190529: 20190529
  CI_DRM_7721: 3a2436c56fcf2d133d701a112eb1e0dfce0b846d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16059: 0960b20d554902ea4e686f61eb736c733cfefb41 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0960b20d5549 drm/i915/uc: Add sanitize to to intel_uc_ops
71565950a620 drm/i915/uc: Add init/fini to to intel_uc_ops
def878150533 drm/i915/uc: Add init_fw/fini_fw to to intel_uc_ops
bb5e4aea2877 drm/i915/uc: Add ops to intel_uc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16059/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
