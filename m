Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBE518270F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 03:33:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49906EA14;
	Thu, 12 Mar 2020 02:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 274CE6EA13;
 Thu, 12 Mar 2020 02:33:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24A2AA00FD;
 Thu, 12 Mar 2020 02:33:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 12 Mar 2020 02:33:27 -0000
Message-ID: <158398040714.4947.4473613273692133478@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311182618.21513-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200311182618.21513-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUGVy?=
 =?utf-8?q?_client_engine_busyness_=28rev6=29?=
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

Series: Per client engine busyness (rev6)
URL   : https://patchwork.freedesktop.org/series/70977/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8124 -> Patchwork_16938
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16938 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16938, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16938:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gtt:
    - fi-snb-2520m:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-snb-2520m/igt@i915_selftest@live@gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-snb-2520m/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@mman:
    - fi-icl-guc:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-icl-guc/igt@i915_selftest@live@mman.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-icl-guc/igt@i915_selftest@live@mman.html
    - fi-skl-6770hq:      [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-skl-6770hq/igt@i915_selftest@live@mman.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-skl-6770hq/igt@i915_selftest@live@mman.html
    - fi-kbl-soraka:      [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-kbl-soraka/igt@i915_selftest@live@mman.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-kbl-soraka/igt@i915_selftest@live@mman.html
    - fi-cfl-8109u:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-cfl-8109u/igt@i915_selftest@live@mman.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-cfl-8109u/igt@i915_selftest@live@mman.html
    - fi-ilk-650:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-ilk-650/igt@i915_selftest@live@mman.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-ilk-650/igt@i915_selftest@live@mman.html
    - fi-hsw-4770:        [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-hsw-4770/igt@i915_selftest@live@mman.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-hsw-4770/igt@i915_selftest@live@mman.html
    - fi-cfl-guc:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-cfl-guc/igt@i915_selftest@live@mman.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-cfl-guc/igt@i915_selftest@live@mman.html
    - fi-skl-guc:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-skl-guc/igt@i915_selftest@live@mman.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-skl-guc/igt@i915_selftest@live@mman.html
    - fi-skl-6700k2:      [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-skl-6700k2/igt@i915_selftest@live@mman.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-skl-6700k2/igt@i915_selftest@live@mman.html
    - fi-blb-e6850:       [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-blb-e6850/igt@i915_selftest@live@mman.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-blb-e6850/igt@i915_selftest@live@mman.html
    - fi-icl-y:           [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-icl-y/igt@i915_selftest@live@mman.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-icl-y/igt@i915_selftest@live@mman.html
    - fi-cfl-8700k:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-cfl-8700k/igt@i915_selftest@live@mman.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-cfl-8700k/igt@i915_selftest@live@mman.html
    - fi-icl-u2:          [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-icl-u2/igt@i915_selftest@live@mman.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-icl-u2/igt@i915_selftest@live@mman.html
    - fi-hsw-peppy:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-hsw-peppy/igt@i915_selftest@live@mman.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-hsw-peppy/igt@i915_selftest@live@mman.html
    - fi-kbl-7500u:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-kbl-7500u/igt@i915_selftest@live@mman.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-kbl-7500u/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-pnv-d510/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-snb-2520m/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-kbl-7500u/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-snb-2600/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][38]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-blb-e6850/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@mman:
    - {fi-tgl-u}:         [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-tgl-u/igt@i915_selftest@live@mman.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-tgl-u/igt@i915_selftest@live@mman.html

  
Known issues
------------

  Here are the changes found in Patchwork_16938 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-glk-dsi:         [PASS][41] -> [INCOMPLETE][42] ([i915#58] / [k.org#198133])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-glk-dsi/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-pnv-d510:        [PASS][43] -> [INCOMPLETE][44] ([i915#299])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-pnv-d510/igt@i915_selftest@live@gem_contexts.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-pnv-d510/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gtt:
    - fi-byt-j1900:       [PASS][45] -> [INCOMPLETE][46] ([i915#45])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-byt-j1900/igt@i915_selftest@live@gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-byt-j1900/igt@i915_selftest@live@gtt.html
    - fi-snb-2600:        [PASS][47] -> [INCOMPLETE][48] ([i915#82])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-snb-2600/igt@i915_selftest@live@gtt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-snb-2600/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@mman:
    - fi-cml-u2:          [PASS][49] -> [INCOMPLETE][50] ([i915#283])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-cml-u2/igt@i915_selftest@live@mman.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-cml-u2/igt@i915_selftest@live@mman.html
    - fi-cml-s:           [PASS][51] -> [INCOMPLETE][52] ([i915#283])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-cml-s/igt@i915_selftest@live@mman.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-cml-s/igt@i915_selftest@live@mman.html
    - fi-apl-guc:         [PASS][53] -> [INCOMPLETE][54] ([fdo#103927])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-apl-guc/igt@i915_selftest@live@mman.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-apl-guc/igt@i915_selftest@live@mman.html
    - fi-tgl-y:           [PASS][55] -> [INCOMPLETE][56] ([CI#94])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-tgl-y/igt@i915_selftest@live@mman.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-tgl-y/igt@i915_selftest@live@mman.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-icl-u2:          [PASS][57] -> [FAIL][58] ([i915#217]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html

  
#### Possible fixes ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [FAIL][59] ([i915#217]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-kbl-7500u:       [FAIL][61] ([i915#323]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (46 -> 40)
------------------------------

  Additional (2): fi-kbl-7560u fi-gdg-551 
  Missing    (8): fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-skl-lmem fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8124 -> Patchwork_16938

  CI-20190529: 20190529
  CI_DRM_8124: b720e4b68d27d8d72bbe56abfcdc91ef2bebc2c3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16938: 03ee993cda5e4f3a1f32087241c2415692212309 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

03ee993cda5e drm/i915: Prefer software tracked context busyness
633b5089141d drm/i915: Track context current active time
c0ad445d4bee drm/i915: Expose per-engine client busyness
bac56c86f3da drm/i915: Track all user contexts per client
dfd6ab343b76 drm/i915: Track runtime spent in closed GEM contexts
04e9160d2ca7 drm/i915: Track runtime spent in unreachable intel_contexts
f713946e1547 drm/i915: Use explicit flag to mark unreachable intel_context
3a15cdb16e80 drm/i915: Make GEM contexts track DRM clients
777e2a3516c5 drm/i915: Update client name on context create
29248a8e5b5b drm/i915: Expose list of clients in sysfs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16938/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
