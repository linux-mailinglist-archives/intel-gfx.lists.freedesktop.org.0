Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2055B1651E7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 22:51:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F61F89E4C;
	Wed, 19 Feb 2020 21:50:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1629589CDB;
 Wed, 19 Feb 2020 21:50:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0CB16A0099;
 Wed, 19 Feb 2020 21:50:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Date: Wed, 19 Feb 2020 21:50:56 -0000
Message-ID: <158214905603.21059.9379160305249787599@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219211551.20125-1-bob.j.paauwe@intel.com>
In-Reply-To: <20200219211551.20125-1-bob.j.paauwe@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?ing_YUV444_packed_format_support_for_skl+_=28rev3=29?=
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

Series: Adding YUV444 packed format support for skl+ (rev3)
URL   : https://patchwork.freedesktop.org/series/73020/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7966 -> Patchwork_16632
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/index.html

Known issues
------------

  Here are the changes found in Patchwork_16632 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  
#### Possible fixes ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-kbl-8809g:       [DMESG-WARN][3] ([i915#1209]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-kbl-8809g/igt@amdgpu/amd_prime@i915-to-amd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/fi-kbl-8809g/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [INCOMPLETE][5] ([i915#694] / [i915#816]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
    - fi-byt-j1900:       [INCOMPLETE][7] ([i915#45]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gtt:
    - fi-glk-dsi:         [TIMEOUT][9] ([fdo#112271] / [i915#690]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-glk-dsi/igt@i915_selftest@live_gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/fi-glk-dsi/igt@i915_selftest@live_gtt.html

  
#### Warnings ####

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-icl-u3:          [SKIP][11] ([fdo#109284] / [fdo#111827] / [i915#585]) -> [SKIP][12] ([fdo#109284] / [fdo#111827])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-icl-u3/igt@kms_chamelium@dp-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/fi-icl-u3/igt@kms_chamelium@dp-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#690]: https://gitlab.freedesktop.org/drm/intel/issues/690
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (49 -> 45)
------------------------------

  Additional (3): fi-skl-lmem fi-skl-6600u fi-snb-2600 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5451 -> IGTPW_4011
  * Linux: CI_DRM_7966 -> Patchwork_16632

  CI-20190529: 20190529
  CI_DRM_7966: 014bfb094e0b4e80d7510dc5d6f45e5e73bbb419 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4011: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4011/index.html
  IGT_5451: 1c42f971d37a066da3e588783611ab08d5afbded @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16632: 6e576dd5ff3664855ce63be067856c64fd993146 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6e576dd5ff36 drm/i915: Adding YUV444 packed format support for skl+ (V14)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
