Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 181241934EE
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 01:18:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12DC36E881;
	Thu, 26 Mar 2020 00:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A43B96E221;
 Thu, 26 Mar 2020 00:18:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9DA4AA0099;
 Thu, 26 Mar 2020 00:18:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 26 Mar 2020 00:18:25 -0000
Message-ID: <158518190561.23003.11700520092810697295@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200325234803.6175-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200325234803.6175-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Drop_final_few_uses_of_drm=5Fi915=5Fprivate=2Eengine?=
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

Series: drm/i915: Drop final few uses of drm_i915_private.engine
URL   : https://patchwork.freedesktop.org/series/75095/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8190 -> Patchwork_17091
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/index.html

Known issues
------------

  Here are the changes found in Patchwork_17091 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-u}:         [DMESG-FAIL][1] ([i915#656]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/fi-tgl-u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/fi-tgl-u/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [INCOMPLETE][3] ([fdo#108569]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][5] ([i915#1209]) -> [FAIL][6] ([i915#1485] / [i915#192] / [i915#193] / [i915#194])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/fi-kbl-8809g/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1485]: https://gitlab.freedesktop.org/drm/intel/issues/1485
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (40 -> 33)
------------------------------

  Additional (1): fi-glk-dsi 
  Missing    (8): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-hsw-4770 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8190 -> Patchwork_17091

  CI-20190529: 20190529
  CI_DRM_8190: 73f711b364bc85c8a7189487c09431eb1f515ed0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5538: 47becbc9cd1fc7b1b78692f90fd3dcd5a9066965 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17091: 5d93726b0f962863c2138c1ad13025f63d5e75d4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5d93726b0f96 drm/i915: Drop final few uses of drm_i915_private.engine

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
