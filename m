Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 278EA199EB6
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 21:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A3B26E879;
	Tue, 31 Mar 2020 19:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 614B56E879;
 Tue, 31 Mar 2020 19:11:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A6C0A47E6;
 Tue, 31 Mar 2020 19:11:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Tue, 31 Mar 2020 19:11:45 -0000
Message-ID: <158568190534.5565.13136001613970069652@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331113735.5452-1-anshuman.gupta@intel.com>
In-Reply-To: <20200331113735.5452-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5_lpsp_support_for_lpsp_igt_=28rev6=29?=
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

Series: i915 lpsp support for lpsp igt (rev6)
URL   : https://patchwork.freedesktop.org/series/74648/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8228 -> Patchwork_17155
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17155:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - {fi-ehl-1}:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-ehl-1/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/fi-ehl-1/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/fi-ehl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17155 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-8809g:       [PASS][4] -> [SKIP][5] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][6] -> [FAIL][7] ([i915#262])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262


Participating hosts (48 -> 39)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (10): fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-ctg-p8600 fi-elk-e7500 fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5548 -> IGTPW_4379
  * Linux: CI_DRM_8228 -> Patchwork_17155

  CI-20190529: 20190529
  CI_DRM_8228: 1f33fcd4f840355af75a61ce7204f39bafc52018 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4379: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4379/index.html
  IGT_5548: d9e70dc1b35633b7d5c81cbfa165e331189eb260 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17155: 0291685dfab162c1e089c5884a97fa349267cb89 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0291685dfab1 drm/i915: Add connector dbgfs for all connectors
deaa2d3011d8 drm/i915: Add i915_lpsp_info debugfs
4267f9fc4f8e drm/i915: Power well id for ICL PG3

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17155/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
