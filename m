Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B3A15B31D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 22:53:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94E9A6E126;
	Wed, 12 Feb 2020 21:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 298476E10C;
 Wed, 12 Feb 2020 21:52:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19880A7525;
 Wed, 12 Feb 2020 21:52:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 12 Feb 2020 21:52:56 -0000
Message-ID: <158154437607.24264.6802612153072267454@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200212003124.33844-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200212003124.33844-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ29t?=
 =?utf-8?q?mit_early_to_GuC_=28rev3=29?=
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

Series: Commit early to GuC (rev3)
URL   : https://patchwork.freedesktop.org/series/72031/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7925 -> Patchwork_16535
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/index.html

Known issues
------------

  Here are the changes found in Patchwork_16535 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-cml-u2:          [PASS][1] -> [FAIL][2] ([i915#217])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([fdo#111407])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][5] ([i915#178]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gtt:
    - {fi-tgl-dsi}:       [TIMEOUT][7] ([fdo#112126] / [fdo#112271]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/fi-tgl-dsi/igt@i915_selftest@live_gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/fi-tgl-dsi/igt@i915_selftest@live_gtt.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-y:           [INCOMPLETE][9] ([fdo#108569]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/fi-icl-y/igt@i915_selftest@live_hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/fi-icl-y/igt@i915_selftest@live_hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (42 -> 43)
------------------------------

  Additional (8): fi-ivb-3770 fi-cfl-8109u fi-skl-6700k2 fi-skl-lmem fi-blb-e6850 fi-kbl-r fi-skl-6600u fi-snb-2600 
  Missing    (7): fi-hsw-peppy fi-byt-squawks fi-glk-dsi fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7925 -> Patchwork_16535

  CI-20190529: 20190529
  CI_DRM_7925: b266b79c3de9874e0f991b6a9cc284a424094649 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16535: 70b2b644b94a9a333ba373ea47c758c7d581368f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

70b2b644b94a HAX: drm/i915: default to enable_guc=2
e5b2f4d6ca34 drm/i915/uc: consolidate firmware cleanup
6df67d7fcd06 drm/i915/uc: Abort early on uc_init failure
c7b983206d15 drm/i915/guc: Apply new uC status tracking to GuC submission as well
300e9108bf45 drm/i915/uc: Improve tracking of uC init status
ac5ee731ad09 drm/i915/uc: autogenerate uC checker functions
53a7bb512097 drm/i915/uc: Update the FW status on injected fetch error
9c3bd7cffa07 drm/i915/guc: Kill USES_GUC_SUBMISSION macro
434763d74348 drm/i915/guc: Kill USES_GUC macro
86c2261830f8 drm/i915/debugfs: Pass guc_log struct to i915_guc_log_info

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
