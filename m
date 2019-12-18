Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AB0125466
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 22:13:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5EE089E9B;
	Wed, 18 Dec 2019 21:12:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C40589E9B;
 Wed, 18 Dec 2019 21:12:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5394DA0099;
 Wed, 18 Dec 2019 21:12:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Wed, 18 Dec 2019 21:12:56 -0000
Message-ID: <157670357631.8355.15603631992263397266@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218185910.303540-1-jose.souza@intel.com>
In-Reply-To: <20191218185910.303540-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/6=5D_drm/i915/display=3A_Share_inte?=
 =?utf-8?b?bF9jb25uZWN0b3JfbmVlZHNfbW9kZXNldCgp?=
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

Series: series starting with [v4,1/6] drm/i915/display: Share intel_connector_needs_modeset()
URL   : https://patchwork.freedesktop.org/series/71129/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7599 -> Patchwork_15831
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15831 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15831, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15831:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy-all:
    - fi-byt-n2820:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-byt-n2820/igt@gem_busy@busy-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-byt-n2820/igt@gem_busy@busy-all.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-cfl-guc:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-cfl-guc/igt@kms_busy@basic-flip-pipe-b.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-cfl-guc/igt@kms_busy@basic-flip-pipe-b.html
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-cfl-8700k/igt@kms_busy@basic-flip-pipe-b.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-cfl-8700k/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_busy@basic-flip-pipe-c:
    - fi-skl-guc:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-skl-guc/igt@kms_busy@basic-flip-pipe-c.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-skl-guc/igt@kms_busy@basic-flip-pipe-c.html

  * igt@runner@aborted:
    - fi-whl-u:           NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-whl-u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-bxt-dsi/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15831 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][11] -> [TIMEOUT][12] ([i915#816])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [PASS][13] -> [FAIL][14] ([fdo#103375])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-skl-6770hq:      [PASS][15] -> [INCOMPLETE][16] ([i915#198])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-skl-6770hq/igt@kms_busy@basic-flip-pipe-b.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-skl-6770hq/igt@kms_busy@basic-flip-pipe-b.html
    - fi-skl-lmem:        [PASS][17] -> [INCOMPLETE][18] ([i915#198])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-skl-lmem/igt@kms_busy@basic-flip-pipe-b.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-skl-lmem/igt@kms_busy@basic-flip-pipe-b.html
    - fi-cml-u2:          [PASS][19] -> [TIMEOUT][20] ([i915#109] / [i915#449])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-cml-u2/igt@kms_busy@basic-flip-pipe-b.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-cml-u2/igt@kms_busy@basic-flip-pipe-b.html
    - fi-apl-guc:         [PASS][21] -> [INCOMPLETE][22] ([fdo#103927])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-apl-guc/igt@kms_busy@basic-flip-pipe-b.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-apl-guc/igt@kms_busy@basic-flip-pipe-b.html
    - fi-bxt-dsi:         [PASS][23] -> [TIMEOUT][24] ([i915#109] / [i915#449])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-bxt-dsi/igt@kms_busy@basic-flip-pipe-b.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-bxt-dsi/igt@kms_busy@basic-flip-pipe-b.html
    - fi-whl-u:           [PASS][25] -> [TIMEOUT][26] ([i915#109] / [i915#449])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-whl-u/igt@kms_busy@basic-flip-pipe-b.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-whl-u/igt@kms_busy@basic-flip-pipe-b.html
    - fi-icl-y:           [PASS][27] -> [TIMEOUT][28] ([i915#109] / [i915#449])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-icl-y/igt@kms_busy@basic-flip-pipe-b.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-icl-y/igt@kms_busy@basic-flip-pipe-b.html
    - fi-glk-dsi:         [PASS][29] -> [TIMEOUT][30] ([i915#109] / [i915#449])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-glk-dsi/igt@kms_busy@basic-flip-pipe-b.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-glk-dsi/igt@kms_busy@basic-flip-pipe-b.html
    - fi-tgl-y:           [PASS][31] -> [TIMEOUT][32] ([i915#109] / [i915#449] / [i915#561])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-tgl-y/igt@kms_busy@basic-flip-pipe-b.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-tgl-y/igt@kms_busy@basic-flip-pipe-b.html
    - fi-kbl-soraka:      [PASS][33] -> [TIMEOUT][34] ([i915#109] / [i915#449])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-soraka/igt@kms_busy@basic-flip-pipe-b.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-kbl-soraka/igt@kms_busy@basic-flip-pipe-b.html
    - fi-icl-guc:         [PASS][35] -> [TIMEOUT][36] ([i915#109] / [i915#449])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-icl-guc/igt@kms_busy@basic-flip-pipe-b.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-icl-guc/igt@kms_busy@basic-flip-pipe-b.html
    - fi-kbl-r:           [PASS][37] -> [TIMEOUT][38] ([i915#109] / [i915#449])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-r/igt@kms_busy@basic-flip-pipe-b.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-kbl-r/igt@kms_busy@basic-flip-pipe-b.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][39] ([i915#816]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][41] ([fdo#111593]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [DMESG-WARN][43] ([fdo#111764]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][45] ([i915#725]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][47] ([i915#725]) -> [DMESG-FAIL][48] ([i915#770])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [DMESG-FAIL][49] ([i915#722]) -> [INCOMPLETE][50] ([i915#694])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][51] ([i915#62] / [i915#92]) -> [INCOMPLETE][52] ([i915#605])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@runner@aborted:
    - fi-icl-guc:         [FAIL][53] ([fdo#110943] / [fdo#111093]) -> [FAIL][54] ([fdo#111093] / [i915#287] / [k.org#203557])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-icl-guc/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/fi-icl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#110943]: https://bugs.freedesktop.org/show_bug.cgi?id=110943
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#287]: https://gitlab.freedesktop.org/drm/intel/issues/287
  [i915#449]: https://gitlab.freedesktop.org/drm/intel/issues/449
  [i915#561]: https://gitlab.freedesktop.org/drm/intel/issues/561
  [i915#605]: https://gitlab.freedesktop.org/drm/intel/issues/605
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [k.org#203557]: https://bugzilla.kernel.org/show_bug.cgi?id=203557


Participating hosts (48 -> 43)
------------------------------

  Additional (2): fi-snb-2520m fi-skl-6600u 
  Missing    (7): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-bsw-cyan fi-kbl-8809g fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7599 -> Patchwork_15831

  CI-20190529: 20190529
  CI_DRM_7599: 03dfaf2e5f39b632d0187544f3c988b8596f11b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15831: 2a2e8a0e7a473566b6014001142352682360acbf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2a2e8a0e7a47 drm/i915/display: Add comment to a function that probably can be removed
f0682bef2dce drm/i915/display: Check if pipe fastset is allowed by external dependencies
aafd5f147577 drm/i915/dp: Fix MST disable sequences
fd29285dc8bc drm/i915/display: Always enables MST master pipe first
0904a031fbab drm/i915/tgl: Select master transcoder for MST stream
58a9550588ee drm/i915/display: Share intel_connector_needs_modeset()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15831/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
