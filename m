Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB65F17B55E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 05:28:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A91C6E0D7;
	Fri,  6 Mar 2020 04:28:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A111E6E0D7;
 Fri,  6 Mar 2020 04:28:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91E14A47DF;
 Fri,  6 Mar 2020 04:28:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 06 Mar 2020 04:28:26 -0000
Message-ID: <158346890656.3081.15972895999609916750@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305202707.204350-1-matthew.auld@intel.com>
In-Reply-To: <20200305202707.204350-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_properly_sanity_check_batch=5Fstart=5Foffset_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915: properly sanity check batch_start_offset (rev2)
URL   : https://patchwork.freedesktop.org/series/74287/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8073 -> Patchwork_16847
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16847/index.html

Known issues
------------

  Here are the changes found in Patchwork_16847 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#943])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16847/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled-mismatch.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16847/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled-mismatch.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][5] -> [FAIL][6] ([fdo#111407])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16847/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@vgem_basic@create:
    - fi-tgl-y:           [DMESG-WARN][7] ([CI#94] / [i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-tgl-y/igt@vgem_basic@create.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16847/fi-tgl-y/igt@vgem_basic@create.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#943]: https://gitlab.freedesktop.org/drm/intel/issues/943


Participating hosts (47 -> 41)
------------------------------

  Additional (4): fi-kbl-soraka fi-elk-e7500 fi-snb-2520m fi-skl-6600u 
  Missing    (10): fi-hsw-4200u fi-hsw-peppy fi-skl-6770hq fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-skl-lmem fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8073 -> Patchwork_16847

  CI-20190529: 20190529
  CI_DRM_8073: 04042aee59126471bb37cec526ccaf44b4e8d506 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16847: 5aaff43297e17fe8352c34908a197798c8d66949 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5aaff43297e1 drm/i915: properly sanity check batch_start_offset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16847/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
