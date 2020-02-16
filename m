Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4371604E1
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2020 17:50:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A9976E440;
	Sun, 16 Feb 2020 16:50:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4873F6E43A;
 Sun, 16 Feb 2020 16:50:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3413BA0094;
 Sun, 16 Feb 2020 16:50:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 16 Feb 2020 16:50:08 -0000
Message-ID: <158187180818.23348.17193841503925425861@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200213001418.5899-1-brian.welty@intel.com>
In-Reply-To: <20200213001418.5899-1-brian.welty@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Fix_selftest=5Fmocs_for_DGFX_=28rev3=29?=
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

Series: drm/i915/selftests: Fix selftest_mocs for DGFX (rev3)
URL   : https://patchwork.freedesktop.org/series/73387/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7950 -> Patchwork_16589
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16589:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_gt_lrc:
    - {fi-tgl-dsi}:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/fi-tgl-dsi/igt@i915_selftest@live_gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16589 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gtt:
    - fi-kbl-7500u:       [PASS][2] -> [TIMEOUT][3] ([fdo#112271])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/fi-kbl-7500u/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][4] -> [FAIL][5] ([i915#217] / [i915#976])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (40 -> 36)
------------------------------

  Additional (7): fi-hsw-peppy fi-ilk-650 fi-snb-2520m fi-bsw-kefka fi-byt-n2820 fi-skl-6700k2 fi-kbl-r 
  Missing    (11): fi-ilk-m540 fi-bsw-n3050 fi-hsw-4200u fi-icl-u2 fi-bwr-2160 fi-ctg-p8600 fi-gdg-551 fi-elk-e7500 fi-pnv-d510 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7950 -> Patchwork_16589

  CI-20190529: 20190529
  CI_DRM_7950: eebe6906446d83547d0a3f29ffa3f124a8971b40 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5444: c46bae259d427f53fcfcd5f05de0181a9e82d6fe @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16589: 57a0abd044c141876bb459321a6938611ee1b428 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

57a0abd044c1 drm/i915/gt: Refactor l3cc/mocs availability

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
