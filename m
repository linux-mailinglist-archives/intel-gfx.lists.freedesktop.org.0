Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A5D1884CD
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 14:10:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E97B6E108;
	Tue, 17 Mar 2020 13:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C88B6E104;
 Tue, 17 Mar 2020 13:10:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C912A47EB;
 Tue, 17 Mar 2020 13:10:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Mar 2020 13:10:05 -0000
Message-ID: <158445060515.5178.5587056525162529905@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316225153.3394-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200316225153.3394-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Avoid_gem=5Fcontext-=3Emutex_for_simple_vma_lookup?=
 =?utf-8?q?_=28rev2=29?=
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

Series: drm/i915/gem: Avoid gem_context->mutex for simple vma lookup (rev2)
URL   : https://patchwork.freedesktop.org/series/74759/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8141 -> Patchwork_16991
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16991:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-ehl-1}:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/fi-ehl-1/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/fi-ehl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16991 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@mmap:
    - fi-kbl-7500u:       [PASS][4] -> [SKIP][5] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/fi-kbl-7500u/igt@fbdev@mmap.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/fi-kbl-7500u/igt@fbdev@mmap.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][6] -> [FAIL][7] ([fdo#111407])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [INCOMPLETE][8] ([i915#189]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8700k:       [INCOMPLETE][10] ([i915#656]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/fi-cfl-8700k/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (47 -> 36)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (12): fi-bdw-5557u fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-cfl-guc fi-gdg-551 fi-skl-lmem fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8141 -> Patchwork_16991

  CI-20190529: 20190529
  CI_DRM_8141: f7be958f2574d30bad18983c3afe2c5401674dfb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5513: 417c926459dacf062f2945d3ba01a3f94551b16f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16991: 3ac212a31ac487c6cb1b1e72ca02963e9e008551 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3ac212a31ac4 drm/i915/gem: Avoid gem_context->mutex for simple vma lookup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
