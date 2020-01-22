Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D129814575B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 15:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 298CB6E514;
	Wed, 22 Jan 2020 14:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 052E06E4D7;
 Wed, 22 Jan 2020 14:02:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1330A0087;
 Wed, 22 Jan 2020 14:02:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 22 Jan 2020 14:02:02 -0000
Message-ID: <157970172295.22393.2293367609319315894@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122124154.483444-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200122124154.483444-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Include_a_tell-tale_for_engine_parking?=
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

Series: drm/i915/gt: Include a tell-tale for engine parking
URL   : https://patchwork.freedesktop.org/series/72392/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7790 -> Patchwork_16209
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16209 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16209, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16209:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_workarounds:
    - fi-skl-6600u:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/fi-skl-6600u/igt@i915_selftest@live_workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_16209 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-6700k2:      [PASS][2] -> [FAIL][3] ([fdo#103375]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-skl-6700k2:      [PASS][4] -> [INCOMPLETE][5] ([i915#69])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-skl-6700k2/igt@gem_exec_suspend@basic-s4-devices.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/fi-skl-6700k2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-n3050:       [PASS][6] -> [DMESG-FAIL][7] ([i915#723])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-bsw-n3050/igt@i915_selftest@live_blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/fi-bsw-n3050/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [PASS][8] -> [DMESG-FAIL][9] ([i915#725])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-icl-u2:          [PASS][10] -> [DMESG-WARN][11] ([i915#289])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-icl-u2/igt@kms_chamelium@dp-hpd-fast.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/fi-icl-u2/igt@kms_chamelium@dp-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [INCOMPLETE][12] ([i915#45]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [INCOMPLETE][14] ([i915#671]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-peppy:       [DMESG-FAIL][16] ([i915#553] / [i915#725]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-hsw-peppy/igt@i915_selftest@live_blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/fi-hsw-peppy/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][18] ([i915#424]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][20] ([i915#44]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-icl-dsi:         [DMESG-WARN][22] ([i915#109]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-icl-dsi/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/fi-icl-dsi/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][24] ([i915#770]) -> [DMESG-FAIL][25] ([i915#553] / [i915#725])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770


Participating hosts (39 -> 38)
------------------------------

  Additional (5): fi-glk-dsi fi-cfl-guc fi-kbl-guc fi-icl-u3 fi-skl-6600u 
  Missing    (6): fi-kbl-soraka fi-cml-u2 fi-byt-squawks fi-bsw-cyan fi-elk-e7500 fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7790 -> Patchwork_16209

  CI-20190529: 20190529
  CI_DRM_7790: 854ee1f2aa71a3aad01bd4e45f9e9c4cf9ad47f9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5377: 1e6cb3e75925cf623df04f78430ae9299632ec3f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16209: 71554eb2501eead4bbd9b147bbd7b98f9b3700d1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

71554eb2501e drm/i915/gt: Include a tell-tale for engine parking

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16209/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
