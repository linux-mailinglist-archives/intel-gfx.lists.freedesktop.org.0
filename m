Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F64A1B2F38
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 20:37:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83ED86E320;
	Tue, 21 Apr 2020 18:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 154D96E31E;
 Tue, 21 Apr 2020 18:37:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F23DA011A;
 Tue, 21 Apr 2020 18:37:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Apr 2020 18:37:04 -0000
Message-ID: <158749422405.17663.5741306662550332333@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200421164130.11135-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200421164130.11135-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUkZD?=
 =?utf-8?q?_drm/i915/gem=3A_Allow_creation_of_contexts_with_an_=27empty=27?=
 =?utf-8?q?_VM?=
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

Series: RFC drm/i915/gem: Allow creation of contexts with an 'empty' VM
URL   : https://patchwork.freedesktop.org/series/76276/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8345 -> Patchwork_17409
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17409 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17409, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17409/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17409:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-cml-s:           [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-cml-s/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17409/fi-cml-s/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_17409 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@ring_submission:
    - fi-bwr-2160:        [PASS][3] -> [INCOMPLETE][4] ([i915#489])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-bwr-2160/igt@i915_selftest@live@ring_submission.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17409/fi-bwr-2160/igt@i915_selftest@live@ring_submission.html

  * igt@i915_selftest@live@workarounds:
    - fi-snb-2600:        [PASS][5] -> [FAIL][6] ([i915#1763])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-snb-2600/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17409/fi-snb-2600/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][7] ([i915#541]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17409/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][9] ([i915#579]) -> [SKIP][10] ([fdo#109271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17409/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][11] ([i915#62]) -> [SKIP][12] ([fdo#109271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17409/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1763]: https://gitlab.freedesktop.org/drm/intel/issues/1763
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (50 -> 43)
------------------------------

  Missing    (7): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8345 -> Patchwork_17409

  CI-20190529: 20190529
  CI_DRM_8345: e1fa8774e58e663bec8257f678c2f8fd17088292 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17409: 49e6f5b75a2f7dec45c3aa15c5b2ca489ab3b693 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

49e6f5b75a2f RFC drm/i915/gem: Allow creation of contexts with an 'empty' VM

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17409/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
