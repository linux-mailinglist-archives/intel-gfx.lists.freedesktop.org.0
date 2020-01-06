Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C31E131249
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 13:48:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F5416E291;
	Mon,  6 Jan 2020 12:48:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0430C6E290;
 Mon,  6 Jan 2020 12:48:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0037A41FB;
 Mon,  6 Jan 2020 12:48:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Jan 2020 12:48:33 -0000
Message-ID: <157831491395.24766.14195497820521317170@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106111518.2515465-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200106111518.2515465-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Yield_the_timeslice_if_waiting_on_a_semaphore?=
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

Series: drm/i915/gt: Yield the timeslice if waiting on a semaphore
URL   : https://patchwork.freedesktop.org/series/71654/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7683 -> Patchwork_16000
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16000:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_execlists:
    - {fi-tgl-u}:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/fi-tgl-u/igt@i915_selftest@live_execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/fi-tgl-u/igt@i915_selftest@live_execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_16000 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([fdo#111096] / [i915#323])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][5] ([i915#816]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [INCOMPLETE][7] ([i915#671]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][9] ([fdo#109635] / [i915#262]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (50 -> 45)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7683 -> Patchwork_16000

  CI-20190529: 20190529
  CI_DRM_7683: 2355e597e6ecddc17319d0231f229223209f6ff2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16000: fe1a652e8aa7bcad587b152468d4e740c4377b92 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fe1a652e8aa7 drm/i915/gt: Yield the timeslice if waiting on a semaphore

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
