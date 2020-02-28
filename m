Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5B7172F93
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 04:54:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD9C6EDDD;
	Fri, 28 Feb 2020 03:54:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 51B906EDD3;
 Fri, 28 Feb 2020 03:54:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A616A7525;
 Fri, 28 Feb 2020 03:54:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 28 Feb 2020 03:54:01 -0000
Message-ID: <158286204128.7477.7276356554017651782@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227231458.76159-1-matthew.d.roper@intel.com>
In-Reply-To: <20200227231458.76159-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Handle_all_MCR_ranges?=
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

Series: series starting with [1/2] drm/i915: Handle all MCR ranges
URL   : https://patchwork.freedesktop.org/series/74047/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8023 -> Patchwork_16751
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16751 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16751, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16751/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16751:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@mman:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/fi-bwr-2160/igt@i915_selftest@live@mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16751/fi-bwr-2160/igt@i915_selftest@live@mman.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-u}:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16751/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16751 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [FAIL][4] ([i915#217] / [i915#976]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16751/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][6] ([fdo#111096] / [i915#323]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16751/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (46 -> 42)
------------------------------

  Additional (4): fi-blb-e6850 fi-bdw-5557u fi-ivb-3770 fi-snb-2600 
  Missing    (8): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-cfl-8109u fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8023 -> Patchwork_16751

  CI-20190529: 20190529
  CI_DRM_8023: fa9a02bbdfd6553ee633171f23183a115d0da577 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5474: 1be610f852de155cd915e7cda65cb2737adf04d4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16751: 87b8254c6b418a4cdb7061e9db351339dae1ae7a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

87b8254c6b41 drm/i915: Apply Wa_1406680159:icl, ehl as an engine workaround
3cc869559832 drm/i915: Handle all MCR ranges

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16751/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
