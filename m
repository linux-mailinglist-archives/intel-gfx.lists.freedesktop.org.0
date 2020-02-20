Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76891166A27
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 23:03:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C33456EE80;
	Thu, 20 Feb 2020 22:03:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 441BC6E239;
 Thu, 20 Feb 2020 22:03:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CFC9A0087;
 Thu, 20 Feb 2020 22:03:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Thu, 20 Feb 2020 22:03:33 -0000
Message-ID: <158223621322.17408.3310335277299183216@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220165507.16823-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200220165507.16823-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Introduce_struct_drm=5Fdevice_based_WARN*_and_use_them_in_i?=
 =?utf-8?q?915_=28rev7=29?=
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

Series: drm: Introduce struct drm_device based WARN* and use them in i915 (rev7)
URL   : https://patchwork.freedesktop.org/series/72035/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7976 -> Patchwork_16648
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16648/index.html

Known issues
------------

  Here are the changes found in Patchwork_16648 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-n3050:       [PASS][1] -> [INCOMPLETE][2] ([i915#392])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7976/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16648/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [PASS][3] -> [DMESG-WARN][4] ([i915#585])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7976/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16648/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [PASS][5] -> [FAIL][6] ([fdo#109635] / [i915#217])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7976/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16648/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7976/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16648/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [TIMEOUT][9] ([fdo#112271] / [i915#1084]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7976/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16648/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][11] ([CI#94]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7976/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16648/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [DMESG-FAIL][13] ([i915#722]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7976/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16648/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][15] ([fdo#111407]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7976/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16648/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [DMESG-WARN][17] ([CI#94] / [i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7976/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16648/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][19] ([fdo#109315] / [i915#585]) -> [SKIP][20] ([fdo#109315])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7976/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16648/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722


Participating hosts (53 -> 37)
------------------------------

  Missing    (16): fi-ilk-m540 fi-kbl-7560u fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bwr-2160 fi-ilk-650 fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-bsw-kefka fi-skl-lmem fi-blb-e6850 fi-byt-n2820 fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7976 -> Patchwork_16648

  CI-20190529: 20190529
  CI_DRM_7976: 4cc939204aedc7fd9dab0ad3256c43270c823fef @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5453: cae9a5881ed2c5be2c2518a255740b612a927f9a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16648: 5e643f5a84671c4ab4142fe30e5fc59d69d4c132 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5e643f5a8467 drm/i915/gvt: Make WARN* drm specific where vgpu ptr is available
820962439df7 drm/i915/gvt: Make WARN* drm specific where drm_priv ptr is available
7fd6b4d78e27 drm/i915/display/hdcp: Make WARN* drm specific where drm_priv ptr is available
714a69f8bd80 drm/i915/display/dp: Make WARN* drm specific where drm_device ptr is available
bca7c0209467 drm/i915/display/power: Make WARN* drm specific where drm_priv ptr is available
0a9eccf2eb1a drm/i915/display/display: Make WARN* drm specific where drm_device ptr is available
37b11379faf7 drm/i915/display/ddi: Make WARN* drm specific where drm_device ptr is available
f3e1e10ac32d drm/i915/display/cdclk: Make WARN* drm specific where drm_priv ptr is available

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16648/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
