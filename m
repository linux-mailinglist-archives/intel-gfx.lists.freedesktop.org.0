Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BEB1DB514
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 15:32:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 229876E84E;
	Wed, 20 May 2020 13:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3293C6E84E;
 Wed, 20 May 2020 13:32:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D145A0019;
 Wed, 20 May 2020 13:32:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sidong Yang" <realwakka@gmail.com>
Date: Wed, 20 May 2020 13:32:40 -0000
Message-ID: <158998156015.30692.288420554194405634@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200520114156.26480-1-realwakka@gmail.com>
In-Reply-To: <20200520114156.26480-1-realwakka@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Replace_deprecated_function_in_drm=5Fcrtc=5Fhelper?=
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

Series: drm: Replace deprecated function in drm_crtc_helper
URL   : https://patchwork.freedesktop.org/series/77467/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8511 -> Patchwork_17729
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17729/index.html

Known issues
------------

  Here are the changes found in Patchwork_17729 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@sanitycheck:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2] ([i915#489])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17729/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [PASS][3] -> [FAIL][4] ([i915#262])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17729/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [PASS][5] -> [FAIL][6] ([i915#976])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17729/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [SKIP][7] ([fdo#109271]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17729/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (48 -> 44)
------------------------------

  Missing    (4): fi-byt-clapper fi-byt-squawks fi-bsw-cyan fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_8511 -> Patchwork_17729

  CI-20190529: 20190529
  CI_DRM_8511: 504ee538bd65abff745914a6f0b7aad62bbc1d11 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5664: 404e2fa06b9c5986dec3fa210234fe8b034b157e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17729: 537a8965a1f71bc4b8c3776e5c186c9d849b7cc4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

537a8965a1f7 drm: Replace deprecated function in drm_crtc_helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17729/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
