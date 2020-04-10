Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EA91A44B9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 11:50:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A986ECBC;
	Fri, 10 Apr 2020 09:50:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D67E6ECBB;
 Fri, 10 Apr 2020 09:50:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 775D8A0088;
 Fri, 10 Apr 2020 09:50:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 10 Apr 2020 09:50:54 -0000
Message-ID: <158651225446.10045.18182156875271462967@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200410082525.24733-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200410082525.24733-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Poison_the_async_power_domain_on_shutdown?=
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

Series: drm/i915/display: Poison the async power domain on shutdown
URL   : https://patchwork.freedesktop.org/series/75784/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8289 -> Patchwork_17273
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17273/index.html

Known issues
------------

  Here are the changes found in Patchwork_17273 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#189])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8289/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17273/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-skl-lmem:        [DMESG-WARN][3] ([i915#1688]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8289/fi-skl-lmem/igt@kms_flip@basic-flip-vs-modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17273/fi-skl-lmem/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-skl-lmem:        [DMESG-WARN][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8289/fi-skl-lmem/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17273/fi-skl-lmem/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][7] ([i915#62] / [i915#95]) -> [SKIP][8] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8289/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17273/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1688]: https://gitlab.freedesktop.org/drm/intel/issues/1688
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (52 -> 46)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8289 -> Patchwork_17273

  CI-20190529: 20190529
  CI_DRM_8289: 81e3d7ff72672b6aeadbf9c0b9cc514cec9c889d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5586: 29fad328e6a1b105c8d688cafe19b1b5c19ad0c8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17273: 3905cba6aa5b8debcc6f224057bd6c26fb23c498 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3905cba6aa5b drm/i915/display: Poison the async power domain on shutdown

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17273/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
