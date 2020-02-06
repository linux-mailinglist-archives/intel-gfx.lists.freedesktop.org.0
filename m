Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFA115480E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 16:28:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F2F06FA86;
	Thu,  6 Feb 2020 15:28:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 46D186E041;
 Thu,  6 Feb 2020 15:28:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E441A0118;
 Thu,  6 Feb 2020 15:28:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 06 Feb 2020 15:28:37 -0000
Message-ID: <158100291722.15033.18185057724022119479@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206140948.2491620-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200206140948.2491620-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Trim_blitter_block_size_=28rev4=29?=
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

Series: drm/i915/selftests: Trim blitter block size (rev4)
URL   : https://patchwork.freedesktop.org/series/73066/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7876 -> Patchwork_16458
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16458 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16458, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16458/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16458:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_blt:
    - fi-snb-2600:        NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16458/fi-snb-2600/igt@i915_selftest@live_blt.html
    - fi-snb-2520m:       NOTRUN -> [DMESG-FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16458/fi-snb-2520m/igt@i915_selftest@live_blt.html
    - fi-bsw-kefka:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-bsw-kefka/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16458/fi-bsw-kefka/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        NOTRUN -> [DMESG-FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16458/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][6] -> [DMESG-FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16458/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_16458 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][8] -> [INCOMPLETE][9] ([i915#45])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16458/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][10] -> [DMESG-FAIL][11] ([i915#725])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16458/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][12] -> [DMESG-FAIL][13] ([fdo#108569])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-icl-y/igt@i915_selftest@live_execlists.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16458/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][14] -> [FAIL][15] ([fdo#111096] / [i915#323])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16458/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][16] ([i915#694]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16458/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [INCOMPLETE][18] ([i915#392]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16458/fi-bsw-nick/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][20] ([i915#694]) -> [TIMEOUT][21] ([fdo#112271])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16458/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (41 -> 40)
------------------------------

  Additional (5): fi-snb-2520m fi-gdg-551 fi-ivb-3770 fi-skl-6700k2 fi-snb-2600 
  Missing    (6): fi-bsw-n3050 fi-hsw-peppy fi-byt-squawks fi-ilk-650 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7876 -> Patchwork_16458

  CI-20190529: 20190529
  CI_DRM_7876: 6ac39d9964f464065511d439afcf4da065ff96db @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5421: 40946e61f9c47e23fdf1fff8090fadee8a4d7d3b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16458: d8de8a6b2e7eefe6e4102a8bb082ac1363360877 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d8de8a6b2e7e drm/i915/selftests: Trim blitter block size

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16458/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
