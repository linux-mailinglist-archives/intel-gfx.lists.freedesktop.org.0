Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9B4164D6C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 19:11:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E04286E841;
	Wed, 19 Feb 2020 18:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D74FB6E841;
 Wed, 19 Feb 2020 18:11:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0837A0118;
 Wed, 19 Feb 2020 18:11:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 19 Feb 2020 18:11:39 -0000
Message-ID: <158213589984.21059.12380426225503141066@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219133756.13224-1-jani.nikula@intel.com>
In-Reply-To: <20200219133756.13224-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_split_i915=5Fdriver=5Fmodeset=5Fprobe=28=29_to_pre/pos?=
 =?utf-8?q?t_irq_install?=
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

Series: drm/i915: split i915_driver_modeset_probe() to pre/post irq install
URL   : https://patchwork.freedesktop.org/series/73649/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7966 -> Patchwork_16624
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16624/index.html

Known issues
------------

  Here are the changes found in Patchwork_16624 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gtt:
    - fi-kbl-7500u:       [PASS][1] -> [TIMEOUT][2] ([fdo#112271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16624/fi-kbl-7500u/igt@i915_selftest@live_gtt.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][3] ([i915#877]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16624/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-glk-dsi:         [TIMEOUT][5] ([fdo#112271] / [i915#690]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-glk-dsi/igt@i915_selftest@live_gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16624/fi-glk-dsi/igt@i915_selftest@live_gtt.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [DMESG-WARN][7] ([i915#585]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16624/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#690]: https://gitlab.freedesktop.org/drm/intel/issues/690
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (49 -> 35)
------------------------------

  Additional (1): fi-snb-2600 
  Missing    (15): fi-ilk-m540 fi-bdw-5557u fi-tgl-dsi fi-bsw-n3050 fi-hsw-4200u fi-skl-guc fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-ivb-3770 fi-blb-e6850 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7966 -> Patchwork_16624

  CI-20190529: 20190529
  CI_DRM_7966: 014bfb094e0b4e80d7510dc5d6f45e5e73bbb419 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5451: 1c42f971d37a066da3e588783611ab08d5afbded @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16624: c6fcb662e9c3133e0be1997b152336e08f5c349b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c6fcb662e9c3 drm/i915: split i915_driver_modeset_probe() to pre/post irq install

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16624/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
