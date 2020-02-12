Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEB815B57A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 00:55:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F8FA6E133;
	Wed, 12 Feb 2020 23:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 896226E133;
 Wed, 12 Feb 2020 23:55:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 824C7A0096;
 Wed, 12 Feb 2020 23:55:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 12 Feb 2020 23:55:17 -0000
Message-ID: <158155171753.24266.9395427007973657545@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211185008.30806-1-jose.souza@intel.com>
In-Reply-To: <20200211185008.30806-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/mst=3A_Set_intel=5Fdp?=
 =?utf-8?q?=5Fset=5Fm=5Fn=28=29_for_MST_slaves?=
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

Series: series starting with [v2,1/2] drm/i915/mst: Set intel_dp_set_m_n() for MST slaves
URL   : https://patchwork.freedesktop.org/series/73333/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7926 -> Patchwork_16536
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16536/index.html

Known issues
------------

  Here are the changes found in Patchwork_16536 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [PASS][1] -> [INCOMPLETE][2] ([CI#80] / [fdo#106070] / [i915#424])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16536/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424


Participating hosts (45 -> 40)
------------------------------

  Additional (8): fi-hsw-peppy fi-skl-6770hq fi-bdw-gvtdvm fi-glk-dsi fi-gdg-551 fi-bsw-kefka fi-kbl-7560u fi-kbl-r 
  Missing    (13): fi-ilk-m540 fi-bdw-samus fi-bsw-n3050 fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-kbl-7500u fi-ctg-p8600 fi-cfl-8109u fi-blb-e6850 fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7926 -> Patchwork_16536

  CI-20190529: 20190529
  CI_DRM_7926: 6b2fe829d300abf285e9db8b252ffacd216df3ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16536: fd8890d26afc19e2b5953c7dfad3d1cf07b276b8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fd8890d26afc drm/i915/display/tgl: Enable hotplug detection in TC5 and TC6
bf8f5f0801d3 drm/i915/mst: Set intel_dp_set_m_n() for MST slaves

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16536/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
