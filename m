Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F121957DF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 14:19:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59EE6EA2B;
	Fri, 27 Mar 2020 13:19:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB4BD6EA2A;
 Fri, 27 Mar 2020 13:19:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A55D0A00E6;
 Fri, 27 Mar 2020 13:19:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 27 Mar 2020 13:19:17 -0000
Message-ID: <158531515767.17234.17130807402141286739@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200327112653.14362-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200327112653.14362-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Prevent_GPU_death_on_ELSP=5B1=5D_promotion_t?=
 =?utf-8?q?o_idle_context_=28rev7=29?=
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

Series: drm/i915/execlists: Prevent GPU death on ELSP[1] promotion to idle context (rev7)
URL   : https://patchwork.freedesktop.org/series/75130/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8201 -> Patchwork_17116
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/index.html

Known issues
------------

  Here are the changes found in Patchwork_17116 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#140])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/fi-icl-dsi/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/fi-icl-dsi/igt@i915_selftest@live@execlists.html
    - fi-kbl-8809g:       [PASS][3] -> [INCOMPLETE][4] ([CI#80] / [fdo#112259])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/fi-kbl-8809g/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_pm:
    - fi-bwr-2160:        [PASS][5] -> [INCOMPLETE][6] ([i915#489])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/fi-bwr-2160/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/fi-bwr-2160/igt@i915_selftest@live@gt_pm.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [FAIL][7] ([i915#579]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][9] ([i915#1209]) -> [FAIL][10] ([i915#656])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/fi-kbl-8809g/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (46 -> 40)
------------------------------

  Additional (1): fi-byt-n2820 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8201 -> Patchwork_17116

  CI-20190529: 20190529
  CI_DRM_8201: df2dc60809f02d714ddc26136c24d6fc6f5268b6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5541: f3d9a3a5fa9ea281b859a5b81201e6147b9fbad1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17116: ee89d7390a2e05a8cd06631b1838d838b175ba9c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ee89d7390a2e drm/i915/execlists: Prevent GPU death on ELSP[1] promotion to idle context

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
