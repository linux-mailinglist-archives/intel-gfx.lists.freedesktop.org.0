Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D1D1DE306
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 11:27:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD2C06E3F0;
	Fri, 22 May 2020 09:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 477486E39C;
 Fri, 22 May 2020 09:27:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 411D6A0019;
 Fri, 22 May 2020 09:27:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 May 2020 09:27:12 -0000
Message-ID: <159013963223.3047.352183019727601978@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200522083451.7448-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200522083451.7448-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgYWdw?=
 =?utf-8?q?/intel=3A_Fix_a_memory_leak_on_module_initialisation_failure?=
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

Series: agp/intel: Fix a memory leak on module initialisation failure
URL   : https://patchwork.freedesktop.org/series/77550/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8524 -> Patchwork_17756
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17756/index.html

Known issues
------------

  Here are the changes found in Patchwork_17756 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][1] ([i915#62] / [i915#95]) -> [FAIL][2] ([i915#62])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8524/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17756/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (45 -> 40)
------------------------------

  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_8524 -> Patchwork_17756

  CI-20190529: 20190529
  CI_DRM_8524: 14a61eda3439d0655e4438f77310479a6da8c583 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5673: f37cd37470612616f65914bca35497ca13aeb11a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17756: 118686605b3f2e1282b5842c05c1afb086057936 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

118686605b3f agp/intel: Fix a memory leak on module initialisation failure

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17756/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
