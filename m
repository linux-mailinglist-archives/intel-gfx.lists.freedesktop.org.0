Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53ED1194DEF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 01:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6726E96B;
	Fri, 27 Mar 2020 00:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D1C966E03D;
 Fri, 27 Mar 2020 00:17:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0757A011B;
 Fri, 27 Mar 2020 00:17:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 27 Mar 2020 00:17:31 -0000
Message-ID: <158526825177.17237.2036158570391545005@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326223501.19654-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200326223501.19654-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
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
URL   : https://patchwork.freedesktop.org/series/75137/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8197 -> Patchwork_17105
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17105 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17105, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17105/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17105:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17105/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - fi-cfl-guc:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17105/fi-cfl-guc/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_17105 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][5] -> [INCOMPLETE][6] ([fdo#103927])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17105/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-icl-dsi:         [PASS][7] -> [INCOMPLETE][8] ([i915#140])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/fi-icl-dsi/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17105/fi-icl-dsi/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][9] -> [INCOMPLETE][10] ([i915#283])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17105/fi-cml-u2/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bwr-2160:        [INCOMPLETE][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8197/fi-bwr-2160/igt@i915_selftest@live@late_gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17105/fi-bwr-2160/igt@i915_selftest@live@late_gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647


Participating hosts (44 -> 35)
------------------------------

  Additional (2): fi-kbl-r fi-kbl-7500u 
  Missing    (11): fi-hsw-4770r fi-bxt-dsi fi-bdw-samus fi-bsw-n3050 fi-byt-j1900 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-kbl-7560u fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8197 -> Patchwork_17105

  CI-20190529: 20190529
  CI_DRM_8197: 198bab1da198b9d6d5c36d52704dd4abab6e81a8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5539: e7aae12e37771a8b7796ba252574eb832a5839c3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17105: ad443fa00c35a13b98b4452da2be652582c3f1d5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ad443fa00c35 drm/i915/execlists: Explicitly reset both reg and context runtime
5868edb0b7b7 drm/i915/execlists: Prevent GPU death on ELSP[1] promotion to idle context

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17105/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
