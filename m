Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 286A9175F32
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 17:07:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72D3E6E339;
	Mon,  2 Mar 2020 16:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E0296E536;
 Mon,  2 Mar 2020 16:07:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1FBC0A0071;
 Mon,  2 Mar 2020 16:07:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 02 Mar 2020 16:07:53 -0000
Message-ID: <158316527310.30646.6579797019330010210@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302145254.520447-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200302145254.520447-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_doclinks?=
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

Series: drm/i915: Fix doclinks
URL   : https://patchwork.freedesktop.org/series/74146/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8043 -> Patchwork_16781
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/index.html

Known issues
------------

  Here are the changes found in Patchwork_16781 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_wait@basic-await-all:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-tgl-y/igt@gem_wait@basic-await-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/fi-tgl-y/igt@gem_wait@basic-await-all.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([fdo#111407])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][5] -> [DMESG-WARN][6] ([i915#44])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][7] ([CI#94]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][9] ([fdo#108569]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-icl-y/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@bad-pitch-999:
    - fi-tgl-y:           [DMESG-WARN][11] ([CI#94] / [i915#402]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-999.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-999.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44


Participating hosts (48 -> 41)
------------------------------

  Additional (3): fi-glk-dsi fi-byt-n2820 fi-elk-e7500 
  Missing    (10): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-skl-lmem fi-bsw-nick fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8043 -> Patchwork_16781

  CI-20190529: 20190529
  CI_DRM_8043: 7e5119254441cdf0764418bbf3f43f6547d30a8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5483: 1707153df224ffb6333c6c660a792b7f334eb3d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16781: 4da38358da4a06a48b027dcc77f317504279ae71 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4da38358da4a drm/i915: Fix doclinks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
