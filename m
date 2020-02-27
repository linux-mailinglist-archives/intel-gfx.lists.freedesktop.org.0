Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6527172873
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 20:18:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29EA26ED38;
	Thu, 27 Feb 2020 19:18:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 428ED6ED38;
 Thu, 27 Feb 2020 19:18:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A3FEA0088;
 Thu, 27 Feb 2020 19:18:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 27 Feb 2020 19:18:17 -0000
Message-ID: <158283109721.29658.11502826966093659302@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227150935.2107-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200227150935.2107-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_intel=5Fplane=5Fdata=5Frate_for_min=5Fcdclk_calcul?=
 =?utf-8?q?ation_=28rev6=29?=
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

Series: drm/i915: Use intel_plane_data_rate for min_cdclk calculation (rev6)
URL   : https://patchwork.freedesktop.org/series/73718/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8020 -> Patchwork_16737
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16737/index.html

Known issues
------------

  Here are the changes found in Patchwork_16737 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][1] -> [FAIL][2] ([i915#217])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16737/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [DMESG-FAIL][3] ([i915#730]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16737/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-6600u:       [INCOMPLETE][5] ([fdo#108744]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/fi-skl-6600u/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16737/fi-skl-6600u/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@memory_region:
    - fi-skl-6600u:       [DMESG-WARN][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/fi-skl-6600u/igt@i915_selftest@live@memory_region.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16737/fi-skl-6600u/igt@i915_selftest@live@memory_region.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][9] ([i915#217]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16737/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][11] ([fdo#109635] / [i915#262]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16737/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108744]: https://bugs.freedesktop.org/show_bug.cgi?id=108744
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730


Participating hosts (46 -> 43)
------------------------------

  Additional (5): fi-kbl-soraka fi-hsw-peppy fi-bsw-kefka fi-blb-e6850 fi-snb-2600 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8020 -> Patchwork_16737

  CI-20190529: 20190529
  CI_DRM_8020: c5e13e7cee422111f70ff7bb5b933bd2ca8ff9e7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5473: d22b3507ff2678a05d69d47c0ddf6f0e72ee7ffd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16737: a3afc4c267fc6add1f915da488032d4fdb9612b0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a3afc4c267fc drm/i915: Use intel_plane_data_rate for min_cdclk calculation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16737/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
