Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3810739734
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 08:06:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802C610E4D6;
	Thu, 22 Jun 2023 06:06:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 67CCA10E4C2;
 Thu, 22 Jun 2023 06:06:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62FD1AADE8;
 Thu, 22 Jun 2023 06:06:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7069920799451129823=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Date: Thu, 22 Jun 2023 06:06:46 -0000
Message-ID: <168741400639.4872.16317443174427294497@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230622050830.1145626-1-arun.r.murthy@intel.com>
In-Reply-To: <20230622050830.1145626-1-arun.r.murthy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/dp=3A_On_AUX_xfer_timeout_restart_freshly_=28rev7?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============7069920799451129823==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/dp: On AUX xfer timeout restart freshly (rev7)
URL   : https://patchwork.freedesktop.org/series/119055/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13302 -> Patchwork_119055v7
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_119055v7 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_119055v7, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/index.html

Participating hosts (41 -> 41)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_119055v7:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [PASS][1] -> [DMESG-WARN][2] +86 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - bat-adlp-9:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - bat-kbl-2:          [PASS][5] -> [DMESG-WARN][6] +87 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-kbl-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@guc:
    - bat-mtlp-6:         [PASS][7] -> [DMESG-WARN][8] +36 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@guc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-6/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10] +140 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
    - fi-kbl-8809g:       [PASS][11] -> [DMESG-WARN][12] +38 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@perf:
    - bat-dg2-11:         [PASS][13] -> [DMESG-WARN][14] +65 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-11/igt@i915_selftest@live@perf.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-11/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][15] -> [DMESG-WARN][16] +129 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - bat-adlp-9:         [PASS][17] -> [DMESG-WARN][18] +87 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-9/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-9/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - fi-bsw-n3050:       [PASS][19] -> [DMESG-WARN][20] +62 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-bsw-n3050/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - bat-rplp-1:         [PASS][21] -> [DMESG-WARN][22] +86 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rplp-1/igt@kms_addfb_basic@clobberred-modifier.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rplp-1/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - bat-dg2-9:          [PASS][23] -> [DMESG-WARN][24] +96 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html

  * igt@kms_addfb_basic@too-high:
    - bat-adln-1:         [PASS][25] -> [DMESG-WARN][26] +77 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adln-1/igt@kms_addfb_basic@too-high.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adln-1/igt@kms_addfb_basic@too-high.html

  * igt@kms_addfb_basic@unused-offsets:
    - fi-elk-e7500:       [PASS][27] -> [DMESG-WARN][28] +67 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-elk-e7500/igt@kms_addfb_basic@unused-offsets.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-elk-e7500/igt@kms_addfb_basic@unused-offsets.html
    - bat-dg2-8:          [PASS][29] -> [DMESG-WARN][30] +92 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-skl-guc:         [PASS][31] -> [DMESG-WARN][32] +94 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-skl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-skl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - bat-jsl-3:          [PASS][33] -> [DMESG-WARN][34] +132 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_flip@basic-flip-vs-dpms@c-dp1:
    - fi-apl-guc:         [PASS][35] -> [DMESG-WARN][36] +120 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html

  * igt@kms_flip@basic-plain-flip@d-edp1:
    - bat-adlp-6:         [PASS][37] -> [DMESG-WARN][38] +11 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@kms_flip@basic-plain-flip@d-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-6/igt@kms_flip@basic-plain-flip@d-edp1.html

  * igt@kms_force_connector_basic@force-edid:
    - bat-mtlp-8:         [PASS][39] -> [DMESG-WARN][40] +120 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-8/igt@kms_force_connector_basic@force-edid.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-8/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1:
    - fi-skl-6600u:       [PASS][41] -> [DMESG-WARN][42] +132 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1:
    - bat-adln-1:         [PASS][43] -> [ABORT][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adln-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adln-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-edp-1:
    - bat-rplp-1:         [PASS][45] -> [ABORT][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-edp-1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-edp-1.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:
    - bat-jsl-1:          [PASS][47] -> [DMESG-WARN][48] +132 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1:
    - fi-cfl-guc:         [PASS][49] -> [DMESG-WARN][50] +44 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-cfl-guc/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-cfl-guc/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][51] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html

  
#### Warnings ####

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:
    - bat-dg2-8:          [FAIL][52] ([i915#7932]) -> [DMESG-WARN][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-hdmi-a-3}:
    - bat-dg2-11:         [PASS][54] -> [DMESG-WARN][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-hdmi-a-3.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-hdmi-a-3.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-1}:
    - bat-dg2-8:          [PASS][56] -> [DMESG-WARN][57] +6 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-1.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1}:
    - bat-jsl-1:          [PASS][58] -> [DMESG-WARN][59] +4 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-jsl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-jsl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-3}:
    - bat-dg2-9:          [PASS][60] -> [DMESG-WARN][61] +6 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-3.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-3.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-edp-1}:
    - bat-mtlp-8:         [PASS][62] -> [DMESG-WARN][63] +6 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-edp-1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-edp-1.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1}:
    - bat-adlp-9:         [PASS][64] -> [DMESG-WARN][65] +6 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html
    - fi-kbl-7567u:       [PASS][66] -> [DMESG-WARN][67] +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-hdmi-a-2}:
    - fi-skl-guc:         [PASS][68] -> [DMESG-WARN][69] +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-hdmi-a-2.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-hdmi-a-2.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-1}:
    - fi-apl-guc:         [PASS][70] -> [DMESG-WARN][71] +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-apl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-apl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-1.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2}:
    - fi-cfl-8109u:       [PASS][72] -> [DMESG-WARN][73] +3 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-1}:
    - fi-elk-e7500:       [PASS][74] -> [DMESG-WARN][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-1.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1}:
    - bat-adln-1:         [PASS][76] -> [DMESG-WARN][77] +4 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adln-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adln-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html
    - bat-rplp-1:         [PASS][78] -> [DMESG-WARN][79] +6 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rplp-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rplp-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html
    - fi-skl-6600u:       [PASS][80] -> [DMESG-WARN][81] +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html
    - bat-jsl-3:          [PASS][82] -> [DMESG-WARN][83] +4 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-jsl-3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-jsl-3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-hdmi-a-2}:
    - fi-bsw-n3050:       [PASS][84] -> [DMESG-WARN][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-hdmi-a-2.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-hdmi-a-2.html

  
Known issues
------------

  Here are the changes found in Patchwork_119055v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        [PASS][86] -> [ABORT][87] ([i915#8011])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-11/igt@core_auth@basic-auth.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-bsw-n3050:       [PASS][88] -> [DMESG-WARN][89] ([i915#6687]) +3 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0@smem.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_module_load@load:
    - bat-adlp-11:        [PASS][90] -> [DMESG-WARN][91] ([i915#4423])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-11/igt@i915_module_load@load.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-11/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][92] -> [DMESG-WARN][93] ([i915#4391])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-elk-e7500/igt@i915_module_load@load.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-elk-e7500/igt@i915_module_load@load.html
    - bat-mtlp-8:         [PASS][94] -> [DMESG-WARN][95] ([i915#1982])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-8/igt@i915_module_load@load.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-8/igt@i915_module_load@load.html

  * igt@i915_selftest@live@client:
    - bat-adlm-1:         [PASS][96] -> [DMESG-WARN][97] ([i915#4391]) +41 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlm-1/igt@i915_selftest@live@client.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlm-1/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@gem:
    - bat-adls-5:         [PASS][98] -> [DMESG-WARN][99] ([i915#4391]) +40 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adls-5/igt@i915_selftest@live@gem.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adls-5/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-adls-5:         [PASS][100] -> [DMESG-WARN][101] ([i915#4391] / [i915#8218])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adls-5/igt@i915_selftest@live@gem_contexts.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adls-5/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-x1275:       [PASS][102] -> [DMESG-WARN][103] ([i915#8218])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-7567u:       [PASS][104] -> [DMESG-WARN][105] ([i915#8218]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-8809g:       [PASS][106] -> [DMESG-WARN][107] ([i915#8218])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-6600u:       [PASS][108] -> [DMESG-WARN][109] ([i915#8218])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
    - bat-kbl-2:          [PASS][110] -> [DMESG-WARN][111] ([i915#8218])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_contexts:
    - bat-rpls-1:         [PASS][112] -> [DMESG-WARN][113] ([i915#4391]) +35 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_selftest@live@gt_contexts.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-1/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_engines:
    - bat-rpls-2:         [PASS][114] -> [DMESG-WARN][115] ([i915#4391]) +14 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@gt_engines.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-mtlp-6:         [PASS][116] -> [DMESG-WARN][117] ([i915#7699]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html
    - bat-rpls-2:         [PASS][118] -> [DMESG-WARN][119] ([i915#4391] / [i915#7699]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html
    - bat-dg2-11:         [PASS][120] -> [DMESG-WARN][121] ([i915#7699]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html
    - bat-mtlp-8:         [PASS][122] -> [DMESG-WARN][123] ([i915#7699]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-8/igt@i915_selftest@live@gt_heartbeat.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-8/igt@i915_selftest@live@gt_heartbeat.html
    - bat-rpls-1:         [PASS][124] -> [DMESG-WARN][125] ([i915#4391] / [i915#7699]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-6:         [PASS][126] -> [DMESG-FAIL][127] ([i915#7059])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [PASS][128] -> [DMESG-FAIL][129] ([i915#4258] / [i915#4391] / [i915#7913])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@guc:
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][130] ([i915#4391] / [i915#7852])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@hangcheck:
    - bat-adlm-1:         [PASS][131] -> [DMESG-WARN][132] ([i915#4391] / [i915#8423])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlm-1/igt@i915_selftest@live@hangcheck.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlm-1/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-7567u:       [PASS][133] -> [DMESG-WARN][134] ([i915#8423])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-7567u/igt@i915_selftest@live@hangcheck.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-7567u/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-x1275:       [PASS][135] -> [DMESG-WARN][136] ([i915#8423])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-x1275/igt@i915_selftest@live@hangcheck.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-x1275/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-8809g:       [PASS][137] -> [DMESG-WARN][138] ([i915#8423])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html
    - bat-kbl-2:          [PASS][139] -> [DMESG-WARN][140] ([i915#8423])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-kbl-2/igt@i915_selftest@live@hangcheck.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-kbl-2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][141] ([i915#4391]) +18 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-6:         [PASS][142] -> [DMESG-WARN][143] ([i915#6367])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-6/igt@i915_selftest@live@slpc.html
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][144] ([i915#4391] / [i915#6367])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - bat-rpls-1:         [PASS][145] -> [DMESG-WARN][146] ([i915#4391] / [i915#7852]) +1 similar issue
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_selftest@live@workarounds.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-1/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-6:         [PASS][147] -> [DMESG-FAIL][148] ([i915#6763])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
    - bat-rpls-2:         [PASS][149] -> [DMESG-WARN][150] ([i915#4391] / [i915#7852])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@workarounds.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-1:         [PASS][151] -> [DMESG-WARN][152] ([i915#4391] / [i915#6687])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-kbl-8809g:       [PASS][153] -> [DMESG-WARN][154] ([i915#8468])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-8809g/igt@i915_suspend@basic-s3-without-i915.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-8809g/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - bat-adlp-6:         [PASS][155] -> [DMESG-WARN][156] ([i915#4423]) +83 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
    - fi-apl-guc:         [PASS][157] -> [DMESG-WARN][158] ([i915#1982]) +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-edp-1:
    - bat-adlp-6:         [PASS][159] -> [ABORT][160] ([i915#4423])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-edp-1.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-6/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-edp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
    - bat-dg2-8:          [PASS][161] -> [DMESG-WARN][162] ([i915#1982])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1:
    - bat-jsl-3:          [PASS][163] -> [DMESG-WARN][164] ([i915#1982])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-jsl-3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-jsl-3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1.html
    - bat-jsl-1:          [PASS][165] -> [DMESG-WARN][166] ([i915#1982])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-jsl-1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-jsl-1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2:
    - fi-bsw-n3050:       [PASS][167] -> [DMESG-WARN][168] ([i915#1982]) +3 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-bsw-n3050/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-guc:         [DMESG-FAIL][169] ([i915#5334] / [i915#7872]) -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html

  
#### Warnings ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlp-6:         [SKIP][171] ([i915#7456]) -> [SKIP][172] ([i915#4423] / [i915#7456])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@debugfs_test@basic-hwmon.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-6/igt@debugfs_test@basic-hwmon.html

  * igt@i915_selftest@live@hangcheck:
    - bat-adls-5:         [DMESG-WARN][173] ([i915#5591]) -> [DMESG-WARN][174] ([i915#4391] / [i915#5591])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adls-5/igt@i915_selftest@live@hangcheck.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adls-5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-2:         [TIMEOUT][175] ([i915#6794] / [i915#7392]) -> [DMESG-WARN][176] ([i915#4391])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@mman.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-WARN][177] ([i915#6367]) -> [DMESG-WARN][178] ([i915#4391])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-2:         [ABORT][179] ([i915#6687] / [i915#8668]) -> [ABORT][180] ([i915#4391] / [i915#6687] / [i915#8668])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-1:         [ABORT][181] ([i915#6687] / [i915#7978]) -> [ABORT][182] ([i915#4391] / [i915#6687] / [i915#7978])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - bat-adlp-6:         [SKIP][183] ([i915#7828]) -> [SKIP][184] ([i915#4423] / [i915#7828]) +7 similar issues
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-6/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-adlp-6:         [SKIP][185] ([i915#4103]) -> [SKIP][186] ([i915#4103] / [i915#4423]) +1 similar issue
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adlp-6:         [SKIP][187] ([fdo#109285]) -> [SKIP][188] ([fdo#109285] / [i915#4423])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8218]: https://gitlab.freedesktop.org/drm/intel/issues/8218
  [i915#8423]: https://gitlab.freedesktop.org/drm/intel/issues/8423
  [i915#8468]: https://gitlab.freedesktop.org/drm/intel/issues/8468
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13302 -> Patchwork_119055v7

  CI-20190529: 20190529
  CI_DRM_13302: 839a0f1c0fba27caa09cb8c3c07ba21ba7428bb6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7344: 1c715e38251905d4d7797651fa448b11bf42a4a4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119055v7: 839a0f1c0fba27caa09cb8c3c07ba21ba7428bb6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

8eff76c9dd75 drm/i915/display/dp: On AUX xfer timeout restart freshly

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/index.html

--===============7069920799451129823==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/dp: On AUX xfer timeout restart freshly (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119055/">https://patchwork.freedesktop.org/series/119055/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13302 -&gt; Patchwork_119055v7</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_119055v7 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_119055v7, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_119055v7:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> +86 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +87 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@guc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-6/igt@i915_selftest@live@guc.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +140 similar issues</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +38 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-11/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-11/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +65 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +129 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-9/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-9/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a> +87 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-bsw-n3050/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">DMESG-WARN</a> +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rplp-1/igt@kms_addfb_basic@clobberred-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rplp-1/igt@kms_addfb_basic@clobberred-modifier.html">DMESG-WARN</a> +86 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop-any:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html">DMESG-WARN</a> +96 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adln-1/igt@kms_addfb_basic@too-high.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adln-1/igt@kms_addfb_basic@too-high.html">DMESG-WARN</a> +77 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-offsets:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-elk-e7500/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-elk-e7500/igt@kms_addfb_basic@unused-offsets.html">DMESG-WARN</a> +67 similar issues</p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html">DMESG-WARN</a> +92 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-skl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-skl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> +94 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">DMESG-WARN</a> +132 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">DMESG-WARN</a> +120 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@d-edp1:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@kms_flip@basic-plain-flip@d-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-6/igt@kms_flip@basic-plain-flip@d-edp1.html">DMESG-WARN</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-8/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-8/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> +120 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html">DMESG-WARN</a> +132 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adln-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adln-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-edp-1.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html">DMESG-WARN</a> +132 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-cfl-guc/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-cfl-guc/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html">DMESG-WARN</a> +44 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-hdmi-a-3}:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-hdmi-a-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-hdmi-a-3.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-1}:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-1.html">DMESG-WARN</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1}:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-jsl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-jsl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html">DMESG-WARN</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-3}:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-3.html">DMESG-WARN</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-edp-1}:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-edp-1.html">DMESG-WARN</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1}:</p>
<ul>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html">DMESG-WARN</a> +6 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html">DMESG-WARN</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-hdmi-a-2}:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-hdmi-a-2.html">DMESG-WARN</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-1}:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-apl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-apl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-1.html">DMESG-WARN</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2}:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2.html">DMESG-WARN</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-1}:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-1.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1}:</p>
<ul>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adln-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adln-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html">DMESG-WARN</a> +4 similar issues</p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rplp-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rplp-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html">DMESG-WARN</a> +6 similar issues</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-jsl-3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-jsl-3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1.html">DMESG-WARN</a> +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-hdmi-a-2}:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-hdmi-a-2.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119055v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-11/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-elk-e7500/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-8/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlm-1/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlm-1/igt@i915_selftest@live@client.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adls-5/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adls-5/igt@i915_selftest@live@gem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adls-5/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adls-5/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8218">i915#8218</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8218">i915#8218</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8218">i915#8218</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8218">i915#8218</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8218">i915#8218</a>)</p>
</li>
<li>
<p>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8218">i915#8218</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-1/igt@i915_selftest@live@gt_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 similar issue</p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 similar issue</p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-8/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-8/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 similar issue</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlm-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlm-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8423">i915#8423</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-7567u/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-7567u/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8423">i915#8423</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-x1275/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-x1275/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8423">i915#8423</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8423">i915#8423</a>)</p>
</li>
<li>
<p>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-kbl-2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-kbl-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8423">i915#8423</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-1/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>) +1 similar issue</p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6763">i915#6763</a>)</p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-8809g/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-8809g/igt@i915_suspend@basic-s3-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8468">i915#8468</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) +83 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-edp-1:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-6/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1:</p>
<ul>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-jsl-3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-jsl-3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-jsl-1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-jsl-1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-bsw-n3050/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adls-5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adls-5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-6/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v7/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13302 -&gt; Patchwork_119055v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13302: 839a0f1c0fba27caa09cb8c3c07ba21ba7428bb6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7344: 1c715e38251905d4d7797651fa448b11bf42a4a4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119055v7: 839a0f1c0fba27caa09cb8c3c07ba21ba7428bb6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>8eff76c9dd75 drm/i915/display/dp: On AUX xfer timeout restart freshly</p>

</body>
</html>

--===============7069920799451129823==--
