Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D29C172811
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:50:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5795B6EBFC;
	Thu, 27 Feb 2020 18:50:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 14C1D6EBFC;
 Thu, 27 Feb 2020 18:50:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D98FA00EF;
 Thu, 27 Feb 2020 18:50:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 27 Feb 2020 18:50:19 -0000
Message-ID: <158282941905.29657.1066956100502000002@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227145359.17543-1-jani.nikula@intel.com>
In-Reply-To: <20200227145359.17543-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dram=3A_hide_the_dram_structs_better?=
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

Series: drm/i915/dram: hide the dram structs better
URL   : https://patchwork.freedesktop.org/series/74025/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8020 -> Patchwork_16736
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16736/index.html

Known issues
------------

  Here are the changes found in Patchwork_16736 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] ([fdo#111096] / [i915#323])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16736/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [DMESG-FAIL][3] ([i915#730]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16736/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][5] ([i915#217]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16736/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][7] ([fdo#109635] / [i915#262]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16736/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][9] ([i915#1209]) -> [FAIL][10] ([i915#192] / [i915#193] / [i915#194])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/fi-kbl-8809g/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16736/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730


Participating hosts (46 -> 37)
------------------------------

  Additional (4): fi-kbl-soraka fi-blb-e6850 fi-hsw-peppy fi-snb-2600 
  Missing    (13): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ilk-650 fi-snb-2520m fi-ctg-p8600 fi-gdg-551 fi-bdw-samus fi-byt-n2820 fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8020 -> Patchwork_16736

  CI-20190529: 20190529
  CI_DRM_8020: c5e13e7cee422111f70ff7bb5b933bd2ca8ff9e7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5473: d22b3507ff2678a05d69d47c0ddf6f0e72ee7ffd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16736: 3bee11e221821d318444de123d76b755b914f7e1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3bee11e22182 drm/i915/dram: hide the dram structs better

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16736/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
