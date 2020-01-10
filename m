Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3D4137A09
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jan 2020 00:17:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B9596E117;
	Fri, 10 Jan 2020 23:17:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A709E6E138;
 Fri, 10 Jan 2020 23:17:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9FD51A0075;
 Fri, 10 Jan 2020 23:17:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 10 Jan 2020 23:17:40 -0000
Message-ID: <157869826065.30837.16241260941551018913@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109220547.23817-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200109220547.23817-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Bump_up_CDCLK_to_eliminate_underruns_on_TGL_=28rev4=29?=
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

Series: drm/i915: Bump up CDCLK to eliminate underruns on TGL (rev4)
URL   : https://patchwork.freedesktop.org/series/71760/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7721 -> Patchwork_16060
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/index.html

Known issues
------------

  Here are the changes found in Patchwork_16060 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][1] -> [DMESG-WARN][2] ([i915#889])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8700k:       [PASS][3] -> [INCOMPLETE][4] ([i915#148])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][7] -> [DMESG-FAIL][8] ([i915#656])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [PASS][9] -> [INCOMPLETE][10] ([fdo#106070] / [i915#424])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][11] ([i915#816]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_gttfill@basic:
    - {fi-ehl-1}:         [INCOMPLETE][13] ([i915#937]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-ehl-1/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/fi-ehl-1/igt@gem_exec_gttfill@basic.html

  * igt@gem_render_linear_blits@basic:
    - fi-icl-dsi:         [DMESG-WARN][15] ([i915#109]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-icl-dsi/igt@gem_render_linear_blits@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/fi-icl-dsi/igt@gem_render_linear_blits@basic.html

  * igt@gem_sync@basic-each:
    - fi-tgl-y:           [INCOMPLETE][17] ([i915#472] / [i915#707]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-tgl-y/igt@gem_sync@basic-each.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/fi-tgl-y/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][19] ([i915#553] / [i915#725]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-kbl-7500u:       [FAIL][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#148]: https://gitlab.freedesktop.org/drm/intel/issues/148
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (47 -> 45)
------------------------------

  Additional (5): fi-hsw-4770r fi-bdw-5557u fi-ilk-650 fi-snb-2520m fi-byt-n2820 
  Missing    (7): fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7721 -> Patchwork_16060

  CI-20190529: 20190529
  CI_DRM_7721: 3a2436c56fcf2d133d701a112eb1e0dfce0b846d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16060: de1f33b10674921be4523e07b9f2b2c97366a261 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

de1f33b10674 drm/i915: Bump up CDCLK to eliminate underruns on TGL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
