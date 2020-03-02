Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7EB17610B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 18:30:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA8AD6E402;
	Mon,  2 Mar 2020 17:30:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C3286E402;
 Mon,  2 Mar 2020 17:30:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 75D11A0071;
 Mon,  2 Mar 2020 17:30:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 02 Mar 2020 17:30:48 -0000
Message-ID: <158317024846.30644.12784682529027157025@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302162151.52349-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200302162151.52349-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_drm=5Ffb=5Fhelper_cleanup=2E_=28rev2=29?=
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

Series: drm: drm_fb_helper cleanup. (rev2)
URL   : https://patchwork.freedesktop.org/series/74140/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8045 -> Patchwork_16782
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16782/index.html

Known issues
------------

  Here are the changes found in Patchwork_16782 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [PASS][1] -> [INCOMPLETE][2] ([fdo#108569])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16782/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16782/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Possible fixes ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][5] ([i915#217]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16782/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@vgem_basic@debugfs:
    - fi-tgl-y:           [DMESG-WARN][7] ([CI#94] / [i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/fi-tgl-y/igt@vgem_basic@debugfs.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16782/fi-tgl-y/igt@vgem_basic@debugfs.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (50 -> 40)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (11): fi-bdw-samus fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-ivb-3770 fi-kbl-7560u fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8045 -> Patchwork_16782

  CI-20190529: 20190529
  CI_DRM_8045: 20933db717e6e793af836173de3d3011171e19b5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5483: 1707153df224ffb6333c6c660a792b7f334eb3d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16782: a62d3601c88e9446ada152e3d9f82bd1f3813ad7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a62d3601c88e drm/todo: Update drm_fb_helper tasks
cc31536d1ca3 drm/fb-helper: Remove drm_fb_helper add, add_all and remove connector functions
ead9b7648007 drm: Remove drm_fb_helper add, add all and remove connector calls
cd18ce952086 drm/i915/display: Remove drm_fb_helper_{add, remove}_one_connector calls
aae0dc36478f drm/amdgpu: Remove drm_fb_helper_{add, remove}_one_connector calls
fb6218caebe9 drm/radeon: remove radeon_fb_{add, remove}_connector functions
b2d10e50a2fc drm: Remove unused arg from drm_fb_helper_init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16782/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
