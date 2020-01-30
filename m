Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A6F14D59A
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 05:23:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C6D56F8E2;
	Thu, 30 Jan 2020 04:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 009236F8E1;
 Thu, 30 Jan 2020 04:23:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9EB4A011C;
 Thu, 30 Jan 2020 04:23:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 30 Jan 2020 04:23:24 -0000
Message-ID: <158035820493.21034.14115618441087752335@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129195452.1278481-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200129195452.1278481-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_the_async_worker_to_avoid_reclaim_tainting_the_ggt?=
 =?utf-8?b?dC0+bXV0ZXggKHJldjIp?=
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

Series: drm/i915: Use the async worker to avoid reclaim tainting the ggtt->mutex (rev2)
URL   : https://patchwork.freedesktop.org/series/72740/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7839 -> Patchwork_16324
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16324 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16324, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16324/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16324:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy-all:
    - fi-bsw-nick:        NOTRUN -> [TIMEOUT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16324/fi-bsw-nick/igt@gem_busy@busy-all.html

  * igt@gem_exec_fence@basic-await-default:
    - fi-bsw-kefka:       NOTRUN -> [TIMEOUT][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16324/fi-bsw-kefka/igt@gem_exec_fence@basic-await-default.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [FAIL][3] ([fdo#103375]) -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16324/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  
Known issues
------------

  Here are the changes found in Patchwork_16324 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-j1900:       [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-byt-j1900/igt@gem_exec_parallel@fds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16324/fi-byt-j1900/igt@gem_exec_parallel@fds.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][7] -> [FAIL][8] ([i915#178])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16324/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][9] -> [DMESG-FAIL][10] ([fdo#108569])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-icl-y/igt@i915_selftest@live_execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16324/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gtt:
    - fi-kbl-7500u:       [PASS][11] -> [TIMEOUT][12] ([fdo#112271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16324/fi-kbl-7500u/igt@i915_selftest@live_gtt.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [FAIL][13] ([i915#694]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16324/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [FAIL][15] ([fdo#103375]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16324/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][17] ([fdo#112271]) -> [FAIL][18] ([i915#694])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16324/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][19] ([i915#694]) -> [TIMEOUT][20] ([fdo#112271])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16324/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][21] ([fdo#111407]) -> [FAIL][22] ([fdo#111096] / [i915#323])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16324/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694


Participating hosts (47 -> 40)
------------------------------

  Additional (2): fi-bsw-kefka fi-kbl-r 
  Missing    (9): fi-bsw-n3050 fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-ivb-3770 fi-bdw-samus fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7839 -> Patchwork_16324

  CI-20190529: 20190529
  CI_DRM_7839: 41a9319a45aaf77e220c8101d6ce76ec66036ffc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5406: 786c79af483a9f6e4688811f74116030c734ca1f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16324: d4ab9b3a35df26acdf0636c7b4bcd12b0c369436 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d4ab9b3a35df drm/i915: Use the async worker to avoid reclaim tainting the ggtt->mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16324/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
