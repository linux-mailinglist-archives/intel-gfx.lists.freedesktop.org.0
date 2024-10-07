Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C52299376A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 21:33:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2546410E40F;
	Mon,  7 Oct 2024 19:33:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6366D10E40F;
 Mon,  7 Oct 2024 19:33:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6525545239883822612=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/icl=3A_Update_csc_?=
 =?utf-8?q?and_gamma_enable_checks?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 07 Oct 2024 19:33:29 -0000
Message-ID: <172832960938.1200151.12168098173436260526@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
In-Reply-To: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6525545239883822612==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/icl: Update csc and gamma enable checks
URL   : https://patchwork.freedesktop.org/series/139485/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15478_full -> Patchwork_139485v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139485v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139485v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139485v1_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [FAIL][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk9/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk8/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk6/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk8/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk1/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk1/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk2/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk2/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk2/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk5/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk3/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk3/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk3/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk5/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk5/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk2/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk2/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk9/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk9/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk9/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk9/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk9/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk9/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk8/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk8/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk8/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk8/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk8/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk7/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk7/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk7/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk7/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk7/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@kms_color@ctm-0-25@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [ABORT][73] +1 other test abort
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-12/igt@kms_color@ctm-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1:
    - shard-tglu:         ([PASS][74], [PASS][75]) -> [DMESG-WARN][76] +12 other tests dmesg-warn
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-5/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-10/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-7/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_color@ctm-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          ([PASS][77], [PASS][78]) -> [DMESG-WARN][79] +4 other tests dmesg-warn
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-18/igt@kms_color@ctm-0-25@pipe-d-hdmi-a-4.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-19/igt@kms_color@ctm-0-25@pipe-d-hdmi-a-4.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_color@ctm-0-25@pipe-d-hdmi-a-4.html

  * igt@kms_color@ctm-0-50@pipe-b-hdmi-a-2:
    - shard-rkl:          [PASS][80] -> ([DMESG-WARN][81], [DMESG-WARN][82])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-5/igt@kms_color@ctm-0-50@pipe-b-hdmi-a-2.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-1/igt@kms_color@ctm-0-50@pipe-b-hdmi-a-2.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-3/igt@kms_color@ctm-0-50@pipe-b-hdmi-a-2.html

  * igt@kms_color@ctm-0-50@pipe-c-hdmi-a-3:
    - shard-dg1:          [PASS][83] -> [DMESG-WARN][84] +7 other tests dmesg-warn
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-13/igt@kms_color@ctm-0-50@pipe-c-hdmi-a-3.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-12/igt@kms_color@ctm-0-50@pipe-c-hdmi-a-3.html

  * igt@kms_color@ctm-max@pipe-b-edp-1:
    - shard-mtlp:         ([PASS][85], [PASS][86]) -> ([DMESG-WARN][87], [DMESG-WARN][88]) +12 other tests ( 2 dmesg-warn )
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-4/igt@kms_color@ctm-max@pipe-b-edp-1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_color@ctm-max@pipe-b-edp-1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-6/igt@kms_color@ctm-max@pipe-b-edp-1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-7/igt@kms_color@ctm-max@pipe-b-edp-1.html

  * igt@kms_color@ctm-max@pipe-b-hdmi-a-1:
    - shard-rkl:          [PASS][89] -> [ABORT][90] +8 other tests abort
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-4/igt@kms_color@ctm-max@pipe-b-hdmi-a-1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-2/igt@kms_color@ctm-max@pipe-b-hdmi-a-1.html

  * igt@kms_color@ctm-max@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [ABORT][91] +5 other tests abort
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_color@ctm-max@pipe-b-hdmi-a-2.html
    - shard-rkl:          NOTRUN -> [ABORT][92] +2 other tests abort
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-5/igt@kms_color@ctm-max@pipe-b-hdmi-a-2.html

  * igt@kms_color@ctm-max@pipe-c-hdmi-a-4:
    - shard-dg1:          ([PASS][93], [PASS][94]) -> ([DMESG-WARN][95], [DMESG-WARN][96]) +1 other test ( 2 dmesg-warn )
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-17/igt@kms_color@ctm-max@pipe-c-hdmi-a-4.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-19/igt@kms_color@ctm-max@pipe-c-hdmi-a-4.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-18/igt@kms_color@ctm-max@pipe-c-hdmi-a-4.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_color@ctm-max@pipe-c-hdmi-a-4.html

  * igt@kms_color@ctm-negative@pipe-b-hdmi-a-4:
    - shard-dg1:          [PASS][97] -> [ABORT][98] +2 other tests abort
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-15/igt@kms_color@ctm-negative@pipe-b-hdmi-a-4.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-15/igt@kms_color@ctm-negative@pipe-b-hdmi-a-4.html

  * igt@kms_color@ctm-red-to-blue@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][99] +1 other test dmesg-warn
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-7/igt@kms_color@ctm-red-to-blue@pipe-b-hdmi-a-1.html

  * igt@kms_color@ctm-red-to-blue@pipe-b-hdmi-a-2:
    - shard-rkl:          ([PASS][100], [PASS][101]) -> [DMESG-WARN][102]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-1/igt@kms_color@ctm-red-to-blue@pipe-b-hdmi-a-2.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-6/igt@kms_color@ctm-red-to-blue@pipe-b-hdmi-a-2.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-1/igt@kms_color@ctm-red-to-blue@pipe-b-hdmi-a-2.html

  * igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-1:
    - shard-tglu:         [PASS][103] -> [DMESG-WARN][104] +3 other tests dmesg-warn
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-3/igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-1.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-7/igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-1.html

  * igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-3:
    - shard-dg2:          [PASS][105] -> [DMESG-WARN][106] +3 other tests dmesg-warn
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-3.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-7/igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-3.html

  * igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-4:
    - shard-dg1:          [PASS][107] -> ([DMESG-WARN][108], [DMESG-WARN][109]) +3 other tests ( 2 dmesg-warn )
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-18/igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-4.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-17/igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-4.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-19/igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-4.html

  * igt@kms_color@gamma@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][110] +4 other tests dmesg-warn
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-12/igt@kms_color@gamma@pipe-d-hdmi-a-3.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-snb:          [PASS][111] -> [FAIL][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-snb:          ([PASS][113], [PASS][114]) -> ([PASS][115], [DMESG-WARN][116])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@basic-plain-flip:
    - shard-tglu:         [PASS][117] -> [ABORT][118] +10 other tests abort
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-10/igt@kms_flip@basic-plain-flip.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-9/igt@kms_flip@basic-plain-flip.html

  * igt@kms_flip@basic-plain-flip@a-hdmi-a3:
    - shard-dg2:          [PASS][119] -> [ABORT][120] +2 other tests abort
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_flip@basic-plain-flip@a-hdmi-a3.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-5/igt@kms_flip@basic-plain-flip@a-hdmi-a3.html

  * igt@kms_flip@basic-plain-flip@b-hdmi-a1:
    - shard-rkl:          [PASS][121] -> [DMESG-WARN][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@kms_flip@basic-plain-flip@b-hdmi-a1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-4/igt@kms_flip@basic-plain-flip@b-hdmi-a1.html

  * igt@kms_flip@blocking-absolute-wf_vblank-interruptible:
    - shard-dg2:          ([PASS][123], [PASS][124]) -> ([SKIP][125], [ABORT][126]) ([i915#5354])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_flip@blocking-absolute-wf_vblank-interruptible.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-11/igt@kms_flip@blocking-absolute-wf_vblank-interruptible.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_flip@blocking-absolute-wf_vblank-interruptible.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-8/igt@kms_flip@blocking-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-hdmi-a4:
    - shard-dg1:          NOTRUN -> ([ABORT][127], [ABORT][128])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-15/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-hdmi-a4.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-hdmi-a4.html

  * igt@kms_flip@blocking-absolute-wf_vblank-interruptible@d-hdmi-a1:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][129] +9 other tests dmesg-warn
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-8/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@d-hdmi-a1.html

  * igt@kms_flip@blocking-absolute-wf_vblank-interruptible@d-hdmi-a4:
    - shard-dg1:          NOTRUN -> ([DMESG-WARN][130], [DMESG-WARN][131])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@d-hdmi-a4.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-15/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@d-hdmi-a4.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible:
    - shard-glk:          [PASS][132] -> ([PASS][133], [FAIL][134]) +1 other test ( 1 fail, 1 pass )
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk6/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk8/igt@kms_flip@flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@b-hdmi-a4:
    - shard-dg1:          ([PASS][135], [PASS][136]) -> [FAIL][137]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-19/igt@kms_flip@flip-vs-wf_vblank-interruptible@b-hdmi-a4.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-16/igt@kms_flip@flip-vs-wf_vblank-interruptible@b-hdmi-a4.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_flip@flip-vs-wf_vblank-interruptible@b-hdmi-a4.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          [PASS][138] -> ([ABORT][139], [ABORT][140]) +1 other test ( 2 abort )
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-rkl:          ([PASS][141], [PASS][142]) -> ([ABORT][143], [ABORT][144]) +9 other tests ( 2 abort )
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
    - shard-dg1:          [PASS][145] -> ([ABORT][146], [ABORT][147]) +4 other tests ( 2 abort )
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-dg2:          ([PASS][148], [PASS][149]) -> ([ABORT][150], [ABORT][151]) +16 other tests ( 2 abort )
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-dg2:          ([PASS][152], [PASS][153]) -> [ABORT][154] +6 other tests abort
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-rkl:          ([PASS][155], [PASS][156]) -> [ABORT][157] +9 other tests abort
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling:
    - shard-mtlp:         ([PASS][158], [PASS][159]) -> ([ABORT][160], [ABORT][161]) +22 other tests ( 2 abort )
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling@pipe-a-valid-mode:
    - shard-tglu:         ([PASS][162], [PASS][163]) -> [ABORT][164] +25 other tests abort
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling@pipe-a-valid-mode.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling@pipe-a-valid-mode.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling:
    - shard-dg2:          ([PASS][165], [PASS][166]) -> ([SKIP][167], [ABORT][168]) ([i915#3555]) +2 other tests ( 1 abort, 1 skip )
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-rkl:          [PASS][169] -> ([ABORT][170], [ABORT][171]) +7 other tests ( 2 abort )
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          ([PASS][172], [PASS][173]) -> ([ABORT][174], [ABORT][175]) +19 other tests ( 2 abort )
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-15/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode:
    - shard-dg1:          ([PASS][176], [PASS][177]) -> [ABORT][178] +12 other tests abort
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-mtlp:         [PASS][179] -> ([ABORT][180], [ABORT][181])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-mtlp:         ([PASS][182], [PASS][183]) -> [ABORT][184] +5 other tests abort
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@kms_plane@pixel-format-source-clamping.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@kms_plane@pixel-format-source-clamping.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-6/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-a-plane-3:
    - shard-mtlp:         ([PASS][185], [PASS][186]) -> [DMESG-WARN][187] +9 other tests dmesg-warn
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@kms_plane@pixel-format-source-clamping@pipe-a-plane-3.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@kms_plane@pixel-format-source-clamping@pipe-a-plane-3.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-6/igt@kms_plane@pixel-format-source-clamping@pipe-a-plane-3.html

  * igt@perf_pmu@busy-accuracy-98:
    - shard-tglu:         ([PASS][188], [PASS][189]) -> [FAIL][190] +1 other test fail
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-2/igt@perf_pmu@busy-accuracy-98.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-7/igt@perf_pmu@busy-accuracy-98.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-9/igt@perf_pmu@busy-accuracy-98.html

  
#### Warnings ####

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - shard-rkl:          ([PASS][191], [ABORT][192]) ([i915#10354]) -> [ABORT][193]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-5/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-7/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-5/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html

  * igt@kms_color@ctm-red-to-blue:
    - shard-dg2:          ([SKIP][194], [PASS][195]) ([i915#5354]) -> [ABORT][196]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_color@ctm-red-to-blue.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_color@ctm-red-to-blue.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-7/igt@kms_color@ctm-red-to-blue.html

  * igt@kms_color@gamma:
    - shard-dg2:          ([SKIP][197], [PASS][198]) ([i915#5354]) -> ([ABORT][199], [ABORT][200])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_color@gamma.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_color@gamma.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_color@gamma.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-6/igt@kms_color@gamma.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
    - shard-mtlp:         ([SKIP][201], [SKIP][202]) ([i915#3555] / [i915#8813]) -> ([ABORT][203], [ABORT][204]) +3 other tests ( 2 abort )
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
    - shard-mtlp:         ([SKIP][205], [SKIP][206]) ([i915#3555] / [i915#8810]) -> ([ABORT][207], [ABORT][208])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling:
    - shard-dg2:          ([SKIP][209], [PASS][210]) ([i915#3555]) -> ([ABORT][211], [SKIP][212]) ([i915#3555])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         ([SKIP][213], [SKIP][214]) ([i915#8810]) -> ([ABORT][215], [ABORT][216]) +2 other tests ( 2 abort )
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling:
    - shard-dg2:          ([SKIP][217], [PASS][218]) ([i915#3555]) -> ([ABORT][219], [ABORT][220]) +1 other test ( 2 abort )
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling:
    - shard-mtlp:         ([SKIP][221], [SKIP][222]) ([i915#3555] / [i915#8813]) -> [ABORT][223] +3 other tests abort
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         ([SKIP][224], [SKIP][225]) ([i915#3555] / [i915#8810]) -> [ABORT][226] +3 other tests abort
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
    - shard-mtlp:         ([SKIP][227], [SKIP][228]) ([i915#12316]) -> ([ABORT][229], [ABORT][230])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-3/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-2/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-4/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling:
    - {shard-tglu-1}:     NOTRUN -> [ABORT][231] +3 other tests abort
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html

  
Known issues
------------

  Here are the changes found in Patchwork_139485v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@write:
    - shard-dg2:          ([PASS][232], [PASS][233]) -> [SKIP][234] ([i915#2582])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-1/igt@fbdev@write.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@fbdev@write.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@fbdev@write.html

  * igt@gem_busy@close-race:
    - shard-dg2:          NOTRUN -> [FAIL][235] ([i915#12297])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@gem_busy@close-race.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][236] ([i915#7297])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu:         NOTRUN -> [SKIP][237] ([i915#7697])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-glk:          NOTRUN -> [FAIL][238] ([i915#2842]) +1 other test fail
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk5/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          ([PASS][239], [PASS][240]) -> ([FAIL][241], [FAIL][242]) ([i915#2842] / [i915#2876])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#3281]) +2 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-13/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_mmap@big-bo:
    - shard-dg1:          NOTRUN -> [SKIP][244] ([i915#4083]) +1 other test skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-13/igt@gem_mmap@big-bo.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-tglu:         NOTRUN -> [SKIP][245] ([i915#4270])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#5190] / [i915#8428])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][247] -> ([ABORT][248], [PASS][249]) ([i915#5566])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          ([PASS][250], [PASS][251]) -> [FAIL][252] ([i915#3591]) +1 other test fail
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@kms_addfb_basic@addfb25-4-tiled:
    - shard-dg1:          ([PASS][253], [PASS][254]) -> ([DMESG-WARN][255], [PASS][256]) ([i915#4423]) +1 other test ( 1 dmesg-warn, 1 pass )
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-17/igt@kms_addfb_basic@addfb25-4-tiled.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-19/igt@kms_addfb_basic@addfb25-4-tiled.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_addfb_basic@addfb25-4-tiled.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-18/igt@kms_addfb_basic@addfb25-4-tiled.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#8709]) +11 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html

  * igt@kms_atomic_transition@modeset-transition-fencing:
    - shard-glk:          [PASS][258] -> ([PASS][259], [FAIL][260]) ([i915#12238])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing.html

  * igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:
    - shard-glk:          [PASS][261] -> ([PASS][262], [FAIL][263]) ([i915#11859]) +1 other test ( 1 fail, 1 pass )
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-glk:          [PASS][264] -> ([PASS][265], [FAIL][266]) ([i915#12177])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk6/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][267] ([i915#4538] / [i915#5286]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-13/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][268] ([i915#5286])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          ([PASS][269], [PASS][270]) -> [SKIP][271] ([i915#9197]) +23 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> ([SKIP][272], [SKIP][273]) +8 other tests ( 2 skip )
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk9/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#10307] / [i915#6095]) +97 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][275] ([i915#6095]) +19 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> ([SKIP][276], [SKIP][277]) ([i915#10307] / [i915#6095]) +3 other tests ( 2 skip )
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> ([SKIP][278], [SKIP][279]) ([i915#6095]) +7 other tests ( 2 skip )
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-15/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#6095]) +23 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][282] ([i915#6095]) +48 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> ([SKIP][283], [SKIP][284]) ([i915#6095]) +1 other test ( 2 skip )
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-7/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-1.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][285] ([i915#7828]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_frames@dp-crc-multiple:
    - shard-dg1:          NOTRUN -> [SKIP][286] ([i915#7828])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_chamelium_frames@dp-crc-multiple.html

  * igt@kms_color@degamma:
    - shard-dg2:          ([PASS][287], [PASS][288]) -> [SKIP][289] ([i915#5354]) +5 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_color@degamma.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-11/igt@kms_color@degamma.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_color@degamma.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg1:          NOTRUN -> [SKIP][290] ([i915#9424])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][291] ([i915#3116] / [i915#3299])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][292] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-glk:          NOTRUN -> [SKIP][293] +93 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk5/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][294] ([i915#11453])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#9197]) +3 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][296] -> ([PASS][297], [FAIL][298]) ([i915#2346])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu:         NOTRUN -> [SKIP][299] ([i915#3555] / [i915#3840])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][300] ([i915#3637] / [i915#3966])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          ([PASS][301], [PASS][302]) -> ([DMESG-WARN][303], [PASS][304]) ([i915#11922])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-snb:          ([PASS][305], [PASS][306]) -> [FAIL][307] ([i915#2122]) +1 other test fail
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb4/igt@kms_flip@2x-wf_vblank-ts-check.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb1/igt@kms_flip@2x-wf_vblank-ts-check.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb5/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][308] ([i915#11961])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a2:
    - shard-glk:          [PASS][309] -> ([PASS][310], [INCOMPLETE][311]) ([i915#4839])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk5/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk9/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][312] ([i915#4839])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk5/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible:
    - shard-dg2:          ([PASS][313], [PASS][314]) -> ([PASS][315], [SKIP][316]) ([i915#5354]) +3 other tests ( 1 pass, 1 skip )
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-1/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-7/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
    - shard-dg1:          ([PASS][317], [PASS][318]) -> ([FAIL][319], [PASS][320]) ([i915#2122])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-16/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-19/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-12/igt@kms_flip@flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][321] ([i915#2672] / [i915#3555]) +1 other test skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][322] ([i915#2587] / [i915#2672]) +1 other test skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][323] ([i915#5354]) +1 other test skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-rte:
    - shard-dg1:          NOTRUN -> [SKIP][324] +4 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][325] +20 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][326] ([i915#3458])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][327] ([i915#8708])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][328] ([i915#3555] / [i915#8228])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_invalid_mode@bad-htotal:
    - shard-dg2:          ([PASS][329], [PASS][330]) -> [SKIP][331] ([i915#3555])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_invalid_mode@bad-htotal.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-11/igt@kms_invalid_mode@bad-htotal.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_invalid_mode@bad-htotal.html

  * igt@kms_invalid_mode@int-max-clock:
    - shard-dg2:          ([PASS][332], [PASS][333]) -> ([PASS][334], [SKIP][335]) ([i915#3555])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_invalid_mode@int-max-clock.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-11/igt@kms_invalid_mode@int-max-clock.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-11/igt@kms_invalid_mode@int-max-clock.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_invalid_mode@int-max-clock.html

  * igt@kms_panel_fitting@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][336] ([i915#6301])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane@pixel-format@pipe-a-plane-3:
    - shard-mtlp:         ([PASS][337], [PASS][338]) -> [DMESG-WARN][339] ([i915#1982])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_plane@pixel-format@pipe-a-plane-3.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@kms_plane@pixel-format@pipe-a-plane-3.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-7/igt@kms_plane@pixel-format@pipe-a-plane-3.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-dg2:          ([PASS][340], [PASS][341]) -> [SKIP][342] ([i915#7294])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-1/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-dg2:          ([PASS][343], [PASS][344]) -> ([PASS][345], [SKIP][346]) ([i915#7294]) +2 other tests ( 1 pass, 1 skip )
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][347] ([i915#12247]) +9 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers:
    - shard-dg2:          ([PASS][348], [PASS][349]) -> ([PASS][350], [SKIP][351]) ([i915#8152] / [i915#9423]) +1 other test ( 1 pass, 1 skip )
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:
    - shard-dg2:          ([PASS][352], [PASS][353]) -> ([SKIP][354], [PASS][355]) ([i915#8152]) +1 other test ( 1 pass, 1 skip )
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:
    - shard-dg2:          NOTRUN -> [SKIP][356] ([i915#8152] / [i915#9423])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-b:
    - shard-dg2:          NOTRUN -> [SKIP][357] ([i915#12247]) +2 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][358] ([i915#8152])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-dg2:          ([PASS][359], [PASS][360]) -> [SKIP][361] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a:
    - shard-dg2:          ([PASS][362], [PASS][363]) -> ([SKIP][364], [PASS][365]) ([i915#12247]) +11 other tests ( 1 pass, 1 skip )
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
    - shard-dg2:          ([PASS][366], [PASS][367]) -> [SKIP][368] ([i915#12247]) +2 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d:
    - shard-dg2:          ([PASS][369], [PASS][370]) -> [SKIP][371] ([i915#12247] / [i915#8152])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-dg2:          ([PASS][372], [PASS][373]) -> ([SKIP][374], [PASS][375]) ([i915#6953] / [i915#8152] / [i915#9423]) +1 other test ( 1 pass, 1 skip )
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d:
    - shard-dg2:          ([PASS][376], [PASS][377]) -> ([PASS][378], [SKIP][379]) ([i915#12247] / [i915#8152]) +1 other test ( 1 pass, 1 skip )
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][380] ([i915#9685])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_rpm@cursor:
    - shard-dg2:          ([PASS][381], [PASS][382]) -> [SKIP][383] ([i915#1849])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-11/igt@kms_pm_rpm@cursor.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_pm_rpm@cursor.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_pm_rpm@cursor.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][384] ([i915#6524])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-dg2:          ([PASS][385], [PASS][386]) -> ([SKIP][387], [PASS][388]) ([i915#11521]) +1 other test ( 1 pass, 1 skip )
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-11/igt@kms_properties@plane-properties-atomic.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_properties@plane-properties-atomic.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-11/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-dg2:          ([PASS][389], [PASS][390]) -> [SKIP][391] ([i915#11521])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-1/igt@kms_properties@plane-properties-legacy.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_properties@plane-properties-legacy.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][392] ([i915#11520]) +1 other test skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-glk:          NOTRUN -> [SKIP][393] ([i915#11520]) +1 other test skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglu:         NOTRUN -> [SKIP][394] ([i915#9683])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-psr-sprite-plane-move:
    - shard-dg1:          NOTRUN -> [SKIP][395] ([i915#1072] / [i915#9732]) +1 other test skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_psr@fbc-psr-sprite-plane-move.html

  * igt@kms_psr@psr-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][396] ([i915#9732]) +3 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_psr@psr-no-drrs.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-tglu:         NOTRUN -> [SKIP][397] ([i915#3555])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-dg2:          NOTRUN -> [SKIP][398] ([i915#3555])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][399] ([i915#8623])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vblank@ts-continuation-modeset:
    - shard-dg2:          ([PASS][400], [PASS][401]) -> ([PASS][402], [SKIP][403]) ([i915#9197]) +23 other tests ( 1 pass, 1 skip )
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_vblank@ts-continuation-modeset.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_vblank@ts-continuation-modeset.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_vblank@ts-continuation-modeset.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_vblank@ts-continuation-modeset.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][404] ([i915#9906])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-glk:          NOTRUN -> [SKIP][405] ([i915#2437])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@perf@gen12-group-concurrent-oa-buffer-read:
    - shard-rkl:          ([PASS][406], [PASS][407]) -> ([PASS][408], [FAIL][409]) ([i915#10538])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-3/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-6/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-1/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-5/igt@perf@gen12-group-concurrent-oa-buffer-read.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][410] +1 other test skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@perf_pmu@event-wait@rcs0.html

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - shard-glk:          NOTRUN -> [FAIL][411] ([i915#9781])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/igt@syncobj_timeline@invalid-wait-zero-handles.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - shard-dg2:          ([PASS][412], [SKIP][413]) ([i915#2582]) -> ([PASS][414], [PASS][415])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@fbdev@read.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@fbdev@read.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-4/igt@fbdev@read.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-1/igt@fbdev@read.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          ([INCOMPLETE][416], [INCOMPLETE][417]) ([i915#7297]) -> [PASS][418]
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-tglu:         ([PASS][419], [FAIL][420]) ([i915#12027]) -> [PASS][421]
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-9/igt@gem_ctx_engines@invalid-engines.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-8/igt@gem_ctx_engines@invalid-engines.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@gem_ctx_engines@invalid-engines.html
    - shard-mtlp:         ([FAIL][422], [PASS][423]) ([i915#12027]) -> ([PASS][424], [PASS][425])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-4/igt@gem_ctx_engines@invalid-engines.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglu:         [FAIL][426] ([i915#11980]) -> [PASS][427]
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-4/igt@gem_ctx_persistence@hostile.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-3/igt@gem_ctx_persistence@hostile.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-rkl:          [FAIL][428] ([i915#2846]) -> [PASS][429]
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][430] ([i915#2842]) -> ([PASS][431], [PASS][432]) +1 other test ( 2 pass )
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-rkl:          ([FAIL][433], [PASS][434]) ([i915#2842]) -> [PASS][435] +1 other test pass
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         ([FAIL][436], [PASS][437]) ([i915#2842]) -> [PASS][438] +1 other test pass
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          ([PASS][439], [INCOMPLETE][440]) ([i915#7790]) -> ([PASS][441], [PASS][442])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb6/igt@i915_pm_rps@reset.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb2/igt@i915_pm_rps@reset.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb1/igt@i915_pm_rps@reset.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb5/igt@i915_pm_rps@reset.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-tglu:         ([PASS][443], [FAIL][444]) ([i915#10991]) -> [PASS][445] +1 other test pass
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-6/igt@kms_async_flips@alternate-sync-async-flip.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-3/igt@kms_async_flips@alternate-sync-async-flip.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
    - shard-glk:          [FAIL][446] ([i915#12238]) -> [PASS][447]
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:
    - shard-glk:          [FAIL][448] ([i915#11859]) -> [PASS][449]
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         ([PASS][450], [FAIL][451]) ([i915#5138]) -> [PASS][452]
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-snb:          [SKIP][453] -> [PASS][454]
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][455] ([i915#2346]) -> ([PASS][456], [PASS][457])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-snb:          [FAIL][458] -> [PASS][459]
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
    - shard-mtlp:         ([FAIL][460], [PASS][461]) ([i915#2346]) -> ([PASS][462], [PASS][463])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-glk:          [FAIL][464] ([i915#2122]) -> ([PASS][465], [PASS][466]) +1 other test ( 2 pass )
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@dpms-off-confusion-interruptible:
    - shard-dg2:          ([SKIP][467], [PASS][468]) ([i915#5354]) -> ([PASS][469], [PASS][470]) +7 other tests ( 2 pass )
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_flip@dpms-off-confusion-interruptible.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_flip@dpms-off-confusion-interruptible.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_flip@dpms-off-confusion-interruptible.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-5/igt@kms_flip@dpms-off-confusion-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:
    - shard-mtlp:         ([FAIL][471], [PASS][472]) ([i915#2122]) -> ([PASS][473], [PASS][474])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@d-hdmi-a1:
    - shard-tglu:         ([PASS][475], [FAIL][476]) ([i915#2122]) -> [PASS][477] +8 other tests pass
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-8/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-9/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:
    - shard-dg1:          ([DMESG-WARN][478], [PASS][479]) ([i915#1982] / [i915#4391] / [i915#4423]) -> [PASS][480]
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:
    - shard-snb:          ([SKIP][481], [SKIP][482]) -> [PASS][483] +1 other test pass
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-snb:          ([SKIP][484], [PASS][485]) -> ([PASS][486], [PASS][487]) +1 other test ( 2 pass )
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_invalid_mode@bad-hsync-end:
    - shard-dg2:          ([SKIP][488], [PASS][489]) ([i915#3555]) -> ([PASS][490], [PASS][491]) +1 other test ( 2 pass )
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_invalid_mode@bad-hsync-end.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_invalid_mode@bad-hsync-end.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_invalid_mode@bad-hsync-end.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-5/igt@kms_invalid_mode@bad-hsync-end.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-dg2:          ([PASS][492], [SKIP][493]) ([i915#9581]) -> ([PASS][494], [PASS][495])
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane@planar-pixel-format-settings.html
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-1/igt@kms_plane@planar-pixel-format-settings.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-4/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane@plane-panning-bottom-right:
    - shard-dg2:          ([SKIP][496], [PASS][497]) ([i915#8825]) -> ([PASS][498], [PASS][499])
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_plane@plane-panning-bottom-right.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-10/igt@kms_plane@plane-panning-bottom-right.html
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-8/igt@kms_plane@plane-panning-bottom-right.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-dg2:          ([SKIP][500], [PASS][501]) ([i915#7294]) -> ([PASS][502], [PASS][503])
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane_alpha_blend@alpha-basic.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-4/igt@kms_plane_alpha_blend@alpha-basic.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-1/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-dg2:          ([SKIP][504], [PASS][505]) ([i915#6953] / [i915#8152] / [i915#9423]) -> ([PASS][506], [PASS][507])
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20.html
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-dg2:          ([PASS][508], [SKIP][509]) ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> ([PASS][510], [PASS][511])
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:
    - shard-dg2:          ([PASS][512], [SKIP][513]) ([i915#12247] / [i915#8152]) -> ([PASS][514], [PASS][515])
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20@pipe-b:
    - shard-dg2:          ([PASS][516], [SKIP][517]) ([i915#12247]) -> ([PASS][518], [PASS][519]) +5 other tests ( 2 pass )
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20@pipe-b.html
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20@pipe-b.html
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20@pipe-b.html
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-20x20@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-20x20@pipe-d:
    - shard-dg2:          ([PASS][520], [SKIP][521]) ([i915#8152]) -> ([PASS][522], [PASS][523])
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         ([PASS][524], [FAIL][525]) ([i915#9295]) -> [PASS][526]
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         ([SKIP][527], [PASS][528]) ([i915#4281]) -> [PASS][529]
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-5/igt@kms_pm_dc@dc9-dpms.html
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-5/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          ([PASS][530], [SKIP][531]) ([i915#9519]) -> [PASS][532]
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          ([SKIP][533], [PASS][534]) ([i915#9519]) -> ([PASS][535], [PASS][536]) +2 other tests ( 2 pass )
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_universal_plane@cursor-fb-leak:
    - shard-mtlp:         ([PASS][537], [FAIL][538]) ([i915#9196]) -> ([PASS][539], [PASS][540]) +1 other test ( 2 pass )
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak.html
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak.html
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-dg2:          ([SKIP][541], [PASS][542]) ([i915#9197]) -> ([PASS][543], [PASS][544]) +24 other tests ( 2 pass )
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-5/igt@kms_vblank@ts-continuation-dpms-suspend.html

  * igt@pe

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/index.html

--===============6525545239883822612==
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
<tr><td><b>Series:</b></td><td>drm/i915/icl: Update csc and gamma enable ch=
ecks</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/139485/">https://patchwork.freedesktop.org/series/139485/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_139485v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139485v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15478_full -&gt; Patchwork_139485v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139485v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_139485v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
139485v1_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15478/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15478/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/sha=
rd-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15478/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_15478/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_15478/shard-glk1/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478=
/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_15478/shard-glk2/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
5478/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15478/shard-glk4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk5/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shar=
d-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_15478/shard-glk5/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
485v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139485v1/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139485v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/sh=
ard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139485v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9485v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139485v1/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139485v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/sh=
ard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139485v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9485v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139485v1/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139485v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/sh=
ard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139485v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9485v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139485v1/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139485v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/sh=
ard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139485v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk9/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9485v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139485v1/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139485v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/sh=
ard-glk8/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139485v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9485v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139485v1/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139485v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/sh=
ard-glk7/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_color@ctm-0-25@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg1-12/igt@kms_color@ctm-0-25@pipe-a=
-hdmi-a-3.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-tglu-5/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/sh=
ard-tglu-10/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html">PASS</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-=
tglu-7/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html">DMESG-WARN</a> +12 othe=
r tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg1-18/igt@kms_color@ctm-0-25@pipe-d-hdmi-a-4.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/sh=
ard-dg1-19/igt@kms_color@ctm-0-25@pipe-d-hdmi-a-4.html">PASS</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-d=
g1-16/igt@kms_color@ctm-0-25@pipe-d-hdmi-a-4.html">DMESG-WARN</a> +4 other =
tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-rkl-5/igt@kms_color@ctm-0-50@pipe-b-hdmi-a-2.html">PASS=
</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39485v1/shard-rkl-1/igt@kms_color@ctm-0-50@pipe-b-hdmi-a-2.html">DMESG-WARN=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v=
1/shard-rkl-3/igt@kms_color@ctm-0-50@pipe-b-hdmi-a-2.html">DMESG-WARN</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-dg1-13/igt@kms_color@ctm-0-50@pipe-c-hdmi-a-3.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39485v1/shard-dg1-12/igt@kms_color@ctm-0-50@pipe-c-hdmi-a-3.html">DMESG-WAR=
N</a> +7 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-4/igt@kms_color@ctm-max@pipe-b-edp-1.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-=
mtlp-5/igt@kms_color@ctm-max@pipe-b-edp-1.html">PASS</a>) -&gt; (<a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-6/i=
gt@kms_color@ctm-max@pipe-b-edp-1.html">DMESG-WARN</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-7/igt@kms_co=
lor@ctm-max@pipe-b-edp-1.html">DMESG-WARN</a>) +12 other tests ( 2 dmesg-wa=
rn )</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-rkl-4/igt@kms_color@ctm-max@pipe-b-hdmi-a-1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
485v1/shard-rkl-2/igt@kms_color@ctm-max@pipe-b-hdmi-a-1.html">ABORT</a> +8 =
other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_color@ctm-max@pipe-b-h=
dmi-a-2.html">ABORT</a> +5 other tests abort</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-rkl-5/igt@kms_color@ctm-max@pipe-b-h=
dmi-a-2.html">ABORT</a> +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg1-17/igt@kms_color@ctm-max@pipe-c-hdmi-a-4.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/sha=
rd-dg1-19/igt@kms_color@ctm-max@pipe-c-hdmi-a-4.html">PASS</a>) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg=
1-18/igt@kms_color@ctm-max@pipe-c-hdmi-a-4.html">DMESG-WARN</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/i=
gt@kms_color@ctm-max@pipe-c-hdmi-a-4.html">DMESG-WARN</a>) +1 other test ( =
2 dmesg-warn )</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-dg1-15/igt@kms_color@ctm-negative@pipe-b-hdmi-a-4.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_139485v1/shard-dg1-15/igt@kms_color@ctm-negative@pipe-b-hdmi-a-4.html">A=
BORT</a> +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-rkl-7/igt@kms_color@ctm-red-to-blue@=
pipe-b-hdmi-a-1.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-rkl-1/igt@kms_color@ctm-red-to-blue@pipe-b-hdmi-a-2.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
478/shard-rkl-6/igt@kms_color@ctm-red-to-blue@pipe-b-hdmi-a-2.html">PASS</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1394=
85v1/shard-rkl-1/igt@kms_color@ctm-red-to-blue@pipe-b-hdmi-a-2.html">DMESG-=
WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-tglu-3/igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139485v1/shard-tglu-7/igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-1.h=
tml">DMESG-WARN</a> +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-dg2-5/igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-3.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139485v1/shard-dg2-7/igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-3.htm=
l">DMESG-WARN</a> +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-dg1-18/igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-4.ht=
ml">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139485v1/shard-dg1-17/igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-4.=
html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_139485v1/shard-dg1-19/igt@kms_color@ctm-red-to-blue@pipe-d-hdmi-a-=
4.html">DMESG-WARN</a>) +3 other tests ( 2 dmesg-warn )</li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg1-12/igt@kms_color@gamma@pipe-d-hd=
mi-a-3.html">DMESG-WARN</a> +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139485v1/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-si=
ze.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_154=
78/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">PASS</a>)=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13948=
5v1/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/sh=
ard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">DMESG-WARN</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-tglu-10/igt@kms_flip@basic-plain-flip.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/=
shard-tglu-9/igt@kms_flip@basic-plain-flip.html">ABORT</a> +10 other tests =
abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-dg2-6/igt@kms_flip@basic-plain-flip@a-hdmi-a3.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39485v1/shard-dg2-5/igt@kms_flip@basic-plain-flip@a-hdmi-a3.html">ABORT</a>=
 +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-hdmi-a1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-rkl-2/igt@kms_flip@basic-plain-flip@b-hdmi-a1.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39485v1/shard-rkl-4/igt@kms_flip@basic-plain-flip@b-hdmi-a1.html">DMESG-WAR=
N</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-7/igt@kms_flip@blocking-absolute-wf_vblank-interru=
ptible.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15478/shard-dg2-11/igt@kms_flip@blocking-absolute-wf_vblank-interrup=
tible.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_flip@blocking-absolute-wf_vbla=
nk-interruptible.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139485v1/shard-dg2-8/igt@kms_flip@blocking-absolute-wf_=
vblank-interruptible.html">ABORT</a>) ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139485v1/shard-dg1-15/igt@kms_flip@blocking-absolu=
te-wf_vblank-interruptible@a-hdmi-a4.html">ABORT</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_flip=
@blocking-absolute-wf_vblank-interruptible@a-hdmi-a4.html">ABORT</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank-interruptible@d-hdmi-a1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-8/igt@kms_flip@blocking-absolute=
-wf_vblank-interruptible@d-hdmi-a1.html">DMESG-WARN</a> +9 other tests dmes=
g-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank-interruptible@d-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_flip@blocking-absolu=
te-wf_vblank-interruptible@d-hdmi-a4.html">DMESG-WARN</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-15/igt@kms=
_flip@blocking-absolute-wf_vblank-interruptible@d-hdmi-a4.html">DMESG-WARN<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-glk4/igt@kms_flip@flip-vs-wf_vblank-interruptible.html"=
>PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_139485v1/shard-glk6/igt@kms_flip@flip-vs-wf_vblank-interruptible.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
485v1/shard-glk8/igt@kms_flip@flip-vs-wf_vblank-interruptible.html">FAIL</a=
>) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-wf_vblank-interruptible@b-hdmi-a4:</p>
<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg1-19/igt@kms_flip@flip-vs-wf_vblank-interruptible@b-=
hdmi-a4.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-dg1-16/igt@kms_flip@flip-vs-wf_vblank-interruptible@b-h=
dmi-a4.html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_flip@flip-vs-wf_vblank-interr=
uptible@b-hdmi-a4.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp=
-4tile-downscaling@pipe-a-valid-mode.html">PASS</a> -&gt; (<a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-10/igt@kms=
_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-m=
ode.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139485v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64=
bpp-4tile-downscaling@pipe-a-valid-mode.html">ABORT</a>) +1 other test ( 2 =
abort )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bp=
p-ytile-upscaling.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_15478/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytil=
e-to-64bpp-ytile-upscaling.html">PASS</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-1/igt@kms_flip_scal=
ed_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">ABORT</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-4=
/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">AB=
ORT</a>) +9 other tests ( 2 abort )</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bp=
p-ytile-upscaling.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_139485v1/shard-dg1-14/igt@kms_flip_scaled_crc@fl=
ip-32bpp-ytile-to-64bpp-ytile-upscaling.html">ABORT</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-17/igt@kms_f=
lip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">ABORT</a>) +=
4 other tests ( 2 abort )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bp=
p-4tile-upscaling.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_15478/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-4ti=
le-to-32bpp-4tile-upscaling.html">PASS</a>) -&gt; (<a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-4/igt@kms_flip_sca=
led_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">ABORT</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-1=
1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">A=
BORT</a>) +16 other tests ( 2 abort )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bp=
p-4tiledg2rcccs-downscaling.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">PASS</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-=
7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscali=
ng.html">ABORT</a> +6 other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</=
p>
<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16b=
pp-linear-downscaling.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15478/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-=
linear-to-16bpp-linear-downscaling.html">PASS</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-4/igt@kms_fl=
ip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">ABORT</a>=
 +9 other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16=
bpp-linear-upscaling.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-=
linear-to-16bpp-linear-upscaling.html">PASS</a>) -&gt; (<a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-4/igt@kms_fl=
ip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html">ABORT</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shar=
d-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscalin=
g.html">ABORT</a>) +22 other tests ( 2 abort )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16=
bpp-linear-upscaling@pipe-a-valid-mode.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-8/igt@kms_flip_scal=
ed_crc@flip-64bpp-linear-to-16bpp-linear-upscaling@pipe-a-valid-mode.html">=
PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_139485v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp=
-linear-upscaling@pipe-a-valid-mode.html">ABORT</a> +25 other tests abort</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bp=
p-xtile-downscaling.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-xt=
ile-to-32bpp-xtile-downscaling.html">PASS</a>) -&gt; (<a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_flip_=
scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html">SKIP</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg=
2-3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.htm=
l">ABORT</a>) ([i915#3555]) +2 other tests ( 1 abort, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile-downscaling.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-2/igt@kms_flip_scaled_crc@fl=
ip-64bpp-ytile-to-32bpp-ytile-downscaling.html">ABORT</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-6/igt@kms_=
flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">ABORT</a>=
) +7 other tests ( 2 abort )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32b=
pp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-15/igt@kms_f=
lip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-v=
alid-mode.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139485v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bp=
p-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">ABORT</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/s=
hard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcc=
cs-upscaling@pipe-a-valid-mode.html">ABORT</a>) +19 other tests ( 2 abort )=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32b=
pp-ytilercccs-downscaling@pipe-a-valid-mode.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-12/igt@kms_flip=
_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-m=
ode.html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139485v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-ytile=
-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode.html">ABORT</a> +12 othe=
r tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
spr-indfb-move.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-spr-indfb-move.html">ABORT</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-1/igt@kms_frontbu=
ffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html">ABORT</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-8/igt@kms_plane@pixel-format-source-clamping.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1547=
8/shard-mtlp-7/igt@kms_plane@pixel-format-source-clamping.html">PASS</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1=
/shard-mtlp-6/igt@kms_plane@pixel-format-source-clamping.html">ABORT</a> +5=
 other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-a-plane-3:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-8/igt@kms_plane@pixel-format-source-clamping@pipe=
-a-plane-3.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_15478/shard-mtlp-7/igt@kms_plane@pixel-format-source-clamping@pi=
pe-a-plane-3.html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_139485v1/shard-mtlp-6/igt@kms_plane@pixel-format-sour=
ce-clamping@pipe-a-plane-3.html">DMESG-WARN</a> +9 other tests dmesg-warn</=
li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-98:</p>
<ul>
<li>shard-tglu:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-tglu-2/igt@perf_pmu@busy-accuracy-98.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-=
7/igt@perf_pmu@busy-accuracy-98.html">PASS</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-9/igt@perf_pmu=
@busy-accuracy-98.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-rkl-5/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/sha=
rd-rkl-7/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">ABORT</a>) ([i915#103=
54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9485v1/shard-rkl-5/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">ABORT</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-2/igt@kms_color@ctm-red-to-blue.html">SKIP</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/=
igt@kms_color@ctm-red-to-blue.html">PASS</a>) ([i915#5354]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-7=
/igt@kms_color@ctm-red-to-blue.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-2/igt@kms_color@gamma.html">SKIP</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_co=
lor@gamma.html">PASS</a>) ([i915#5354]) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_color@gamma.=
html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_139485v1/shard-dg2-6/igt@kms_color@gamma.html">ABORT</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64b=
pp-4tile-downscaling.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-=
4tile-to-64bpp-4tile-downscaling.html">SKIP</a>) ([i915#3555] / [i915#8813]=
) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1394=
85v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-d=
ownscaling.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_139485v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-4ti=
le-to-64bpp-4tile-downscaling.html">ABORT</a>) +3 other tests ( 2 abort )</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64=
bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-2/igt@kms_flip_=
scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mod=
e.html">SKIP</a>) ([i915#3555] / [i915#8810]) -&gt; (<a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-5/igt@kms_flip_=
scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mod=
e.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139485v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64=
bpp-linear-downscaling@pipe-a-default-mode.html">ABORT</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bp=
p-xtile-upscaling.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-xtil=
e-to-64bpp-xtile-upscaling.html">PASS</a>) ([i915#3555]) -&gt; (<a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-5/igt=
@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling.html">ABORT<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1=
/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscal=
ing.html">SKIP</a>) ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32b=
pp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-4/igt@kms_flip_sc=
aled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.ht=
ml">SKIP</a>) ([i915#8810]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_139485v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64=
bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html">ABORT</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard=
-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling=
@pipe-a-default-mode.html">ABORT</a>) +2 other tests ( 2 abort )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16b=
pp-linear-upscaling.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-li=
near-to-16bpp-linear-upscaling.html">PASS</a>) ([i915#3555]) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-1=
/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html">=
ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9485v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linea=
r-upscaling.html">ABORT</a>) +1 other test ( 2 abort )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling:</=
p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32=
bpp-linear-downscaling.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bp=
p-linear-to-32bpp-linear-downscaling.html">SKIP</a>) ([i915#3555] / [i915#8=
813]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39485v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-lin=
ear-downscaling.html">ABORT</a> +3 other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32b=
pp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-1/igt@kms_flip_sc=
aled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.ht=
ml">SKIP</a>) ([i915#3555] / [i915#8810]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-8/igt@kms_flip_scale=
d_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html"=
>ABORT</a> +3 other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-3/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html"=
>SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478=
/shard-mtlp-7/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html">SKIP</a>) ([i=
915#12316]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139485v1/shard-mtlp-2/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html"=
>ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39485v1/shard-mtlp-4/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html">ABORT<=
/a>)</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling:<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-linear-to-64bpp-linear-upscaling.html">ABORT</a> +3 other tests abort=
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139485v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-1/igt@fbdev@write.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@fbdev@writ=
e.html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139485v1/shard-dg2-2/igt@fbdev@write.html">SKIP</a> ([i915#2582]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@gem_busy@close-race.html">=
FAIL</a> ([i915#12297])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@gem_ccs@suspend-resume@til=
e4-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-glk5/igt@gem_exec_fair@basic-pace-so=
lo.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rk=
l-3/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a>) -&gt; (<a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-5/igt@ge=
m_exec_fair@basic-pace@rcs0.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-1/igt@gem_exec_fair@basic=
-pace@rcs0.html">FAIL</a>) ([i915#2842] / [i915#2876])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg1-13/igt@gem_exec_reloc@basic-conc=
urrent0.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@big-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg1-13/igt@gem_mmap@big-bo.html">SKI=
P</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@gem_pxp@reject-modify-con=
text-protection-off-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@gem_render_copy@x-tiled-to=
-vebox-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-glk6/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485=
v1/shard-glk6/igt@gen9_exec_parse@allowed-single.html">ABORT</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk3/=
igt@gen9_exec_parse@allowed-single.html">PASS</a>) ([i915#5566])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_154=
78/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">PASS</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485=
v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">FAIL</a> =
([i915#3591]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-4-tiled:</p>
<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg1-17/igt@kms_addfb_basic@addfb25-4-tiled.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard=
-dg1-19/igt@kms_addfb_basic@addfb25-4-tiled.html">PASS</a>) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-1=
6/igt@kms_addfb_basic@addfb25-4-tiled.html">DMESG-WARN</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-18/igt@km=
s_addfb_basic@addfb25-4-tiled.html">PASS</a>) ([i915#4423]) +1 other test (=
 1 dmesg-warn, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html">SKIP</a> ([i915#8709]=
) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-fencing:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-glk4/igt@kms_atomic_transition@modeset-transition-fenci=
ng.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_139485v1/shard-glk4/igt@kms_atomic_transition@modeset-transitio=
n-fencing.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139485v1/shard-glk8/igt@kms_atomic_transition@modeset-transiti=
on-fencing.html">FAIL</a>) ([i915#12238])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-glk4/igt@kms_atomic_transition@modeset-transition-fenci=
ng@2x-outputs.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_139485v1/shard-glk4/igt@kms_atomic_transition@modese=
t-transition-fencing@2x-outputs.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk8/igt@kms_atomic_trans=
ition@modeset-transition-fencing@2x-outputs.html">FAIL</a>) ([i915#11859]) =
+1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonbl=
ocking.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_139485v1/shard-glk6/igt@kms_atomic_transition@modeset-trans=
ition-nonblocking.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_139485v1/shard-glk8/igt@kms_atomic_transition@modeset-=
transition-nonblocking.html">FAIL</a>) ([i915#12177])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg1-13/igt@kms_big_fb@4-tiled-8bpp-r=
otate-180.html">SKIP</a> ([i915#4538] / [i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip-async-flip.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15478/shard-dg2-1/igt@kms_big_fb@x-tiled-max-hw-stride=
-64bpp-rotate-0-hflip-async-flip.html">PASS</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_big_=
fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i=
915#9197]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139485v1/shard-glk9/igt@kms_ccs@ccs-on-another-bo-=
4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk1/igt@kms_ccs@ccs-o=
n-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a>) +8 other te=
sts ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-=
y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#6=
095]) +97 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +19=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-=
2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html">SKIP</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-11/igt@k=
ms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html">=
SKIP</a>) ([i915#10307] / [i915#6095]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139485v1/shard-dg1-15/igt@kms_ccs@crc-sprite-plane=
s-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html">SKIP</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms=
_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html">SKIP<=
/a>) ([i915#6095]) +7 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer=
-y-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / =
[i915#6095]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-=
tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#6095]) +23 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4=
-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#6095]) +48 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139485v1/shard-rkl-7/igt@kms_ccs@random-ccs-data-y=
-tiled-gen12-mc-ccs@pipe-a-hdmi-a-1.html">SKIP</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-4/igt@kms_ccs@ran=
dom-ccs-data-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-1.html">SKIP</a>) ([i915#60=
95]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_chamelium_edid@dp-edi=
d-change-during-suspend.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-multiple:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_chamelium_frames@dp-c=
rc-multiple.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-7/igt@kms_color@degamma.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-11/igt@kms=
_color@degamma.html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_color@degamma.html">SK=
IP</a> ([i915#5354]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_content_protection@co=
ntent-type-change.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_content_protection@le=
gacy.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-glk5/igt@kms_cursor_crc@cursor-rando=
m-max-size.html">SKIP</a> +93 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_cursor_crc@cursor-rap=
id-movement-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_cursor_legacy@cursora-=
vs-flipa-atomic.html">SKIP</a> ([i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_139485v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-ato=
mic-transitions.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139485v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor=
-atomic-transitions.html">FAIL</a>) ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_dsc@dsc-with-formats.=
html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms-=
off-vs-modeset-interruptible.html">SKIP</a> ([i915#3637] / [i915#3966])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-=
vga1-hdmi-a1.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15478/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible=
@ab-vga1-hdmi-a1.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_139485v1/shard-snb6/igt@kms_flip@2x-flip-vs-susp=
end-interruptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb5/igt@kms_flip=
@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">PASS</a>) ([i915#11=
922])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-snb4/igt@kms_flip@2x-wf_vblank-ts-check.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-sn=
b1/igt@kms_flip@2x-wf_vblank-ts-check.html">PASS</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb5/igt@kms_=
flip@2x-wf_vblank-ts-check.html">FAIL</a> ([i915#2122]) +1 other test fail<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-rkl-3/igt@kms_flip@flip-vs-absolute-=
wf_vblank-interruptible@a-hdmi-a2.html">FAIL</a> ([i915#11961])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html">PASS<=
/a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9485v1/shard-glk5/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-=
glk9/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html">INCOMPLETE</a>) ([i915#48=
39])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-glk5/igt@kms_flip@flip-vs-suspend@b-=
hdmi-a2.html">INCOMPLETE</a> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-3/igt@kms_flip@flip-vs-wf_vblank-interruptible.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_154=
78/shard-dg2-1/igt@kms_flip@flip-vs-wf_vblank-interruptible.html">PASS</a>)=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13948=
5v1/shard-dg2-7/igt@kms_flip@flip-vs-wf_vblank-interruptible.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/sh=
ard-dg2-2/igt@kms_flip@flip-vs-wf_vblank-interruptible.html">SKIP</a>) ([i9=
15#5354]) +3 other tests ( 1 pass, 1 skip )</li>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg1-16/igt@kms_flip@flip-vs-wf_vblank-interruptible.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
478/shard-dg1-19/igt@kms_flip@flip-vs-wf_vblank-interruptible.html">PASS</a=
>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
485v1/shard-dg1-16/igt@kms_flip@flip-vs-wf_vblank-interruptible.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1=
/shard-dg1-12/igt@kms_flip@flip-vs-wf_vblank-interruptible.html">PASS</a>) =
([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#35=
55]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_frontbuffer_tracking@f=
bc-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#5354]) +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-rte:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-rte.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> +20 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_hdr@bpc-switch-dpms.h=
tml">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-7/igt@kms_invalid_mode@bad-htotal.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-=
11/igt@kms_invalid_mode@bad-htotal.html">PASS</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_in=
valid_mode@bad-htotal.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-4/igt@kms_invalid_mode@int-max-clock.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-d=
g2-11/igt@kms_invalid_mode@int-max-clock.html">PASS</a>) -&gt; (<a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-11/ig=
t@kms_invalid_mode@int-max-clock.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_invalid_mo=
de@int-max-clock.html">SKIP</a>) ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_panel_fitting@legacy.=
html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a-plane-3:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-5/igt@kms_plane@pixel-format@pipe-a-plane-3.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478=
/shard-mtlp-8/igt@kms_plane@pixel-format@pipe-a-plane-3.html">PASS</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/s=
hard-mtlp-7/igt@kms_plane@pixel-format@pipe-a-plane-3.html">DMESG-WARN</a> =
([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-3/igt@kms_plane_alpha_blend@alpha-transparent-fb.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
5478/shard-dg2-1/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">PASS<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9485v1/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">SKI=
P</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-8/igt@kms_plane_alpha_blend@constant-alpha-max.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_154=
78/shard-dg2-6/igt@kms_plane_alpha_blend@constant-alpha-max.html">PASS</a>)=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13948=
5v1/shard-dg2-3/igt@kms_plane_alpha_blend@constant-alpha-max.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/sh=
ard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html">SKIP</a>) ([i9=
15#7294]) +2 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-c.html">SKIP</a> ([i915#12247]) +9 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-m=
odifiers.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-20x20-with-m=
odifiers.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139485v1/shard-dg2-7/igt@kms_plane_scaling@plane-upscale=
-20x20-with-modifiers.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@plane-u=
pscale-20x20-with-modifiers.html">SKIP</a>) ([i915#8152] / [i915#9423]) +1 =
other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-20x20-with-m=
odifiers@pipe-d.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20=
-with-modifiers@pipe-d.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling=
@plane-upscale-20x20-with-modifiers@pipe-d.html">SKIP</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-7/igt@kms_=
plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html">PASS</a>) ([i=
915#8152]) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@plane-up=
scale-factor-0-25-with-pixel-format.html">SKIP</a> ([i915#8152] / [i915#942=
3])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-b=
:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@plane-up=
scale-factor-0-25-with-pixel-format@pipe-b.html">SKIP</a> ([i915#12247]) +2=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d=
:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@plane-up=
scale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-=
5.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_15478/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-5.html"=
>PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_139485v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.=
html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pi=
pe-a:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-=
5-upscale-factor-0-25@pipe-a.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes=
-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html">PASS</a>) -&gt; (<a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-d=
g2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@=
pipe-a.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_139485v1/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-facto=
r-0-5-upscale-factor-0-25@pipe-a.html">PASS</a>) ([i915#12247]) +11 other t=
ests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-=
5@pipe-a.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-=
5@pipe-a.html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@planes-downsca=
le-factor-0-5@pipe-a.html">SKIP</a> ([i915#12247]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-=
5@pipe-d.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-=
5@pipe-d.html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@planes-downsca=
le-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0=
-75-upscale-factor-0-25.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_plane_scaling@planes-down=
scale-factor-0-75-upscale-factor-0-25.html">PASS</a>) -&gt; (<a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@km=
s_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v=
1/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-fa=
ctor-0-25.html">PASS</a>) ([i915#6953] / [i915#8152] / [i915#9423]) +1 othe=
r test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@p=
ipe-d:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0=
-75-upscale-factor-0-25@pipe-d.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_plane_scaling@plan=
es-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html">PASS</a>) -&gt; (=
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shar=
d-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0=
-25@pipe-d.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_139485v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-f=
actor-0-75-upscale-factor-0-25@pipe-d.html">SKIP</a>) ([i915#12247] / [i915=
#8152]) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-11/igt@kms_pm_rpm@cursor.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@k=
ms_pm_rpm@cursor.html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_pm_rpm@cursor.html">=
SKIP</a> ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-11/igt@kms_properties@plane-properties-atomic.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1547=
8/shard-dg2-4/igt@kms_properties@plane-properties-atomic.html">PASS</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1=
/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html">SKIP</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-d=
g2-11/igt@kms_properties@plane-properties-atomic.html">PASS</a>) ([i915#115=
21]) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-1/igt@kms_properties@plane-properties-legacy.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478=
/shard-dg2-3/igt@kms_properties@plane-properties-legacy.html">PASS</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/s=
hard-dg2-2/igt@kms_properties@plane-properties-legacy.html">SKIP</a> ([i915=
#11521])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_psr2_sf@fbc-psr2-curs=
or-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-glk5/igt@kms_psr2_sf@psr2-cursor-pla=
ne-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +1 other t=
est skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-plane-move:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg1-16/igt@kms_psr@fbc-psr-sprite-pl=
ane-move.html">SKIP</a> ([i915#1072] / [i915#9732]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_psr@psr-no-drrs.html"=
>SKIP</a> ([i915#9732]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_scaling_modes@scaling=
-mode-center.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_setmode@invalid-clone-=
single-crtc-stealing.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-modeset:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-8/igt@kms_vblank@ts-continuation-modeset.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/sha=
rd-dg2-6/igt@kms_vblank@ts-continuation-modeset.html">PASS</a>) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg=
2-3/igt@kms_vblank@ts-continuation-modeset.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@kms_=
vblank@ts-continuation-modeset.html">SKIP</a>) ([i915#9197]) +23 other test=
s ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-tglu-4/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-glk1/igt@kms_writeback@writeback-che=
ck-output-xrgb2101010.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-concurrent-oa-buffer-read:</p>
<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-rkl-3/igt@perf@gen12-group-concurrent-oa-buffer-read.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
5478/shard-rkl-6/igt@perf@gen12-group-concurrent-oa-buffer-read.html">PASS<=
/a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39485v1/shard-rkl-1/igt@perf@gen12-group-concurrent-oa-buffer-read.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13948=
5v1/shard-rkl-5/igt@perf@gen12-group-concurrent-oa-buffer-read.html">FAIL</=
a>) ([i915#10538])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-2/igt@perf_pmu@event-wait@rcs0.h=
tml">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-glk1/igt@syncobj_timeline@invalid-wa=
it-zero-handles.html">FAIL</a> ([i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-3/igt@fbdev@read.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@fbdev@read.=
html">SKIP</a>) ([i915#2582]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139485v1/shard-dg2-4/igt@fbdev@read.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/sha=
rd-dg2-1/igt@fbdev@read.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-com=
pfmt0-smem-lmem0.html">INCOMPLETE</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@gem_ccs@suspend-resume@xmajor-=
compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a>) ([i915#7297]) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-=
dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-tglu:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-tglu-9/igt@gem_ctx_engines@invalid-engines.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard=
-tglu-8/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>) ([i915#12027]) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v=
1/shard-tglu-4/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard=
-mtlp-7/igt@gem_ctx_engines@invalid-engines.html">PASS</a>) ([i915#12027]) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485=
v1/shard-mtlp-4/igt@gem_ctx_engines@invalid-engines.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-=
7/igt@gem_ctx_engines@invalid-engines.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-tglu-4/igt@gem_ctx_persistence@hostile.html">FAIL</a> (=
[i915#11980]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139485v1/shard-tglu-3/igt@gem_ctx_persistence@hostile.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (=
[i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139485v1/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139485v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_139485v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>=
) +1 other test ( 2 pass )</li>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/sh=
ard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>) ([i915#28=
42]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9485v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +=
1 other test pass</li>
<li>shard-tglu:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/s=
hard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>) ([i915#=
2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
139485v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a=
> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-snb6/igt@i915_pm_rps@reset.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb2/igt@i915_p=
m_rps@reset.html">INCOMPLETE</a>) ([i915#7790]) -&gt; (<a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb1/igt@i915_pm_r=
ps@reset.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_139485v1/shard-snb5/igt@i915_pm_rps@reset.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-tglu:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-tglu-6/igt@kms_async_flips@alternate-sync-async-flip.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
5478/shard-tglu-3/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL<=
/a>) ([i915#10991]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139485v1/shard-tglu-4/igt@kms_async_flips@alternate-sync-async=
-flip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonbl=
ocking-fencing.html">FAIL</a> ([i915#12238]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/igt@kms_atomic_tr=
ansition@modeset-transition-nonblocking-fencing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outp=
uts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonbl=
ocking-fencing@2x-outputs.html">FAIL</a> ([i915#11859]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk4/igt@km=
s_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rota=
te-0-hflip.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_15478/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-ro=
tate-0-hflip.html">FAIL</a>) ([i915#5138]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-8/igt@kms_big_fb@4-=
tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-siz=
e.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_139485v1/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipb-varyin=
g-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; (<a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-glk6/igt@kms_curso=
r_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-g=
lk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.ht=
ml">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">=
FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_139485v1/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PAS=
S</a></li>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_154=
78/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a>)=
 ([i915#2346]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_139485v1/shard-mtlp-4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_139485v1/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">=
PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15478/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate.html">FAIL<=
/a> ([i915#2122]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_139485v1/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39485v1/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate.html">PASS</a>) +=
1 other test ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-2/igt@kms_flip@dpms-off-confusion-interruptible.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
478/shard-dg2-6/igt@kms_flip@dpms-off-confusion-interruptible.html">PASS</a=
>) ([i915#5354]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139485v1/shard-dg2-3/igt@kms_flip@dpms-off-confusion-interruptib=
le.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139485v1/shard-dg2-5/igt@kms_flip@dpms-off-confusion-interruptible.ht=
ml">PASS</a>) +7 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interru=
ptible@b-edp1.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_flip@flip-vs-absolute-wf_vblank-in=
terruptible@b-edp1.html">PASS</a>) ([i915#2122]) -&gt; (<a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-1/igt@kms_fl=
ip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-mtlp-=
8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html">PASS</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-tglu-8/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1547=
8/shard-tglu-9/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html">FAIL</a>) (=
[i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139485v1/shard-tglu-4/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html=
">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pr=
i-indfb-draw-render.html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_15478/shard-dg1-13/igt@kms_frontbuffer_tracking@f=
bc-1p-primscrn-pri-indfb-draw-render.html">PASS</a>) ([i915#1982] / [i915#4=
391] / [i915#4423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139485v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-prim=
scrn-pri-indfb-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indf=
b-pgflip-blt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15478/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-=
indfb-pgflip-blt.html">SKIP</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139485v1/shard-snb5/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-indfb-pgflip-blt.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-=
shrfb-draw-mmap-cpu.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_15478/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-pr=
imscrn-pri-shrfb-draw-mmap-cpu.html">PASS</a>) -&gt; (<a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-snb4/igt@kms_frontb=
uffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-sn=
b1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.htm=
l">PASS</a>) +1 other test ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-2/igt@kms_invalid_mode@bad-hsync-end.html">SKIP</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-d=
g2-6/igt@kms_invalid_mode@bad-hsync-end.html">PASS</a>) ([i915#3555]) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/sh=
ard-dg2-3/igt@kms_invalid_mode@bad-hsync-end.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-5/igt@km=
s_invalid_mode@bad-hsync-end.html">PASS</a>) +1 other test ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-3/igt@kms_plane@planar-pixel-format-settings.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478=
/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html">SKIP</a>) ([i=
915#9581]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139485v1/shard-dg2-1/igt@kms_plane@planar-pixel-format-settings.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
485v1/shard-dg2-4/igt@kms_plane@planar-pixel-format-settings.html">PASS</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right.html">S=
KIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/s=
hard-dg2-7/igt@kms_plane@plane-panning-bottom-right.html">PASS</a>) ([i915#=
8825]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_139485v1/shard-dg2-10/igt@kms_plane@plane-panning-bottom-right.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1=
/shard-dg2-8/igt@kms_plane@plane-panning-bottom-right.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html">SKIP=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shar=
d-dg2-3/igt@kms_plane_alpha_blend@alpha-basic.html">PASS</a>) ([i915#7294])=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13948=
5v1/shard-dg2-4/igt@kms_plane_alpha_blend@alpha-basic.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2=
-1/igt@kms_plane_alpha_blend@alpha-basic.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20.html"=
>SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478=
/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20.html">PASS</a>) ([i=
915#6953] / [i915#8152] / [i915#9423]) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-4/igt@kms_plane_scaling=
@planes-upscale-20x20.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139485v1/shard-dg2-1/igt@kms_plane_scaling@planes-=
upscale-20x20.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downs=
cale-factor-0-5.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x2=
0-downscale-factor-0-5.html">SKIP</a>) ([i915#12247] / [i915#3555] / [i915#=
6953] / [i915#8152] / [i915#9423]) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-5/igt@kms_plane_scaling@pla=
nes-upscale-20x20-downscale-factor-0-5.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-dg2-3/igt@kms_plan=
e_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:<=
/p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downs=
cale-factor-0-5@pipe-d.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upsca=
le-20x20-downscale-factor-0-5@pipe-d.html">SKIP</a>) ([i915#12247] / [i915#=
8152]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_139485v1/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-=
factor-0-5@pipe-d.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_139485v1/shard-dg2-5/igt@kms_plane_scaling@planes-upsc=
ale-20x20-downscale-factor-0-5@pipe-d.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20@pipe-b:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20@pipe-=
b.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20@pipe-b.html"=
>SKIP</a>) ([i915#12247]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139485v1/shard-dg2-4/igt@kms_plane_scaling@planes-upsca=
le-20x20@pipe-b.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139485v1/shard-dg2-1/igt@kms_plane_scaling@planes-upscal=
e-20x20@pipe-b.html">PASS</a>) +5 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20@pipe-d:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20@pipe-=
d.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html"=
>SKIP</a>) ([i915#8152]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139485v1/shard-dg2-1/igt@kms_plane_scaling@planes-upscal=
e-20x20@pipe-d.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_139485v1/shard-dg2-4/igt@kms_plane_scaling@planes-upscale=
-20x20@pipe-d.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-7/igt@=
kms_pm_dc@dc6-dpms.html">FAIL</a>) ([i915#9295]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-2/igt@kms_pm_=
dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html">SKIP</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-5/igt@=
kms_pm_dc@dc9-dpms.html">PASS</a>) ([i915#4281]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-tglu-5/igt@kms_pm_=
dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-5/igt@k=
ms_pm_rpm@dpms-lpsp.html">SKIP</a>) ([i915#9519]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/shard-rkl-4/igt@kms_pm_=
rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
5478/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS<=
/a>) ([i915#9519]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139485v1/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no=
-wait.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_139485v1/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wai=
t.html">PASS</a>) +2 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/sh=
ard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak.html">FAIL</a>) ([i915#91=
96]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39485v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139485v1/sha=
rd-mtlp-6/igt@kms_universal_plane@cursor-fb-leak.html">PASS</a>) +1 other t=
est ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15478/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend.html=
">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1547=
8/shard-dg2-6/igt@kms_vblank@ts-continuation-dpms-suspend.html">PASS</a>) (=
[i915#9197]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139485v1/shard-dg2-3/igt@kms_vblank@ts-continuation-dpms-suspend.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
139485v1/shard-dg2-5/igt@kms_vblank@ts-continuation-dpms-suspend.html">PASS=
</a>) +24 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@pe</p>
</li>
</ul>

</body>
</html>

--===============6525545239883822612==--
