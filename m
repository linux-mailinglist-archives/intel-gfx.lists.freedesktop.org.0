Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00ACE14D4ED
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 02:10:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0139A6E517;
	Thu, 30 Jan 2020 01:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBF876E519;
 Thu, 30 Jan 2020 01:09:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2054A0094;
 Thu, 30 Jan 2020 01:09:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 30 Jan 2020 01:09:56 -0000
Message-ID: <158034659682.21035.6643136007974064656@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_drm/i915/dsb=3A_Replace_HAS=5FDSB_c?=
 =?utf-8?q?heck_with_dsb-=3Ecmd=5Fbuf_check?=
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

Series: series starting with [1/9] drm/i915/dsb: Replace HAS_DSB check with dsb->cmd_buf check
URL   : https://patchwork.freedesktop.org/series/72737/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7838 -> Patchwork_16319
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16319 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16319, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16319/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16319:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16319/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  
Known issues
------------

  Here are the changes found in Patchwork_16319 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_active:
    - fi-whl-u:           [PASS][3] -> [DMESG-FAIL][4] ([i915#666])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-whl-u/igt@i915_selftest@live_active.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16319/fi-whl-u/igt@i915_selftest@live_active.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][5] ([i915#725]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16319/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][7] ([i915#424]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16319/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-bdw-5557u:       [TIMEOUT][9] ([fdo#112271]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-bdw-5557u/igt@i915_selftest@live_gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16319/fi-bdw-5557u/igt@i915_selftest@live_gtt.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-icl-dsi:         [DMESG-WARN][11] ([i915#109]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-icl-dsi/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16319/fi-icl-dsi/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [INCOMPLETE][13] ([i915#140]) -> [DMESG-FAIL][14] ([fdo#108569])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/fi-icl-y/igt@i915_selftest@live_execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16319/fi-icl-y/igt@i915_selftest@live_execlists.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (50 -> 46)
------------------------------

  Additional (2): fi-byt-n2820 fi-bwr-2160 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-kbl-7560u fi-tgl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7838 -> Patchwork_16319

  CI-20190529: 20190529
  CI_DRM_7838: d3d96beea538c8de906a1c4d7e6793a47d17a471 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5404: 4147bab8e3dcaf11bd657b5fb4c109708e94e60c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16319: da5fb99d67d021173d498e119d0f2c8ca5c8c6e3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

da5fb99d67d0 drm/i915/dsb: Nuke the 'dev' variables
30f241242694 drm/i915/dsb: Introduce intel_dsb_align_tail()
25644f18b6f6 drm/i915/dsb: Wait for DSB to idle after disabling it
89f3182a2632 drm/i915/dsb: Inline DSB_CTRL writes into intel_dsb_commit()
b061a1bc939f drm/i915/dsb: Unwind on map error
47c190820a9b drm/i915/dsb: Stop with the RMW
1ae817cd8ab9 drm/i915/dsb: Turn the "DSB is busy" into an error
dcc47ed9c2ba drm/i915/dsb: Disable DSB until fixed
9d0a47bda474 drm/i915/dsb: Replace HAS_DSB check with dsb->cmd_buf check

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16319/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
