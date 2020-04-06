Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFC01A012D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 00:37:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAE3A6E041;
	Mon,  6 Apr 2020 22:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6D40F6E041;
 Mon,  6 Apr 2020 22:37:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65BDAA47E2;
 Mon,  6 Apr 2020 22:37:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Venkata Sandeep Dhanalakota" <venkata.s.dhanalakota@intel.com>
Date: Mon, 06 Apr 2020 22:37:06 -0000
Message-ID: <158621262638.4193.2517492285825986765@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200406200710.2056-1-venkata.s.dhanalakota@intel.com>
In-Reply-To: <20200406200710.2056-1-venkata.s.dhanalakota@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_introduce_a_mechanism_t?=
 =?utf-8?q?o_extend_execbuf2?=
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

Series: series starting with [1/3] drm/i915: introduce a mechanism to extend execbuf2
URL   : https://patchwork.freedesktop.org/series/75570/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8264 -> Patchwork_17225
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17225/index.html

Known issues
------------

  Here are the changes found in Patchwork_17225 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-icl-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#189])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-icl-dsi/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17225/fi-icl-dsi/igt@i915_pm_rpm@basic-rte.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][3] ([i915#1158]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17225/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [INCOMPLETE][5] ([i915#1580]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17225/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  
  [i915#1158]: https://gitlab.freedesktop.org/drm/intel/issues/1158
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189


Participating hosts (53 -> 46)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8264 -> Patchwork_17225

  CI-20190529: 20190529
  CI_DRM_8264: e0104585f880a64d4a9b40803cf4fb51ab499f7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5573: 9c582425d6b4fc1de9fc2ffc8015cc6f0a0d3e98 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17225: afdb9ac918aca5d4a603ec3d33e2b4932e3dc1ca @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

afdb9ac918ac drm/i915: peel dma-fence-chains wait fences
26b10e8e5551 drm/i915: add syncobj timeline support
296bd5133612 drm/i915: introduce a mechanism to extend execbuf2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17225/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
