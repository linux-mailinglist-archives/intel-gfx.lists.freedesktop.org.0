Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A25D172417
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 17:56:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B887D6E952;
	Thu, 27 Feb 2020 16:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 45DC66E950;
 Thu, 27 Feb 2020 16:56:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D44DA00FD;
 Thu, 27 Feb 2020 16:56:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Thu, 27 Feb 2020 16:56:02 -0000
Message-ID: <158282256221.29658.8813336489690698256@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227124356.1625616-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200227124356.1625616-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_reintroduce_wait_on_OA_configuration_completion?=
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

Series: drm/i915/perf: reintroduce wait on OA configuration completion
URL   : https://patchwork.freedesktop.org/series/74014/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8019 -> Patchwork_16733
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16733/index.html

Known issues
------------

  Here are the changes found in Patchwork_16733 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] ([fdo#111096] / [i915#323])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16733/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bxt-dsi:         [DMESG-FAIL][3] ([fdo#112406]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16733/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - {fi-tgl-u}:         [DMESG-FAIL][5] ([i915#1233]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/fi-tgl-u/igt@i915_selftest@live@gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16733/fi-tgl-u/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][7] ([i915#217]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16733/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323


Participating hosts (47 -> 43)
------------------------------

  Additional (3): fi-byt-n2820 fi-bdw-5557u fi-bwr-2160 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-x1275 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8019 -> Patchwork_16733

  CI-20190529: 20190529
  CI_DRM_8019: c1fc892b1456a3b2b7f11482e52a126cc3ebedba @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5473: d22b3507ff2678a05d69d47c0ddf6f0e72ee7ffd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16733: 9c67fa7e5fe967c01adda295714d355192a01590 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9c67fa7e5fe9 drm/i915/perf: reintroduce wait on OA configuration completion

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16733/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
