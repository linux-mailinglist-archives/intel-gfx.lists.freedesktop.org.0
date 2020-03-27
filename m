Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B00194E34
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 01:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B8986E03D;
	Fri, 27 Mar 2020 00:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 37F1389C98;
 Fri, 27 Mar 2020 00:52:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 31E7FA47DF;
 Fri, 27 Mar 2020 00:52:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 27 Mar 2020 00:52:47 -0000
Message-ID: <158527036717.17236.7375982537022259962@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326231810.16852-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200326231810.16852-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/execlists=3A_Prevent_GPU_d?=
 =?utf-8?q?eath_on_ELSP=5B1=5D_promotion_to_idle_context?=
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

Series: series starting with [1/2] drm/i915/execlists: Prevent GPU death on ELSP[1] promotion to idle context
URL   : https://patchwork.freedesktop.org/series/75138/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8197 -> Patchwork_17106
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17106/index.html

Known issues
------------

  Here are the changes found in Patchwork_17106 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2] ([fdo#103927])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17106/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-icl-dsi:         [PASS][3] -> [INCOMPLETE][4] ([i915#140])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/fi-icl-dsi/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17106/fi-icl-dsi/igt@i915_selftest@live@execlists.html
    - fi-cml-s:           [PASS][5] -> [INCOMPLETE][6] ([i915#283])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/fi-cml-s/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17106/fi-cml-s/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][7] -> [FAIL][8] ([i915#262])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17106/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bwr-2160:        [INCOMPLETE][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/fi-bwr-2160/igt@i915_selftest@live@late_gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17106/fi-bwr-2160/igt@i915_selftest@live@late_gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (44 -> 41)
------------------------------

  Additional (2): fi-kbl-r fi-kbl-7500u 
  Missing    (5): fi-hsw-4770r fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8197 -> Patchwork_17106

  CI-20190529: 20190529
  CI_DRM_8197: 198bab1da198b9d6d5c36d52704dd4abab6e81a8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5539: e7aae12e37771a8b7796ba252574eb832a5839c3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17106: 185b85c7368afa95d0c352b09e7ac161ae19e2bc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

185b85c7368a drm/i915/execlists: Explicitly reset both reg and context runtime
d6626ef65d6d drm/i915/execlists: Prevent GPU death on ELSP[1] promotion to idle context

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17106/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
