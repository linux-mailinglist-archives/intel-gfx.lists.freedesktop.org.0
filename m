Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DC31B24A5
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 13:09:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E4096E911;
	Tue, 21 Apr 2020 11:09:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C04C46E895;
 Tue, 21 Apr 2020 11:09:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BAFB6A008A;
 Tue, 21 Apr 2020 11:09:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Apr 2020 11:09:44 -0000
Message-ID: <158746738476.17663.4418411018091878541@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420232618.10748-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200420232618.10748-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Prefer_soft-rc6_over_RPS_DOWN=5FTIMEOUT_=28rev3=29?=
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

Series: drm/i915/gt: Prefer soft-rc6 over RPS DOWN_TIMEOUT (rev3)
URL   : https://patchwork.freedesktop.org/series/76216/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8342 -> Patchwork_17400
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17400/index.html

Known issues
------------

  Here are the changes found in Patchwork_17400 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][1] -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17400/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-glk-dsi:         [DMESG-FAIL][3] ([i915#1751]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17400/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-y:           [DMESG-FAIL][5] ([i915#1744]) -> [DMESG-FAIL][6] ([i915#1759])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-tgl-y/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17400/fi-tgl-y/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1744]: https://gitlab.freedesktop.org/drm/intel/issues/1744
  [i915#1751]: https://gitlab.freedesktop.org/drm/intel/issues/1751
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759


Participating hosts (48 -> 42)
------------------------------

  Missing    (6): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8342 -> Patchwork_17400

  CI-20190529: 20190529
  CI_DRM_8342: 17407a9f61a0ee402254522e391a626acc4375ec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17400: 4ca7f34aac20b70957dc30b6f20d2ca232836b43 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4ca7f34aac20 drm/i915/gt: Prefer soft-rc6 over RPS DOWN_TIMEOUT

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17400/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
