Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C831BEEE3
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 06:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FCE16EB24;
	Thu, 30 Apr 2020 04:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C61B56EB21;
 Thu, 30 Apr 2020 04:04:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B5C23A0099;
 Thu, 30 Apr 2020 04:04:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexei Podtelezhnikov" <apodtele@gmail.com>
Date: Thu, 30 Apr 2020 04:04:06 -0000
Message-ID: <158821944672.31918.13095789392666894582@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <CAJU=AjWPvKA5vdgWuY6hMcq7dnZD0Zzjm0eDQBKU5TouvdL=Aw@mail.gmail.com>
In-Reply-To: <CAJU=AjWPvKA5vdgWuY6hMcq7dnZD0Zzjm0eDQBKU5TouvdL=Aw@mail.gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Update_Slylake_PCI_IDs?=
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

Series: drm/i915: Update Slylake PCI IDs
URL   : https://patchwork.freedesktop.org/series/76750/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8399 -> Patchwork_17524
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17524/index.html

Known issues
------------

  Here are the changes found in Patchwork_17524 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_engines:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2] ([i915#489])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/fi-bwr-2160/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17524/fi-bwr-2160/igt@i915_selftest@live@gt_engines.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-skl-6700k2:      [INCOMPLETE][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17524/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][5] ([i915#62]) -> [SKIP][6] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17524/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (49 -> 42)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-icl-y fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8399 -> Patchwork_17524

  CI-20190529: 20190529
  CI_DRM_8399: f7cb045d81d2a82a28448638962979ad986d7003 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5616: faab65ff9bfa28d18c23e6f69d30e133b0acd767 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17524: d7a9e44cfdd5e343f0bca703d8f0dc5db0ffd19c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d7a9e44cfdd5 drm/i915: Update Haswell PCI IDs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17524/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
