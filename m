Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D17D17B695
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 07:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9DC86E420;
	Fri,  6 Mar 2020 06:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 027BC6E420;
 Fri,  6 Mar 2020 06:09:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EDB36A00E7;
 Fri,  6 Mar 2020 06:09:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 06 Mar 2020 06:09:52 -0000
Message-ID: <158347499294.3082.985470129841806283@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305204258.216302-1-matthew.auld@intel.com>
In-Reply-To: <20200305204258.216302-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/phys=3A_unconditionally_call_release=5Fmemory=5Fregion?=
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

Series: drm/i915/phys: unconditionally call release_memory_region
URL   : https://patchwork.freedesktop.org/series/74354/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8074 -> Patchwork_16849
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16849/index.html

Known issues
------------

  Here are the changes found in Patchwork_16849 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-128.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16849/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-128.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-soraka:      [PASS][3] -> [FAIL][4] ([i915#34])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16849/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [DMESG-WARN][5] ([CI#94] / [i915#402]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16849/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (50 -> 43)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (8): fi-hsw-4200u fi-bsw-n3050 fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8074 -> Patchwork_16849

  CI-20190529: 20190529
  CI_DRM_8074: 0dd63259839ca847514d9999749219635f311015 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16849: c2288814c4892b49c27aa4250ce0e6a483d04077 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c2288814c489 drm/i915/phys: unconditionally call release_memory_region

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16849/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
