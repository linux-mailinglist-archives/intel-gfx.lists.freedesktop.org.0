Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B133146102
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 04:42:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BEE46F979;
	Thu, 23 Jan 2020 03:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C95466F978;
 Thu, 23 Jan 2020 03:42:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BFCE0A011C;
 Thu, 23 Jan 2020 03:42:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 23 Jan 2020 03:42:08 -0000
Message-ID: <157975092875.1144.5044445960526158024@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122201822.889250-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200122201822.889250-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Poison_GTT_scratch_pages_=28rev2=29?=
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

Series: drm/i915/gt: Poison GTT scratch pages (rev2)
URL   : https://patchwork.freedesktop.org/series/72423/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7799 -> Patchwork_16221
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16221 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16221, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16221:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@fds:
    - fi-hsw-peppy:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-peppy/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-hsw-peppy/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-apl-guc:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-apl-guc/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-apl-guc/igt@i915_selftest@live_gem_contexts.html
    - fi-skl-lmem:        [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
    - fi-bxt-dsi:         [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-bxt-dsi/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-bxt-dsi/igt@i915_selftest@live_gem_contexts.html
    - fi-icl-u2:          [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-icl-u2/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-icl-u2/igt@i915_selftest@live_gem_contexts.html
    - fi-skl-6600u:       [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-skl-6600u/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-skl-6600u/igt@i915_selftest@live_gem_contexts.html
    - fi-cml-u2:          [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-cml-u2/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-cml-u2/igt@i915_selftest@live_gem_contexts.html
    - fi-whl-u:           [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-whl-u/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-whl-u/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-8700k:       [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-icl-dsi:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-icl-dsi/igt@i915_selftest@live_gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-icl-dsi/igt@i915_selftest@live_gem_contexts.html
    - fi-kbl-guc:         [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-kbl-guc/igt@i915_selftest@live_gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-kbl-guc/igt@i915_selftest@live_gem_contexts.html
    - fi-kbl-7500u:       [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-kbl-7500u/igt@i915_selftest@live_gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-kbl-7500u/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-4770:        [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html
    - fi-skl-guc:         [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-skl-guc/igt@i915_selftest@live_gem_contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-skl-guc/igt@i915_selftest@live_gem_contexts.html
    - fi-bdw-5557u:       [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-bdw-5557u/igt@i915_selftest@live_gem_contexts.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-bdw-5557u/igt@i915_selftest@live_gem_contexts.html
    - fi-kbl-r:           [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-kbl-r/igt@i915_selftest@live_gem_contexts.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-kbl-r/igt@i915_selftest@live_gem_contexts.html
    - fi-icl-y:           [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-icl-y/igt@i915_selftest@live_gem_contexts.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-icl-y/igt@i915_selftest@live_gem_contexts.html
    - fi-kbl-8809g:       [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-kbl-8809g/igt@i915_selftest@live_gem_contexts.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-kbl-8809g/igt@i915_selftest@live_gem_contexts.html
    - fi-glk-dsi:         NOTRUN -> [DMESG-FAIL][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-glk-dsi/igt@i915_selftest@live_gem_contexts.html
    - fi-tgl-y:           [PASS][38] -> [DMESG-FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-tgl-y/igt@i915_selftest@live_gem_contexts.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-tgl-y/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-4770r:       [PASS][40] -> [DMESG-FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html
    - fi-icl-u3:          [PASS][42] -> [DMESG-FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-icl-u3/igt@i915_selftest@live_gem_contexts.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-icl-u3/igt@i915_selftest@live_gem_contexts.html
    - fi-kbl-x1275:       [PASS][44] -> [DMESG-FAIL][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
    - fi-skl-6700k2:      [PASS][46] -> [DMESG-FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-skl-6700k2/igt@i915_selftest@live_gem_contexts.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-skl-6700k2/igt@i915_selftest@live_gem_contexts.html
    - fi-icl-guc:         [PASS][48] -> [DMESG-FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-icl-guc/igt@i915_selftest@live_gem_contexts.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-icl-guc/igt@i915_selftest@live_gem_contexts.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_gem_contexts:
    - {fi-tgl-u}:         [PASS][50] -> [DMESG-FAIL][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-tgl-u/igt@i915_selftest@live_gem_contexts.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-tgl-u/igt@i915_selftest@live_gem_contexts.html
    - {fi-kbl-7560u}:     NOTRUN -> [DMESG-FAIL][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-kbl-7560u/igt@i915_selftest@live_gem_contexts.html
    - {fi-ehl-1}:         [PASS][53] -> [DMESG-FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-ehl-1/igt@i915_selftest@live_gem_contexts.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-ehl-1/igt@i915_selftest@live_gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16221 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [PASS][55] -> [DMESG-WARN][56] ([i915#889])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][57] ([i915#553] / [i915#725]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][59] ([i915#505] / [i915#671]) -> [DMESG-WARN][60] ([i915#889])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (50 -> 45)
------------------------------

  Additional (3): fi-kbl-7560u fi-glk-dsi fi-ilk-650 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7799 -> Patchwork_16221

  CI-20190529: 20190529
  CI_DRM_7799: 0f8a46a25a7781ef6ede604c9cb50f82cfb5e960 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5377: 1e6cb3e75925cf623df04f78430ae9299632ec3f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16221: 58d849b5ac8cc5d37f94d8e0ef6b5b1b691b3ff7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

58d849b5ac8c drm/i915/gt: Poison GTT scratch pages

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16221/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
