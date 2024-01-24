Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C0883AB19
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 14:46:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E43110EA18;
	Wed, 24 Jan 2024 13:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0AEC10EA18;
 Wed, 24 Jan 2024 13:46:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3721422931712996442=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_Fixed-type_GENMASK/BIT?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 24 Jan 2024 13:46:34 -0000
Message-ID: <170610399476.695948.5016995682373118296@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240124050205.3646390-1-lucas.demarchi@intel.com>
In-Reply-To: <20240124050205.3646390-1-lucas.demarchi@intel.com>
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

--===============3721422931712996442==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fixed-type GENMASK/BIT
URL   : https://patchwork.freedesktop.org/series/129116/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14168_full -> Patchwork_129116v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129116v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129116v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/index.html

Participating hosts (9 -> 8)
------------------------------

  Missing    (1): shard-snb-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129116v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@sysfs-reader:
    - shard-tglu:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-tglu-3/igt@i915_suspend@sysfs-reader.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-9/igt@i915_suspend@sysfs-reader.html

  * igt@kms_plane_alpha_blend@alpha-7efc:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@kms_plane_alpha_blend@alpha-7efc.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_psr@psr2-primary-blt@edp-1}:
    - shard-mtlp:         [DMESG-WARN][4] ([i915#9157]) -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-mtlp-2/igt@kms_psr@psr2-primary-blt@edp-1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-6/igt@kms_psr@psr2-primary-blt@edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_129116v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [FAIL][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46]) ([i915#8293])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk3/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk3/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk3/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk8/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk9/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk9/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk9/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk8/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk1/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-rkl:          ([PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [FAIL][63], [FAIL][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68]) ([i915#8293]) -> ([PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-3/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-3/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-4/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-4/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-4/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-4/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-4/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-5/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-5/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-5/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-5/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-5/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-6/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-6/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-7/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-7/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-7/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-7/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-7/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-7/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-7/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-7/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-6/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-6/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-6/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-6/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-3/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-3/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-3/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-3/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-2/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/boot.html
    - shard-snb:          ([PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [FAIL][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115], [PASS][116], [PASS][117]) ([i915#8293]) -> ([PASS][118], [PASS][119], [PASS][120], [PASS][121], [PASS][122], [PASS][123], [PASS][124], [PASS][125], [PASS][126], [PASS][127], [PASS][128], [PASS][129], [PASS][130], [PASS][131], [PASS][132], [PASS][133], [PASS][134], [PASS][135], [PASS][136], [PASS][137], [PASS][138], [PASS][139], [PASS][140], [PASS][141], [PASS][142])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb1/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb1/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb1/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb1/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb1/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb2/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb2/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb4/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb4/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb4/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb4/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb4/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb5/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb5/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb5/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb5/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb5/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb6/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb6/boot.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb6/boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb6/boot.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb7/boot.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb7/boot.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb7/boot.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb7/boot.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb7/boot.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb7/boot.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb7/boot.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb6/boot.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb6/boot.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb6/boot.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb6/boot.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb5/boot.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb5/boot.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb5/boot.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb5/boot.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb4/boot.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb4/boot.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb4/boot.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb4/boot.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb2/boot.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb2/boot.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb2/boot.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb2/boot.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb2/boot.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb1/boot.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb1/boot.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb1/boot.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb1/boot.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#8411]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@drm_fdinfo@busy-check-all@ccs3:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#8414]) +11 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@drm_fdinfo@busy-check-all@ccs3.html

  * igt@drm_fdinfo@isolation@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#8414]) +5 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@drm_fdinfo@isolation@rcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][146] -> [FAIL][147] ([i915#7742])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#7697])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@gem_basic@multigpu-create-close.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#7697])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#6335])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#8562])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@gem_create@create-ext-set-pat.html
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#8562])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_create@create-ext-set-pat.html
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#8562])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([fdo#109314])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][155] ([fdo#109271] / [i915#1099])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb4/igt@gem_ctx_persistence@engines-hostile-preempt.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#8555])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#280])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#280])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> [ABORT][159] ([i915#10030] / [i915#7975] / [i915#8213])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_eio@hibernate.html
    - shard-rkl:          NOTRUN -> [ABORT][160] ([i915#7975] / [i915#8213])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#4771]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#4812])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#6334]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#6334])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-dg2:          NOTRUN -> [FAIL][165] ([i915#9606])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@gem_exec_capture@many-4k-incremental.html
    - shard-rkl:          NOTRUN -> [FAIL][166] ([i915#9606])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_exec_capture@many-4k-incremental.html
    - shard-tglu:         NOTRUN -> [FAIL][167] ([i915#9606])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_fair@basic-none-rrul:
    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#3539] / [i915#4852])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_exec_fair@basic-none-rrul.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglu:         [PASS][169] -> [FAIL][170] ([i915#2842]) +1 other test fail
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][171] ([i915#2842])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-rkl:          [PASS][172] -> [FAIL][173] ([i915#2842])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-3/igt@gem_exec_fair@basic-none@vecs0.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fence@submit67:
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#4812])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#3539] / [i915#4852]) +3 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#7697])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([fdo#109283] / [i915#5107])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg1:          NOTRUN -> [SKIP][178] ([fdo#112283])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-cpu-read:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#3281]) +11 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_exec_reloc@basic-cpu-read.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#3281]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#3281]) +2 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gem_exec_reloc@basic-wc-cpu-active.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#3281]) +13 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#4537] / [i915#4812]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#7276])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          NOTRUN -> [ABORT][185] ([i915#7975] / [i915#8213])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#4860]) +1 other test skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#4613] / [i915#7582])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#4613]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#4613]) +3 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][190] ([fdo#109271] / [i915#4613]) +4 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk7/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_mmap_gtt@coherency:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([fdo#111656])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_mmap_gtt@coherency.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#4077]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#4077]) +15 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_wc@fault-concurrent:
    - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#4083])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gem_mmap_wc@fault-concurrent.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#4083]) +7 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#3282]) +7 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_pread@bench:
    - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#3282]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gem_pread@bench.html

  * igt@gem_pread@display:
    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#3282])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_pread@display.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#4270])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#4270]) +3 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#4270]) +3 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#4270]) +2 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#8428]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg1:          NOTRUN -> [SKIP][204] ([i915#4079])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#4079]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_tiled_pread_basic:
    - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#4079]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@gem_tiled_pread_basic.html

  * igt@gem_tiled_wb:
    - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#4077]) +2 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gem_tiled_wb.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([fdo#110542])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][209] ([i915#3297]) +1 other test skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#3282]) +3 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#3297]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#3297]) +1 other test skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglu:         NOTRUN -> [SKIP][213] ([i915#3297])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen3_render_mixed_blits:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([fdo#109289]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gen3_render_mixed_blits.html

  * igt@gen3_render_tiledy_blits:
    - shard-tglu:         NOTRUN -> [SKIP][215] ([fdo#109289])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@gen3_render_tiledy_blits.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([fdo#109289])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([fdo#109289]) +4 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#2527] / [i915#2856]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#2856])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#2527]) +2 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#2856]) +2 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#4881])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][223] -> [ABORT][224] ([i915#9820])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-glk:          [PASS][225] -> [INCOMPLETE][226] ([i915#10137] / [i915#9200] / [i915#9849])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [PASS][227] -> [ABORT][228] ([i915#10131] / [i915#9697])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#8436])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#8399]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-dg1:          [PASS][231] -> [FAIL][232] ([i915#3591])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-glk:          NOTRUN -> [SKIP][233] ([fdo#109271]) +196 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk4/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
    - shard-mtlp:         NOTRUN -> [SKIP][234] ([fdo#109293])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#8925])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_pm_rps@thresholds-idle@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#3555] / [i915#8925])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@i915_pm_rps@thresholds-idle@gt1.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#4387])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#6188])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@query-topology-unsupported:
    - shard-rkl:          NOTRUN -> [SKIP][239] ([fdo#109302])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@i915_query@query-topology-unsupported.html

  * igt@i915_selftest@mock@memory_region:
    - shard-glk:          NOTRUN -> [DMESG-WARN][240] ([i915#9311])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk3/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#4212]) +1 other test skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#4212])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#4212])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#3826])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][245] ([i915#8709]) +7 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#1769] / [i915#3555])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#1769] / [i915#3555])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([fdo#111614]) +4 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#5286])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][250] ([fdo#111615] / [i915#5286]) +2 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#5286]) +8 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][252] -> [FAIL][253] ([i915#5138])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][254] ([i915#3638])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][255] ([fdo#111614] / [i915#3638]) +3 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][256] ([fdo#111614]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][257] ([fdo#111614])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [PASS][258] -> [FAIL][259] ([i915#3743])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][260] ([fdo#111615]) +2 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#5190]) +12 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([fdo#110723]) +7 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][263] ([fdo#111615]) +2 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#4538] / [i915#5190]) +6 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][265] ([i915#4538])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-rc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#5354]) +86 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#5354] / [i915#6095]) +23 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y-tiled-gen12-mc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][268] ([i915#5354] / [i915#6095]) +7 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_ccs@pipe-c-bad-rotation-90-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y-tiled-gen12-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#5354]) +32 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_ccs@pipe-d-bad-aux-stride-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-4-tiled-mtl-mc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][270] ([i915#5354] / [i915#6095]) +7 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_ccs@pipe-d-ccs-on-another-bo-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][271] ([i915#5354] / [i915#6095]) +19 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-rc-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#3742]) +1 other test skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#4087] / [i915#7213])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#7213]) +3 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#4087]) +3 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2.html

  * igt@kms_chamelium_color@ctm-0-25:
    - shard-tglu:         NOTRUN -> [SKIP][276] ([fdo#111827])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_chamelium_color@ctm-0-25.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([fdo#111827]) +1 other test skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_chamelium_color@ctm-green-to-red.html
    - shard-rkl:          NOTRUN -> [SKIP][278] ([fdo#111827]) +1 other test skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_color@ctm-limited-range:
    - shard-mtlp:         NOTRUN -> [SKIP][279] ([fdo#111827])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_chamelium_color@ctm-limited-range.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-dg1:          NOTRUN -> [SKIP][280] ([i915#7828]) +1 other test skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][281] ([i915#7828]) +11 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][282] ([i915#7828]) +3 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-rkl:          NOTRUN -> [SKIP][283] ([i915#7828]) +7 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][284] ([i915#7828]) +1 other test skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_color@deep-color:
    - shard-dg1:          NOTRUN -> [SKIP][285] ([i915#3555]) +2 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg1:          NOTRUN -> [SKIP][286] ([i915#3299])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][287] ([i915#3299])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@uevent:
    - shard-rkl:          NOTRUN -> [SKIP][288] ([i915#7118]) +1 other test skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][289] ([i915#3555]) +4 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][290] ([i915#3359])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][291] ([i915#3359]) +1 other test skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html
    - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#3359])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html
    - shard-rkl:          NOTRUN -> [SKIP][293] ([i915#3359]) +1 other test skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][294] ([i915#3555] / [i915#8814])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][295] ([i915#3359])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][296] ([fdo#111767])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][297] ([fdo#109274]) +2 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#4103])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][299] ([fdo#109274] / [i915#5354]) +6 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][300] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][301] ([fdo#109274] / [fdo#111767])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][302] -> [FAIL][303] ([i915#2346])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg1:          NOTRUN -> [SKIP][304] ([i915#9067])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#4103] / [i915#4213]) +1 other test skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg1:          NOTRUN -> [SKIP][306] ([i915#9723]) +1 other test skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][307] ([i915#3555] / [i915#8827])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][308] ([i915#9841]) +3 other tests fail
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb7/igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][309] ([i915#8588])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][310] ([i915#3804])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          NOTRUN -> [SKIP][311] ([i915#1257])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_dp_aux_dev.html
    - shard-rkl:          NOTRUN -> [SKIP][312] ([i915#1257])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_dp_aux_dev.html
    - shard-tglu:         NOTRUN -> [SKIP][313] ([i915#1257])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-tglu:         NOTRUN -> [SKIP][314] ([i915#3840])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][315] ([i915#3840])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#3555] / [i915#3840])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][317] ([i915#3840] / [i915#9053])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][318] ([i915#3469])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][319] ([i915#4854])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-rkl:          NOTRUN -> [SKIP][320] ([i915#1839])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2:          NOTRUN -> [SKIP][321] ([i915#658])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_feature_discovery@psr1.html
    - shard-rkl:          NOTRUN -> [SKIP][322] ([i915#658])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_feature_discovery@psr1.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg1:          NOTRUN -> [SKIP][323] ([i915#658])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg2:          NOTRUN -> [SKIP][324] ([fdo#109274] / [fdo#111767])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][325] ([fdo#111825]) +12 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][326] ([i915#8381])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][327] ([i915#8381])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][328] ([fdo#111767] / [i915#3637])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][329] ([fdo#109274] / [i915#3637]) +2 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][330] ([fdo#109274]) +8 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][331] ([i915#3637]) +1 other test skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][332] ([i915#2672]) +4 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][333] ([i915#3555] / [i915#8810])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][334] ([i915#2672]) +2 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-snb:          [PASS][335] -> [SKIP][336] ([fdo#109271]) +19 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][337] ([fdo#111825] / [i915#1825]) +38 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][338] ([i915#3458])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:
    - shard-dg1:          NOTRUN -> [SKIP][339] ([fdo#111825]) +7 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-snb:          NOTRUN -> [SKIP][340] ([fdo#109271]) +77 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][341] ([i915#1825]) +5 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][342] ([fdo#109280]) +14 other tests skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][343] ([i915#8708]) +23 other tests skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][344] ([fdo#110189]) +13 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][345] ([i915#3023]) +27 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-dg1:          NOTRUN -> [SKIP][346] ([i915#5439])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@plane-fbc-rte:
    - shard-dg2:          NOTRUN -> [SKIP][347] ([i915#10070])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_frontbuffer_tracking@plane-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][348] ([i915#8708]) +5 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][349] ([i915#3458]) +17 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][350] ([i915#8708]) +3 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@static-swap:
    - shard-tglu:         NOTRUN -> [SKIP][351] ([i915#3555] / [i915#8228])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle:
    - shard-mtlp:         NOTRUN -> [SKIP][352] ([i915#3555] / [i915#8228])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_hdr@static-toggle.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg1:          NOTRUN -> [SKIP][353] ([i915#1839])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][354] ([i915#6301])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][355] ([i915#4573]) +1 other test fail
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk1/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][356] ([i915#3555] / [i915#8821])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][357] ([i915#8292])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-13/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][358] ([i915#9423]) +3 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][359] ([i915#5176]) +3 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-b-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][360] ([i915#9423]) +11 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][361] ([i915#9423]) +5 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][362] ([i915#5176] / [i915#9423]) +3 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][363] ([i915#5235]) +7 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][364] ([i915#5235]) +3 other tests skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][365] ([i915#5235]) +2 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][366] ([i915#5235] / [i915#9423]) +19 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][367] ([i915#3555] / [i915#5235])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][368] ([i915#5235]) +19 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-13/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-3.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][369] ([i915#9340])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          NOTRUN -> [SKIP][370] ([i915#9519])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          NOTRUN -> [SKIP][371] ([i915#9519]) +2 other tests skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@pc8-residency:
    - shard-rkl:          NOTRUN -> [SKIP][372] ([fdo#109293] / [fdo#109506])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_pm_rpm@pc8-residency.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][373] ([i915#6524])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-mtlp:         NOTRUN -> [SKIP][374] ([i915#6524])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][375] ([i915#9683])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-mtlp:         NOTRUN -> [SKIP][376] ([i915#4348])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          NOTRUN -> [SKIP][377] ([i915#9683]) +3 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_psr2_su@page_flip-p010.html
    - shard-rkl:          NOTRUN -> [SKIP][378] ([fdo#111068] / [i915#9683])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_psr2_su@page_flip-p010.html
    - shard-tglu:         NOTRUN -> [SKIP][379] ([fdo#109642] / [fdo#111068] / [i915#9683])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][380] ([i915#9685])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][381] ([i915#9685])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - shard-dg2:          NOTRUN -> [SKIP][382] ([i915#9685])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - shard-rkl:          NOTRUN -> [SKIP][383] ([i915#9685])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][384] ([i915#5289])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-tglu:         NOTRUN -> [SKIP][385] ([fdo#111615] / [i915#5289])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-mtlp:         NOTRUN -> [SKIP][386] ([i915#4235])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][387] ([i915#4235] / [i915#5190])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list:
    - shard-rkl:          NOTRUN -> [DMESG-FAIL][388] ([i915#10143])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html
    - shard-snb:          NOTRUN -> [DMESG-FAIL][389] ([i915#10143])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html
    - shard-glk:          NOTRUN -> [DMESG-FAIL][390] ([i915#10143])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][391] ([i915#10143])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html
    - shard-snb:          NOTRUN -> [DMESG-WARN][392] ([i915#10143])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html
    - shard-glk:          NOTRUN -> [DMESG-WARN][393] ([i915#10143])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888:
    - shard-dg1:          [PASS][394] -> [DMESG-WARN][395] ([i915#10143])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-dg1-14/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-12/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-dg2:          NOTRUN -> [SKIP][396] ([i915#3555]) +4 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-tglu:         NOTRUN -> [SKIP][397] ([fdo#109309])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_tv_load_detect@load-detect.html
    - shard-dg2:          NOTRUN -> [SKIP][398] ([fdo#109309])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_tv_load_detect@load-detect.html
    - shard-rkl:          NOTRUN -> [SKIP][399] ([fdo#109309])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][400] ([i915#3555])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@kms_vrr@flip-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-glk:          NOTRUN -> [SKIP][401] ([fdo#109271] / [i915#2437])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk3/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg2:          NOTRUN -> [SKIP][402] ([i915#2437]) +1 other test skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_writeback@writeback-fb-id.html
    - shard-rkl:          NOTRUN -> [SKIP][403] ([i915#2437]) +1 other test skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-tglu:         NOTRUN -> [SKIP][404] ([i915#2437])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          NOTRUN -> [SKIP][405] ([i915#7387])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@perf@global-sseu-config.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [PASS][406] -> [FAIL][407] ([i915#7484])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@busy-double-start@ccs0:
    - shard-mtlp:         [PASS][408] -> [FAIL][409] ([i915#4349])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-mtlp-8/igt@perf_pmu@busy-double-start@ccs0.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@perf_pmu@busy-double-start@ccs0.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-tglu:         NOTRUN -> [SKIP][410] ([fdo#112283])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg1:          NOTRUN -> [SKIP][411] ([i915#8516])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][412] ([i915#8516])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg2:          NOTRUN -> [SKIP][413] ([i915#3708])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          NOTRUN -> [SKIP][414] ([fdo#109295] / [i915#3291] / [i915#3708])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          NOTRUN -> [SKIP][415] ([i915#3291] / [i915#3708])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-write-hang:
    - shard-rkl:          NOTRUN -> [SKIP][416] ([fdo#109295] / [i915#3708]) +1 other test skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-rkl:          NOTRUN -> [SKIP][417] ([i915#9917])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg1:          NOTRUN -> [SKIP][418] ([i915#9917])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - shard-rkl:          NOTRUN -> [FAIL][419] ([i915#9781])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@syncobj_timeline@invalid-wait-zero-handles.html

  * igt@v3d/v3d_submit_cl@bad-bo:
    - shard-dg1:          NOTRUN -> [SKIP][420] ([i915#2575]) +1 other test skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@v3d/v3d_submit_cl@bad-bo.html

  * igt@v3d/v3d_submit_cl@bad-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][421] ([i915#2575]) +12 other tests skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@v3d/v3d_submit_cl@bad-perfmon.html

  * igt@v3d/v3d_submit_cl@multiple-job-submission:
    - shard-mtlp:         NOTRUN -> [SKIP][422] ([i915#2575]) +1 other test skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@v3d/v3d_submit_cl@multiple-job-submission.html

  * igt@v3d/v3d_submit_cl@single-out-sync:
    - shard-tglu:         NOTRUN -> [SKIP][423] ([fdo#109315] / [i915#2575]) +6 other tests skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@v3d/v3d_submit_cl@single-out-sync.html

  * igt@v3d/v3d_submit_csd@valid-multisync-submission:
    - shard-rkl:          NOTRUN -> [SKIP][424] ([fdo#109315]) +14 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@v3d/v3d_submit_csd@valid-multisync-submission.html

  * igt@vc4/vc4_perfmon@create-single-perfmon:
    - shard-mtlp:         NOTRUN -> [SKIP][425] ([i915#7711]) +1 other test skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@vc4/vc4_perfmon@create-single-perfmon.html

  * igt@vc4/vc4_perfmon@get-values-valid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][426] ([i915#7711]) +6 other tests skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@vc4/vc4_perfmon@get-values-valid-perfmon.html

  * igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:
    - shard-tglu:         NOTRUN -> [SKIP][427] ([i915#2575]) +5 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:
    - shard-dg2:          NOTRUN -> [SKIP][428] ([i915#7711]) +8 other tests skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html

  * igt@vc4/vc4_tiling@get-bad-handle:
    - shard-dg1:          NOTRUN -> [SKIP][429] ([i915#7711]) +1 other test skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@vc4/vc4_tiling@get-bad-handle.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [FAIL][430] ([i915#6268]) -> [PASS][431]
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][432] ([i915#5784]) -> [PASS][433]
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-dg1-12/igt@gem_eio@reset-stress.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-15/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-rkl:          [FAIL][434] ([i915#2842]) -> [PASS][435] +1 other test pass
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-3/igt@gem_exec_fair@basic-none@vcs0.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-6/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-glk:          [FAIL][436] ([i915#2842]) -> [PASS][437]
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [ABORT][438] ([i915#7975] / [i915#8213]) -> [PASS][439]
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [INCOMPLETE][440] ([i915#10137] / [i915#9820] / [i915#9849]) -> [PASS][441]
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [FAIL][442] ([i915#3591]) -> [PASS][443] +1 other test pass
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][444] ([i915#5138]) -> [PASS][445] +1 other test pass
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][446] ([i915#3743]) -> [PASS][447]
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-snb:          [SKIP][448] ([fdo#109271] / [fdo#111767]) -> [PASS][449]
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-snb:          [SKIP][450] ([fdo#109271]) -> [PASS][451] +9 other tests pass
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          [SKIP][452] ([i915#9519]) -> [PASS][453]
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][454] ([i915#9519]) -> [PASS][455] +1 other test pass
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-tglu:         [ABORT][456] -> [PASS][457] +1 other test pass
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-tglu-9/igt@kms_pm_rpm@system-suspend-modeset.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888:
    - shard-tglu:         [DMESG-WARN][458] ([i915#10143]) -> [PASS][459]
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-tglu-2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-snb:          [FAIL][460] ([i915#9196]) -> [PASS][461]
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
    - shard-tglu:         [FAIL][462] ([i915#9196]) -> [PASS][463]
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html

  * igt@perf_pmu@busy-idle-check-all@vecs0:
    - shard-dg1:          [FAIL][464] ([i915#4349]) -> [PASS][465]
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-dg1-18/igt@perf_pmu@busy-idle-check-all@vecs0.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-17/igt@perf_pmu@busy-idle-check-all@vecs0.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-snb:          [INCOMPLETE][466] ([i915#8816]) -> [SKIP][467] ([fdo#109271]) +1 other test skip
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb7/igt@kms_content_protection@atomic.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][468] ([i915#9433]) -> [SKIP][469] ([i915#9424])
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-dg1-13/igt@kms_content_protection@mei-interface.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-17/igt@kms_content_protection@mei-interface.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][470] ([i915#3955]) -> [SKIP][471] ([fdo#110189] / [i915#3955])
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][472] ([fdo#110189] / [i915#3955]) -> [SKIP][473] ([i915#3955])
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [FAIL][474] ([i915#9295]) -> [SKIP][475] ([i915#3361])
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-2/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list:
    - shard-dg1:          [DMESG-FAIL][476] ([i915#10143]) -> [FAIL][477] ([i915#10136])
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-dg1-14/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-12/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#10030]: https://gitlab.freedesktop.org/drm/intel/issues/10030
  [i915#10070]: https://gitlab.freedesktop.org/drm/intel/issues/10070
  [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
  [i915#10136]: https://gitlab.freedesktop.org/drm/intel/issues/10136
  [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
  [i915#10143]: https://gitlab.freedesktop.org/drm/intel/issues/10143
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/inte

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/index.html

--===============3721422931712996442==
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
<tr><td><b>Series:</b></td><td>Fixed-type GENMASK/BIT</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/129116/">https://patchwork.freedesktop.org/series/129116/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_129116v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129116v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14168_full -&gt; Patchwork_129116v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129116v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_129116v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v=
1/index.html</p>
<h2>Participating hosts (9 -&gt; 8)</h2>
<p>Missing    (1): shard-snb-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
129116v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-tglu-3/igt@i915_suspend@sysfs-reader.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/s=
hard-tglu-9/igt@i915_suspend@sysfs-reader.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@kms_plane_alpha_blend@alp=
ha-7efc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_psr@psr2-primary-blt@edp-1}:<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-mtlp-2/igt@kms_psr@psr2-primary-blt@edp-1.html">DMESG-W=
ARN</a> ([i915#9157]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_129116v1/shard-mtlp-6/igt@kms_psr@psr2-primary-blt@edp-1.htm=
l">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129116v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14168/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14168/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14168/shard-glk3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14168/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14168/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14168/shard-glk7/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168=
/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14168/shard-glk8/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-gl=
k8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
4168/shard-glk9/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk9/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-g=
lk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_129116v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v=
1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_129116v1/shard-glk8/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_129116v1/shard-glk7/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_129116v1/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_129116v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129116v1/shard-glk4/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_129116v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_129116v1/shard-glk3/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk=
1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_129116v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-glk1/boot.html">PASS</=
a>) ([i915#8293])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14168/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14168/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14168/shard-rkl-3/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-3/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_141=
68/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14168/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/sha=
rd-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14168/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl=
-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-5/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-5/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14168/shard-rkl-6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14168/shard-rkl-6/boot.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-7/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1416=
8/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14168/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-rkl-7/boot.html">PASS=
</a>) ([i915#8293]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_129116v1/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-7/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129=
116v1/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_129116v1/shard-rkl-7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-6=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129116v1/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1=
/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_129116v1/shard-rkl-5/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_129116v1/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shar=
d-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_129116v1/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
29116v1/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-3/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl=
-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_129116v1/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116=
v1/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_129116v1/shard-rkl-1/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_129116v1/shard-rkl-1/boot.html">PASS</a>)</li>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14168/shard-snb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14168/shard-snb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14168/shard-snb1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb2/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/sha=
rd-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14168/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14168/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14168/shard-snb4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14168/shard-snb5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-sn=
b5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
4168/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_14168/shard-snb7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shard-snb7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14168/shar=
d-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_14168/shard-snb7/boot.html">PASS</a>) ([i915#8293]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-sn=
b7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_129116v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb7/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1=
/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129116v1/shard-snb6/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb6/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_129116v1/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_129116v1/shard-snb5/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb=
5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_129116v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb5/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/=
shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_129116v1/shard-snb4/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb4/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129116v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_129116v1/shard-snb2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb2=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129116v1/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb2/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/s=
hard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_129116v1/shard-snb1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb1/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
29116v1/shard-snb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_129116v1/shard-snb1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb1/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@ccs3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@drm_fdinfo@busy-check-all@=
ccs3.html">SKIP</a> ([i915#8414]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@drm_fdinfo@isolation@rcs0=
.html">SKIP</a> ([i915#8414]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_129116v1/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"=
>FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_create@create-ext-cpu-=
access-big.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-snb4/igt@gem_ctx_persistence@engines=
-hostile-preempt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_ctx_persistence@heartb=
eat-hostile.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/280=
">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_eio@hibernate.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10030">=
i915#10030</a> / [i915#7975] / [i915#8213])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@gem_eio@hibernate.html">AB=
ORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_exec_balancer@bonded-s=
ync.html">SKIP</a> ([i915#4771]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_exec_balancer@sliced.h=
tml">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_exec_capture@capture-i=
nvisible@lmem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@gem_exec_capture@capture-i=
nvisible@smem0.html">SKIP</a> ([i915#6334])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@gem_exec_capture@many-4k-i=
ncremental.html">FAIL</a> ([i915#9606])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_exec_capture@many-4k-i=
ncremental.html">FAIL</a> ([i915#9606])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@gem_exec_capture@many-4k-=
incremental.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_exec_fair@basic-none-=
rrul.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129116v1/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@gem_exec_fair@basic-none-=
vip@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-rkl-3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116=
v1/shard-rkl-6/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_exec_fence@submit67.h=
tml">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_exec_gttfill@multigpu-=
basic.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_exec_params@rsvd2-dirt=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109283">fdo#109283</a> / [i915#5107])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_exec_params@secure-no=
n-master.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_exec_reloc@basic-cpu-r=
ead.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3281">i915#3281</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_exec_reloc@basic-gtt-=
read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gem_exec_reloc@basic-wc-c=
pu-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_exec_reloc@basic-wc-re=
ad-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@gem_exec_schedule@reorder-=
wide.html">SKIP</a> ([i915#4537] / [i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> ([i915#7276])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@gem_exec_suspend@basic-s4=
-devices@lmem0.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_fenced_exec_thrash@2-s=
pare-fences.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_lmem_evict@dontneed-ev=
ict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@gem_lmem_swapping@heavy-v=
erify-multi-ccs.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@gem_lmem_swapping@parallel=
-multi.html">SKIP</a> ([i915#4613]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-glk7/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#4613]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_mmap_gtt@coherency.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1116=
56">fdo#111656</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_mmap_gtt@cpuset-basic=
-small-copy.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@gem_mmap_gtt@cpuset-big-c=
opy-odd.html">SKIP</a> ([i915#4077]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@fault-concurrent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gem_mmap_wc@fault-concurr=
ent.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@gem_mmap_wc@invalid-flags.=
html">SKIP</a> ([i915#4083]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@gem_partial_pwrite_pread@=
reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3282">i915#3282</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gem_pread@bench.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i91=
5#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@display:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_pread@display.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i=
915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_pxp@create-regular-co=
ntext-2.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@gem_pxp@create-valid-prote=
cted-context.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> ([i915#4270]) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@gem_pxp@verify-pxp-stale-=
ctx-execution.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gem_render_copy@x-tiled-t=
o-vebox-y-tiled.html">SKIP</a> ([i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_set_tiling_vs_blt@unt=
iled-to-tiled.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@gem_tiled_pread_basic.html=
">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_wb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gem_tiled_wb.html">SKIP</=
a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@gem_userptr_blits@coherenc=
y-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D110542">fdo#110542</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gem_userptr_blits@forbidde=
n-operations.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@gem_userptr_blits@readonly=
-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@gem_userptr_blits@unsync-o=
verlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@gem_userptr_blits@unsync-=
unmap-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_mixed_blits:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gen3_render_mixed_blits.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@gen3_render_tiledy_blits.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gen7_exec_parse@basic-all=
owed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@gen7_exec_parse@bitmasks.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@gen9_exec_parse@basic-rej=
ected-ctx-param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@gen9_exec_parse@bb-start-o=
ut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@gen9_exec_parse@cmd-cross=
ing-page.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@i915_fb_tiling.html">SKIP<=
/a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_129116v1/shard-rkl-3/igt@i915_module_load@reload-with-fault-injecti=
on.html">ABORT</a> ([i915#9820])</li>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-glk7/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_129116v1/shard-glk9/igt@i915_module_load@reload-with-fault-injection=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/10137">i915#10137</a> / [i915#9200] / [i915#9849])</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129116v1/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/10131">i915#10131</a> / [i915#9697])</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@i915_pipe_stress@stress-x=
rgb8888-ytiled.html">SKIP</a> ([i915#8436])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@i915_pm_freq_api@freq-rese=
t-multiple.html">SKIP</a> ([i915#8399]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_129116v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html"=
>FAIL</a> ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-glk4/igt@i915_pm_rpm@gem-execbuf-str=
ess-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +196 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109293">fdo#109293</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@i915_pm_rps@thresholds-id=
le@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@i915_pm_rps@thresholds-id=
le@gt1.html">SKIP</a> ([i915#3555] / [i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@i915_query@query-topology=
-coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@i915_query@query-topology-=
unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-glk3/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_addfb_basic@addfb25-x=
-tiled-legacy.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_addfb_basic@addfb25-x-=
tiled-mismatch-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_addfb_basic@basic-x-t=
iled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_addfb_basic@invalid-sm=
em-bo-on-discrete.html">SKIP</a> ([i915#3826])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-13/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / [i91=
5#3555])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / [i91=
5#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_big_fb@4-tiled-64bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_big_fb@4-tiled-addfb.=
html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a> / [i915#5286]) +2 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +8 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0-hflip.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_big_fb@linear-16bpp-r=
otate-90.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rot=
ate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111614">fdo#111614</a> / [i915#3638]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_big_fb@x-tiled-16bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_big_fb@x-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5190]) +12 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110723">fdo#110723</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_big_fb@yf-tiled-32bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) +6 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_ccs@pipe-b-bad-rotatio=
n-90-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#5354]) +86 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_ccs@pipe-b-crc-primary=
-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#5354] / [i915#6095]) +23 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_ccs@pipe-c-bad-rotati=
on-90-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#5354] / [i915#6095]) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_ccs@pipe-d-bad-aux-str=
ide-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#5354]) +32 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_ccs@pipe-d-ccs-on-ano=
ther-bo-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#5354] / [i915#6095]) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_ccs@pipe-d-missing-cc=
s-buffer-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#5354] / [i915#6095]) +19 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_cdclk@mode-transition.=
html">SKIP</a> ([i915#3742]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> ([i915#4087] / [i915#7213])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_cdclk@mode-transition@=
pipe-b-hdmi-a-2.html">SKIP</a> ([i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_cdclk@plane-scaling@pi=
pe-d-hdmi-a-2.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-25:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_chamelium_color@ctm-0=
-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_chamelium_color@ctm-gr=
een-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@kms_chamelium_color@ctm-gr=
een-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-limited-range:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_chamelium_color@ctm-l=
imited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_chamelium_edid@hdmi-e=
did-stress-resolution-non-4k.html">SKIP</a> ([i915#7828]) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_chamelium_frames@hdmi-=
crc-fast.html">SKIP</a> ([i915#7828]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_chamelium_hpd@common-=
hpd-after-suspend.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd.h=
tml">SKIP</a> ([i915#7828]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd=
-with-enabled-mode.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_color@deep-color.html=
">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_content_protection@dp=
-mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_content_protection@uev=
ent.html">SKIP</a> ([i915#7118]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_cursor_crc@cursor-offs=
creen-32x10.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_cursor_crc@cursor-off=
screen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3359">i915#3359</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-ran=
dom-32x32.html">SKIP</a> ([i915#3555] / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_cursor_legacy@2x-flip=
-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_cursor_legacy@2x-flip=
-vs-cursor-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109274">fdo#109274</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@kms_cursor_legacy@cursorb=
-vs-flipa-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a> / [i915#5354]) +6 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / [i915#5354])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@kms_cursor_legacy@cursorb=
-vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_129116v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915=
#4103] / [i915#4213]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_dirtyfb@drrs-dirtyfb-=
ioctl.html">SKIP</a> ([i915#9723]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_display_modes@extende=
d-mode-basic.html">SKIP</a> ([i915#3555] / [i915#8827])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1:<=
/p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-snb7/igt@kms_display_modes@extended-=
mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1.html">FAIL</a> ([i915#9841]) +3 oth=
er tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_dp_aux_dev.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1257">i915#=
1257</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_dp_aux_dev.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1257">i915#=
1257</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_dp_aux_dev.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1257">i915=
#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_dsc@dsc-with-formats.h=
tml">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_dsc@dsc-with-output-fo=
rmats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_fbcon_fbt@psr-suspend=
.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_feature_discovery@cham=
elium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_feature_discovery@disp=
lay-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_feature_discovery@psr1=
.html">SKIP</a> ([i915#658])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_feature_discovery@psr1=
.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_feature_discovery@psr=
2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-blocki=
ng-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_flip@2x-flip-vs-dpms.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
1825">fdo#111825</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_flip@2x-flip-vs-fence=
s.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_flip@2x-flip-vs-fences=
-interruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_flip@2x-flip-vs-rmfb-=
interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111767">fdo#111767</a> / [i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_flip@2x-flip-vs-wf_vb=
lank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109274">fdo#109274</a> / [i915#3637]) +2 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_flip@2x-modeset-vs-vbl=
ank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109274">fdo#109274</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_flip@2x-wf_vblank-ts-=
check-interruptible.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#3555] / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-i=
ndfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_129116v1/shard-snb4/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +19 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +38 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-indfb-draw-render.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-pri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +7 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-snb4/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +77 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +5 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +14 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +23 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +13 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3023">i915#3023</a>) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@plane-fbc-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
lane-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/10070">i915#10070</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +5 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#3458]) +17 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_hdr@static-swap.html"=
>SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_hdr@static-toggle.htm=
l">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-glk1/igt@kms_plane_alpha_blend@const=
ant-alpha-max@pipe-c-hdmi-a-1.html">FAIL</a> ([i915#4573]) +1 other test fa=
il</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_plane_lowres@tiling-yf=
.html">SKIP</a> ([i915#3555] / [i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-13/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-3.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-h=
dmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-rotation@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#942=
3]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-modifiers@pipe-b-edp-1.html">SKIP</a> ([i915#5176]=
) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hd=
mi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-17/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4.html">SKIP</a> ([i915#942=
3]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hd=
mi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_plane_scaling@plane-sc=
aler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#9423=
]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-13/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html">SKIP</a> ([i915=
#5176] / [i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> ([i=
915#5235]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1.html">SKIP</a> ([=
i915#5235]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25@pipe-a-edp-1.html">SKIP</a> ([i915#5235=
]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-=
hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#52=
35] / [i915#9423]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25@pipe-d-edp-1.html">SKIP</a> ([i915#3555=
] / [i915#5235])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-=
hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-13/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-3.html">SKIP</a> ([i915#5=
235]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-st=
ress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lps=
p-stress.html">SKIP</a> ([i915#9519]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_pm_rpm@pc8-residency.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_prime@d3hot.html">SKI=
P</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_psr2_sf@overlay-plane=
-move-continuous-sf.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> ([i915#4348])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> ([i915#9683]) +3 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111068">fdo#111068</a> / [i915#9683])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109642">fdo#109642</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111068">fdo#111068</a> / [i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@kms_psr_stress_test@flip-=
primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_psr_stress_test@inval=
idate-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_psr_stress_test@invali=
date-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_psr_stress_test@invali=
date-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-5/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111615">fdo#111615</a> / [i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> ([i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-90.html">SKIP</a> ([i915#4235] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_bu=
ild_fourcc_list:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_selftest@drm_format_he=
lper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html">DMESG-FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10143">i915=
#10143</a>)</li>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-snb4/igt@kms_selftest@drm_format_hel=
per@drm_format_helper_test-drm_test_fb_build_fourcc_list.html">DMESG-FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10143">i915#=
10143</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-glk7/igt@kms_selftest@drm_format_hel=
per@drm_format_helper_test-drm_test_fb_build_fourcc_list.html">DMESG-FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10143">i915#=
10143</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_cl=
ip_offset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@kms_selftest@drm_format_he=
lper@drm_format_helper_test-drm_test_fb_clip_offset.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10143">i915#10143=
</a>)</li>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-snb4/igt@kms_selftest@drm_format_hel=
per@drm_format_helper_test-drm_test_fb_clip_offset.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10143">i915#10143<=
/a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-glk7/igt@kms_selftest@drm_format_hel=
per@drm_format_helper_test-drm_test_fb_clip_offset.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10143">i915#10143<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_abgr8888:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-dg1-14/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_xrgb8888_to_abgr8888.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-12/ig=
t@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb888=
8_to_abgr8888.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/10143">i915#10143</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_setmode@invalid-clone-=
single-crtc-stealing.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_tv_load_detect@load-d=
etect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109309">fdo#109309</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-2/igt@kms_tv_load_detect@load-de=
tect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109309">fdo#109309</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@kms_tv_load_detect@load-de=
tect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109309">fdo#109309</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@kms_vrr@flip-suspend.html=
">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-glk3/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2437">i915#2437</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-4/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2437">i915#2437</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@perf@global-sseu-config.ht=
ml">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/=
shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> ([i915#7484])</l=
i>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-mtlp-8/igt@perf_pmu@busy-double-start@ccs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1291=
16v1/shard-mtlp-3/igt@perf_pmu@busy-double-start@ccs0.html">FAIL</a> ([i915=
#4349])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@perf_pmu@event-wait@rcs0.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
12283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@prime_vgem@basic-fence-fli=
p.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3291">i915#3291</a> / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@prime_vgem@basic-write.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/329=
1">i915#3291</a> / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a> / [i915#3708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@sriov_basic@bind-unbind-vf=
.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@sriov_basic@enable-vfs-au=
toprobe-off.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@syncobj_timeline@invalid-w=
ait-zero-handles.html">FAIL</a> ([i915#9781])</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@v3d/v3d_submit_cl@bad-bo.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-1/igt@v3d/v3d_submit_cl@bad-perf=
mon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@multiple-job-submission:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@v3d/v3d_submit_cl@multipl=
e-job-submission.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@single-out-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@v3d/v3d_submit_cl@single-=
out-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109315">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2575">i915#2575</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@valid-multisync-submission:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-1/igt@v3d/v3d_submit_csd@valid-m=
ultisync-submission.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109315">fdo#109315</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-single-perfmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-mtlp-3/igt@vc4/vc4_perfmon@create-si=
ngle-perfmon.html">SKIP</a> ([i915#7711]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@get-values-valid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-rkl-5/igt@vc4/vc4_perfmon@get-values=
-valid-perfmon.html">SKIP</a> ([i915#7711]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-tglu-7/igt@vc4/vc4_purgeable_bo@acce=
ss-purgeable-bo-mem.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2575">i915#2575</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg2-3/igt@vc4/vc4_purgeable_bo@mark-=
unpurgeable-check-retained.html">SKIP</a> ([i915#7711]) +8 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-handle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/igt@vc4/vc4_tiling@get-bad-ha=
ndle.html">SKIP</a> ([i915#7711]) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a=
> ([i915#6268]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129116v1/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-dg1-12/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#5=
784]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
29116v1/shard-dg1-15/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-rkl-3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
29116v1/shard-rkl-6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 oth=
er test pass</li>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9116v1/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html=
">ABORT</a> ([i915#7975] / [i915#8213]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-8/igt@gem_exec_suspend=
@basic-s4-devices@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/10137">i915#10137</a> / [i915#9820] / [i915#9849]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-dg1-14/ig=
t@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html=
">FAIL</a> ([i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_129116v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@=
gt0-vcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FA=
IL</a> ([i915#5138]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_129116v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180=
.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-3/igt@kms_bi=
g_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-snb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111767">fdo#111767</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_129116v1/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-c=
ursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-i=
ndfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_129116v1/shard-snb7/igt@kms_frontbuffer_t=
racking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">PASS</a> +9 other test=
s pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>=
 ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_129116v1/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129116v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-st=
ress-no-wait.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-tglu-9/igt@kms_pm_rpm@system-suspend-modeset.html">ABOR=
T</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
29116v1/shard-tglu-5/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a> +=
1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_abgr8888:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-tglu-2/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_xrgb8888_to_abgr8888.html">DMESG-WARN</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/10143">i915#10143</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/s=
hard-tglu-6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_t=
est_fb_xrgb8888_to_abgr8888.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi=
-a-1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_129116v1/shard-snb4/igt@kms_universal_plane@curs=
or-fb-leak@pipe-b-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hd=
mi-a-1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_129116v1/shard-tglu-10/igt@kms_universal_plane=
@cursor-fb-leak@pipe-c-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-check-all@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-dg1-18/igt@perf_pmu@busy-idle-check-all@vecs0.html">FAI=
L</a> ([i915#4349]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_129116v1/shard-dg1-17/igt@perf_pmu@busy-idle-check-all@vecs0.h=
tml">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-snb7/igt@kms_content_protection@atomic.html">INCOMPLETE=
</a> ([i915#8816]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_129116v1/shard-snb1/igt@kms_content_protection@atomic.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-dg1-13/igt@kms_content_protection@mei-interface.html">S=
KIP</a> ([i915#9433]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_129116v1/shard-dg1-17/igt@kms_content_protection@mei-interfa=
ce.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3955]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12911=
6v1/shard-rkl-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / [i915#3955])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / [i915#3955]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_129116v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a=
> ([i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#9295=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1291=
16v1/shard-rkl-2/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/inte">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_bu=
ild_fourcc_list:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14168/shard-dg1-14/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_build_fourcc_list.html">DMESG-FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/10143">i915#10143</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129116v1/shar=
d-dg1-12/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test=
_fb_build_fourcc_list.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/10136">i915#10136</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============3721422931712996442==--
