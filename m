Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BDF1722A7
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 16:57:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0FCE89D99;
	Thu, 27 Feb 2020 15:57:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 51A9C89D99;
 Thu, 27 Feb 2020 15:56:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A5B7A3ECB;
 Thu, 27 Feb 2020 15:56:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 27 Feb 2020 15:56:59 -0000
Message-ID: <158281901927.29656.7780509672280564809@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmVm?=
 =?utf-8?q?actor_Gen11+_SAGV_support_=28rev6=29?=
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

Series: Refactor Gen11+ SAGV support (rev6)
URL   : https://patchwork.freedesktop.org/series/73856/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8018 -> Patchwork_16732
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/index.html

Known issues
------------

  Here are the changes found in Patchwork_16732 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_busy@basic@flip:
    - fi-skl-guc:         [PASS][1] -> [DMESG-WARN][2] ([i915#88]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/fi-skl-guc/igt@kms_busy@basic@flip.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/fi-skl-guc/igt@kms_busy@basic@flip.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-s:           [PASS][3] -> [DMESG-WARN][4] ([i915#95]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/fi-cml-s/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/fi-cml-s/igt@kms_frontbuffer_tracking@basic.html
    - fi-cml-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#95]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
    - fi-kbl-7500u:       [PASS][7] -> [DMESG-WARN][8] ([i915#93] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/fi-kbl-7500u/igt@kms_frontbuffer_tracking@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/fi-kbl-7500u/igt@kms_frontbuffer_tracking@basic.html
    - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10] ([i915#95]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][11] ([fdo#111096] / [i915#323]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (49 -> 41)
------------------------------

  Additional (1): fi-byt-n2820 
  Missing    (9): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-x1275 fi-skl-lmem fi-tgl-y fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8018 -> Patchwork_16732

  CI-20190529: 20190529
  CI_DRM_8018: d2d7fd43fafd159b7d9d957340e4ed9775ab20b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5473: d22b3507ff2678a05d69d47c0ddf6f0e72ee7ffd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16732: 92ef8dc6a4f25ddc463b7cc74d4dfafe8913e708 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

92ef8dc6a4f2 drm/i915: Enable SAGV support for Gen12
227852eaaaf7 drm/i915: Restrict qgv points which don't have enough bandwidth.
8b626dac4931 drm/i915: Added required new PCode commands
0aad2ca03244 drm/i915: Refactor intel_can_enable_sagv
1f6cb30bce42 drm/i915: Introduce more *_state_changed indicators
bb8fb326c38f drm/i915: Add intel_bw_get_*_state helpers
81ddfe1ca471 drm/i915: Introduce skl_plane_wm_level accessor.
a72659eb4666 drm/i915: Start passing latency as parameter

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
