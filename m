Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF9019B752
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 22:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 529C689DA9;
	Wed,  1 Apr 2020 20:56:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9AA9E89D3E;
 Wed,  1 Apr 2020 20:56:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95A92A0099;
 Wed,  1 Apr 2020 20:56:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Apr 2020 20:56:43 -0000
Message-ID: <158577460359.25628.3168047566135252934@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200401185834.20595-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200401185834.20595-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Try_allocating_va_from_free_space_=28rev3=29?=
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

Series: drm/i915/gem: Try allocating va from free space (rev3)
URL   : https://patchwork.freedesktop.org/series/74748/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8233 -> Patchwork_17171
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/index.html

Known issues
------------

  Here are the changes found in Patchwork_17171 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [PASS][1] -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_busy@basic@modeset:
    - fi-kbl-x1275:       [PASS][3] -> [DMESG-FAIL][4] ([i915#62])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-kbl-x1275/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/fi-kbl-x1275/igt@kms_busy@basic@modeset.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-cml-u2:          [PASS][5] -> [DMESG-WARN][6] ([IGT#4])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-WARN][8] ([i915#62] / [i915#92]) +21 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [PASS][9] -> [DMESG-WARN][10] ([i915#62] / [i915#92] / [i915#95]) +9 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 36)
------------------------------

  Additional (2): fi-bdw-gvtdvm fi-gdg-551 
  Missing    (13): fi-tgl-dsi fi-bsw-n3050 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-kbl-7500u fi-ctg-p8600 fi-elk-e7500 fi-skl-lmem fi-bdw-samus fi-byt-clapper fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8233 -> Patchwork_17171

  CI-20190529: 20190529
  CI_DRM_8233: 0862243a5514a9da625520bd4f554f8348077594 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5553: 60475d9b41c58b7d256e83c7d53eaf7c2f1f8ecc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17171: ea63499c8e784ef283f7ee9ce0a1e103b07c1174 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ea63499c8e78 drm/i915/gem: Try allocating va from free space

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
