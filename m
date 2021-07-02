Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 789653B9A2A
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 02:41:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 734BB6E118;
	Fri,  2 Jul 2021 00:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 86E5D6E118;
 Fri,  2 Jul 2021 00:41:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E52BA0078;
 Fri,  2 Jul 2021 00:41:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Desmond Cheong Zhi Xi" <desmondcheongzx@gmail.com>
Date: Fri, 02 Jul 2021 00:41:43 -0000
Message-ID: <162518650348.22028.11216963937010586490@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210701165358.19053-1-desmondcheongzx@gmail.com>
In-Reply-To: <20210701165358.19053-1-desmondcheongzx@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_address_potential_UAF_bugs_with_drm=5Fmaster_ptrs?=
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
Content-Type: multipart/mixed; boundary="===============0967315349=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0967315349==
Content-Type: multipart/alternative;
 boundary="===============0859677315160255282=="

--===============0859677315160255282==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: address potential UAF bugs with drm_master ptrs
URL   : https://patchwork.freedesktop.org/series/92131/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10301 -> Patchwork_20515
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/index.html

Known issues
------------

  Here are the changes found in Patchwork_20515 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-cml-s:           [PASS][1] -> [DMESG-WARN][2] ([i915#3660])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-cml-s/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-cml-s/igt@debugfs_test@read_all_entries.html
    - fi-elk-e7500:       [PASS][3] -> [DMESG-WARN][4] ([i915#3660])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
    - fi-glk-dsi:         [PASS][5] -> [DMESG-WARN][6] ([i915#3660])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-glk-dsi/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-glk-dsi/igt@debugfs_test@read_all_entries.html
    - fi-ivb-3770:        [PASS][7] -> [DMESG-WARN][8] ([i915#3660])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
    - fi-snb-2600:        [PASS][9] -> [DMESG-WARN][10] ([i915#3660])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-snb-2600/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-snb-2600/igt@debugfs_test@read_all_entries.html
    - fi-kbl-guc:         [PASS][11] -> [DMESG-WARN][12] ([i915#262] / [i915#3660])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
    - fi-bdw-gvtdvm:      [PASS][13] -> [DMESG-WARN][14] ([i915#3660])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bdw-gvtdvm/igt@debugfs_test@read_all_entries.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bdw-gvtdvm/igt@debugfs_test@read_all_entries.html
    - fi-bsw-kefka:       [PASS][15] -> [DMESG-WARN][16] ([i915#3660])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html
    - fi-kbl-7500u:       [PASS][17] -> [DMESG-WARN][18] ([i915#262] / [i915#3660])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html
    - fi-bwr-2160:        [PASS][19] -> [DMESG-WARN][20] ([i915#3660])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bwr-2160/igt@debugfs_test@read_all_entries.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bwr-2160/igt@debugfs_test@read_all_entries.html
    - fi-bdw-5557u:       [PASS][21] -> [DMESG-WARN][22] ([i915#3660])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bdw-5557u/igt@debugfs_test@read_all_entries.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bdw-5557u/igt@debugfs_test@read_all_entries.html
    - fi-kbl-7567u:       [PASS][23] -> [DMESG-WARN][24] ([i915#262] / [i915#3660])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
    - fi-apl-guc:         [PASS][25] -> [DMESG-WARN][26] ([i915#3660])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-apl-guc/igt@debugfs_test@read_all_entries.html
    - fi-icl-y:           [PASS][27] -> [DMESG-WARN][28] ([i915#3660])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-icl-y/igt@debugfs_test@read_all_entries.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-icl-y/igt@debugfs_test@read_all_entries.html
    - fi-snb-2520m:       [PASS][29] -> [DMESG-WARN][30] ([i915#3660])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-snb-2520m/igt@debugfs_test@read_all_entries.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-snb-2520m/igt@debugfs_test@read_all_entries.html
    - fi-kbl-8809g:       [PASS][31] -> [DMESG-WARN][32] ([i915#262] / [i915#3660])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html
    - fi-bsw-nick:        [PASS][33] -> [DMESG-WARN][34] ([i915#3660])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8109u:       [PASS][35] -> [DMESG-WARN][36] ([i915#262] / [i915#3660])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
    - fi-skl-6600u:       [PASS][37] -> [DMESG-WARN][38] ([i915#3660])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-skl-6600u/igt@debugfs_test@read_all_entries.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-skl-6600u/igt@debugfs_test@read_all_entries.html
    - fi-bxt-dsi:         [PASS][39] -> [DMESG-WARN][40] ([i915#3660])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bxt-dsi/igt@debugfs_test@read_all_entries.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bxt-dsi/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8700k:       [PASS][41] -> [DMESG-WARN][42] ([i915#3660])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
    - fi-pnv-d510:        [PASS][43] -> [DMESG-WARN][44] ([i915#3660])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
    - fi-ilk-650:         [PASS][45] -> [DMESG-WARN][46] ([i915#3660])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-ilk-650/igt@debugfs_test@read_all_entries.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-ilk-650/igt@debugfs_test@read_all_entries.html
    - fi-bsw-n3050:       [PASS][47] -> [DMESG-WARN][48] ([i915#3660])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
    - fi-skl-6700k2:      [PASS][49] -> [DMESG-WARN][50] ([i915#3660])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html
    - fi-hsw-4770:        [PASS][51] -> [DMESG-WARN][52] ([i915#3660])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-hsw-4770/igt@debugfs_test@read_all_entries.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-hsw-4770/igt@debugfs_test@read_all_entries.html
    - fi-kbl-soraka:      [PASS][53] -> [DMESG-WARN][54] ([i915#262] / [i915#3660])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][55] ([i915#2426])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][56] ([i915#2403] / [i915#2505])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-pnv-d510/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][57] ([i915#2426])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][58] ([i915#1814] / [i915#2426] / [i915#3363])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][59] ([i915#1814] / [i915#2426] / [i915#3363])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][60] ([i915#1814] / [i915#2426] / [i915#3363])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][61] ([i915#1814] / [i915#2426] / [i915#3363] / [k.org#202321])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][62] ([i915#1814] / [i915#2426] / [i915#3363])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-8809g/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][63] ([i915#2426])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-snb-2520m/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][64] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][65] ([i915#2426])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][66] ([i915#2505])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][67] ([i915#1814] / [i915#2426] / [i915#3363])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][68] ([i915#2505])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][69] ([i915#1814] / [i915#2426] / [i915#3363])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][70] ([i915#1814] / [i915#2426] / [i915#3363])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-guc/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][71] ([i915#2426])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-snb-2600/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][72] ([i915#2426])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][73] ([i915#1814] / [i915#2426] / [i915#3363])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bxt-dsi/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][74] ([i915#2426])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-elk-e7500/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][75] ([i915#1814] / [i915#2082] / [i915#2426] / [i915#3363])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-cml-s/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][76] ([i915#1814] / [i915#3690])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][77] ([i915#1814] / [i915#2426] / [i915#3363])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][78] ([i915#1814] / [i915#2426] / [i915#3363])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][79] ([i915#1250] / [i915#3690])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bsw-n3050/igt@runner@aborted.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-icl-u2:          [{ABORT}][80] ([i915#1814]) -> [DMESG-WARN][81] ([i915#3660])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-icl-u2/igt@debugfs_test@read_all_entries.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-icl-u2/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       [FAIL][82] ([fdo#109271] / [i915#1436]) -> [FAIL][83] ([i915#1250] / [i915#3690])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-kefka/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bsw-kefka/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][84] ([i915#1814] / [i915#3363]) -> [FAIL][85] ([i915#1814] / [i915#2426] / [i915#3363] / [i915#3690])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-icl-u2/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-icl-u2/igt@runner@aborted.html
    - fi-bsw-nick:        [FAIL][86] ([fdo#109271] / [i915#1436]) -> [FAIL][87] ([i915#1250] / [i915#3690])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-nick/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bsw-nick/igt@runner@aborted.html
    - fi-apl-guc:         [FAIL][88] ([i915#2426] / [i915#3363]) -> [FAIL][89] ([i915#1814] / [i915#2426] / [i915#3363])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-apl-guc/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-apl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1250]: https://gitlab.freedesktop.org/drm/intel/issues/1250
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
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
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (37 -> 35)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10301 -> Patchwork_20515

  CI-20190529: 20190529
  CI_DRM_10301: 3d3ff5917ce204b783f4847c14e8839fde358a3a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6128: b24e5949af7e51f0af484d2ce4cb4c5a41ac5358 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20515: 9a39b24125426966b92d4a86aea2d7c6e0e754e5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9a39b2412542 drm: protect drm_master pointers in drm_lease.c
8dd63d8dfb37 drm: serialize drm_file.master with a master lock
c59b59aad925 drm: add a locked version of drm_is_current_master
673c9fef419d drm: separate locks in __drm_mode_object_find
6e0184059512 drm: avoid circular locks in drm_mode_getconnector

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/index.html

--===============0859677315160255282==
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
<tr><td><b>Series:</b></td><td>drm: address potential UAF bugs with drm_master ptrs</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92131/">https://patchwork.freedesktop.org/series/92131/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10301 -&gt; Patchwork_20515</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20515 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-cml-s/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-cml-s/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-glk-dsi/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-glk-dsi/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-ivb-3770/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-ivb-3770/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-snb-2600/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-snb-2600/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-kbl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bdw-gvtdvm/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bdw-gvtdvm/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bwr-2160/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bwr-2160/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bdw-5557u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bdw-5557u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-apl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-icl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-icl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-snb-2520m/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-snb-2520m/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-nick/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bsw-nick/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-skl-6600u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-skl-6600u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bxt-dsi/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bxt-dsi/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-ilk-650/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-ilk-650/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-hsw-4770/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-hsw-4770/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1250">i915#1250</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-icl-u2/igt@debugfs_test@read_all_entries.html">{ABORT}</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-icl-u2/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3660">i915#3660</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1250">i915#1250</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1250">i915#1250</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20515/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10301 -&gt; Patchwork_20515</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10301: 3d3ff5917ce204b783f4847c14e8839fde358a3a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6128: b24e5949af7e51f0af484d2ce4cb4c5a41ac5358 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20515: 9a39b24125426966b92d4a86aea2d7c6e0e754e5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9a39b2412542 drm: protect drm_master pointers in drm_lease.c<br />
8dd63d8dfb37 drm: serialize drm_file.master with a master lock<br />
c59b59aad925 drm: add a locked version of drm_is_current_master<br />
673c9fef419d drm: separate locks in __drm_mode_object_find<br />
6e0184059512 drm: avoid circular locks in drm_mode_getconnector</p>

</body>
</html>

--===============0859677315160255282==--

--===============0967315349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0967315349==--
