Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 679731AB1F4
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 21:45:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A3B6E291;
	Wed, 15 Apr 2020 19:45:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CD556E28E;
 Wed, 15 Apr 2020 19:45:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06A13A00E6;
 Wed, 15 Apr 2020 19:45:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 15 Apr 2020 19:45:39 -0000
Message-ID: <158697993999.21014.12363463700452346359@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415191408.82574-1-jose.souza@intel.com>
In-Reply-To: <20200415191408.82574-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_missing_deinitialization_cases_of_load_failure?=
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

Series: drm/i915: Add missing deinitialization cases of load failure
URL   : https://patchwork.freedesktop.org/series/75987/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8302 -> Patchwork_17316
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/index.html

Known issues
------------

  Here are the changes found in Patchwork_17316 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][1] ([i915#62] / [i915#95]) -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (52 -> 45)
------------------------------

  Missing    (7): fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8302 -> Patchwork_17316

  CI-20190529: 20190529
  CI_DRM_8302: e022648f1633f24b4ec326805f1de22209826519 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5591: f57b7fdbe8d04ce3edf0433a03c7d9d5c3d96680 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17316: 40cdb21a2c1ee7f94a8f8754870d0d3ee3b85f11 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

40cdb21a2c1e drm/i915: Add missing deinitialization cases of load failure

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
