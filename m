Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0EC13175E
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 19:18:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 213F96E4FB;
	Mon,  6 Jan 2020 18:18:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8AA676E4FB;
 Mon,  6 Jan 2020 18:18:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 862F3A00E8;
 Mon,  6 Jan 2020 18:18:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Mon, 06 Jan 2020 18:18:11 -0000
Message-ID: <157833469154.24768.15307577817785031416@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106152128.195171-1-jose.souza@intel.com>
In-Reply-To: <20200106152128.195171-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Force_the_state_compute_phase_once_to_enable_P?=
 =?utf-8?b?U1IgKHJldjQp?=
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

Series: drm/i915/display: Force the state compute phase once to enable PSR (rev4)
URL   : https://patchwork.freedesktop.org/series/70000/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7688 -> Patchwork_16006
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16006 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16006, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16006:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][1] ([i915#563]) -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/fi-ivb-3770/igt@i915_selftest@live_blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_16006 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][3] -> [DMESG-FAIL][4] ([i915#563])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_coherency:
    - fi-cfl-guc:         [DMESG-FAIL][5] ([i915#889]) -> [PASS][6] +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/fi-cfl-guc/igt@i915_selftest@live_coherency.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/fi-cfl-guc/igt@i915_selftest@live_coherency.html

  * igt@i915_selftest@live_gt_timelines:
    - fi-cfl-guc:         [DMESG-WARN][7] ([i915#889]) -> [PASS][8] +23 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html

  
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (42 -> 43)
------------------------------

  Additional (6): fi-bwr-2160 fi-gdg-551 fi-skl-lmem fi-kbl-7560u fi-skl-6600u fi-snb-2600 
  Missing    (5): fi-hsw-4770r fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7688 -> Patchwork_16006

  CI-20190529: 20190529
  CI_DRM_7688: 9901bb096bfe4d9bfd843475eef24b563aed835a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16006: 8405cbb665d90b02b4bb13453ece0311b164f2ba @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8405cbb665d9 drm/i915/display: Force the state compute phase once to enable PSR

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
