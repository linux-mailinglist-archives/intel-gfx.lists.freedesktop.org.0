Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CF911AC99
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 14:58:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB1246EB59;
	Wed, 11 Dec 2019 13:58:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 07EF26EB58;
 Wed, 11 Dec 2019 13:58:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F2138A00FD;
 Wed, 11 Dec 2019 13:58:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Dec 2019 13:58:00 -0000
Message-ID: <157607268096.30627.14891037283497241502@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/5=5D_drm/i915=3A_Fix_cmdparser_drm?=
 =?utf-8?q?=2Edebug?=
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

Series: series starting with [CI,1/5] drm/i915: Fix cmdparser drm.debug
URL   : https://patchwork.freedesktop.org/series/70751/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7540 -> Patchwork_15688
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15688 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15688, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15688/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15688:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_sync@basic-store-all:
    - fi-tgl-y:           NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15688/fi-tgl-y/igt@gem_sync@basic-store-all.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [PASS][2] -> [DMESG-FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15688/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_15688 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][4] -> [FAIL][5] ([i915#178])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15688/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][6] -> [DMESG-FAIL][7] ([i915#725])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15688/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-icl-u2:          [PASS][8] -> [TIMEOUT][9] ([i915#449])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15688/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][10] -> [FAIL][11] ([fdo#111407])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15688/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][12] ([i915#725]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15688/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-u3:          [INCOMPLETE][14] ([fdo#108569] / [i915#140]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-icl-u3/igt@i915_selftest@live_hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15688/fi-icl-u3/igt@i915_selftest@live_hangcheck.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-x1275:       [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][17] ([i915#62] / [i915#92]) +4 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15688/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][18] ([i915#62] / [i915#92]) -> [DMESG-WARN][19] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15688/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#449]: https://gitlab.freedesktop.org/drm/intel/issues/449
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (53 -> 46)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (8): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7540 -> Patchwork_15688

  CI-20190529: 20190529
  CI_DRM_7540: f7af732973915f9e52e939c0a8046f2eb8c6db63 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5343: e3664f8ce1f9152712b32e9bfa1e4ec93ffa5349 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15688: fa5e1faeee3f31fd63c7ab6a4e11d029ad4ff51c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fa5e1faeee3f drm/i915: Align start for memcpy_from_wc
2c1527f75ee4 drm/i915/gem: Tidy up error handling for eb_parse()
37ab9c58f463 drm/i915: Simplify error escape from cmdparser
d6fc56037549 drm/i915: Remove redundant parameters from intel_engine_cmd_parser
932afa9f6249 drm/i915: Fix cmdparser drm.debug

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15688/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
