Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0ED11A19C9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 04:05:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 730C76E18E;
	Wed,  8 Apr 2020 02:05:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C3A196E175;
 Wed,  8 Apr 2020 02:05:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91AFFA00C7;
 Wed,  8 Apr 2020 02:05:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Apr 2020 02:05:03 -0000
Message-ID: <158631150356.19349.16504277160267762300@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200407221832.15465-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200407221832.15465-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Mark_up_racy_read_of_intel=5Fring=2Ehead?=
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

Series: drm/i915/gt: Mark up racy read of intel_ring.head
URL   : https://patchwork.freedesktop.org/series/75639/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8270 -> Patchwork_17244
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/index.html

Known issues
------------

  Here are the changes found in Patchwork_17244 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#1657])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/fi-icl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/fi-icl-guc/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-tgl-y:           [INCOMPLETE][3] ([i915#656]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/fi-tgl-y/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/fi-tgl-y/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-x1275:       [DMESG-WARN][5] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][6] ([i915#62] / [i915#92]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][7] ([i915#62] / [i915#92]) -> [DMESG-WARN][8] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  [i915#1657]: https://gitlab.freedesktop.org/drm/intel/issues/1657
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (54 -> 47)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8270 -> Patchwork_17244

  CI-20190529: 20190529
  CI_DRM_8270: 3375eae2472503b49dcac86a09ab0018243f9f01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5577: 7ee7e86fd79e4dbb6300ef4c23e50cb699216ae2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17244: ecfd6942fcf63ec186b3fa7b3033edb7cd398ba0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ecfd6942fcf6 drm/i915/gt: Mark up racy read of intel_ring.head

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
