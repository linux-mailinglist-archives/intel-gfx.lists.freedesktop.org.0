Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 163EA1BA562
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 15:49:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25B946E2DA;
	Mon, 27 Apr 2020 13:49:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B6DCF6E2D7;
 Mon, 27 Apr 2020 13:49:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0520A432F;
 Mon, 27 Apr 2020 13:49:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 27 Apr 2020 13:49:32 -0000
Message-ID: <158799537271.26355.4117464748460406665@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200427125721.14030-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200427125721.14030-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Fix_up_clock_frequency_=28rev3=29?=
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

Series: drm/i915/gt: Fix up clock frequency (rev3)
URL   : https://patchwork.freedesktop.org/series/76512/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8372 -> Patchwork_17477
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17477 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17477, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17477/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17477:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-y:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8372/fi-icl-y/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17477/fi-icl-y/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6700k2:      [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8372/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17477/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
    - fi-icl-u2:          [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8372/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17477/fi-icl-u2/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       NOTRUN -> [FAIL][7] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17477/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-y:           [DMESG-FAIL][8] ([i915#1759]) -> [DMESG-FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8372/fi-tgl-y/igt@i915_selftest@live@gt_pm.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17477/fi-tgl-y/igt@i915_selftest@live@gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_pm:
    - {fi-tgl-dsi}:       [DMESG-FAIL][10] ([i915#1759]) -> [DMESG-FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8372/fi-tgl-dsi/igt@i915_selftest@live@gt_pm.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17477/fi-tgl-dsi/igt@i915_selftest@live@gt_pm.html
    - {fi-tgl-u}:         [DMESG-FAIL][12] ([i915#1759]) -> [DMESG-FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8372/fi-tgl-u/igt@i915_selftest@live@gt_pm.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17477/fi-tgl-u/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17477 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-u}:         [DMESG-FAIL][14] ([i915#656]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8372/fi-tgl-u/igt@i915_selftest@live@execlists.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17477/fi-tgl-u/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_pm:
    - fi-cfl-8109u:       [DMESG-FAIL][16] ([i915#1791]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8372/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17477/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1791]: https://gitlab.freedesktop.org/drm/intel/issues/1791
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (49 -> 43)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8372 -> Patchwork_17477

  CI-20190529: 20190529
  CI_DRM_8372: 82c11b773e7d77543950ff67b2561cd984032d14 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5612: c8dc1fd926a550308b971ca7d83fe0a927a38152 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17477: c0b640007ba8c0621c7fe7cb9f82b2a924a78242 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c0b640007ba8 drm/i915/gt: Fix up clock frequency

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17477/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
