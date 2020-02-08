Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 065741562D9
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 05:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F11886E169;
	Sat,  8 Feb 2020 04:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AEB156E162;
 Sat,  8 Feb 2020 04:21:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A58EDA00C7;
 Sat,  8 Feb 2020 04:21:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Sat, 08 Feb 2020 04:21:26 -0000
Message-ID: <158113568664.30228.11432873969879191059@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200208035132.12587-1-ramalingam.c@intel.com>
In-Reply-To: <20200208035132.12587-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/hdcp=3A_optimizing_the_srm_handling_=28rev4=29?=
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

Series: drm/hdcp: optimizing the srm handling (rev4)
URL   : https://patchwork.freedesktop.org/series/72312/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7890 -> Patchwork_16493
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16493/index.html

Known issues
------------

  Here are the changes found in Patchwork_16493 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7890/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16493/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][3] -> [DMESG-FAIL][4] ([fdo#108569])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7890/fi-icl-y/igt@i915_selftest@live_execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16493/fi-icl-y/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@fds:
    - fi-hsw-4770:        [INCOMPLETE][5] ([i915#694]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7890/fi-hsw-4770/igt@gem_exec_parallel@fds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16493/fi-hsw-4770/igt@gem_exec_parallel@fds.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][7] ([i915#178]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7890/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16493/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694


Participating hosts (43 -> 41)
------------------------------

  Additional (6): fi-bsw-n3050 fi-bwr-2160 fi-ilk-650 fi-whl-u fi-gdg-551 fi-bsw-nick 
  Missing    (8): fi-bxt-dsi fi-tgl-dsi fi-hsw-4200u fi-byt-squawks fi-ctg-p8600 fi-ivb-3770 fi-byt-clapper fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7890 -> Patchwork_16493

  CI-20190529: 20190529
  CI_DRM_7890: 899e9275eea175cdf4a61acf78b498eb337d496e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5426: 973bbbff388b555ac647777460ee8db043380fe5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16493: 108c30f29a4c6291bc3025ae34c2dd6115c290bd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

108c30f29a4c drm/hdcp: optimizing the srm handling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16493/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
