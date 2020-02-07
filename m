Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E01EA155E90
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 20:22:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E87B16E0FF;
	Fri,  7 Feb 2020 19:22:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 60F186E0FF;
 Fri,  7 Feb 2020 19:22:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 591AEA0071;
 Fri,  7 Feb 2020 19:22:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 07 Feb 2020 19:22:13 -0000
Message-ID: <158110333334.8754.15594001438243549370@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200207152228.1054-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200207152228.1054-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Don=27t_use_uninitialized_=27ret=27?=
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

Series: drm/i915: Don't use uninitialized 'ret'
URL   : https://patchwork.freedesktop.org/series/73157/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7887 -> Patchwork_16485
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16485 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16485, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16485/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16485:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_busy@basic-wait-before-default:
    - fi-skl-6770hq:      NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16485/fi-skl-6770hq/igt@prime_busy@basic-wait-before-default.html

  
Known issues
------------

  Here are the changes found in Patchwork_16485 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][2] -> [INCOMPLETE][3] ([i915#45])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16485/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][4] -> [DMESG-FAIL][5] ([i915#563])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16485/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gtt:
    - fi-hsw-4770:        [PASS][6] -> [TIMEOUT][7] ([fdo#112271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/fi-hsw-4770/igt@i915_selftest@live_gtt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16485/fi-hsw-4770/igt@i915_selftest@live_gtt.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][8] ([fdo#108569]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/fi-icl-y/igt@i915_selftest@live_execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16485/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [DMESG-FAIL][10] ([i915#623]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16485/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-icl-guc:         [TIMEOUT][12] ([fdo#112271]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/fi-icl-guc/igt@i915_selftest@live_gtt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16485/fi-icl-guc/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][14] ([fdo#111096] / [i915#323]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16485/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-skl-6770hq:      [INCOMPLETE][16] ([i915#69]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/fi-skl-6770hq/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16485/fi-skl-6770hq/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69


Participating hosts (48 -> 43)
------------------------------

  Additional (4): fi-skl-lmem fi-bdw-5557u fi-skl-6600u fi-gdg-551 
  Missing    (9): fi-hsw-4200u fi-hsw-peppy fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bsw-nick fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7887 -> Patchwork_16485

  CI-20190529: 20190529
  CI_DRM_7887: b147ed9753265260d6380604de01c3d646a323cd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5425: ad4542ef1adbaa1227bc9ba9e24bb0e0f6dd408d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16485: d3813a2002b173b9c727ef13fe00994842622046 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d3813a2002b1 drm/i915: Don't use uninitialized 'ret'

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16485/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
