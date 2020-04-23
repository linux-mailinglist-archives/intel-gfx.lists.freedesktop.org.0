Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6691B5C88
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 15:25:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2600F6E7D5;
	Thu, 23 Apr 2020 13:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 561E66E5BF;
 Thu, 23 Apr 2020 13:25:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 448F4A432F;
 Thu, 23 Apr 2020 13:25:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 23 Apr 2020 13:25:04 -0000
Message-ID: <158764830425.26748.4594197926137102873@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423115839.27972-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200423115839.27972-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Mark_up_racy_read_of_rq-=3Eengine?=
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

Series: drm/i915: Mark up racy read of rq->engine
URL   : https://patchwork.freedesktop.org/series/76392/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8352 -> Patchwork_17439
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17439 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17439, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17439/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17439:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-byt-j1900:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/fi-byt-j1900/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17439/fi-byt-j1900/igt@i915_selftest@live@gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@workarounds:
    - {fi-tgl-dsi}:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/fi-tgl-dsi/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17439/fi-tgl-dsi/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_17439 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@sanitycheck:
    - fi-bwr-2160:        [PASS][5] -> [INCOMPLETE][6] ([i915#489])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17439/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-snb-2600:        [FAIL][7] ([i915#1763]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/fi-snb-2600/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17439/fi-snb-2600/igt@i915_selftest@live@gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1763]: https://gitlab.freedesktop.org/drm/intel/issues/1763
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (48 -> 43)
------------------------------

  Additional (1): fi-bsw-kefka 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8352 -> Patchwork_17439

  CI-20190529: 20190529
  CI_DRM_8352: 248cbab28d58c203de956df1db4cdeb53ea97a89 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5608: e7bcaf1dd251d454706c7cd64282f531aec50183 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17439: caf81f8e993e52fdcebf6e56807b254a65257613 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

caf81f8e993e drm/i915: Mark up racy read of rq->engine

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17439/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
