Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C081964FB
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2020 11:20:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 765E46EACD;
	Sat, 28 Mar 2020 10:20:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB3DD6EACB;
 Sat, 28 Mar 2020 10:20:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C49E1A0099;
 Sat, 28 Mar 2020 10:20:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 28 Mar 2020 10:20:12 -0000
Message-ID: <158539081277.10055.4627764000295087237@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200328091628.20381-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200328091628.20381-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Exercise_lite-restore_on_top_of_a_semaphore_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/selftests: Exercise lite-restore on top of a semaphore (rev2)
URL   : https://patchwork.freedesktop.org/series/75187/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8208 -> Patchwork_17122
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17122 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17122, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17122:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-skl-lmem:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-skl-lmem/igt@i915_selftest@live@execlists.html
    - fi-skl-6600u:       NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-skl-6600u/igt@i915_selftest@live@execlists.html
    - fi-skl-guc:         [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - fi-skl-6700k2:      [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-skl-6700k2/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_17122 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           [PASS][10] -> [INCOMPLETE][11] ([fdo#112259])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-kbl-r/igt@i915_selftest@live@execlists.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-kbl-r/igt@i915_selftest@live@execlists.html
    - fi-glk-dsi:         [PASS][12] -> [INCOMPLETE][13] ([i915#58] / [k.org#198133])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-glk-dsi/igt@i915_selftest@live@execlists.html
    - fi-icl-dsi:         [PASS][14] -> [INCOMPLETE][15] ([i915#140])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-icl-dsi/igt@i915_selftest@live@execlists.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-icl-dsi/igt@i915_selftest@live@execlists.html
    - fi-bsw-n3050:       [PASS][16] -> [INCOMPLETE][17] ([i915#392])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
    - fi-cml-s:           [PASS][18] -> [INCOMPLETE][19] ([i915#283])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-cml-s/igt@i915_selftest@live@execlists.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-cml-s/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][20] -> [INCOMPLETE][21] ([i915#283])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-cml-u2/igt@i915_selftest@live@execlists.html
    - fi-kbl-8809g:       [PASS][22] -> [INCOMPLETE][23] ([CI#80] / [fdo#112259])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-kbl-8809g/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@requests:
    - fi-icl-u2:          [PASS][24] -> [INCOMPLETE][25] ([fdo#109644] / [fdo#110464])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-icl-u2/igt@i915_selftest@live@requests.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-icl-u2/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][26] -> [FAIL][27] ([i915#262])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - fi-icl-guc:         [INCOMPLETE][28] ([fdo#109644] / [fdo#110464]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-icl-guc/igt@i915_selftest@live@requests.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-icl-guc/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][30] ([fdo#108569]) -> [INCOMPLETE][31] ([i915#140])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-icl-y/igt@i915_selftest@live@execlists.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][32] ([i915#1209]) -> [FAIL][33] ([i915#1485] / [i915#656])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-kbl-8809g/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109644]: https://bugs.freedesktop.org/show_bug.cgi?id=109644
  [fdo#110464]: https://bugs.freedesktop.org/show_bug.cgi?id=110464
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#1485]: https://gitlab.freedesktop.org/drm/intel/issues/1485
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (43 -> 39)
------------------------------

  Additional (3): fi-hsw-4770 fi-skl-6600u fi-snb-2600 
  Missing    (7): fi-kbl-soraka fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-blb-e6850 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8208 -> Patchwork_17122

  CI-20190529: 20190529
  CI_DRM_8208: 1934751f01410e7fe6978aadcb42b3a5a78b5300 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5543: 779d43cda49c230afd32c37730ad853f02e9d749 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17122: 7273d95159f0cee82a40da689cc57c3075f616c2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7273d95159f0 drm/i915/selftests: Exercise lite-restore on top of a semaphore

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17122/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
