Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D220E14E9EF
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 10:13:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDDEB6FAC8;
	Fri, 31 Jan 2020 09:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 810696FAC6;
 Fri, 31 Jan 2020 09:13:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77A6AA0003;
 Fri, 31 Jan 2020 09:13:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 31 Jan 2020 09:13:18 -0000
Message-ID: <158046199846.13121.6712050596003348465@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131075716.2212299-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200131075716.2212299-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gt=3A_Skip_rmw_for_ma?=
 =?utf-8?q?sked_registers?=
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

Series: series starting with [CI,1/3] drm/i915/gt: Skip rmw for masked registers
URL   : https://patchwork.freedesktop.org/series/72804/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7849 -> Patchwork_16350
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16350 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16350, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16350/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16350:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-kefka:       NOTRUN -> [TIMEOUT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16350/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html

  
Known issues
------------

  Here are the changes found in Patchwork_16350 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-byt-j1900:       [PASS][2] -> [DMESG-FAIL][3] ([i915#725])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7849/fi-byt-j1900/igt@i915_selftest@live_blt.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16350/fi-byt-j1900/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][4] -> [DMESG-FAIL][5] ([fdo#108569])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7849/fi-icl-y/igt@i915_selftest@live_execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16350/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-kbl-guc:         [PASS][6] -> [DMESG-FAIL][7] ([fdo#112406])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7849/fi-kbl-guc/igt@i915_selftest@live_gt_heartbeat.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16350/fi-kbl-guc/igt@i915_selftest@live_gt_heartbeat.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-guc:         [PASS][8] -> [INCOMPLETE][9] ([fdo#108569])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7849/fi-icl-guc/igt@i915_selftest@live_hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16350/fi-icl-guc/igt@i915_selftest@live_hangcheck.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][10] -> [FAIL][11] ([fdo#111096] / [i915#323])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7849/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16350/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][12] ([i915#553] / [i915#725]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7849/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16350/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [DMESG-FAIL][14] ([i915#1052]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7849/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16350/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [FAIL][16] ([i915#217]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7849/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16350/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_busy@basic-wait-after-default:
    - fi-icl-dsi:         [DMESG-WARN][18] ([i915#109]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7849/fi-icl-dsi/igt@prime_busy@basic-wait-after-default.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16350/fi-icl-dsi/igt@prime_busy@basic-wait-after-default.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [FAIL][20] ([i915#694]) -> [TIMEOUT][21] ([fdo#112271] / [i915#1084])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7849/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16350/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
    - fi-byt-n2820:       [FAIL][22] ([i915#694]) -> [TIMEOUT][23] ([fdo#112271])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7849/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16350/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (43 -> 45)
------------------------------

  Additional (7): fi-hsw-peppy fi-skl-6770hq fi-snb-2520m fi-ivb-3770 fi-elk-e7500 fi-bsw-kefka fi-skl-6700k2 
  Missing    (5): fi-icl-1065g7 fi-hsw-4200u fi-byt-squawks fi-bwr-2160 fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7849 -> Patchwork_16350

  CI-20190529: 20190529
  CI_DRM_7849: b35f634060c22079434e153fbdcc15ef3846ef4d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16350: b6b81a75697328ed5c7ceb4ccde130773693a3c3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b6b81a756973 drm/i915: Move ringbuffer WAs to engine workaround list
30bdce314ce4 drm/i915: extract engine WA programming to common resume function
b013d4ba346f drm/i915/gt: Skip rmw for masked registers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16350/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
