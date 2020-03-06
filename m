Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA6A17C41C
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 18:19:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBFCD6E4C7;
	Fri,  6 Mar 2020 17:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9BDA26E4C7;
 Fri,  6 Mar 2020 17:19:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97105A0094;
 Fri,  6 Mar 2020 17:19:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Fri, 06 Mar 2020 17:19:09 -0000
Message-ID: <158351514961.3083.8498512795027214540@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306100557.2077450-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200306100557.2077450-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/3=5D_drm/i915/perf=3A_remove_genera?=
 =?utf-8?q?ted_code?=
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

Series: series starting with [v4,1/3] drm/i915/perf: remove generated code
URL   : https://patchwork.freedesktop.org/series/74379/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8084 -> Patchwork_16858
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16858 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16858, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16858/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16858:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@fds:
    - fi-cfl-8700k:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8084/fi-cfl-8700k/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16858/fi-cfl-8700k/igt@gem_exec_parallel@fds.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16858/fi-byt-j1900/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16858 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([CI#94] / [i915#402]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8084/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16858/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  
#### Possible fixes ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][6] ([i915#217]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8084/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16858/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [DMESG-WARN][8] ([CI#94] / [i915#402]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8084/fi-tgl-y/igt@vgem_basic@setversion.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16858/fi-tgl-y/igt@vgem_basic@setversion.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45


Participating hosts (41 -> 39)
------------------------------

  Additional (5): fi-skl-6770hq fi-glk-dsi fi-elk-e7500 fi-bsw-kefka fi-skl-6700k2 
  Missing    (7): fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-ctg-p8600 fi-gdg-551 fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8084 -> Patchwork_16858

  CI-20190529: 20190529
  CI_DRM_8084: 36d1d55dd2ae3d50a3ff1899e576b567be7b7530 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5496: 00a8e400876f2c27f62ed7d418be6b55738a4ea6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16858: a2d1de8ada3c78af0f68229616894812fe683157 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a2d1de8ada3c drm/i915/perf: introduce global sseu pinning
3a6512ad9340 drm/i915/perf: remove redundant power configuration register override
d4ffbb0b3484 drm/i915/perf: remove generated code

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16858/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
