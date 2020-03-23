Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 731EC18FD8A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 20:22:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C2DA6E416;
	Mon, 23 Mar 2020 19:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6B1BE6E40D;
 Mon, 23 Mar 2020 19:22:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6452AA010F;
 Mon, 23 Mar 2020 19:22:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Mar 2020 19:22:37 -0000
Message-ID: <158499135738.9809.10642967587093700739@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323183606.11169-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200323183606.11169-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/mm=3A_Only_allow_sleeping_if_the_caller_permits?=
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

Series: drm/mm: Only allow sleeping if the caller permits
URL   : https://patchwork.freedesktop.org/series/74985/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8180 -> Patchwork_17059
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17059/index.html

Known issues
------------

  Here are the changes found in Patchwork_17059 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][1] -> [INCOMPLETE][2] ([i915#140])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-y/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17059/fi-icl-y/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [SKIP][3] ([fdo#109271]) -> [FAIL][4] ([i915#138])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17059/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_chamelium@vga-hpd-fast:
    - fi-cml-u2:          [SKIP][5] ([fdo#109309]) -> [FAIL][6] ([i915#217])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-u2/igt@kms_chamelium@vga-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17059/fi-cml-u2/igt@kms_chamelium@vga-hpd-fast.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [i915#138]: https://gitlab.freedesktop.org/drm/intel/issues/138
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217


Participating hosts (40 -> 40)
------------------------------

  Additional (8): fi-bdw-5557u fi-hsw-peppy fi-gdg-551 fi-elk-e7500 fi-skl-lmem fi-blb-e6850 fi-bsw-nick fi-skl-6600u 
  Missing    (8): fi-byt-squawks fi-icl-u2 fi-bwr-2160 fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8180 -> Patchwork_17059

  CI-20190529: 20190529
  CI_DRM_8180: 257af0ddcea3a234dcb79579600f971edd47353f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5530: 2020d743940f06294d06006bb737be43fcd2881e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17059: 80b6656d391aca1aaa57bc2dc1bc5a4e7155bdf7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

80b6656d391a drm/mm: Only allow sleeping if the caller permits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17059/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
