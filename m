Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F1F1C48E1
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 23:20:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08A1E6E49C;
	Mon,  4 May 2020 21:20:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5FC476E49C;
 Mon,  4 May 2020 21:20:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58746A0078;
 Mon,  4 May 2020 21:20:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 04 May 2020 21:20:44 -0000
Message-ID: <158862724433.5816.3309473881719245280@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504181600.18503-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200504181600.18503-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUHJl?=
 =?utf-8?q?fer_drm=5FWARN*_over_WARN*_=28rev3=29?=
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

Series: Prefer drm_WARN* over WARN* (rev3)
URL   : https://patchwork.freedesktop.org/series/75543/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8424 -> Patchwork_17575
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17575/index.html

Known issues
------------

  Here are the changes found in Patchwork_17575 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][1] ([i915#62]) -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8424/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17575/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8424 -> Patchwork_17575

  CI-20190529: 20190529
  CI_DRM_8424: 69ecf47ef1aabcdc8a4e070584d0a717bbabf4fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17575: 5f984d13c80e508c7cdc67f51e18f102d5ac309f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5f984d13c80e drm/i915/runtime_pm: Prefer drm_WARN* over WARN*
fd2a05cb030c drm/i915/pm: Prefer drm_WARN_ON over WARN_ON
adfccabbfb60 drm/i915/pmu: Prefer drm_WARN_ON over WARN_ON
57cd2a85fcd4 drm/i915/i915_drv: Prefer drm_WARN_ON over WARN_ON
f41a15c05f60 drm/i915/gem: Prefer drm_WARN* over WARN*
700fd559057c drm/i915/display/tc: Prefer drm_WARN_ON over WARN_ON
6f400e74f722 drm/i915/display/sdvo: Prefer drm_WARN* over WARN*
1007d6a2e1d7 drm/i915/display/dp: Prefer drm_WARN* over WARN*
e13909e4cad6 drm/i915/display/display_power: Prefer drm_WARN_ON over WARN_ON

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17575/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
