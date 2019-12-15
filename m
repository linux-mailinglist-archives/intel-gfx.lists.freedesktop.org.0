Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CBD11F834
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 15:35:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8236E0C9;
	Sun, 15 Dec 2019 14:35:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3CF596E02F;
 Sun, 15 Dec 2019 14:35:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2A924A0087;
 Sun, 15 Dec 2019 14:35:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 15 Dec 2019 14:35:32 -0000
Message-ID: <157642053214.27847.235187127273811590@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191215135519.2335916-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191215135519.2335916-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Set_vm_again_after_MI=5FSET=5FCONTEXT_=28rev5=29?=
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

Series: drm/i915/gt: Set vm again after MI_SET_CONTEXT (rev5)
URL   : https://patchwork.freedesktop.org/series/70839/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7569 -> Patchwork_15768
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/index.html

Known issues
------------

  Here are the changes found in Patchwork_15768 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_requests:
    - fi-hsw-4770r:       [PASS][1] -> [INCOMPLETE][2] ([i915#773])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/fi-hsw-4770r/igt@i915_selftest@live_requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/fi-hsw-4770r/igt@i915_selftest@live_requests.html
    - fi-ivb-3770:        [PASS][3] -> [INCOMPLETE][4] ([i915#773])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/fi-ivb-3770/igt@i915_selftest@live_requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/fi-ivb-3770/igt@i915_selftest@live_requests.html
    - fi-hsw-4770:        [PASS][5] -> [INCOMPLETE][6] ([i915#773])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/fi-hsw-4770/igt@i915_selftest@live_requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/fi-hsw-4770/igt@i915_selftest@live_requests.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [INCOMPLETE][7] ([i915#45]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-apl-guc:         [DMESG-WARN][9] ([i915#180]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms.html

  
#### Warnings ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [DMESG-FAIL][11] ([i915#722]) -> [INCOMPLETE][12] ([i915#694])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#773]: https://gitlab.freedesktop.org/drm/intel/issues/773


Participating hosts (34 -> 25)
------------------------------

  Additional (1): fi-elk-e7500 
  Missing    (10): fi-icl-1065g7 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-ctg-p8600 fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7569 -> Patchwork_15768

  CI-20190529: 20190529
  CI_DRM_7569: 62c2abc0df8983aba79ba093413683c44e9c4748 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15768: 46e9e44a1db4c1ba0921bf9ed158c16d69938c78 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

46e9e44a1db4 drm/i915/gt: Set vm again after MI_SET_CONTEXT

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
