Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C44B41C2F48
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 22:47:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CBC789F01;
	Sun,  3 May 2020 20:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB17889EFF;
 Sun,  3 May 2020 20:47:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C3C65A00FD;
 Sun,  3 May 2020 20:47:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 03 May 2020 20:47:50 -0000
Message-ID: <158853887077.21036.15794403847663275467@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200503200952.10671-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200503200952.10671-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Remove_trace=5Fi915=5Fg?=
 =?utf-8?q?em=5Fobject=5Ffault?=
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

Series: series starting with [1/3] drm/i915: Remove trace_i915_gem_object_fault
URL   : https://patchwork.freedesktop.org/series/76881/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8415 -> Patchwork_17559
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17559 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17559, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17559/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17559:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@active:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/fi-apl-guc/igt@i915_selftest@live@active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17559/fi-apl-guc/igt@i915_selftest@live@active.html

  
Known issues
------------

  Here are the changes found in Patchwork_17559 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [INCOMPLETE][3] ([i915#1436]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17559/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436


Participating hosts (48 -> 42)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8415 -> Patchwork_17559

  CI-20190529: 20190529
  CI_DRM_8415: a20d5d8cc2cec9962cf4241fd8ac4b0c4bb4d9d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17559: 7753c3035f5b4b44d6e9dd14c4d3c166b7f71b6f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7753c3035f5b drm/i915: Drop pread/pwrite tracepoints
824df510bae8 drm/i915: Remove eviction tracepoints
bb6d8f44a282 drm/i915: Remove trace_i915_gem_object_fault

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17559/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
