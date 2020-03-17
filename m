Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C31818905F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 22:31:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F3089935;
	Tue, 17 Mar 2020 21:31:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB0C589864;
 Tue, 17 Mar 2020 21:31:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3D07A47E2;
 Tue, 17 Mar 2020 21:31:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Mar 2020 21:31:27 -0000
Message-ID: <158448068763.5179.11963371263419867841@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316225153.3394-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200316225153.3394-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Avoid_gem=5Fcontext-=3Emutex_for_simple_vma_lookup?=
 =?utf-8?q?_=28rev5=29?=
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

Series: drm/i915/gem: Avoid gem_context->mutex for simple vma lookup (rev5)
URL   : https://patchwork.freedesktop.org/series/74759/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8144 -> Patchwork_17001
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17001/index.html

Known issues
------------

  Here are the changes found in Patchwork_17001 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2] ([fdo#103927] / [i915#1430] / [i915#656])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17001/fi-apl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][3] -> [DMESG-FAIL][4] ([i915#877])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17001/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-cml-u2:          [INCOMPLETE][5] ([i915#283] / [i915#656]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17001/fi-cml-u2/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][7] ([i915#424]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17001/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][9] ([fdo#111407]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17001/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (45 -> 38)
------------------------------

  Additional (2): fi-kbl-soraka fi-kbl-7560u 
  Missing    (9): fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-8109u fi-skl-lmem fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8144 -> Patchwork_17001

  CI-20190529: 20190529
  CI_DRM_8144: e22a73e6b26efdc18bd44d26c93e16c2783ab3f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5517: b77e3a470bdf1bc5f047ebb98ed8ca4738dd44c7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17001: dad111ed0f4138aa9cea4cc980d1881b500726cf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dad111ed0f41 drm/i915/gem: Avoid gem_context->mutex for simple vma lookup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17001/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
