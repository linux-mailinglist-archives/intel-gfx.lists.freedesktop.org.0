Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B692658AB3C
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Aug 2022 15:06:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0973511A0E7;
	Fri,  5 Aug 2022 13:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E6D518A417;
 Fri,  5 Aug 2022 13:05:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D2BBA73C9;
 Fri,  5 Aug 2022 13:05:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1362982472045775516=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 05 Aug 2022 13:05:57 -0000
Message-ID: <165970475723.21184.4382947375213742061@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220805101334.925995-1-jani.nikula@intel.com>
In-Reply-To: <20220805101334.925995-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/edid=3A_convert_DP=2C?=
 =?utf-8?q?_HDMI_and_LVDS_to_drm=5Fedid?=
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

--===============1362982472045775516==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/2] drm/i915/edid: convert DP, HDMI and LVDS to drm_edid
URL   : https://patchwork.freedesktop.org/series/107020/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11970_full -> Patchwork_107020v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107020v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107020v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107020v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-apl2/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-apl2/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-glk:          [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-glk7/igt@i915_pm_rpm@system-suspend-execbuf.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-glk9/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_3d:
    - shard-kbl:          [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl7/igt@kms_3d.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@kms_3d.html
    - shard-snb:          [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-snb5/igt@kms_3d.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-snb6/igt@kms_3d.html
    - shard-skl:          [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl9/igt@kms_3d.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl10/igt@kms_3d.html

  * igt@kms_hdmi_inject@inject-4k:
    - shard-kbl:          [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl1/igt@kms_hdmi_inject@inject-4k.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl1/igt@kms_hdmi_inject@inject-4k.html
    - shard-skl:          NOTRUN -> [INCOMPLETE][15] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl10/igt@kms_hdmi_inject@inject-4k.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-snb:          [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-snb2/igt@kms_hdmi_inject@inject-audio.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-snb5/igt@kms_hdmi_inject@inject-audio.html
    - shard-skl:          [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl6/igt@kms_hdmi_inject@inject-audio.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl7/igt@kms_hdmi_inject@inject-audio.html

  
#### Warnings ####

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-apl:          [SKIP][20] ([fdo#109271]) -> [TIMEOUT][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-kbl:          [FAIL][22] ([fdo#108145] / [i915#265]) -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-tglu}:       [PASS][24] -> [FAIL][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-tglu-2/igt@i915_pm_rpm@drm-resources-equal.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-tglu-2/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - {shard-tglu}:       [PASS][26] -> [DMESG-FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-tglu-1/igt@i915_pm_rpm@system-suspend-execbuf.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-tglu-1/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_hdmi_inject@inject-audio:
    - {shard-rkl}:        [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-2/igt@kms_hdmi_inject@inject-audio.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-5/igt@kms_hdmi_inject@inject-audio.html

  
Known issues
------------

  Here are the changes found in Patchwork_107020v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49], [FAIL][50], [FAIL][51]) ([i915#5032]) -> ([PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl9/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl9/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl9/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl1/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl10/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl10/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl10/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl10/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl10/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl10/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl9/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl9/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl9/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl7/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl7/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl7/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl6/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl6/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl6/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl4/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl4/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl4/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl2/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl2/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl1/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl1/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl1/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl10/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl10/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][73] ([i915#4991])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl2/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][74] -> [DMESG-WARN][75] ([i915#180]) +5 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-apl:          [PASS][76] -> [DMESG-WARN][77] ([i915#180]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-apl3/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-apl8/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@hang:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271]) +328 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl4/igt@gem_ctx_persistence@hang.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][79] -> [SKIP][80] ([i915#4525]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][81] -> [FAIL][82] ([i915#2846])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][83] -> [FAIL][84] ([i915#2842])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][85] ([i915#2842])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][86] -> [FAIL][87] ([i915#2842]) +4 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2190])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl9/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#4613]) +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl7/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#4613]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-apl4/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#4613]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][92] ([i915#5566] / [i915#716])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][93] ([i915#454])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-kbl:          [PASS][94] -> [TIMEOUT][95] ([i915#6168])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl1/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl1/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_selftest@mock@vma:
    - shard-skl:          NOTRUN -> [INCOMPLETE][96] ([i915#6473])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl7/igt@i915_selftest@mock@vma.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][97] ([i915#3743])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271]) +93 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#3886]) +14 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl9/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#1888] / [i915#3886])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#3886]) +5 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#3886]) +4 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-apl6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [fdo#111827] / [i915#1888])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl2/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl4/igt@kms_color_chamelium@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@kms_color_chamelium@pipe-c-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-apl3/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][107] ([i915#2105])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][108] ([fdo#103375])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [PASS][109] -> [FAIL][110] ([i915#2346])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          NOTRUN -> [FAIL][111] ([i915#4767])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][112] ([i915#180])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][113] ([i915#180] / [i915#3614])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [PASS][114] -> [FAIL][115] ([fdo#103375])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-apl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][116] ([i915#2122])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([i915#2672]) +3 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][118] ([i915#2672] / [i915#3555])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-skl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#1888]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
    - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271]) +70 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-apl3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
    - shard-kbl:          NOTRUN -> [FAIL][121] ([i915#1188])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][122] ([i915#265])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][123] ([fdo#108145] / [i915#265]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][124] ([fdo#108145] / [i915#265]) +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-iclb:         [PASS][125] -> [SKIP][126] ([i915#5176]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-kbl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#658]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#658]) +4 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl10/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#658]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-apl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][130] -> [SKIP][131] ([fdo#109441]) +2 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [PASS][132] -> [SKIP][133] ([i915#5519])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_writeback@writeback-check-output:
    - shard-kbl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#2437])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@kms_writeback@writeback-check-output.html

  * igt@perf@short-reads:
    - shard-skl:          NOTRUN -> [FAIL][135] ([i915#51])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl7/igt@perf@short-reads.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#2994]) +4 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl9/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@fair-3:
    - shard-kbl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#2994])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@split-10:
    - shard-apl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#2994])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-apl4/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {shard-rkl}:        [SKIP][139] ([i915#2582]) -> [PASS][140] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-1/igt@fbdev@read.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@fbdev@read.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-tglu}:       [FAIL][141] ([i915#6268]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@hang:
    - {shard-rkl}:        [SKIP][143] ([i915#6252]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-5/igt@gem_ctx_persistence@hang.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-2/igt@gem_ctx_persistence@hang.html

  * igt@gem_eio@unwedge-stress:
    - {shard-rkl}:        [TIMEOUT][145] ([i915#3063]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-2/igt@gem_eio@unwedge-stress.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [SKIP][147] ([i915#4525]) -> [PASS][148] +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-tglu}:       [FAIL][149] ([i915#2842]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [FAIL][151] ([i915#2842]) -> [PASS][152] +1 similar issue
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-glk2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - {shard-rkl}:        [SKIP][153] ([i915#3281]) -> [PASS][154] +7 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - {shard-rkl}:        [SKIP][155] ([i915#3282]) -> [PASS][156] +2 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-kbl:          [DMESG-WARN][157] ([i915#180]) -> [PASS][158] +3 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@gem_workarounds@suspend-resume-context.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@shadow-peek:
    - {shard-rkl}:        [SKIP][159] ([i915#2527]) -> [PASS][160] +1 similar issue
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][161] ([i915#454]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][163] ([i915#4281]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@fences-dpms:
    - {shard-rkl}:        [SKIP][165] ([i915#1849]) -> [PASS][166] +1 similar issue
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-1/igt@i915_pm_rpm@fences-dpms.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@i915_pm_rpm@fences-dpms.html

  * igt@i915_pm_rps@waitboost:
    - {shard-rkl}:        [FAIL][167] ([i915#4016]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-1/igt@i915_pm_rps@waitboost.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][169] ([i915#180]) -> [PASS][170] +2 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-apl3/igt@i915_suspend@sysfs-reader.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic:
    - shard-skl:          [INCOMPLETE][171] -> [PASS][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [FAIL][173] ([i915#2346]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor@toggle:
    - shard-skl:          [SKIP][175] ([fdo#109271]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - {shard-rkl}:        [SKIP][177] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][178] +6 similar issues
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [FAIL][179] ([i915#79]) -> [PASS][180] +1 similar issue
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [FAIL][181] ([i915#2122]) -> [PASS][182] +3 similar issues
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][183] ([i915#1849] / [i915#4098]) -> [PASS][184] +19 similar issues
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-kbl:          [DMESG-FAIL][185] ([i915#180]) -> [PASS][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - {shard-rkl}:        [SKIP][187] ([i915#1849] / [i915#3546] / [i915#4070] / [i915#4098]) -> [PASS][188] +1 similar issue
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-none:
    - {shard-rkl}:        [SKIP][189] ([i915#3558] / [i915#4070]) -> [PASS][190] +1 similar issue
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [SKIP][191] ([i915#5176]) -> [PASS][192] +2 similar issues
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-edp-1.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb1/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [SKIP][193] ([i915#5235]) -> [PASS][194] +2 similar issues
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [SKIP][195] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][196]
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][197] ([fdo#109441]) -> [PASS][198] +2 similar issues
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@sprite_plane_move:
    - {shard-rkl}:        [SKIP][199] ([i915#1072]) -> [PASS][200] +1 similar issue
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-1/igt@kms_psr@sprite_plane_move.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@kms_psr@sprite_plane_move.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
    - {shard-rkl}:        [SKIP][201] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][202] +1 similar issue
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html

  * igt@kms_vblank@pipe-b-query-idle:
    - {shard-rkl}:        [SKIP][203] ([i915#1845] / [i915#4098]) -> [PASS][204] +31 similar issues
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - {shard-rkl}:        [SKIP][205] ([fdo#109289]) -> [PASS][206]
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-2/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][207] ([i915#5639]) -> [PASS][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-glk1/igt@perf@polling-parameterized.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-glk7/igt@perf@polling-parameterized.html

  * igt@prime_vgem@basic-read:
    - {shard-rkl}:        [SKIP][209] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-rkl-2/igt@prime_vgem@basic-read.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-5/igt@prime_vgem@basic-read.html

  * igt@testdisplay:
    - {shard-tglu}:       [DMESG-WARN][211] ([i915#4941]) -> [PASS][212]
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-tglu-4/igt@testdisplay.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-tglu-1/igt@testdisplay.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [FAIL][213] ([i915#6117]) -> [SKIP][214] ([i915#4525])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][215] ([i915#2842]) -> [FAIL][216] ([i915#2852])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [SKIP][217] ([fdo#109271]) -> [FAIL][218] ([i915#2842])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][219] ([i915#588]) -> [SKIP][220] ([i915#658])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [FAIL][221] ([i915#4767]) -> [INCOMPLETE][222] ([i915#180] / [i915#4939])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][223] ([i915#2920]) -> [SKIP][224] ([i915#658])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][225] ([i915#658]) -> [SKIP][226] ([i915#2920])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         [SKIP][227] ([i915#2920]) -> [SKIP][228] ([fdo#111068] / [i915#658])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][229], [FAIL][230], [FAIL][231], [FAIL][232], [FAIL][233], [FAIL][234], [FAIL][235]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][236], [FAIL][237], [FAIL][238], [FAIL][239], [FAIL][240], [FAIL][241], [FAIL][242], [FAIL][243], [FAIL][244]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6219] / [i915#716] / [i915#92])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@runner@aborted.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@runner@aborted.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@runner@aborted.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@runner@aborted.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@runner@aborted.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@runner@aborted.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl7/igt@runner@aborted.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@runner@aborted.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@runner@aborted.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl1/igt@runner@aborted.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@runner@aborted.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@runner@aborted.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@runner@aborted.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@runner@aborted.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@runner@aborted.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6168]: https://gitlab.freedesktop.org/drm/intel/issues/6168
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6473]: https://gitlab.freedesktop.org/drm/intel/issues/6473
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Build changes
-------------

  * Linux: CI_DRM_11970 -> Patchwork_107020v1

  CI-20190529: 20190529
  CI_DRM_11970: 1d7aa8092dbbaef7c6a81903e0432f5b90da4d63 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6613: 209230467200f2fa63a6f71fe6299996470dd813 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107020v1: 1d7aa8092dbbaef7c6a81903e0432f5b90da4d63 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/index.html

--===============1362982472045775516==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [CI,1/2] drm/i915/edid:=
 convert DP, HDMI and LVDS to drm_edid</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/107020/">https://patchwork.freedesktop.org/series/107020/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107020v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107020v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11970_full -&gt; Patchwork_107020v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107020v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_107020v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
107020v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11970/shard-apl2/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107020v1/shard-apl2/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-=
smem0.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11970/shard-kbl4/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107020v1/shard-kbl4/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-=
smem0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-glk7/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107=
020v1/shard-glk9/igt@i915_pm_rpm@system-suspend-execbuf.html">FAIL</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_3d:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11970/shard-kbl7/igt@kms_3d.html">PASS</a> -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@kms_3d.h=
tml">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11970/shard-snb5/igt@kms_3d.html">PASS</a> -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-snb6/igt@kms_3d.h=
tml">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11970/shard-skl9/igt@kms_3d.html">PASS</a> -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl10/igt@kms_3d.=
html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-4k:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11970/shard-kbl1/igt@kms_hdmi_inject@inject-4k.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shar=
d-kbl1/igt@kms_hdmi_inject@inject-4k.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107020v1/shard-skl10/igt@kms_hdmi_inject@inject-4k.h=
tml">INCOMPLETE</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11970/shard-snb2/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/s=
hard-snb5/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11970/shard-skl6/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/s=
hard-skl7/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pr=
i-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-apl1/igt@kms_frontbuffe=
r_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-ma=
x.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl1/igt@kms_plane_alpha_blend@pipe-=
a-constant-alpha-max.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-tglu-2/igt@i915_pm_rpm@drm-resources-equal.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1070=
20v1/shard-tglu-2/igt@i915_pm_rpm@drm-resources-equal.html">FAIL</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-tglu-1/igt@i915_pm_rpm@system-suspend-execbuf.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07020v1/shard-tglu-1/igt@i915_pm_rpm@system-suspend-execbuf.html">DMESG-FAI=
L</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-2/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1=
/shard-rkl-5/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107020v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11970/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11970/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11970/shard-skl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/sha=
rd-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11970/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11970/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11970/shard-skl3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970=
/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11970/shard-skl1/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-sk=
l10/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11970/shard-skl10/boot.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl10/boot.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-skl10/bo=
ot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11970/shard-skl10/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11970/shard-skl10/boot.html">FAIL</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5032">i915#5032</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1=
/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107020v1/shard-skl9/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl9/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_107020v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_107020v1/shard-skl7/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_107020v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl6/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/=
shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_107020v1/shard-skl6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl4/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107020v1/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_107020v1/shard-skl4/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl2=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107020v1/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl1/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/s=
hard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_107020v1/shard-skl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-skl10/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107020v1/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_107020v1/shard-skl10/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl2/igt@gem_create@create-massive.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_107020v1/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-apl3/igt@gem_ctx_isolation@preservation-s3@vecs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_107020v1/shard-apl8/igt@gem_ctx_isolation@preservation-s3@vecs0.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl4/igt@gem_ctx_persistence@hang.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +328 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07020v1/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/=
shard-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07020v1/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-iclb2/igt@gem_exec_fair@basic-none@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v=
1/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +4 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl9/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl7/igt@gem_lmem_swapping@heavy-ver=
ify-multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-apl4/igt@gem_lmem_swapping@parallel-=
multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@gen9_exec_parse@allowed-sin=
gle.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5566">i915#5566</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl4/igt@i915_pm_dc@dc6-psr.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i91=
5#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-kbl1/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7020v1/shard-kbl1/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">TIMEOUT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6168">i915#616=
8</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@vma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl7/igt@i915_selftest@mock@vma.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6473">i915#6473</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-=
stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +93 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl9/igt@kms_ccs@pipe-a-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +14 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl7/igt@kms_ccs@pipe-a-crc-primary-=
rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl1/igt@kms_ccs@pipe-a-crc-sprite-p=
lanes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-apl6/igt@kms_ccs@pipe-b-bad-pixel-fo=
rmat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl2/igt@kms_chamelium@hdmi-crc-mult=
iple.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl4/igt@kms_color_chamelium@pipe-b-=
ctm-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@kms_color_chamelium@pipe-c-=
ctm-0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-apl3/igt@kms_color_chamelium@pipe-d-=
ctm-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@kms_content_protection@ueve=
nt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2105">i915#2105</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-apl3/igt@kms_cursor_crc@cursor-suspe=
nd@pipe-c-dp-1.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_107020v1/shard-glk2/igt@kms_cursor_legacy@flip-v=
s-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@kms_flip@flip-vs-suspend-in=
terruptible@a-dp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@kms_flip@flip-vs-suspend-in=
terruptible@b-dp1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3614">i915#3614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-apl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v=
1/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">FAIL</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl7/igt@kms_flip@plain-flip-ts-chec=
k-interruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl2/igt@kms_frontbuffer_tracking@fb=
c-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-apl3/igt@kms_frontbuffer_tracking@ps=
r-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +70 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-d=
p-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-=
b-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@kms_plane_alpha_blend@pipe-=
c-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl2/igt@kms_plane_alpha_blend@pipe-=
c-constant-alpha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb1/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-pixel-formats@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb3/igt@kms_pl=
ane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5176">i915#5176</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl10/igt@kms_psr2_sf@overlay-plane-=
move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +4 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-apl6/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shar=
d-iclb1/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb2/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_107020v1/shard-iclb1/igt@kms_psr_stress_test@flip-primary-in=
validate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl7/igt@perf@short-reads.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/51">i915#5=
1</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-skl9/igt@sysfs_clients@busy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@sysfs_clients@fair-3.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107020v1/shard-apl4/igt@sysfs_clients@split-10.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-1/igt@fbdev@read.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-6=
/igt@fbdev@read.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#62=
68</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_107020v1/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-5/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020=
v1/shard-rkl-2/igt@gem_ctx_persistence@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10702=
0v1/shard-rkl-5/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_107020v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-subm=
it-fence.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_107020v1/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7020v1/shard-glk2/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i9=
15#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_107020v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">P=
ASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-s=
noop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_107020v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes=
-after-reads-snoop.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-kbl4/igt@gem_workarounds@suspend-resume-context.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_107020v1/shard-kbl4/igt@gem_workarounds@suspend-resume-context.h=
tml">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107=
020v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard=
-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/=
shard-iclb8/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-1/igt@i915_pm_rpm@fences-dpms.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v=
1/shard-rkl-6/igt@i915_pm_rpm@fences-dpms.html">PASS</a> +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-1/igt@i915_pm_rps@waitboost.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4016">i915#4016</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/=
shard-rkl-6/igt@i915_pm_rps@waitboost.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-apl3/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7020v1/shard-apl6/igt@i915_suspend@sysfs-reader.html">PASS</a> +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html">=
INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_107020v1/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor@atomic.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107020v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-curso=
r@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_107020v1/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor@toggle.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtil=
ed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@kms_draw_crc@draw-=
method-rgb565-mmap-gtt-xtiled.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107020v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank=
-interruptible@a-hdmi-a1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i=
915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_107020v1/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html=
">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@kms_frontb=
uffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +19 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">D=
MESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_107020v1/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-alpha-transparen=
t-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3546">i915#3546</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@kms_plane_alp=
ha_blend@pipe-a-alpha-transparent-fb.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-none:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3558">i915#3558</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe=
-a-tiling-none.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-=
a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-=
format-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5176">i915#5176</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb1/igt@kms_p=
lane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-edp-1.html=
">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-iclb1/igt@km=
s_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-=
1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#1=
09642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11106=
8">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_107020v1/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107020v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_move:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-1/igt@kms_psr@sprite_plane_move.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10702=
0v1/shard-rkl-6/igt@kms_psr@sprite_plane_move.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107020v1/shard-rkl-6/igt@kms_universal_plane@cursor-=
fb-leak-pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-idle:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915=
#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107020v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html">PASS</a> +3=
1 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109289">fdo#10928=
9</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107020v1/shard-rkl-2/igt@perf@gen12-oa-tlb-invalidate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-glk1/igt@perf@polling-parameterized.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10702=
0v1/shard-glk7/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-rkl-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i91=
5#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_107020v1/shard-rkl-5/igt@prime_vgem@basic-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-tglu-4/igt@testdisplay.html">DMESG-WARN</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4941">i915#4941</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/sha=
rd-tglu-1/igt@testdisplay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_107020v1/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107020v1/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2852">i915#=
2852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107020v1/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07020v1/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020=
v1/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_107020v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continu=
ous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_107020v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11970/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107020v1/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#=
111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658=
">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11970/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11970/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11970/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11970/shard-kbl4/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11970/shard-kbl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v=
1/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_107020v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_107020v1/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl4/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_107020v1/shard-kbl7/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107020v1/sh=
ard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_107020v1/shard-kbl1/igt@runner@aborted.html"=
>FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/6219">i915#6219</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/716">i915#716</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11970 -&gt; Patchwork_107020v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11970: 1d7aa8092dbbaef7c6a81903e0432f5b90da4d63 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6613: 209230467200f2fa63a6f71fe6299996470dd813 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107020v1: 1d7aa8092dbbaef7c6a81903e0432f5b90da4d63 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1362982472045775516==--
