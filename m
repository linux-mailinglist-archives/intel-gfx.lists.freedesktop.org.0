Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A221E5B1C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 10:44:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C8206E03F;
	Thu, 28 May 2020 08:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8EB1A89B49;
 Thu, 28 May 2020 08:44:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89384A47EB;
 Thu, 28 May 2020 08:44:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 May 2020 08:44:35 -0000
Message-ID: <159065547553.685.13852141827295785834@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200528074324.5765-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200528074324.5765-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/gt=3A_Prevent_timeslicing_?=
 =?utf-8?q?into_unpreemptable_requests?=
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

Series: series starting with [1/3] drm/i915/gt: Prevent timeslicing into unpreemptable requests
URL   : https://patchwork.freedesktop.org/series/77730/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8545 -> Patchwork_17801
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17801 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17801, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17801/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17801:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/fi-bwr-2160/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17801/fi-bwr-2160/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_busy@basic@modeset:
    - fi-ivb-3770:        [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/fi-ivb-3770/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17801/fi-ivb-3770/igt@kms_busy@basic@modeset.html

  


Participating hosts (49 -> 43)
------------------------------

  Additional (2): fi-bdw-gvtdvm fi-cfl-8700k 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8545 -> Patchwork_17801

  CI-20190529: 20190529
  CI_DRM_8545: 76540f7be4ff04851e47d0865c2bb07a15106bcb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5681: 2991a5d60b1bbf2b2b6004669cd0f9471bd687a2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17801: ee61f90a8c75a2e40c30cda9beba279a8e6e0500 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ee61f90a8c75 drm/i915: Track i915_vma with its own reference counter
78e4f820cf01 drm/i915/gt: Don't declare hangs if engine is stalled
006567321620 drm/i915/gt: Prevent timeslicing into unpreemptable requests

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17801/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
