Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B7E164DD0
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 19:41:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C18F6EC76;
	Wed, 19 Feb 2020 18:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5B42B6EC73;
 Wed, 19 Feb 2020 18:41:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53698A47E7;
 Wed, 19 Feb 2020 18:41:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Date: Wed, 19 Feb 2020 18:41:16 -0000
Message-ID: <158213767633.21059.10373161730118114123@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219141435.23651-1-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20200219141435.23651-1-janusz.krzysztofik@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/userptr=3A_Activate_MMU_notifier_only_after_pages_are_set?=
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

Series: drm/i915/userptr: Activate MMU notifier only after pages are set
URL   : https://patchwork.freedesktop.org/series/73652/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7966 -> Patchwork_16625
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/index.html

Known issues
------------

  Here are the changes found in Patchwork_16625 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [INCOMPLETE][3] ([i915#694] / [i915#816]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][5] ([i915#877]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][7] ([fdo#109315] / [i915#585]) -> [SKIP][8] ([fdo#109315])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (49 -> 38)
------------------------------

  Additional (3): fi-skl-lmem fi-skl-6600u fi-snb-2600 
  Missing    (14): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bdw-gvtdvm fi-glk-dsi fi-byt-squawks fi-bwr-2160 fi-ilk-650 fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7966 -> Patchwork_16625

  CI-20190529: 20190529
  CI_DRM_7966: 014bfb094e0b4e80d7510dc5d6f45e5e73bbb419 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5451: 1c42f971d37a066da3e588783611ab08d5afbded @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16625: 2944b0b1ec9bd79379661df1fcab798caa03bcaf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2944b0b1ec9b drm/i915/userptr: Activate MMU notifier only after pages are set

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
