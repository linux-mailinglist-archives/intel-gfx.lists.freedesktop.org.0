Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D511D072C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 08:26:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE3A16E143;
	Wed, 13 May 2020 06:26:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0D5506E143;
 Wed, 13 May 2020 06:26:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F2DB7A0091;
 Wed, 13 May 2020 06:26:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 13 May 2020 06:26:52 -0000
Message-ID: <158935121296.25404.14071475375769369930@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200513053431.2138-1-manasi.d.navare@intel.com>
In-Reply-To: <20200513053431.2138-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/3=5D_drm/dp=3A_DRM_DP_helper_for_re?=
 =?utf-8?q?ading_Ignore_MSA_from_DPCD?=
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

Series: series starting with [v5,1/3] drm/dp: DRM DP helper for reading Ignore MSA from DPCD
URL   : https://patchwork.freedesktop.org/series/77204/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8471 -> Patchwork_17638
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17638 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17638, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17638/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17638:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-cml-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8471/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17638/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html
    - fi-kbl-7500u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8471/fi-kbl-7500u/igt@kms_chamelium@dp-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17638/fi-kbl-7500u/igt@kms_chamelium@dp-hpd-fast.html

  
Known issues
------------

  Here are the changes found in Patchwork_17638 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@objects:
    - fi-bwr-2160:        [INCOMPLETE][5] ([i915#489]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8471/fi-bwr-2160/igt@i915_selftest@live@objects.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17638/fi-bwr-2160/igt@i915_selftest@live@objects.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1803]: https://gitlab.freedesktop.org/drm/intel/issues/1803
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (49 -> 12)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_17638 prevented too many machines from booting.

  Missing    (37): fi-kbl-soraka fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-snb-2520m fi-icl-y fi-skl-lmem fi-byt-n2820 fi-icl-guc fi-icl-dsi fi-skl-6600u fi-snb-2600 fi-bxt-dsi fi-bdw-5557u fi-cml-s fi-bsw-n3050 fi-byt-j1900 fi-glk-dsi fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-ilk-m540 fi-ehl-1 fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-whl-u fi-kbl-x1275 fi-bsw-kefka fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8471 -> Patchwork_17638

  CI-20190529: 20190529
  CI_DRM_8471: 3c84a88ed50e99b200fac400a9b817a23d399c01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17638: a2b5aa381b03ce6944ec2f184d8383ea1a942b04 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a2b5aa381b03 drm/i915/dp: Expose connector VRR info via debugfs
2aca669eeacd drm/i915/dp: Attach and set drm connector VRR property
f6ad5ff374c2 drm/dp: DRM DP helper for reading Ignore MSA from DPCD

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17638/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
