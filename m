Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C461F14612D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 05:36:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21AC96F9A1;
	Thu, 23 Jan 2020 04:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5431B6F9A1;
 Thu, 23 Jan 2020 04:36:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4BED1A0119;
 Thu, 23 Jan 2020 04:36:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Thu, 23 Jan 2020 04:36:38 -0000
Message-ID: <157975419828.1147.15823178396975631521@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122234027.9373-1-anusha.srivatsa@intel.com>
In-Reply-To: <20200122234027.9373-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Implement_Wa=5F1606931601?=
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

Series: drm/i915/tgl: Implement Wa_1606931601
URL   : https://patchwork.freedesktop.org/series/72433/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7799 -> Patchwork_16223
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16223 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16223, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16223/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16223:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16223/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_workarounds:
    - fi-tgl-y:           [PASS][2] -> [DMESG-FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-tgl-y/igt@i915_selftest@live_workarounds.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16223/fi-tgl-y/igt@i915_selftest@live_workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_workarounds:
    - {fi-tgl-u}:         [PASS][4] -> [DMESG-FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-tgl-u/igt@i915_selftest@live_workarounds.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16223/fi-tgl-u/igt@i915_selftest@live_workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_16223 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [PASS][6] -> [INCOMPLETE][7] ([i915#671])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16223/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][8] -> [DMESG-FAIL][9] ([i915#553] / [i915#725])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16223/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         [PASS][10] -> [DMESG-WARN][11] ([i915#889]) +23 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-bxt-dsi/igt@i915_selftest@live_mman.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16223/fi-bxt-dsi/igt@i915_selftest@live_mman.html

  * igt@i915_selftest@live_reset:
    - fi-bxt-dsi:         [PASS][12] -> [DMESG-FAIL][13] ([i915#889]) +7 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-bxt-dsi/igt@i915_selftest@live_reset.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16223/fi-bxt-dsi/igt@i915_selftest@live_reset.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][14] ([i915#45]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16223/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][16] ([i915#505] / [i915#671]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16223/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][18] ([i915#553] / [i915#725]) -> [DMESG-FAIL][19] ([i915#563])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16223/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (50 -> 45)
------------------------------

  Additional (2): fi-glk-dsi fi-ilk-650 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7799 -> Patchwork_16223

  CI-20190529: 20190529
  CI_DRM_7799: 0f8a46a25a7781ef6ede604c9cb50f82cfb5e960 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5377: 1e6cb3e75925cf623df04f78430ae9299632ec3f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16223: 57155b45b5763f4b0ecf37c4bca111565219a2fd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

57155b45b576 drm/i915/tgl: Implement Wa_1606931601

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16223/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
