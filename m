Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA27812A95D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 01:04:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 640478966B;
	Thu, 26 Dec 2019 00:04:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 611DE89664;
 Thu, 26 Dec 2019 00:04:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5231EA0009;
 Thu, 26 Dec 2019 00:04:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 26 Dec 2019 00:04:31 -0000
Message-ID: <157731867130.14824.1360340718267954096@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191225230703.2498794-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191225230703.2498794-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Stop_poking_at_engine-=3Eserial_at_a_high_level?=
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

Series: drm/i915/gt: Stop poking at engine->serial at a high level
URL   : https://patchwork.freedesktop.org/series/71384/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7634 -> Patchwork_15924
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15924 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15924, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15924/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15924:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_hangcheck:
    - fi-bwr-2160:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15924/fi-bwr-2160/igt@i915_selftest@live_hangcheck.html
    - fi-bsw-kefka:       [PASS][2] -> [DMESG-WARN][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-bsw-kefka/igt@i915_selftest@live_hangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15924/fi-bsw-kefka/igt@i915_selftest@live_hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_15924 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][4] -> [TIMEOUT][5] ([i915#816])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15924/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [PASS][6] -> [INCOMPLETE][7] ([i915#671])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15924/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
    - fi-bxt-dsi:         [PASS][8] -> [INCOMPLETE][9] ([fdo#103927])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15924/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][10] ([i915#505]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15924/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6600u:       [INCOMPLETE][12] ([i915#671] / [i915#69]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15924/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][14] ([i915#725]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15924/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-icl-u2:          [DMESG-WARN][16] -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15924/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][18] ([i915#563]) -> [DMESG-FAIL][19] ([i915#725])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15924/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][20] ([i915#62] / [i915#92]) -> [DMESG-WARN][21] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15924/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][22] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][23] ([i915#62] / [i915#92]) +6 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15924/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 45)
------------------------------

  Additional (6): fi-cfl-guc fi-bwr-2160 fi-kbl-7500u fi-whl-u fi-tgl-y fi-skl-6700k2 
  Missing    (5): fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7634 -> Patchwork_15924

  CI-20190529: 20190529
  CI_DRM_7634: a20d8cd6901aec154de1c0800d5a7f17d43c5b1e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15924: 34b6b812c960510abbfcd95392b91a3e044c4aac @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

34b6b812c960 drm/i915/gt: Stop poking at engine->serial at a high level

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15924/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
