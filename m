Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A86E31B2403
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 12:41:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1688966B;
	Tue, 21 Apr 2020 10:41:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 10F24892DB;
 Tue, 21 Apr 2020 10:41:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D3ACCA0019;
 Tue, 21 Apr 2020 10:41:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Apr 2020 10:41:26 -0000
Message-ID: <158746568683.17662.5035159136442890309@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200421085939.31410-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200421085939.31410-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Poison_residual_state_=5BHWSP=5D_across_resume=2E_?=
 =?utf-8?b?KHJldjUp?=
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

Series: drm/i915/gt: Poison residual state [HWSP] across resume. (rev5)
URL   : https://patchwork.freedesktop.org/series/76100/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8342 -> Patchwork_17399
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/index.html

Known issues
------------

  Here are the changes found in Patchwork_17399 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-apl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#1751])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/fi-apl-guc/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([i915#976])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-glk-dsi:         [DMESG-FAIL][5] ([i915#1751]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-y:           [DMESG-FAIL][7] ([i915#1744]) -> [DMESG-FAIL][8] ([i915#1759])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-tgl-y/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/fi-tgl-y/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1744]: https://gitlab.freedesktop.org/drm/intel/issues/1744
  [i915#1751]: https://gitlab.freedesktop.org/drm/intel/issues/1751
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (48 -> 42)
------------------------------

  Missing    (6): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8342 -> Patchwork_17399

  CI-20190529: 20190529
  CI_DRM_8342: 17407a9f61a0ee402254522e391a626acc4375ec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17399: fb5af459320991b4c67465de380617bc24bb1a2e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fb5af4593209 drm/i915/gt: Poison residual state [HWSP] across resume.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
