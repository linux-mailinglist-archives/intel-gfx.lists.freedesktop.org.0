Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F6264C36B
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 06:12:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E67B10E218;
	Wed, 14 Dec 2022 05:11:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5296C10E218;
 Wed, 14 Dec 2022 05:11:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49491A0003;
 Wed, 14 Dec 2022 05:11:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8080354540678438986=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Date: Wed, 14 Dec 2022 05:11:32 -0000
Message-ID: <167099469226.8286.11358898287661505947@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
In-Reply-To: <20221124070925.3834910-1-arun.r.murthy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_wait_on_timeout_before_retry_include_sw_delay_=28re?=
 =?utf-8?b?djQp?=
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

--===============8080354540678438986==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: wait on timeout before retry include sw delay (rev4)
URL   : https://patchwork.freedesktop.org/series/111303/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12502 -> Patchwork_111303v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_111303v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_111303v4, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/index.html

Participating hosts (39 -> 38)
------------------------------

  Additional (1): bat-atsm-1 
  Missing    (2): bat-jsl-1 bat-jsl-3 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111303v4:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-adlp-4:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-adlp-4/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-adlp-4/igt@i915_module_load@load.html

  * igt@i915_selftest@live@vma:
    - fi-kbl-soraka:      [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-soraka/igt@i915_selftest@live@vma.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-soraka/igt@i915_selftest@live@vma.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-skl-6700k2:      [PASS][5] -> [DMESG-WARN][6] +58 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-6700k2/igt@i915_suspend@basic-s2idle-without-i915.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6700k2/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - fi-bsw-kefka:       [PASS][7] -> [DMESG-WARN][8] +27 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-bsw-kefka/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-bsw-kefka/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - fi-bsw-n3050:       [PASS][9] -> [DMESG-WARN][10] +75 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-bsw-n3050/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-bsw-n3050/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - fi-elk-e7500:       [PASS][11] -> [DMESG-WARN][12] +57 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-elk-e7500/igt@kms_addfb_basic@clobberred-modifier.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-elk-e7500/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - fi-rkl-11600:       [PASS][13] -> [DMESG-WARN][14] +50 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - fi-skl-guc:         [PASS][15] -> [DMESG-WARN][16] +55 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-guc/igt@kms_addfb_basic@invalid-set-prop-any.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-guc/igt@kms_addfb_basic@invalid-set-prop-any.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - fi-snb-2600:        [PASS][17] -> [DMESG-WARN][18] +56 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-snb-2600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-snb-2600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:
    - fi-skl-guc:         NOTRUN -> [DMESG-WARN][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-guc/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-1:
    - fi-skl-6700k2:      NOTRUN -> [DMESG-WARN][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6700k2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-adlp-6}:       [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-adlp-6/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-adlp-6/igt@i915_module_load@load.html
    - {bat-adln-1}:       [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-adln-1/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-adln-1/igt@i915_module_load@load.html
    - {bat-rplp-1}:       [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-rplp-1/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-rplp-1/igt@i915_module_load@load.html

  * igt@i915_selftest@live@uncore:
    - {fi-jsl-1}:         [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-jsl-1/igt@i915_selftest@live@uncore.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-jsl-1/igt@i915_selftest@live@uncore.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - {bat-adlp-9}:       [PASS][29] -> [DMESG-WARN][30] +87 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-adlp-9/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-adlp-9/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_addfb_basic@bad-pitch-63:
    - {bat-adlm-1}:       [PASS][31] -> [DMESG-WARN][32] +44 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - {bat-kbl-2}:        [PASS][33] -> [DMESG-WARN][34] +88 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-kbl-2/igt@kms_addfb_basic@clobberred-modifier.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-kbl-2/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - {bat-dg2-9}:        [PASS][35] -> [DMESG-WARN][36] +49 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html
    - {bat-dg2-11}:       [PASS][37] -> [DMESG-WARN][38] +48 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-dg2-11/igt@kms_addfb_basic@invalid-set-prop-any.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-dg2-11/igt@kms_addfb_basic@invalid-set-prop-any.html

  * igt@kms_flip@basic-plain-flip@c-edp1:
    - {fi-jsl-1}:         [PASS][39] -> [DMESG-WARN][40] +98 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-jsl-1/igt@kms_flip@basic-plain-flip@c-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-jsl-1/igt@kms_flip@basic-plain-flip@c-edp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_111303v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-soraka:      [PASS][41] -> [DMESG-WARN][42] ([i915#1982] / [i915#4391]) +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@load:
    - fi-icl-u2:          [PASS][43] -> [INCOMPLETE][44] ([i915#4391])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-icl-u2/igt@i915_module_load@load.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-icl-u2/igt@i915_module_load@load.html
    - fi-skl-6700k2:      [PASS][45] -> [DMESG-WARN][46] ([i915#92])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-6700k2/igt@i915_module_load@load.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6700k2/igt@i915_module_load@load.html
    - fi-kbl-8809g:       [PASS][47] -> [DMESG-WARN][48] ([i915#4391]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-8809g/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-8809g/igt@i915_module_load@load.html
    - fi-bsw-kefka:       [PASS][49] -> [DMESG-WARN][50] ([i915#1982])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-bsw-kefka/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-bsw-kefka/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][51] -> [DMESG-FAIL][52] ([i915#4391] / [i915#5334])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][53] -> [DMESG-WARN][54] ([i915#4391]) +88 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_addfb_basic@small-bo:
    - fi-skl-6600u:       [PASS][55] -> [DMESG-WARN][56] ([i915#4391]) +91 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-rkl-guc:         NOTRUN -> [SKIP][57] ([fdo#111827])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-rkl-guc/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_flip@basic-flip-vs-dpms@c-edp1:
    - fi-kbl-soraka:      [PASS][58] -> [DMESG-WARN][59] ([i915#4391] / [i915#62] / [i915#92]) +19 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:
    - fi-bsw-n3050:       [PASS][60] -> [DMESG-WARN][61] ([i915#1982]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1:
    - fi-skl-6600u:       [PASS][62] -> [DMESG-WARN][63] ([i915#4391] / [i915#92]) +40 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1:
    - fi-kbl-soraka:      [PASS][64] -> [DMESG-WARN][65] ([i915#4391]) +86 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-soraka/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-soraka/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-skl-6600u:       NOTRUN -> [SKIP][66] ([fdo#109271])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6600u/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_psr@cursor_plane_move:
    - fi-skl-6600u:       [PASS][67] -> [SKIP][68] ([fdo#109271]) +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-6600u/igt@kms_psr@cursor_plane_move.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6600u/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_page_flip:
    - fi-kbl-soraka:      [PASS][69] -> [DMESG-WARN][70] ([i915#1982] / [i915#4391] / [i915#62] / [i915#92])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-soraka/igt@kms_psr@primary_page_flip.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-soraka/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][71] ([i915#4312])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-adlp-4/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][72] ([i915#4312])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-icl-u2/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][73] ([i915#4312])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-bsw-kefka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][74] ([i915#7229]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [INCOMPLETE][76] ([i915#4983]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2:
    - bat-dg1-5:          [FAIL][78] ([fdo#103375]) -> [PASS][79] +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@basic:
    - fi-skl-6600u:       [SKIP][80] ([fdo#109271] / [i915#4613]) -> [SKIP][81] ([fdo#109271] / [i915#4613] / [i915#92])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-6600u/igt@gem_lmem_swapping@basic.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6600u/igt@gem_lmem_swapping@basic.html

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [DMESG-WARN][82] ([i915#6899]) -> [DMESG-WARN][83] ([i915#4391] / [i915#6899])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-8809g/igt@i915_module_load@reload.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-8809g/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      [DMESG-FAIL][84] ([i915#1886]) -> [DMESG-FAIL][85] ([i915#1886] / [i915#4391])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6600u:       [SKIP][86] ([fdo#109271] / [fdo#111827]) -> [SKIP][87] ([fdo#109271] / [fdo#111827] / [i915#92]) +7 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
  [i915#6166]: https://gitlab.freedesktop.org/drm/intel/issues/6166
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6899]: https://gitlab.freedesktop.org/drm/intel/issues/6899
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7357]: https://gitlab.freedesktop.org/drm/intel/issues/7357
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Build changes
-------------

  * Linux: CI_DRM_12502 -> Patchwork_111303v4

  CI-20190529: 20190529
  CI_DRM_12502: cc44a1e87ea6b788868878295119398966f98a81 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7092: 59e3bf83f6bae0918276f880f969a10d279c657a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111303v4: cc44a1e87ea6b788868878295119398966f98a81 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

dfcbc94fc459 drm/i915/dp: change aux_ctl reg read to polling read

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/index.html

--===============8080354540678438986==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: wait on timeout before retry include sw delay (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111303/">https://patchwork.freedesktop.org/series/111303/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12502 -&gt; Patchwork_111303v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_111303v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_111303v4, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Additional (1): bat-atsm-1 <br />
  Missing    (2): bat-jsl-1 bat-jsl-3 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_111303v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-adlp-4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-adlp-4/igt@i915_module_load@load.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-soraka/igt@i915_selftest@live@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-soraka/igt@i915_selftest@live@vma.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-6700k2/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6700k2/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> +58 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-bsw-kefka/igt@kms_addfb_basic@basic-y-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-bsw-kefka/igt@kms_addfb_basic@basic-y-tiled-legacy.html">DMESG-WARN</a> +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-bsw-n3050/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-bsw-n3050/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">DMESG-WARN</a> +75 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-elk-e7500/igt@kms_addfb_basic@clobberred-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-elk-e7500/igt@kms_addfb_basic@clobberred-modifier.html">DMESG-WARN</a> +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">DMESG-WARN</a> +50 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop-any:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-guc/igt@kms_addfb_basic@invalid-set-prop-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-guc/igt@kms_addfb_basic@invalid-set-prop-any.html">DMESG-WARN</a> +55 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-snb-2600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-snb-2600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">DMESG-WARN</a> +56 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-guc/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-1:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6700k2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-1.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-adlp-6/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-adln-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-adln-1/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-rplp-1/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-jsl-1/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-jsl-1/igt@i915_selftest@live@uncore.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-adlp-9/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-adlp-9/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a> +87 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-63:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html">DMESG-WARN</a> +44 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>{bat-kbl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-kbl-2/igt@kms_addfb_basic@clobberred-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-kbl-2/igt@kms_addfb_basic@clobberred-modifier.html">DMESG-WARN</a> +88 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop-any:</p>
<ul>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html">DMESG-WARN</a> +49 similar issues</p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-dg2-11/igt@kms_addfb_basic@invalid-set-prop-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-dg2-11/igt@kms_addfb_basic@invalid-set-prop-any.html">DMESG-WARN</a> +48 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-edp1:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-jsl-1/igt@kms_flip@basic-plain-flip@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-jsl-1/igt@kms_flip@basic-plain-flip@c-edp1.html">DMESG-WARN</a> +98 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111303v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-icl-u2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-icl-u2/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-6700k2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6700k2/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-8809g/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-8809g/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-bsw-kefka/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-bsw-kefka/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) +88 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@small-bo:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) +91 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-rkl-guc/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-edp1:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-soraka/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-soraka/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) +86 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6600u/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-6600u/igt@kms_psr@cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6600u/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-soraka/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-soraka/igt@kms_psr@primary_page_flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-6600u/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6600u/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-8809g/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6899">i915#6899</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-8809g/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6899">i915#6899</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111303v4/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +7 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12502 -&gt; Patchwork_111303v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12502: cc44a1e87ea6b788868878295119398966f98a81 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7092: 59e3bf83f6bae0918276f880f969a10d279c657a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111303v4: cc44a1e87ea6b788868878295119398966f98a81 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>dfcbc94fc459 drm/i915/dp: change aux_ctl reg read to polling read</p>

</body>
</html>

--===============8080354540678438986==--
