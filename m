Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D24E31FF21A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 14:41:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 548DD6E3C4;
	Thu, 18 Jun 2020 12:41:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 104706E179;
 Thu, 18 Jun 2020 12:41:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 097FCA0BA8;
 Thu, 18 Jun 2020 12:41:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 18 Jun 2020 12:41:05 -0000
Message-ID: <159248406500.22460.16640419528145048799@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200618100356.15744-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200618100356.15744-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/11=5D_drm/i915/gt=3A_Decouple_completed?=
 =?utf-8?q?_requests_on_unwind_=28rev3=29?=
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

Series: series starting with [01/11] drm/i915/gt: Decouple completed requests on unwind (rev3)
URL   : https://patchwork.freedesktop.org/series/78522/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8641 -> Patchwork_17987
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17987 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17987, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17987:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2520m:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - fi-cml-u2:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-cml-u2/igt@i915_selftest@live@hugepages.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-cml-u2/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@reset:
    - fi-cfl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-cfl-guc/igt@i915_selftest@live@reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-cfl-guc/igt@i915_selftest@live@reset.html
    - fi-kbl-soraka:      [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-soraka/igt@i915_selftest@live@reset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-kbl-soraka/igt@i915_selftest@live@reset.html
    - fi-cml-s:           [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-cml-s/igt@i915_selftest@live@reset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-cml-s/igt@i915_selftest@live@reset.html
    - fi-tgl-u2:          [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-tgl-u2/igt@i915_selftest@live@reset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-tgl-u2/igt@i915_selftest@live@reset.html
    - fi-icl-guc:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-icl-guc/igt@i915_selftest@live@reset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-icl-guc/igt@i915_selftest@live@reset.html
    - fi-bsw-kefka:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-bsw-kefka/igt@i915_selftest@live@reset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-bsw-kefka/igt@i915_selftest@live@reset.html
    - fi-bdw-5557u:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-bdw-5557u/igt@i915_selftest@live@reset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-bdw-5557u/igt@i915_selftest@live@reset.html
    - fi-kbl-x1275:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-x1275/igt@i915_selftest@live@reset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-kbl-x1275/igt@i915_selftest@live@reset.html
    - fi-kbl-7500u:       [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-7500u/igt@i915_selftest@live@reset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-kbl-7500u/igt@i915_selftest@live@reset.html
    - fi-icl-y:           [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-icl-y/igt@i915_selftest@live@reset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-icl-y/igt@i915_selftest@live@reset.html
    - fi-cfl-8109u:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-cfl-8109u/igt@i915_selftest@live@reset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-cfl-8109u/igt@i915_selftest@live@reset.html
    - fi-icl-u2:          [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-icl-u2/igt@i915_selftest@live@reset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-icl-u2/igt@i915_selftest@live@reset.html
    - fi-cfl-8700k:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-cfl-8700k/igt@i915_selftest@live@reset.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-cfl-8700k/igt@i915_selftest@live@reset.html
    - fi-apl-guc:         [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-apl-guc/igt@i915_selftest@live@reset.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-apl-guc/igt@i915_selftest@live@reset.html
    - fi-skl-6600u:       [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-skl-6600u/igt@i915_selftest@live@reset.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-skl-6600u/igt@i915_selftest@live@reset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@reset:
    - {fi-ehl-1}:         [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-ehl-1/igt@i915_selftest@live@reset.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-ehl-1/igt@i915_selftest@live@reset.html
    - {fi-tgl-dsi}:       [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-tgl-dsi/igt@i915_selftest@live@reset.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-tgl-dsi/igt@i915_selftest@live@reset.html

  
Known issues
------------

  Here are the changes found in Patchwork_17987 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [PASS][39] -> [DMESG-WARN][40] ([i915#1982])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@reset:
    - fi-glk-dsi:         [PASS][41] -> [INCOMPLETE][42] ([i915#58] / [k.org#198133])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-glk-dsi/igt@i915_selftest@live@reset.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-glk-dsi/igt@i915_selftest@live@reset.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [PASS][43] -> [DMESG-WARN][44] ([i915#62] / [i915#92] / [i915#95])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-guc:         [PASS][45] -> [DMESG-WARN][46] ([i915#1982])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-icl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-icl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][47] ([i915#1888]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [DMESG-WARN][49] ([i915#402]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-tgl-u2/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_flip@basic-flip-vs-modeset@d-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@d-dsi1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@d-dsi1.html

  
#### Warnings ####

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-x1275:       [DMESG-WARN][55] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][56] ([i915#62] / [i915#92]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][57] ([i915#62] / [i915#92]) -> [DMESG-WARN][58] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8641/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (49 -> 32)
------------------------------

  Missing    (17): fi-ilk-m540 fi-bxt-dsi fi-bdw-samus fi-bsw-n3050 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-guc fi-ctg-p8600 fi-whl-u fi-kbl-8809g fi-skl-lmem fi-kbl-7560u fi-byt-clapper fi-bsw-nick fi-skl-6700k2 fi-kbl-r 


Build changes
-------------

  * Linux: CI_DRM_8641 -> Patchwork_17987

  CI-20190529: 20190529
  CI_DRM_8641: aac91f91c7be78f53b352237d968dfa1996b2d4b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5712: eba1135ddd35f9d3097ed91032aefe8f9a9f9d02 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17987: 00d941188df5028230c80cc86e67ddd84ccc0f98 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

00d941188df5 drm/i915/gt: Resubmit the virtual engine on schedule-out
7411d8542246 drm/i915/gt: Decouple inflight virtual engines
da379162e57f drm/i915/gt: Use virtual_engine during execlists_dequeue
fd9642a91243 drm/i915/gt: Convert stats.active to plain unsigned int
debb4583e9c0 drm/i915/gt: Extract busy-stats for ring-scheduler
d04ee88b4f0c drm/i915/gt: Drop atomic for engine->fw_active tracking
4134bd32c7be drm/i915/gt: ce->inflight updates are now serialised
19e8c8871406 drm/i915/execlists: Defer schedule_out until after the next dequeue
24ac4a11960a drm/i915/gt: Replace direct submit with direct call to tasklet
3ef642da1d22 drm/i915/gt: Check for a completed last request once
990732b3a2b0 drm/i915/gt: Decouple completed requests on unwind

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17987/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
