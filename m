Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F1D1ACE9C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 19:23:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F2EE6E83B;
	Thu, 16 Apr 2020 17:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF1086E83A;
 Thu, 16 Apr 2020 17:23:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D7CA3A0019;
 Thu, 16 Apr 2020 17:23:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Thu, 16 Apr 2020 17:23:26 -0000
Message-ID: <158705780688.20884.5754215811443697817@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200413214407.1851002-1-lyude@redhat.com>
In-Reply-To: <20200413214407.1851002-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dpcd=5Fbl=3A_Unbreak_enable=5Fdpcd=5Fbacklight_modparam_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/dpcd_bl: Unbreak enable_dpcd_backlight modparam (rev2)
URL   : https://patchwork.freedesktop.org/series/75895/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8311 -> Patchwork_17329
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17329/index.html

Known issues
------------

  Here are the changes found in Patchwork_17329 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-icl-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#189])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-icl-dsi/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17329/fi-icl-dsi/igt@i915_pm_rpm@basic-rte.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-bwr-2160:        [FAIL][3] -> [SKIP][4] ([fdo#109271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-bwr-2160/igt@amdgpu/amd_prime@i915-to-amd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17329/fi-bwr-2160/igt@amdgpu/amd_prime@i915-to-amd.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8311 -> Patchwork_17329

  CI-20190529: 20190529
  CI_DRM_8311: 19367bb5e65eaf0719597b3ff244fd1c2ea12bda @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5593: 1c658f5e46598ae93345177d4981ef54704daec6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17329: a1ba2089b4b0c79638998e158760ef763399d89f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a1ba2089b4b0 drm/i915/dpcd_bl: Unbreak enable_dpcd_backlight modparam

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17329/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
