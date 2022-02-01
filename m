Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C884A5D48
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 14:15:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2318810E245;
	Tue,  1 Feb 2022 13:15:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 013A410E1A9;
 Tue,  1 Feb 2022 13:15:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F047CA73C7;
 Tue,  1 Feb 2022 13:15:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4531821487739253713=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Tue, 01 Feb 2022 13:15:09 -0000
Message-ID: <164372130994.2607.3246943110575598252@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220201104132.3050-1-ramalingam.c@intel.com>
In-Reply-To: <20220201104132.3050-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Enabling_64k_page_size_and_flat_ccs_=28rev5=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============4531821487739253713==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Enabling 64k page size and flat ccs (rev5)
URL   : https://patchwork.freedesktop.org/series/95686/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11172 -> Patchwork_22148
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22148 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22148, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/index.html

Participating hosts (44 -> 42)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (3): fi-icl-u2 fi-bdw-samus fi-kbl-8809g 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22148:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gtt:
    - fi-bsw-kefka:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-bsw-kefka/igt@i915_selftest@live@gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-kefka/igt@i915_selftest@live@gtt.html
    - fi-bwr-2160:        [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-bwr-2160/igt@i915_selftest@live@gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bwr-2160/igt@i915_selftest@live@gtt.html
    - fi-skl-guc:         [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-skl-guc/igt@i915_selftest@live@gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-skl-guc/igt@i915_selftest@live@gtt.html
    - fi-blb-e6850:       NOTRUN -> [DMESG-FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-blb-e6850/igt@i915_selftest@live@gtt.html
    - fi-kbl-7567u:       [PASS][8] -> [DMESG-FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-kbl-7567u/igt@i915_selftest@live@gtt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-7567u/igt@i915_selftest@live@gtt.html
    - fi-glk-j4005:       [PASS][10] -> [DMESG-FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-glk-j4005/igt@i915_selftest@live@gtt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-glk-j4005/igt@i915_selftest@live@gtt.html
    - fi-bsw-nick:        NOTRUN -> [INCOMPLETE][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-nick/igt@i915_selftest@live@gtt.html
    - fi-cfl-8109u:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-cfl-8109u/igt@i915_selftest@live@gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cfl-8109u/igt@i915_selftest@live@gtt.html
    - fi-snb-2520m:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-snb-2520m/igt@i915_selftest@live@gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-snb-2520m/igt@i915_selftest@live@gtt.html
    - fi-cfl-8700k:       [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-cfl-8700k/igt@i915_selftest@live@gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cfl-8700k/igt@i915_selftest@live@gtt.html
    - fi-cml-u2:          [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-cml-u2/igt@i915_selftest@live@gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cml-u2/igt@i915_selftest@live@gtt.html
    - fi-ilk-650:         [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-ilk-650/igt@i915_selftest@live@gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-ilk-650/igt@i915_selftest@live@gtt.html
    - fi-bsw-n3050:       [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-bsw-n3050/igt@i915_selftest@live@gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-n3050/igt@i915_selftest@live@gtt.html
    - fi-cfl-guc:         [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-cfl-guc/igt@i915_selftest@live@gtt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cfl-guc/igt@i915_selftest@live@gtt.html
    - fi-skl-6700k2:      [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-skl-6700k2/igt@i915_selftest@live@gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-skl-6700k2/igt@i915_selftest@live@gtt.html
    - fi-elk-e7500:       [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-elk-e7500/igt@i915_selftest@live@gtt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-elk-e7500/igt@i915_selftest@live@gtt.html
    - fi-kbl-soraka:      [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-kbl-soraka/igt@i915_selftest@live@gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-soraka/igt@i915_selftest@live@gtt.html
    - fi-glk-dsi:         [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-glk-dsi/igt@i915_selftest@live@gtt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-glk-dsi/igt@i915_selftest@live@gtt.html
    - fi-ivb-3770:        [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-ivb-3770/igt@i915_selftest@live@gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-ivb-3770/igt@i915_selftest@live@gtt.html
    - bat-dg1-6:          [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/bat-dg1-6/igt@i915_selftest@live@gtt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/bat-dg1-6/igt@i915_selftest@live@gtt.html
    - fi-snb-2600:        [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-snb-2600/igt@i915_selftest@live@gtt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-snb-2600/igt@i915_selftest@live@gtt.html
    - fi-rkl-guc:         [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-rkl-guc/igt@i915_selftest@live@gtt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-rkl-guc/igt@i915_selftest@live@gtt.html
    - fi-kbl-x1275:       [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-kbl-x1275/igt@i915_selftest@live@gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-x1275/igt@i915_selftest@live@gtt.html
    - fi-kbl-7500u:       [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-kbl-7500u/igt@i915_selftest@live@gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-7500u/igt@i915_selftest@live@gtt.html
    - fi-rkl-11600:       [PASS][47] -> [DMESG-FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-rkl-11600/igt@i915_selftest@live@gtt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-rkl-11600/igt@i915_selftest@live@gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-hsw-4770:        [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gtt:
    - {bat-jsl-2}:        [PASS][51] -> [DMESG-FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/bat-jsl-2/igt@i915_selftest@live@gtt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/bat-jsl-2/igt@i915_selftest@live@gtt.html
    - {fi-ehl-2}:         [PASS][53] -> [DMESG-FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-ehl-2/igt@i915_selftest@live@gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-ehl-2/igt@i915_selftest@live@gtt.html
    - {fi-tgl-dsi}:       [PASS][55] -> [INCOMPLETE][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-tgl-dsi/igt@i915_selftest@live@gtt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-tgl-dsi/igt@i915_selftest@live@gtt.html
    - {fi-jsl-1}:         [PASS][57] -> [DMESG-FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-jsl-1/igt@i915_selftest@live@gtt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-jsl-1/igt@i915_selftest@live@gtt.html
    - {bat-jsl-1}:        [PASS][59] -> [DMESG-FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/bat-jsl-1/igt@i915_selftest@live@gtt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/bat-jsl-1/igt@i915_selftest@live@gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_22148 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-6700k2:      [PASS][61] -> [DMESG-FAIL][62] ([i915#2291] / [i915#541])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gtt:
    - bat-adlp-4:         [PASS][63] -> [DMESG-FAIL][64] ([i915#4955])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/bat-adlp-4/igt@i915_selftest@live@gtt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/bat-adlp-4/igt@i915_selftest@live@gtt.html
    - fi-bxt-dsi:         [PASS][65] -> [DMESG-FAIL][66] ([i915#2927])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-bxt-dsi/igt@i915_selftest@live@gtt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bxt-dsi/igt@i915_selftest@live@gtt.html
    - fi-pnv-d510:        NOTRUN -> [DMESG-FAIL][67] ([i915#2927])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-pnv-d510/igt@i915_selftest@live@gtt.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bsw-nick:        NOTRUN -> [SKIP][68] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][69] -> [DMESG-WARN][70] ([i915#4269])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-nick:        NOTRUN -> [SKIP][71] ([fdo#109271]) +44 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][72] ([fdo#109271]) +39 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][73] ([i915#4312])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-rkl-11600/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][74] ([i915#4312])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-snb-2600/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][75] ([fdo#109271] / [i915#4312])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][76] ([fdo#109271] / [i915#2403] / [i915#4312])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][77] ([i915#1436] / [i915#4312])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][78] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][79] ([i915#4312])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][80] ([i915#4312])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][81] ([i915#4312] / [k.org#202321])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-glk-dsi/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][82] ([i915#4312])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-snb-2520m/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][83] ([i915#4312])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][84] ([i915#1436] / [i915#4312])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][85] ([i915#1436] / [i915#4312])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-7500u/igt@runner@aborted.html
    - bat-adlp-4:         NOTRUN -> [FAIL][86] ([i915#4312])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/bat-adlp-4/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][87] ([i915#4312])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cml-u2/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][88] ([i915#4312])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-rkl-guc/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][89] ([fdo#109271] / [i915#4312])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][90] ([i915#4312])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bxt-dsi/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][91] ([i915#4312])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/bat-dg1-6/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][92] ([fdo#109271] / [i915#4312])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-elk-e7500/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][93] ([i915#4312])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cfl-guc/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][94] ([i915#4312] / [k.org#202321])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-glk-j4005/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][95] ([i915#1436] / [i915#4312])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][96] ([i915#1436] / [i915#4312])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][97] ([i915#1436] / [i915#4312])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][98] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic:
    - fi-bsw-nick:        [DMESG-WARN][99] ([i915#3428]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-bsw-nick/igt@gem_ctx_exec@basic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-nick/igt@gem_ctx_exec@basic.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][101] ([i915#5026]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-blb-e6850/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [FAIL][103] ([i915#4547]) -> [INCOMPLETE][104] ([i915#4838])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-bsw-nick:        [FAIL][105] ([i915#3428] / [i915#4312]) -> [FAIL][106] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-bsw-nick/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-nick/igt@runner@aborted.html
    - fi-blb-e6850:       [FAIL][107] ([fdo#109271] / [i915#2403] / [i915#2426] / [i915#4312]) -> [FAIL][108] ([fdo#109271] / [i915#2403] / [i915#4312])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-blb-e6850/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-blb-e6850/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3970]: https://gitlab.freedesktop.org/drm/intel/issues/3970
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4838]: https://gitlab.freedesktop.org/drm/intel/issues/4838
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4955]: https://gitlab.freedesktop.org/drm/intel/issues/4955
  [i915#5026]: https://gitlab.freedesktop.org/drm/intel/issues/5026
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Build changes
-------------

  * Linux: CI_DRM_11172 -> Patchwork_22148

  CI-20190529: 20190529
  CI_DRM_11172: 466c37c518256a1c79ed5f6ed4d3db1866c17910 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6337: 7c9c034619ef9dbfbfe041fbf3973a1cf1ac7a22 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22148: f0e7ebd7ff02d63583876459802d24e708019203 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f0e7ebd7ff02 Doc/gpu/rfc/i915: i915 DG2 flat-CCS uAPI
62e5cdbc9a5d drm/i915/Flat-CCS: Document on Flat-CCS memory compression
c529f71d7954 drm/i915/dg2: Flat CCS Support
a5ef8bfef402 uapi/drm/dg2: Introduce format modifier for DG2 clear color
a4ae214f55c2 drm/i915/dg2: Add DG2 unified compression
41874785a443 drm/i915/dg2: Tile 4 plane format support
035ac563c069 drm/i915: Introduce new Tile 4 format
90946c4b0096 drm/i915/gt: Clear compress metadata for Xe_HP platforms
9dad7bbc9b86 drm/i915/lmem: Enable lmem for platforms with Flat CCS
19bfdb83b514 drm/i915/xehpsdv: Add has_flat_ccs to device info
d49ca1a2fc0d Doc/gpu/rfc/i915: i915 DG2 64k pagesize uAPI
d4227abc52e4 drm/i915/uapi: document behaviour for DG2 64K support
a8710e64c4a8 drm/i915/migrate: add acceleration support for DG2
441f25ff52f8 drm/i915/gtt: add xehpsdv_ppgtt_insert_entry
08193c9fbdc7 drm/i915/gtt: allow overriding the pt alignment
29fc5ce90221 drm/i915: add gtt misalignment test
7373e84047bf drm/i915: support 64K GTT pages for discrete cards
f93c6346dd31 drm/i915: enforce min GTT alignment for discrete cards
7f652d8d712c drm/i915: add needs_compact_pt flag

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/index.html

--===============4531821487739253713==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Enabling 64k page size and flat ccs (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95686/">https://patchwork.freedesktop.org/series/95686/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11172 -&gt; Patchwork_22148</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22148 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22148, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (3): fi-icl-u2 fi-bdw-samus fi-kbl-8809g </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22148:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-bsw-kefka/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-kefka/igt@i915_selftest@live@gtt.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-bwr-2160/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bwr-2160/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-skl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-skl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-blb-e6850/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-kbl-7567u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-7567u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-glk-j4005/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-glk-j4005/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-nick/igt@i915_selftest@live@gtt.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-cfl-8109u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cfl-8109u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-snb-2520m/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-snb-2520m/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-cfl-8700k/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cfl-8700k/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-cml-u2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cml-u2/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-ilk-650/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-ilk-650/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-bsw-n3050/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-n3050/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-cfl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cfl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-skl-6700k2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-skl-6700k2/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-elk-e7500/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-elk-e7500/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-kbl-soraka/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-soraka/igt@i915_selftest@live@gtt.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-glk-dsi/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-glk-dsi/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-ivb-3770/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-ivb-3770/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/bat-dg1-6/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/bat-dg1-6/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-snb-2600/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-snb-2600/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-rkl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-rkl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-kbl-x1275/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-x1275/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-kbl-7500u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-7500u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-rkl-11600/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-rkl-11600/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>
<p>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/bat-jsl-2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/bat-jsl-2/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-ehl-2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-ehl-2/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-tgl-dsi/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-tgl-dsi/igt@i915_selftest@live@gtt.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-jsl-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-jsl-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/bat-jsl-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/bat-jsl-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22148 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/bat-adlp-4/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/bat-adlp-4/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4955">i915#4955</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-bxt-dsi/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bxt-dsi/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-pnv-d510/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +44 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-bsw-nick/igt@gem_ctx_exec@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-nick/igt@gem_ctx_exec@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5026">i915#5026</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4838">i915#4838</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11172/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22148/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11172 -&gt; Patchwork_22148</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11172: 466c37c518256a1c79ed5f6ed4d3db1866c17910 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6337: 7c9c034619ef9dbfbfe041fbf3973a1cf1ac7a22 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22148: f0e7ebd7ff02d63583876459802d24e708019203 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f0e7ebd7ff02 Doc/gpu/rfc/i915: i915 DG2 flat-CCS uAPI<br />
62e5cdbc9a5d drm/i915/Flat-CCS: Document on Flat-CCS memory compression<br />
c529f71d7954 drm/i915/dg2: Flat CCS Support<br />
a5ef8bfef402 uapi/drm/dg2: Introduce format modifier for DG2 clear color<br />
a4ae214f55c2 drm/i915/dg2: Add DG2 unified compression<br />
41874785a443 drm/i915/dg2: Tile 4 plane format support<br />
035ac563c069 drm/i915: Introduce new Tile 4 format<br />
90946c4b0096 drm/i915/gt: Clear compress metadata for Xe_HP platforms<br />
9dad7bbc9b86 drm/i915/lmem: Enable lmem for platforms with Flat CCS<br />
19bfdb83b514 drm/i915/xehpsdv: Add has_flat_ccs to device info<br />
d49ca1a2fc0d Doc/gpu/rfc/i915: i915 DG2 64k pagesize uAPI<br />
d4227abc52e4 drm/i915/uapi: document behaviour for DG2 64K support<br />
a8710e64c4a8 drm/i915/migrate: add acceleration support for DG2<br />
441f25ff52f8 drm/i915/gtt: add xehpsdv_ppgtt_insert_entry<br />
08193c9fbdc7 drm/i915/gtt: allow overriding the pt alignment<br />
29fc5ce90221 drm/i915: add gtt misalignment test<br />
7373e84047bf drm/i915: support 64K GTT pages for discrete cards<br />
f93c6346dd31 drm/i915: enforce min GTT alignment for discrete cards<br />
7f652d8d712c drm/i915: add needs_compact_pt flag</p>

</body>
</html>

--===============4531821487739253713==--
