Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA0F1A48E0
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 19:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69A0E6ED21;
	Fri, 10 Apr 2020 17:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 04C1A6ED1E;
 Fri, 10 Apr 2020 17:23:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0A18A47E0;
 Fri, 10 Apr 2020 17:23:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Venkata Sandeep Dhanalakota" <venkata.s.dhanalakota@intel.com>
Date: Fri, 10 Apr 2020 17:23:16 -0000
Message-ID: <158653939695.10045.12277363076018872014@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200410165158.29546-1-venkata.s.dhanalakota@intel.com>
In-Reply-To: <20200410165158.29546-1-venkata.s.dhanalakota@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_introduce_a_mechanism_t?=
 =?utf-8?q?o_extend_execbuf2?=
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

Series: series starting with [1/4] drm/i915: introduce a mechanism to extend execbuf2
URL   : https://patchwork.freedesktop.org/series/75810/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8290 -> Patchwork_17278
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17278 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17278, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17278/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17278:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gtt:
    - fi-skl-lmem:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/fi-skl-lmem/igt@i915_selftest@live@gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17278/fi-skl-lmem/igt@i915_selftest@live@gtt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_wait@busy@all}:
    - fi-gdg-551:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/fi-gdg-551/igt@gem_wait@busy@all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17278/fi-gdg-551/igt@gem_wait@busy@all.html

  
Known issues
------------

  Here are the changes found in Patchwork_17278 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@objects:
    - fi-bwr-2160:        [PASS][5] -> [INCOMPLETE][6] ([i915#489])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/fi-bwr-2160/igt@i915_selftest@live@objects.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17278/fi-bwr-2160/igt@i915_selftest@live@objects.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-lmem:        [DMESG-WARN][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/fi-skl-lmem/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17278/fi-skl-lmem/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (51 -> 46)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8290 -> Patchwork_17278

  CI-20190529: 20190529
  CI_DRM_8290: dd69e63dc11c8fdabcc029b27f16e80be504ffc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5587: 628878f89c61fd628c4a65076f634b099d360b85 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17278: 2856c1eadad1463f37b41fbbed16697f2897fc4f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2856c1eadad1 drm/selftests: selftest for timeline semaphore
d387ab6f223d drm/i915: peel dma-fence-chains wait fences
8171b3a56b0a drm/i915: add syncobj timeline support
f52f98b82c3b drm/i915: introduce a mechanism to extend execbuf2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17278/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
