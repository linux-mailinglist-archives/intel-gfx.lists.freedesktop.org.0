Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B68B15CFDE
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 03:21:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04D916E053;
	Fri, 14 Feb 2020 02:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 096AD6E053;
 Fri, 14 Feb 2020 02:21:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB8D0A47E9;
 Fri, 14 Feb 2020 02:21:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Fri, 14 Feb 2020 02:21:19 -0000
Message-ID: <158164687993.9931.14040609983096302617@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200214015038.122913-1-jose.souza@intel.com>
In-Reply-To: <20200214015038.122913-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/psr=3A_Force_PSR_probe_only_after_full_initialization?=
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

Series: drm/i915/psr: Force PSR probe only after full initialization
URL   : https://patchwork.freedesktop.org/series/73436/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7935 -> Patchwork_16564
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16564 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16564, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16564/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16564:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@module-reload:
    - {fi-tgl-u}:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7935/fi-tgl-u/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16564/fi-tgl-u/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - {fi-tgl-u}:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16564/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16564 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [PASS][4] -> [INCOMPLETE][5] ([i915#151])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7935/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16564/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
    - fi-cml-s:           [PASS][6] -> [INCOMPLETE][7] ([i915#283])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7935/fi-cml-s/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16564/fi-cml-s/igt@i915_pm_rpm@module-reload.html
    - fi-icl-u3:          [PASS][8] -> [INCOMPLETE][9] ([i915#189])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7935/fi-icl-u3/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16564/fi-icl-u3/igt@i915_pm_rpm@module-reload.html
    - fi-cml-u2:          [PASS][10] -> [INCOMPLETE][11] ([i915#283])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7935/fi-cml-u2/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16564/fi-cml-u2/igt@i915_pm_rpm@module-reload.html
    - fi-icl-guc:         [PASS][12] -> [INCOMPLETE][13] ([i915#189])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7935/fi-icl-guc/igt@i915_pm_rpm@module-reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16564/fi-icl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-r:           [PASS][14] -> [INCOMPLETE][15] ([i915#151])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7935/fi-kbl-r/igt@i915_pm_rpm@module-reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16564/fi-kbl-r/igt@i915_pm_rpm@module-reload.html
    - fi-icl-u2:          [PASS][16] -> [INCOMPLETE][17] ([i915#189])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7935/fi-icl-u2/igt@i915_pm_rpm@module-reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16564/fi-icl-u2/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283


Participating hosts (52 -> 10)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_16564 prevented too many machines from booting.

  Additional (1): fi-kbl-7560u 
  Missing    (43): fi-skl-6770hq fi-bdw-gvtdvm fi-snb-2520m fi-apl-guc fi-pnv-d510 fi-icl-y fi-skl-lmem fi-blb-e6850 fi-icl-dsi fi-byt-n2820 fi-snb-2600 fi-hsw-4770r fi-bdw-5557u fi-bxt-dsi fi-bsw-n3050 fi-byt-j1900 fi-glk-dsi fi-bwr-2160 fi-ilk-650 fi-kbl-7500u fi-ctg-p8600 fi-hsw-4770 fi-gdg-551 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-ilk-m540 fi-ehl-1 fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7935 -> Patchwork_16564

  CI-20190529: 20190529
  CI_DRM_7935: 4bce2388b13d8b487dbfec353a2cb0131b6b9582 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5441: 534ca091fe4ffed916752165bc5becd7ff56cd84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16564: b97c6cf59ec71026328d0f6306542a86a740fe12 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b97c6cf59ec7 drm/i915/psr: Force PSR probe only after full initialization

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16564/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
