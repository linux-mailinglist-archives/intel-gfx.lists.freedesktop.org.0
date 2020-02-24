Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 438DB16A384
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 11:09:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0FDE6E3FE;
	Mon, 24 Feb 2020 10:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6425B6E3FC;
 Mon, 24 Feb 2020 10:09:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C6EAA00E8;
 Mon, 24 Feb 2020 10:09:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Mon, 24 Feb 2020 10:09:05 -0000
Message-ID: <158253894534.28363.3326858698572298615@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131114258.22306-1-animesh.manna@intel.com>
In-Reply-To: <20200131114258.22306-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsb=3A_Enable_lmem_for_dsb_=28rev2=29?=
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

Series: drm/i915/dsb: Enable lmem for dsb (rev2)
URL   : https://patchwork.freedesktop.org/series/72818/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7993 -> Patchwork_16681
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16681 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16681, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16681/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16681:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_dmabuf:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-bwr-2160/igt@i915_selftest@live_dmabuf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16681/fi-bwr-2160/igt@i915_selftest@live_dmabuf.html

  
Known issues
------------

  Here are the changes found in Patchwork_16681 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][3] -> [INCOMPLETE][4] ([i915#694] / [i915#816])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16681/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [PASS][5] -> [INCOMPLETE][6] ([i915#45])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16681/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@vgem_basic@create:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-tgl-y/igt@vgem_basic@create.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16681/fi-tgl-y/igt@vgem_basic@create.html

  
#### Possible fixes ####

  * igt@kms_addfb_basic@bad-pitch-999:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-999.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16681/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-999.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][11] ([fdo#111407]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16681/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (45 -> 44)
------------------------------

  Additional (7): fi-bdw-5557u fi-skl-6770hq fi-glk-dsi fi-ilk-650 fi-ivb-3770 fi-skl-lmem fi-skl-6600u 
  Missing    (8): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-icl-u3 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7993 -> Patchwork_16681

  CI-20190529: 20190529
  CI_DRM_7993: db7cdbfad15a4b58edea31e516886081aeab188b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5459: ca5337002b52fe115cb871d5146543616fd1f207 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16681: fd559e8f5963751f76c03eabcea478b8806e1d1a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fd559e8f5963 drm/i915/dsb: Enable lmem for dsb

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16681/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
