Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A55BF18F679
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 14:59:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CC7A6E125;
	Mon, 23 Mar 2020 13:59:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6F9336E116;
 Mon, 23 Mar 2020 13:59:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 686EDA47E2;
 Mon, 23 Mar 2020 13:59:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 23 Mar 2020 13:59:12 -0000
Message-ID: <158497195239.9807.14199048515762462170@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323113809.41452-1-matthew.auld@intel.com>
In-Reply-To: <20200323113809.41452-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_add_some_vma=5Fsync?=
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

Series: drm/i915/selftests: add some vma_sync
URL   : https://patchwork.freedesktop.org/series/74969/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8178 -> Patchwork_17052
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17052 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17052, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17052/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17052:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@coherency:
    - fi-gdg-551:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8178/fi-gdg-551/igt@i915_selftest@live@coherency.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17052/fi-gdg-551/igt@i915_selftest@live@coherency.html

  
Known issues
------------

  Here are the changes found in Patchwork_17052 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [PASS][3] -> [FAIL][4] ([i915#217])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8178/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17052/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][5] ([i915#877]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8178/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17052/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][7] ([i915#323]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8178/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17052/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (50 -> 42)
------------------------------

  Additional (1): fi-byt-n2820 
  Missing    (9): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8178 -> Patchwork_17052

  CI-20190529: 20190529
  CI_DRM_8178: 3f4392bf31d28013e860818ba613b598bb227821 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5528: 5dee9128b2aaa77d036163f670f0e0fc15b578ab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17052: 8bf02a45845a6710387fc0cab20cb4c79744c8ce @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8bf02a45845a drm/i915/selftests: add some vma_sync

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17052/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
