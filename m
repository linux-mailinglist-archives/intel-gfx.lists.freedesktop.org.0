Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 863E418439B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 10:26:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E33F6E287;
	Fri, 13 Mar 2020 09:26:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C8196EBA1;
 Fri, 13 Mar 2020 09:26:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CE16A47DA;
 Fri, 13 Mar 2020 09:26:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai Vehmanen" <kai.vehmanen@linux.intel.com>
Date: Fri, 13 Mar 2020 09:26:30 -0000
Message-ID: <158409159048.30351.18206805558602013834@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200313084920.8801-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20200313084920.8801-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_do_AUD=5FFREQ=5FCNTRL_state_save_on_all_gen9+_platform?=
 =?utf-8?q?s?=
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

Series: drm/i915: do AUD_FREQ_CNTRL state save on all gen9+ platforms
URL   : https://patchwork.freedesktop.org/series/74664/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8132 -> Patchwork_16960
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16960/index.html

Known issues
------------

  Here are the changes found in Patchwork_16960 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#730])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16960/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-y:           [INCOMPLETE][3] ([i915#1373]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-icl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16960/fi-icl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [DMESG-WARN][5] ([i915#92]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-skl-6770hq/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16960/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [SKIP][7] ([fdo#109271]) -> [PASS][8] +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16960/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-skl-6770hq:      [DMESG-WARN][9] ([i915#106]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16960/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (48 -> 40)
------------------------------

  Missing    (8): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-skl-lmem fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8132 -> Patchwork_16960

  CI-20190529: 20190529
  CI_DRM_8132: 72014335c2758a20db6107314352afb5951f1c55 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5506: 59fd8a0d01dac58dc6c7d86ef391ed4393ab5aae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16960: 1c9213f03665935a6ef5dfe8f9b2826ec600e3ff @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1c9213f03665 drm/i915: do AUD_FREQ_CNTRL state save on all gen9+ platforms

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16960/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
