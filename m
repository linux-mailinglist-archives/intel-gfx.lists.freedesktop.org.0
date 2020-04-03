Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE1719D3A8
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 11:29:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2997A6EB4B;
	Fri,  3 Apr 2020 09:29:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A2A946EB42;
 Fri,  3 Apr 2020 09:29:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B5F8A47E8;
 Fri,  3 Apr 2020 09:29:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Apr 2020 09:29:12 -0000
Message-ID: <158590615263.13350.3589535356082409562@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403084459.14150-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200403084459.14150-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Check_current_i915=5Fvma=2Epin=5Fcount_status_first_on?=
 =?utf-8?q?_unbind_=28rev4=29?=
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

Series: drm/i915: Check current i915_vma.pin_count status first on unbind (rev4)
URL   : https://patchwork.freedesktop.org/series/72529/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8243 -> Patchwork_17196
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17196 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17196, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17196/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17196:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_mocs:
    - fi-ivb-3770:        NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17196/fi-ivb-3770/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gtt:
    - fi-ilk-650:         [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/fi-ilk-650/igt@i915_selftest@live@gtt.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17196/fi-ilk-650/igt@i915_selftest@live@gtt.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-cml-u2:          [PASS][4] -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/fi-cml-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17196/fi-cml-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17196/fi-ilk-650/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17196 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [INCOMPLETE][7] ([i915#189]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17196/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [INCOMPLETE][9] ([i915#656]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17196/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (41 -> 44)
------------------------------

  Additional (8): fi-skl-6770hq fi-snb-2520m fi-ivb-3770 fi-cfl-8109u fi-skl-lmem fi-kbl-7560u fi-byt-n2820 fi-skl-6600u 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8243 -> Patchwork_17196

  CI-20190529: 20190529
  CI_DRM_8243: 45ccb1b8606b6ba1a5d4f8a8b4dda27bd8dbb04c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5560: 213062c7dcf0cbc8069cbb5f91acbc494def33fd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17196: e6a263b61da901a7c10aca793f55d0d3e1d897e2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e6a263b61da9 drm/i915: Check current i915_vma.pin_count status first on unbind

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17196/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
