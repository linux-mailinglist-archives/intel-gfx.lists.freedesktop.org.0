Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E9B1DB3EC
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 14:43:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2DD289DA7;
	Wed, 20 May 2020 12:43:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7713C89D7F;
 Wed, 20 May 2020 12:43:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71765A47E6;
 Wed, 20 May 2020 12:43:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 20 May 2020 12:43:50 -0000
Message-ID: <158997863044.30688.10079619966027745876@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519222342.6395-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200519222342.6395-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Trace_the_CS_interrupt_=28rev4=29?=
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

Series: drm/i915/gt: Trace the CS interrupt (rev4)
URL   : https://patchwork.freedesktop.org/series/77441/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8511 -> Patchwork_17727
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17727 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17727, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17727/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17727:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-ivb-3770:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17727/fi-ivb-3770/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17727 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-lmem:        [PASS][2] -> [INCOMPLETE][3] ([i915#1874])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17727/fi-skl-lmem/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [SKIP][4] ([fdo#109271]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17727/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874


Participating hosts (48 -> 42)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-kbl-7560u fi-icl-dsi 


Build changes
-------------

  * Linux: CI_DRM_8511 -> Patchwork_17727

  CI-20190529: 20190529
  CI_DRM_8511: 504ee538bd65abff745914a6f0b7aad62bbc1d11 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5664: 404e2fa06b9c5986dec3fa210234fe8b034b157e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17727: 27c461f85390e368e0c62ac6680a33b61977a89c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

27c461f85390 drm/i915/gt: Trace the CS interrupt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17727/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
