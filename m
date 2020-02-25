Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEA916BCD5
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 09:57:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2137C6EA5F;
	Tue, 25 Feb 2020 08:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ED6016EA4B;
 Tue, 25 Feb 2020 08:57:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E415DA363D;
 Tue, 25 Feb 2020 08:57:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 25 Feb 2020 08:57:11 -0000
Message-ID: <158262103191.5722.15071129134072355047@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225082233.274530-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200225082233.274530-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/11=5D_drm/i915=3A_Drop_assertion_that_a?=
 =?utf-8?q?ctive-=3Efence_is_unchanged?=
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

Series: series starting with [01/11] drm/i915: Drop assertion that active->fence is unchanged
URL   : https://patchwork.freedesktop.org/series/73885/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8001 -> Patchwork_16698
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16698 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16698, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16698/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16698:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic:
    - fi-bsw-n3050:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8001/fi-bsw-n3050/igt@gem_exec_suspend@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16698/fi-bsw-n3050/igt@gem_exec_suspend@basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@basic:
    - {fi-tgl-dsi}:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8001/fi-tgl-dsi/igt@gem_exec_parallel@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16698/fi-tgl-dsi/igt@gem_exec_parallel@basic.html

  * igt@i915_selftest@live_gt_lrc:
    - {fi-tgl-u}:         [INCOMPLETE][5] ([i915#1233]) -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8001/fi-tgl-u/igt@i915_selftest@live_gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16698/fi-tgl-u/igt@i915_selftest@live_gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16698 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][7] -> [FAIL][8] ([fdo#109635] / [i915#217])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8001/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16698/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([CI#94] / [i915#402]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8001/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16698/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][11] ([CI#94]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8001/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16698/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][13] ([i915#424]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8001/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16698/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-tgl-y:           [DMESG-WARN][15] ([CI#94] / [i915#402]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8001/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16698/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  
#### Warnings ####

  * igt@i915_selftest@live_gt_lrc:
    - fi-tgl-y:           [DMESG-FAIL][17] ([CI#94] / [i915#1233]) -> [DMESG-FAIL][18] ([CI#94])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8001/fi-tgl-y/igt@i915_selftest@live_gt_lrc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16698/fi-tgl-y/igt@i915_selftest@live_gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424


Participating hosts (52 -> 40)
------------------------------

  Missing    (12): fi-ilk-m540 fi-bdw-samus fi-kbl-7560u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-elk-e7500 fi-blb-e6850 fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8001 -> Patchwork_16698

  CI-20190529: 20190529
  CI_DRM_8001: 58d4ab7db0e7eb32167833dd46ed9175d1067c1c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5464: 8cf2f8684992052ab89de1cf328c418224c0c2a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16698: 673a1ac1e5fce5fd1a71f0faa04ddf6784b00043 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

673a1ac1e5fc drm/i915/gem: Check that the context wasn't closed during setup
3629118c25f6 drm/i915/gt: Prevent allocation on a banned context
38f0de3a05b3 drm/i915/gem: Consolidate ctx->engines[] release
d88c6fb794e9 drm/i915/selftests: Be a little more lenient for reset workers
9635b717c078 drm/i915/selftests: Check recovery from corrupted LRC
e0ed0c3b4803 drm/i915/selftests: Verify LRC isolation
4a5d710d5720 drm/i915: Protect i915_request_await_start from early waits
197b287a872f drm/i915/gem: Cleanup shadow batch after I915_EXEC_SECURE
4a107b77a0ee drm/i915/gt: Pull marking vm as closed underneath the vm->mutex
99c957394dc0 drm/i915: Manually acquire engine-wakeref around use of kernel_context
116a85830f70 drm/i915: Drop assertion that active->fence is unchanged

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16698/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
