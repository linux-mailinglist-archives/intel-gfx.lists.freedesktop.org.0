Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F15BB19DC4C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 19:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F3DA6EC29;
	Fri,  3 Apr 2020 17:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C31C56EC27;
 Fri,  3 Apr 2020 17:01:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB866A41FB;
 Fri,  3 Apr 2020 17:01:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Apr 2020 17:01:55 -0000
Message-ID: <158593331574.13352.2322503506007581339@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403160951.8271-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200403160951.8271-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Revoke_mmap_before_fence?=
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

Series: drm/i915: Revoke mmap before fence
URL   : https://patchwork.freedesktop.org/series/75470/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8247 -> Patchwork_17202
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/index.html

Known issues
------------

  Here are the changes found in Patchwork_17202 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#656])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [PASS][3] -> [SKIP][4] ([fdo#109271]) +18 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  
#### Possible fixes ####

  * igt@gem_tiled_fence_blits@basic:
    - fi-blb-e6850:       [DMESG-WARN][5] ([i915#1612]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [DMESG-WARN][7] ([i915#203]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/fi-skl-6770hq/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-icl-dsi:         [INCOMPLETE][9] ([i915#189]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/fi-icl-dsi/igt@i915_pm_rpm@basic-rte.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/fi-icl-dsi/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@execlists:
    - fi-skl-guc:         [INCOMPLETE][11] ([i915#656]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/fi-skl-guc/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [FAIL][13] ([i915#976]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Warnings ####

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-skl-6770hq:      [DMESG-WARN][15] ([i915#106]) -> [SKIP][16] ([fdo#109271])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#1612]: https://gitlab.freedesktop.org/drm/intel/issues/1612
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (51 -> 45)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8247 -> Patchwork_17202

  CI-20190529: 20190529
  CI_DRM_8247: 4ceaa00bfb032d9f29a485596fbc02fdeab06bc9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5562: 4770480c8c1f105ff9225e8eb07b652ca954e06a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17202: fc8f69a629a3d787065ea17a3ad8cd91ae53429f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fc8f69a629a3 drm/i915: Revoke mmap before fence

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17202/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
