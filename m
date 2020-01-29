Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F33614D243
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 22:05:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED5916E437;
	Wed, 29 Jan 2020 21:04:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C6B8C6E030;
 Wed, 29 Jan 2020 21:04:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6C9BA011A;
 Wed, 29 Jan 2020 21:04:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 29 Jan 2020 21:04:55 -0000
Message-ID: <158033189572.5462.12082983274885826085@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129152608.1179739-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200129152608.1179739-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Yield_the_timeslice_if_caught_waiting_on_a_user_sem?=
 =?utf-8?q?aphore?=
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

Series: drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
URL   : https://patchwork.freedesktop.org/series/72724/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7838 -> Patchwork_16315
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/index.html

Known issues
------------

  Here are the changes found in Patchwork_16315 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-FAIL][2] ([i915#725])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-u3:          [PASS][3] -> [INCOMPLETE][4] ([i915#140])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-icl-u3/igt@i915_selftest@live_execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/fi-icl-u3/igt@i915_selftest@live_execlists.html

  * igt@prime_self_import@basic-with_fd_dup:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-tgl-y/igt@prime_self_import@basic-with_fd_dup.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/fi-tgl-y/igt@prime_self_import@basic-with_fd_dup.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][7] ([i915#725]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][9] ([i915#424]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-bdw-5557u:       [TIMEOUT][11] ([fdo#112271]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-bdw-5557u/igt@i915_selftest@live_gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/fi-bdw-5557u/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][13] ([fdo#111096] / [i915#323]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-icl-dsi:         [DMESG-WARN][15] ([i915#109]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-icl-dsi/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/fi-icl-dsi/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@prime_self_import@basic-llseek-size:
    - fi-tgl-y:           [DMESG-WARN][17] ([CI#94] / [i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][19] ([i915#553] / [i915#725]) -> [DMESG-FAIL][20] ([i915#725])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [INCOMPLETE][21] ([i915#140]) -> [DMESG-FAIL][22] ([fdo#108569])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-icl-y/igt@i915_selftest@live_execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/fi-icl-y/igt@i915_selftest@live_execlists.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (50 -> 47)
------------------------------

  Additional (2): fi-byt-n2820 fi-bwr-2160 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7838 -> Patchwork_16315

  CI-20190529: 20190529
  CI_DRM_7838: d3d96beea538c8de906a1c4d7e6793a47d17a471 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5404: 4147bab8e3dcaf11bd657b5fb4c109708e94e60c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16315: dd2d791ab01d1f713e41d432b018712954f609d2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dd2d791ab01d drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
