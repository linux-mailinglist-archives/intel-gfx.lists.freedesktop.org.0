Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB88C3A7286
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 01:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A80C889C3F;
	Mon, 14 Jun 2021 23:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB89689C2A;
 Mon, 14 Jun 2021 23:34:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C31D9A9A43;
 Mon, 14 Jun 2021 23:34:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Mon, 14 Jun 2021 23:34:38 -0000
Message-ID: <162371367876.10185.14759192418523573640@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210614120906.1616120-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210614120906.1616120-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Be_more_gentle_with_exiting_non-persistent_context_=28?=
 =?utf-8?q?rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1234733073=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1234733073==
Content-Type: multipart/alternative;
 boundary="===============7665778523678177904=="

--===============7665778523678177904==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Be more gentle with exiting non-persistent context (rev3)
URL   : https://patchwork.freedesktop.org/series/89644/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10222 -> Patchwork_20358
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20358 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20358, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20358:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-glk-dsi:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-glk-dsi/igt@i915_selftest@live@execlists.html
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
    - fi-cfl-guc:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cfl-guc/igt@i915_selftest@live@execlists.html
    - fi-bxt-dsi:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-1115g4}:    [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-tgl-1115g4/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-tgl-1115g4/igt@i915_selftest@live@execlists.html
    - {fi-ehl-1}:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-ehl-1/igt@i915_selftest@live@execlists.html
    - {fi-tgl-dsi}:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - {fi-jsl-1}:         NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20358 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           [PASS][19] -> [INCOMPLETE][20] ([i915#2782] / [i915#794])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-r/igt@i915_selftest@live@execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-r/igt@i915_selftest@live@execlists.html
    - fi-bsw-nick:        [PASS][21] -> [INCOMPLETE][22] ([i915#2782] / [i915#2940])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       [PASS][23] -> [INCOMPLETE][24] ([i915#2782] / [i915#794])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-icl-u2:          [PASS][25] -> [INCOMPLETE][26] ([i915#2782])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-skl-6600u:       [PASS][27] -> [INCOMPLETE][28] ([i915#2782])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-skl-6600u/igt@i915_selftest@live@execlists.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-skl-6600u/igt@i915_selftest@live@execlists.html
    - fi-bsw-kefka:       [PASS][29] -> [INCOMPLETE][30] ([i915#2782] / [i915#2940])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
    - fi-kbl-7567u:       [PASS][31] -> [INCOMPLETE][32] ([i915#2782] / [i915#794])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-7567u/igt@i915_selftest@live@execlists.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-7567u/igt@i915_selftest@live@execlists.html
    - fi-cml-s:           [PASS][33] -> [INCOMPLETE][34] ([i915#3233])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cml-s/igt@i915_selftest@live@execlists.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cml-s/igt@i915_selftest@live@execlists.html
    - fi-skl-6700k2:      [PASS][35] -> [INCOMPLETE][36] ([i915#2782])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
    - fi-icl-y:           [PASS][37] -> [INCOMPLETE][38] ([i915#2782])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-icl-y/igt@i915_selftest@live@execlists.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][39] -> [INCOMPLETE][40] ([i915#3233])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cml-u2/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      [PASS][41] -> [INCOMPLETE][42] ([i915#2782] / [i915#794])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
    - fi-kbl-guc:         [PASS][43] -> [INCOMPLETE][44] ([i915#2782] / [i915#794])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-guc/igt@i915_selftest@live@execlists.html
    - fi-bdw-5557u:       [PASS][45] -> [INCOMPLETE][46] ([i915#2940])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-bdw-5557u/igt@i915_selftest@live@execlists.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bdw-5557u/igt@i915_selftest@live@execlists.html
    - fi-kbl-7500u:       [PASS][47] -> [INCOMPLETE][48] ([i915#2782] / [i915#794])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
    - fi-kbl-8809g:       [PASS][49] -> [INCOMPLETE][50] ([i915#2782] / [i915#794])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-8809g/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-kbl-x1275:       NOTRUN -> [FAIL][51] ([i915#1436] / [i915#3363])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][52] ([fdo#109271] / [i915#1436])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][53] ([i915#3363])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][54] ([i915#1436] / [i915#3363])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][55] ([i915#3363])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][56] ([i915#2782] / [i915#3363])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][57] ([i915#3363] / [k.org#202321])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-glk-dsi/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][58] ([fdo#109271] / [i915#1436])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][59] ([i915#1436] / [i915#3363])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][60] ([i915#1436] / [i915#3363])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][61] ([i915#3462])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][62] ([i915#1436] / [i915#3363])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][63] ([i915#1436] / [i915#3363])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][64] ([i915#1436] / [i915#3363])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][65] ([i915#3363] / [i915#3462])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][66] ([i915#3363])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][67] ([i915#3363] / [i915#3462])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][68] ([i915#3363])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][69] ([i915#2782])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][70] ([i915#1436] / [i915#3363])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][71] ([i915#1436] / [i915#3363])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-skl-6700k2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [SKIP][72] ([fdo#109271]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][74] ([i915#3303]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3233]: https://gitlab.freedesktop.org/drm/intel/issues/3233
  [i915#3276]: https://gitlab.freedesktop.org/drm/intel/issues/3276
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3542]: https://gitlab.freedesktop.org/drm/intel/issues/3542
  [i915#3544]: https://gitlab.freedesktop.org/drm/intel/issues/3544
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (42 -> 39)
------------------------------

  Additional (1): fi-rkl-11500t 
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10222 -> Patchwork_20358

  CI-20190529: 20190529
  CI_DRM_10222: 9b5675dc51137543709a5ec444b0d7076e43198e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6105: 598a154680374e7875ae9ffc98425abc57398b2f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20358: ca3196397209e7191d492f87db7d0cdb496a50fc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ca3196397209 drm/i915: Be more gentle with exiting non-persistent context

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/index.html

--===============7665778523678177904==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Be more gentle with exiting non-persistent context (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89644/">https://patchwork.freedesktop.org/series/89644/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10222 -&gt; Patchwork_20358</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20358 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20358, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20358:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-glk-dsi/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-glk-dsi/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cfl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cfl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-bxt-dsi/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bxt-dsi/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-tgl-1115g4/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-tgl-1115g4/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-ehl-1/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-ehl-1/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20358 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-r/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-r/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-icl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-skl-6600u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-skl-6600u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-7567u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-7567u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cml-s/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cml-s/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3233">i915#3233</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-skl-6700k2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-skl-6700k2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cml-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cml-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3233">i915#3233</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-bdw-5557u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bdw-5557u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-8809g/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-8809g/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20358/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Additional (1): fi-rkl-11500t <br />
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10222 -&gt; Patchwork_20358</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10222: 9b5675dc51137543709a5ec444b0d7076e43198e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6105: 598a154680374e7875ae9ffc98425abc57398b2f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20358: ca3196397209e7191d492f87db7d0cdb496a50fc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ca3196397209 drm/i915: Be more gentle with exiting non-persistent context</p>

</body>
</html>

--===============7665778523678177904==--

--===============1234733073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1234733073==--
