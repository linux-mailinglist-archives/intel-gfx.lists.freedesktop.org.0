Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3906F1A4414
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 10:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 368C26EC93;
	Fri, 10 Apr 2020 08:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D1C376EC92;
 Fri, 10 Apr 2020 08:59:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CB978A3C0D;
 Fri, 10 Apr 2020 08:59:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 10 Apr 2020 08:59:01 -0000
Message-ID: <158650914180.10042.15762370879441653015@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200410081638.19893-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200410081638.19893-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Check_for_an_already_completed_timeslice?=
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

Series: drm/i915/selftests: Check for an already completed timeslice
URL   : https://patchwork.freedesktop.org/series/75783/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8288 -> Patchwork_17272
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17272/index.html

Known issues
------------

  Here are the changes found in Patchwork_17272 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-icl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#1531] / [i915#1581])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8288/fi-icl-guc/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17272/fi-icl-guc/igt@i915_selftest@live@requests.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-skl-lmem:        [PASS][3] -> [DMESG-WARN][4] ([i915#1688])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8288/fi-skl-lmem/igt@kms_flip@basic-flip-vs-modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17272/fi-skl-lmem/igt@kms_flip@basic-flip-vs-modeset.html

  
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1581]: https://gitlab.freedesktop.org/drm/intel/issues/1581
  [i915#1688]: https://gitlab.freedesktop.org/drm/intel/issues/1688


Participating hosts (52 -> 46)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8288 -> Patchwork_17272

  CI-20190529: 20190529
  CI_DRM_8288: d7a77a68af986bb2632cb3e2b83b27563c0b42fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5586: 29fad328e6a1b105c8d688cafe19b1b5c19ad0c8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17272: 4e131b9d5e6fb12af3ad44be02f9768542b2224c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4e131b9d5e6f drm/i915/selftests: Check for an already completed timeslice

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17272/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
