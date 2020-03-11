Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B23EA181447
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 10:15:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CED96E94A;
	Wed, 11 Mar 2020 09:15:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F34DE6E948;
 Wed, 11 Mar 2020 09:15:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3D1DA47DA;
 Wed, 11 Mar 2020 09:15:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Mar 2020 09:15:18 -0000
Message-ID: <158391811892.13949.454734180170201132@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200310171807.1122-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200310171807.1122-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Mark_up_the_racy_read_of_the_mmap=5Fsingleton?=
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

Series: drm/i915/gem: Mark up the racy read of the mmap_singleton
URL   : https://patchwork.freedesktop.org/series/74531/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8112 -> Patchwork_16914
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16914 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16914, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16914/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16914:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - fi-apl-guc:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-apl-guc/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16914/fi-apl-guc/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_16914 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][3] -> [INCOMPLETE][4] ([fdo#103927])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16914/fi-apl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][5] -> [DMESG-FAIL][6] ([i915#877])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16914/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_addfb_basic@basic:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-tgl-y/igt@kms_addfb_basic@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16914/fi-tgl-y/igt@kms_addfb_basic@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][9] ([CI#94]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16914/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_addfb_basic@unused-modifier:
    - fi-tgl-y:           [DMESG-WARN][11] ([CI#94] / [i915#402]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-tgl-y/igt@kms_addfb_basic@unused-modifier.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16914/fi-tgl-y/igt@kms_addfb_basic@unused-modifier.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#998]: https://gitlab.freedesktop.org/drm/intel/issues/998


Participating hosts (44 -> 37)
------------------------------

  Additional (4): fi-skl-6770hq fi-bsw-nick fi-skl-6600u fi-bsw-n3050 
  Missing    (11): fi-bdw-5557u fi-hsw-4200u fi-byt-j1900 fi-hsw-peppy fi-glk-dsi fi-byt-squawks fi-kbl-7500u fi-ivb-3770 fi-byt-clapper fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8112 -> Patchwork_16914

  CI-20190529: 20190529
  CI_DRM_8112: 032f2fe5c92eb1db6d417738431153c001a41bcc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5504: d6788bf0404f76b66170e18eb26c85004b5ccb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16914: 004a605cc4117b06a6e22ebb1ab733aed5a6f48d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

004a605cc411 drm/i915/gem: Mark up the racy read of the mmap_singleton

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16914/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
