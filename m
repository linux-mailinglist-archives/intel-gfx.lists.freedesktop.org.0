Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC6414DBC1
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 14:29:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D259C6F9B2;
	Thu, 30 Jan 2020 13:29:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E8B966F9B0;
 Thu, 30 Jan 2020 13:29:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8BA8A0118;
 Thu, 30 Jan 2020 13:29:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 30 Jan 2020 13:29:11 -0000
Message-ID: <158039095188.21035.6419812140719265258@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200130115827.1855959-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200130115827.1855959-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Warn_about_the_hidden_i915=5Fvma=5Fpin_in_timeline?=
 =?utf-8?q?=5Fget=5Fseqno?=
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

Series: drm/i915/gt: Warn about the hidden i915_vma_pin in timeline_get_seqno
URL   : https://patchwork.freedesktop.org/series/72770/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7842 -> Patchwork_16334
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16334 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16334, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16334/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16334:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-hsw-peppy:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16334/fi-hsw-peppy/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16334 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][2] -> [TIMEOUT][3] ([fdo#112271])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16334/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-byt-n2820:       [DMESG-FAIL][4] ([i915#725]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/fi-byt-n2820/igt@i915_selftest@live_blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16334/fi-byt-n2820/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [TIMEOUT][6] ([fdo#112271]) -> [FAIL][7] ([i915#694])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16334/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (48 -> 43)
------------------------------

  Additional (4): fi-glk-dsi fi-tgl-y fi-tgl-u fi-bwr-2160 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ivb-3770 fi-skl-lmem fi-byt-clapper fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7842 -> Patchwork_16334

  CI-20190529: 20190529
  CI_DRM_7842: 34f535513361a22f81bc3b7388755872b73b18f3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16334: 6215ed3cf29c56cf9f5d41457f5984dfc5014cb4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6215ed3cf29c drm/i915/gt: Warn about the hidden i915_vma_pin in timeline_get_seqno

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16334/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
