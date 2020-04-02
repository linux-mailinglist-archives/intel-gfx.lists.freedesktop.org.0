Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5B619BFBC
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 12:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B7C26EA4C;
	Thu,  2 Apr 2020 10:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C6D856EA4C;
 Thu,  2 Apr 2020 10:57:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1423A0071;
 Thu,  2 Apr 2020 10:57:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Date: Thu, 02 Apr 2020 10:57:26 -0000
Message-ID: <158582504678.24295.10912920086901229700@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402101906.26770-1-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20200402101906.26770-1-janusz.krzysztofik@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Suppress_page_allocation_warnings_on_engine_park?=
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

Series: drm/i915: Suppress page allocation warnings on engine park
URL   : https://patchwork.freedesktop.org/series/75409/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8236 -> Patchwork_17178
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17178 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17178, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17178/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17178:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_fence_blits@basic:
    - fi-blb-e6850:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17178/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html

  
#### Warnings ####

  * igt@kms_busy@basic@modeset:
    - fi-kbl-x1275:       [DMESG-FAIL][3] ([i915#62]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-x1275/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17178/fi-kbl-x1275/igt@kms_busy@basic@modeset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_wait@busy@all}:
    - fi-elk-e7500:       NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17178/fi-elk-e7500/igt@gem_wait@busy@all.html

  
Known issues
------------

  Here are the changes found in Patchwork_17178 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           [PASS][6] -> [INCOMPLETE][7] ([CI#80] / [i915#656])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-r/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17178/fi-kbl-r/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][8] ([i915#62] / [i915#92]) -> [DMESG-WARN][9] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17178/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][10] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][11] ([i915#62] / [i915#92]) +7 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17178/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 43)
------------------------------

  Additional (4): fi-hsw-peppy fi-skl-6770hq fi-skl-6600u fi-elk-e7500 
  Missing    (8): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8236 -> Patchwork_17178

  CI-20190529: 20190529
  CI_DRM_8236: 698ce59acca37b93bfcdee6899504be3eb113097 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5556: 311cb1b360b7ae00fab80b822cd34fd512f08ce9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17178: cf5934e7db8c89fad1381a644c22439a1d0df70e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cf5934e7db8c drm/i915: Suppress page allocation warnings on engine park

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17178/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
