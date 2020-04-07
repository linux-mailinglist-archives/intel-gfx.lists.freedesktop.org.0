Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E461A1029
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 17:26:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE0EE6E892;
	Tue,  7 Apr 2020 15:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8F2CF6E88E;
 Tue,  7 Apr 2020 15:26:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 876C8A00FD;
 Tue,  7 Apr 2020 15:26:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 07 Apr 2020 15:26:37 -0000
Message-ID: <158627319752.26325.7367209340901780892@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200407130811.17321-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200407130811.17321-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Yield_the_timeslice_if_caught_waiting_on_a_user_sem?=
 =?utf-8?q?aphore_=28rev4=29?=
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

Series: drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore (rev4)
URL   : https://patchwork.freedesktop.org/series/72724/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8264 -> Patchwork_17237
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17237/index.html

Known issues
------------

  Here are the changes found in Patchwork_17237 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-skl-6600u:       [PASS][1] -> [INCOMPLETE][2] ([i915#69])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17237/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [PASS][3] -> [SKIP][4] ([fdo#109271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17237/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_busy@basic@modeset:
    - fi-kbl-x1275:       [PASS][5] -> [DMESG-FAIL][6] ([i915#62])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-kbl-x1275/igt@kms_busy@basic@modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17237/fi-kbl-x1275/igt@kms_busy@basic@modeset.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-WARN][8] ([i915#62] / [i915#92]) +19 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17237/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-x1275:       [PASS][9] -> [DMESG-WARN][10] ([i915#62] / [i915#92] / [i915#95]) +11 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17237/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][11] ([i915#1158]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17237/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [INCOMPLETE][13] ([i915#1580]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17237/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1158]: https://gitlab.freedesktop.org/drm/intel/issues/1158
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (53 -> 46)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8264 -> Patchwork_17237

  CI-20190529: 20190529
  CI_DRM_8264: e0104585f880a64d4a9b40803cf4fb51ab499f7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5573: 9c582425d6b4fc1de9fc2ffc8015cc6f0a0d3e98 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17237: cedc9393c9d4371eb9d9bb0f7da8953996329398 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cedc9393c9d4 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17237/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
