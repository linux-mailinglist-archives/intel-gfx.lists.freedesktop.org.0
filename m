Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5221BDF69
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 15:46:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B246C6EE95;
	Wed, 29 Apr 2020 13:46:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE5336EE92;
 Wed, 29 Apr 2020 13:46:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A78E4A00E6;
 Wed, 29 Apr 2020 13:46:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 29 Apr 2020 13:46:49 -0000
Message-ID: <158816800968.6699.7293218349531718119@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429112151.5263-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200429112151.5263-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Keep_a_no-frill?=
 =?utf-8?q?s_swappable_copy_of_the_default_context_state_=28rev3=29?=
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

Series: series starting with [CI,1/2] drm/i915/gt: Keep a no-frills swappable copy of the default context state (rev3)
URL   : https://patchwork.freedesktop.org/series/76719/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8391 -> Patchwork_17511
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17511 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17511, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17511:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-tgl-y:           [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-tgl-y/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-tgl-y/igt@i915_selftest@live@execlists.html
    - fi-icl-y:           [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-icl-y/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-cml-u2:          [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-cml-u2/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-cml-u2/igt@i915_selftest@live@hangcheck.html
    - fi-icl-guc:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-icl-guc/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-icl-guc/igt@i915_selftest@live@hangcheck.html
    - fi-cfl-8700k:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-cfl-8700k/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-cfl-8700k/igt@i915_selftest@live@hangcheck.html
    - fi-whl-u:           [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-whl-u/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-whl-u/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-u}:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-tgl-u/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-tgl-u/igt@i915_selftest@live@execlists.html
    - {fi-tgl-dsi}:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-ehl-1}:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-ehl-1/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-ehl-1/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_17511 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-6700k2:      [PASS][21] -> [INCOMPLETE][22] ([fdo#108744])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-skl-6700k2/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-skl-6700k2/igt@i915_selftest@live@hangcheck.html
    - fi-skl-6600u:       [PASS][23] -> [INCOMPLETE][24] ([fdo#108744])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-skl-6600u/igt@i915_selftest@live@hangcheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-skl-6600u/igt@i915_selftest@live@hangcheck.html
    - fi-cfl-8109u:       [PASS][25] -> [INCOMPLETE][26] ([fdo#106070])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-cfl-8109u/igt@i915_selftest@live@hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-cfl-8109u/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-8809g:       [PASS][27] -> [INCOMPLETE][28] ([fdo#108744])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-r:           [PASS][29] -> [INCOMPLETE][30] ([fdo#108744])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-kbl-r/igt@i915_selftest@live@hangcheck.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-kbl-r/igt@i915_selftest@live@hangcheck.html
    - fi-glk-dsi:         [PASS][31] -> [INCOMPLETE][32] ([i915#58] / [k.org#198133])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-x1275:       [PASS][33] -> [INCOMPLETE][34] ([fdo#108744])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-kbl-x1275/igt@i915_selftest@live@hangcheck.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-kbl-x1275/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-guc:         [INCOMPLETE][35] ([i915#151]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-skl-guc/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#108744]: https://bugs.freedesktop.org/show_bug.cgi?id=108744
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (48 -> 42)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8391 -> Patchwork_17511

  CI-20190529: 20190529
  CI_DRM_8391: 9cada6f702d618458eb6dda220f5cfefe655f475 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17511: 7bc58c8c06577b30f52c1e5b270a4aff0b90eb1c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7bc58c8c0657 drm/i915/gt: Stop keeping the pinned_default_state
26b4faff2de3 drm/i915/gt: Keep a no-frills swappable copy of the default context state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
