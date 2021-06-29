Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8443E3B773D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 19:30:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B18A8991D;
	Tue, 29 Jun 2021 17:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2442E89BAC;
 Tue, 29 Jun 2021 17:30:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 135A0A41FB;
 Tue, 29 Jun 2021 17:30:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Desmond Cheong Zhi Xi" <desmondcheongzx@gmail.com>
Date: Tue, 29 Jun 2021 17:30:14 -0000
Message-ID: <162498781404.9056.5850807087997303991@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210629033706.20537-1-desmondcheongzx@gmail.com>
In-Reply-To: <20210629033706.20537-1-desmondcheongzx@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_address_potential_UAF_bugs_with_drm=5Fmaster_ptrs_=28rev2?=
 =?utf-8?q?=29?=
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
Content-Type: multipart/mixed; boundary="===============1900056049=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1900056049==
Content-Type: multipart/alternative;
 boundary="===============7547178681918149847=="

--===============7547178681918149847==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: address potential UAF bugs with drm_master ptrs (rev2)
URL   : https://patchwork.freedesktop.org/series/91969/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10289 -> Patchwork_20487
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20487:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-dg1-1}:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-dg1-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20487 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-cml-s:           [PASS][2] -> [DMESG-WARN][3] ([i915#3660])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-cml-s/igt@debugfs_test@read_all_entries.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cml-s/igt@debugfs_test@read_all_entries.html
    - fi-elk-e7500:       [PASS][4] -> [DMESG-WARN][5] ([i915#3660])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
    - fi-glk-dsi:         [PASS][6] -> [DMESG-WARN][7] ([i915#3660])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-glk-dsi/igt@debugfs_test@read_all_entries.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-glk-dsi/igt@debugfs_test@read_all_entries.html
    - fi-ivb-3770:        [PASS][8] -> [DMESG-WARN][9] ([i915#3660])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
    - fi-snb-2600:        [PASS][10] -> [DMESG-WARN][11] ([i915#3660])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-snb-2600/igt@debugfs_test@read_all_entries.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-snb-2600/igt@debugfs_test@read_all_entries.html
    - fi-tgl-y:           [PASS][12] -> [DMESG-WARN][13] ([i915#3660])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-tgl-y/igt@debugfs_test@read_all_entries.html
    - fi-kbl-guc:         [PASS][14] -> [DMESG-WARN][15] ([i915#262] / [i915#3660])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
    - fi-bdw-gvtdvm:      [PASS][16] -> [DMESG-WARN][17] ([i915#3660])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bdw-gvtdvm/igt@debugfs_test@read_all_entries.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bdw-gvtdvm/igt@debugfs_test@read_all_entries.html
    - fi-bsw-kefka:       [PASS][18] -> [DMESG-WARN][19] ([i915#3660])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html
    - fi-kbl-7500u:       [PASS][20] -> [DMESG-WARN][21] ([i915#262] / [i915#3660])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html
    - fi-bwr-2160:        [PASS][22] -> [DMESG-WARN][23] ([i915#3660])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bwr-2160/igt@debugfs_test@read_all_entries.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bwr-2160/igt@debugfs_test@read_all_entries.html
    - fi-bdw-5557u:       [PASS][24] -> [DMESG-WARN][25] ([i915#3660])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bdw-5557u/igt@debugfs_test@read_all_entries.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bdw-5557u/igt@debugfs_test@read_all_entries.html
    - fi-kbl-r:           [PASS][26] -> [DMESG-WARN][27] ([i915#262] / [i915#3660])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-r/igt@debugfs_test@read_all_entries.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-r/igt@debugfs_test@read_all_entries.html
    - fi-kbl-7567u:       [PASS][28] -> [DMESG-WARN][29] ([i915#262] / [i915#3660])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
    - fi-apl-guc:         [PASS][30] -> [DMESG-WARN][31] ([i915#3660])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-apl-guc/igt@debugfs_test@read_all_entries.html
    - fi-icl-y:           [PASS][32] -> [DMESG-WARN][33] ([i915#3660])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-icl-y/igt@debugfs_test@read_all_entries.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-icl-y/igt@debugfs_test@read_all_entries.html
    - fi-snb-2520m:       [PASS][34] -> [DMESG-WARN][35] ([i915#3660])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-snb-2520m/igt@debugfs_test@read_all_entries.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-snb-2520m/igt@debugfs_test@read_all_entries.html
    - fi-kbl-8809g:       [PASS][36] -> [DMESG-WARN][37] ([i915#262] / [i915#3660])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html
    - fi-bsw-nick:        [PASS][38] -> [DMESG-WARN][39] ([i915#3660])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8109u:       [PASS][40] -> [DMESG-WARN][41] ([i915#262] / [i915#3660])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
    - fi-skl-6600u:       [PASS][42] -> [DMESG-WARN][43] ([i915#3660])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-skl-6600u/igt@debugfs_test@read_all_entries.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-skl-6600u/igt@debugfs_test@read_all_entries.html
    - fi-bxt-dsi:         [PASS][44] -> [DMESG-WARN][45] ([i915#3660])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bxt-dsi/igt@debugfs_test@read_all_entries.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bxt-dsi/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8700k:       [PASS][46] -> [DMESG-WARN][47] ([i915#3660])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
    - fi-pnv-d510:        [PASS][48] -> [DMESG-WARN][49] ([i915#3660])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
    - fi-ilk-650:         [PASS][50] -> [DMESG-WARN][51] ([i915#3660])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-ilk-650/igt@debugfs_test@read_all_entries.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-ilk-650/igt@debugfs_test@read_all_entries.html
    - fi-bsw-n3050:       [PASS][52] -> [DMESG-WARN][53] ([i915#3660])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
    - fi-skl-6700k2:      [PASS][54] -> [DMESG-WARN][55] ([i915#3660])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html
    - fi-hsw-4770:        [PASS][56] -> [DMESG-WARN][57] ([i915#3660])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-hsw-4770/igt@debugfs_test@read_all_entries.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-hsw-4770/igt@debugfs_test@read_all_entries.html
    - fi-kbl-soraka:      [PASS][58] -> [DMESG-WARN][59] ([i915#262] / [i915#3660])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
    - fi-cfl-guc:         [PASS][60] -> [DMESG-WARN][61] ([i915#3660])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cfl-guc/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][62] ([i915#2426])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][63] ([i915#2403] / [i915#2505])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-pnv-d510/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][64] ([i915#1250] / [i915#3690])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][65] ([i915#2426])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][66] ([i915#1814] / [i915#2426] / [i915#3363])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cfl-8700k/igt@runner@aborted.html
    - fi-tgl-y:           NOTRUN -> [FAIL][67] ([i915#1814] / [i915#3690])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-tgl-y/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][68] ([i915#1814] / [i915#2426] / [i915#3363])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][69] ([i915#1814] / [i915#2426] / [i915#3363])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][70] ([i915#1814] / [i915#2426] / [i915#3363] / [k.org#202321])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-glk-dsi/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][71] ([i915#1250] / [i915#3690])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][72] ([i915#1814] / [i915#2426] / [i915#3363])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-8809g/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][73] ([i915#2426])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-snb-2520m/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][74] ([i915#1814] / [i915#2426] / [i915#3363])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-r/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][75] ([i915#2505])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][76] ([i915#1814] / [i915#2426] / [i915#3363])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][77] ([i915#2505])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][78] ([i915#1814] / [i915#2426] / [i915#3363])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][79] ([i915#1814] / [i915#2426] / [i915#3363])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-guc/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][80] ([i915#2426])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-snb-2600/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][81] ([i915#2426])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][82] ([i915#1814] / [i915#2426] / [i915#3363])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bxt-dsi/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][83] ([i915#2426])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-elk-e7500/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][84] ([i915#1814] / [i915#2082] / [i915#2426] / [i915#3363])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][85] ([i915#1814] / [i915#2426] / [i915#3363])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][86] ([i915#1814] / [i915#3690])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][87] ([i915#1814] / [i915#2426] / [i915#3363])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][88] ([i915#1814] / [i915#2426] / [i915#3363])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][89] ([i915#1250] / [i915#3690])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bsw-n3050/igt@runner@aborted.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-icl-u2:          [{ABORT}][90] ([i915#1814]) -> [DMESG-WARN][91] ([i915#3660])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-icl-u2/igt@debugfs_test@read_all_entries.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-icl-u2/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - fi-icl-u2:          [FAIL][92] ([i915#1814] / [i915#3363]) -> [FAIL][93] ([i915#1814] / [i915#2426] / [i915#3363] / [i915#3690])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-icl-u2/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-icl-u2/igt@runner@aborted.html
    - fi-apl-guc:         [FAIL][94] ([i915#2426] / [i915#3363]) -> [FAIL][95] ([i915#1814] / [i915#2426] / [i915#3363])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-apl-guc/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-apl-guc/igt@runner@aborted.html
    - fi-bdw-5557u:       [FAIL][96] ([i915#1602] / [i915#2029]) -> [FAIL][97] ([i915#2426])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bdw-5557u/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bdw-5557u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1250]: https://gitlab.freedesktop.org/drm/intel/issues/1250
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3626]: https://gitlab.freedesktop.org/drm/intel/issues/3626
  [i915#3660]: https://gitlab.freedesktop.org/drm/intel/issues/3660
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10289 -> Patchwork_20487

  CI-20190529: 20190529
  CI_DRM_10289: b9081c2437cee8e573eeafcd19c816cc7e10f19d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6121: a63ceb48e6c3e733d04156b32fba3b4f4d5ad794 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20487: 5c1685ef444eec577354725bc8f1307668c87244 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5c1685ef444e drm: protect drm_master pointers in drm_lease.c
cb2470da87f5 drm: add a locked version of drm_is_current_master
74cef89ae027 drm: avoid circular locks in drm_mode_getconnector

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/index.html

--===============7547178681918149847==
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
<tr><td><b>Series:</b></td><td>drm: address potential UAF bugs with drm_master ptrs (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91969/">https://patchwork.freedesktop.org/series/91969/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10289 -&gt; Patchwork_20487</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20487:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@runner@aborted:<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-dg1-1/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20487 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-cml-s/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cml-s/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-glk-dsi/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-glk-dsi/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-ivb-3770/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-ivb-3770/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-snb-2600/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-snb-2600/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bdw-gvtdvm/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bdw-gvtdvm/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bwr-2160/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bwr-2160/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bdw-5557u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bdw-5557u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-r/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-r/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-apl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-icl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-icl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-snb-2520m/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-snb-2520m/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bsw-nick/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bsw-nick/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-skl-6600u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-skl-6600u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bxt-dsi/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bxt-dsi/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-ilk-650/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-ilk-650/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-hsw-4770/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-hsw-4770/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-cfl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cfl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1250">i915#1250</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-tgl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1250">i915#1250</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1250">i915#1250</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-icl-u2/igt@debugfs_test@read_all_entries.html">{ABORT}</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-icl-u2/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20487/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10289 -&gt; Patchwork_20487</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10289: b9081c2437cee8e573eeafcd19c816cc7e10f19d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6121: a63ceb48e6c3e733d04156b32fba3b4f4d5ad794 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20487: 5c1685ef444eec577354725bc8f1307668c87244 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5c1685ef444e drm: protect drm_master pointers in drm_lease.c<br />
cb2470da87f5 drm: add a locked version of drm_is_current_master<br />
74cef89ae027 drm: avoid circular locks in drm_mode_getconnector</p>

</body>
</html>

--===============7547178681918149847==--

--===============1900056049==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1900056049==--
