Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 215521F7FF2
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jun 2020 02:39:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAB426E393;
	Sat, 13 Jun 2020 00:39:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C962F6E392;
 Sat, 13 Jun 2020 00:39:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD934A0BD0;
 Sat, 13 Jun 2020 00:39:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Sat, 13 Jun 2020 00:39:47 -0000
Message-ID: <159200878774.20490.10217291627825078839@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200612230444.10121-1-manasi.d.navare@intel.com>
In-Reply-To: <20200612230444.10121-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgVlJS?=
 =?utf-8?q?_capable_attach_prop_in_i915=2C_DPCD_helper=2C_VRR_debugfs_=28r?=
 =?utf-8?q?ev2=29?=
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

Series: VRR capable attach prop in i915, DPCD helper, VRR debugfs (rev2)
URL   : https://patchwork.freedesktop.org/series/78278/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8621 -> Patchwork_17946
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17946 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17946, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17946/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17946:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-cml-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17946/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html
    - fi-kbl-7500u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-kbl-7500u/igt@kms_chamelium@dp-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17946/fi-kbl-7500u/igt@kms_chamelium@dp-hpd-fast.html

  
Known issues
------------

  Here are the changes found in Patchwork_17946 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194


Participating hosts (49 -> 12)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_17946 prevented too many machines from booting.

  Additional (1): fi-tgl-u2 
  Missing    (38): fi-kbl-soraka fi-icl-u2 fi-apl-guc fi-snb-2520m fi-icl-y fi-skl-lmem fi-byt-n2820 fi-icl-guc fi-icl-dsi fi-skl-6600u fi-snb-2600 fi-bxt-dsi fi-bdw-5557u fi-cml-s fi-bsw-n3050 fi-byt-j1900 fi-glk-dsi fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-ilk-m540 fi-ehl-1 fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-whl-u fi-kbl-x1275 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8621 -> Patchwork_17946

  CI-20190529: 20190529
  CI_DRM_8621: acd803311fbd1e6adc38d10ca382a60c6c190be9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5708: f66c71e29de50bae880bc81ceb0517d4e3e2dfd8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17946: bb21c069cdf462d6136836633baa6945a5dafc82 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bb21c069cdf4 drm/i915/dp: Expose connector VRR monitor range via debugfs
b0b10c7d0ea5 drm/i915/dp: Attach and set drm connector VRR property
46b7d1d313bd drm/dp: DRM DP helper for reading Ignore MSA from DPCD

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17946/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
