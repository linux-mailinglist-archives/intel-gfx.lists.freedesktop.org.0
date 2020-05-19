Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A05AA1DA511
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 01:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E9366E3A4;
	Tue, 19 May 2020 23:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 249226E3A4;
 Tue, 19 May 2020 23:00:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 15633A0099;
 Tue, 19 May 2020 23:00:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swathi Dhanavanthri" <swathi.dhanavanthri@intel.com>
Date: Tue, 19 May 2020 23:00:32 -0000
Message-ID: <158992923208.31237.4256999121784438163@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519162534.10035-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200519162534.10035-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Wa=5F22010271021_=28rev2=29?=
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

Series: drm/i915/ehl: Wa_22010271021 (rev2)
URL   : https://patchwork.freedesktop.org/series/77428/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8506 -> Patchwork_17716
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/index.html

Known issues
------------

  Here are the changes found in Patchwork_17716 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-8809g:       [INCOMPLETE][1] ([i915#1874]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/fi-kbl-8809g/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][3] ([fdo#109271]) -> [FAIL][4] ([i915#62])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (49 -> 42)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-tgl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8506 -> Patchwork_17716

  CI-20190529: 20190529
  CI_DRM_8506: d6a73e9084ff6adfabbad014bc294d254484f304 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5661: a772a7c7a761c6125bc0af5284ad603478107737 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17716: 60adbb75a3d8f272c58ce2f5dc5bded2a5b2dc79 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

60adbb75a3d8 drm/i915/ehl: Wa_22010271021

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
