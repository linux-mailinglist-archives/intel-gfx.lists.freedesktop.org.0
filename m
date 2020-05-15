Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 979FD1D54F7
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 17:44:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB4F96ECD7;
	Fri, 15 May 2020 15:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 79F796ECCA;
 Fri, 15 May 2020 15:44:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74A42A008A;
 Fri, 15 May 2020 15:44:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 15 May 2020 15:44:56 -0000
Message-ID: <158955749645.26210.8651795073747503390@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200514162639.8283-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200514162639.8283-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Add_tests_for_timeslicing_virtual_engines?=
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

Series: drm/i915/selftests: Add tests for timeslicing virtual engines
URL   : https://patchwork.freedesktop.org/series/77273/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8488 -> Patchwork_17665
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17665 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17665, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17665/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17665:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17665/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-skl-lmem:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17665/fi-skl-lmem/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_17665 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@active:
    - fi-icl-y:           [PASS][5] -> [DMESG-FAIL][6] ([i915#765])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-icl-y/igt@i915_selftest@live@active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17665/fi-icl-y/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@objects:
    - fi-bwr-2160:        [PASS][7] -> [INCOMPLETE][8] ([i915#489])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-bwr-2160/igt@i915_selftest@live@objects.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17665/fi-bwr-2160/igt@i915_selftest@live@objects.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-whl-u:           [INCOMPLETE][9] ([i915#656]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-whl-u/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17665/fi-whl-u/igt@i915_selftest@live@execlists.html

  
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765


Participating hosts (51 -> 45)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8488 -> Patchwork_17665

  CI-20190529: 20190529
  CI_DRM_8488: d40ec60813532e485e9c63623c91babf556cfbe3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5655: 2cc4c1edc3065590f9917930b6d049a90c4a38fd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17665: c7bf75e1ee551b92360d020b8b2961c0835aa097 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c7bf75e1ee55 drm/i915/selftests: Add tests for timeslicing virtual engines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17665/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
