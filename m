Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 876A115B9D8
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 08:01:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9296E17C;
	Thu, 13 Feb 2020 07:01:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB4FF6E17C;
 Thu, 13 Feb 2020 07:01:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2B54A47EB;
 Thu, 13 Feb 2020 07:01:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Thu, 13 Feb 2020 07:01:12 -0000
Message-ID: <158157727263.17959.7473484086294168642@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200212165707.11143-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200212165707.11143-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_engine_wa_list_for_Wa=5F1607090982?=
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

Series: drm/i915: Use engine wa list for Wa_1607090982
URL   : https://patchwork.freedesktop.org/series/73374/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7926 -> Patchwork_16549
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16549 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16549, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16549/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16549:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16549/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_fence@basic-await@bcs0}:
    - fi-cml-u2:          [SKIP][3] ([i915#1208]) -> [SKIP][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-cml-u2/igt@gem_exec_fence@basic-await@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16549/fi-cml-u2/igt@gem_exec_fence@basic-await@bcs0.html

  * {igt@gem_exec_fence@basic-wait@bcs0}:
    - fi-cml-s:           [SKIP][5] ([i915#1208]) -> [SKIP][6] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-cml-s/igt@gem_exec_fence@basic-wait@bcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16549/fi-cml-s/igt@gem_exec_fence@basic-wait@bcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_16549 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][7] -> [INCOMPLETE][8] ([i915#45])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16549/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-u3:          [PASS][9] -> [INCOMPLETE][10] ([fdo#108569])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-icl-u3/igt@i915_selftest@live_hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16549/fi-icl-u3/igt@i915_selftest@live_hangcheck.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][11] -> [FAIL][12] ([i915#217] / [i915#976])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16549/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_workarounds:
    - {fi-tgl-u}:         [DMESG-FAIL][13] ([i915#1169]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-tgl-u/igt@i915_selftest@live_workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16549/fi-tgl-u/igt@i915_selftest@live_workarounds.html
    - {fi-tgl-dsi}:       [DMESG-FAIL][15] ([i915#1169]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-tgl-dsi/igt@i915_selftest@live_workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16549/fi-tgl-dsi/igt@i915_selftest@live_workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#1169]: https://gitlab.freedesktop.org/drm/intel/issues/1169
  [i915#1208]: https://gitlab.freedesktop.org/drm/intel/issues/1208
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (45 -> 45)
------------------------------

  Additional (6): fi-hsw-peppy fi-skl-6770hq fi-bdw-gvtdvm fi-glk-dsi fi-bsw-kefka fi-kbl-r 
  Missing    (6): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7926 -> Patchwork_16549

  CI-20190529: 20190529
  CI_DRM_7926: 6b2fe829d300abf285e9db8b252ffacd216df3ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16549: b0ff8b0dd85029209325af0f39a5ce7dc7242d64 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b0ff8b0dd850 drm/i915: Use engine wa list for Wa_1607090982

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16549/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
