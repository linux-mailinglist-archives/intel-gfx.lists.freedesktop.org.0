Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 285FF7DF35C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 14:12:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A81010E89C;
	Thu,  2 Nov 2023 13:12:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 00B1B10E891;
 Thu,  2 Nov 2023 13:12:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EAC28AADF5;
 Thu,  2 Nov 2023 13:12:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2412767447900929974=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Thu, 02 Nov 2023 13:12:54 -0000
Message-ID: <169893077493.28156.6485338469885653433@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231101103101.156505-1-mika.kahola@intel.com>
In-Reply-To: <20231101103101.156505-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Clear_possible_sticky_bits_on_PICA_message_bus?=
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

--===============2412767447900929974==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Clear possible sticky bits on PICA message bus
URL   : https://patchwork.freedesktop.org/series/125849/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13825_full -> Patchwork_125849v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125849v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125849v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/index.html

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125849v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-rkl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@device_reset@unbind-reset-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-glk:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk9/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk1/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_pm_rpm@dpms-mode-unset-lpsp}:
    - shard-rkl:          [PASS][5] -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  
Known issues
------------

  Here are the changes found in Patchwork_125849v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [FAIL][20], [FAIL][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [FAIL][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31]) ([i915#8293]) -> ([PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl1/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl1/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl1/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl2/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl2/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl2/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl6/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl6/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl6/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl1/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl2/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl6/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl6/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl6/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl6/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl6/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl7/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl7/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl7/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl7/boot.html
    - shard-glk:          ([PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [FAIL][79], [PASS][80], [PASS][81]) ([i915#8293]) -> ([PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk9/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk9/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk9/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk8/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk8/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk8/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk8/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk6/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk6/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk6/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk6/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk4/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk3/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk3/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk3/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk3/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk2/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk2/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk2/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk1/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk1/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk1/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk9/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk9/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk9/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk9/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk8/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk8/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk8/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk6/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk6/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk6/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk4/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk4/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk4/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk4/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk3/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk3/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk3/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk2/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk2/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk2/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk2/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk1/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk1/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk1/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#8411])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#7701]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy-idle@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#8414]) +39 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@drm_fdinfo@busy-idle@bcs0.html

  * igt@drm_fdinfo@idle:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#5608]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@drm_fdinfo@idle.html

  * igt@drm_fdinfo@virtual-busy-hang-all:
    - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#8414]) +1 other test skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@drm_fdinfo@virtual-busy-hang-all.html

  * igt@drm_read@empty-block:
    - shard-rkl:          [PASS][112] -> [SKIP][113] ([i915#2575]) +12 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@drm_read@empty-block.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@drm_read@empty-block.html

  * igt@fbdev@read:
    - shard-rkl:          [PASS][114] -> [SKIP][115] ([i915#2582])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-2/igt@fbdev@read.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@fbdev@read.html

  * igt@gem_bad_reloc@negative-reloc-bltcopy:
    - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#3281]) +6 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@gem_bad_reloc@negative-reloc-bltcopy.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          [PASS][117] -> [SKIP][118] ([i915#3281]) +10 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3936])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_busy@semaphore.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#9323])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#7697])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#6335])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_create@create-ext-cpu-access-big.html
    - shard-dg2:          NOTRUN -> [INCOMPLETE][123] ([i915#9364])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          NOTRUN -> [FAIL][124] ([i915#6268])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-tglu:         [PASS][125] -> [FAIL][126] ([i915#6268])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][127] ([i915#9561])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([fdo#109314])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#1099])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-snb1/igt@gem_ctx_persistence@engines-queued.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#8555]) +3 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-rkl:          [PASS][131] -> [SKIP][132] ([i915#6252])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-2/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#280])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@in-flight-external:
    - shard-mtlp:         [PASS][134] -> [ABORT][135] ([i915#9262])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-mtlp-6/igt@gem_eio@in-flight-external.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-4/igt@gem_eio@in-flight-external.html

  * igt@gem_eio@wait-1us:
    - shard-mtlp:         [PASS][136] -> [ABORT][137] ([i915#9414]) +1 other test abort
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-mtlp-2/igt@gem_eio@wait-1us.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-4/igt@gem_eio@wait-1us.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#4771])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#4036])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#4525])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#4473] / [i915#4771])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-pace:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#3539])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [PASS][143] -> [FAIL][144] ([i915#2842])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [PASS][145] -> [FAIL][146] ([i915#2842])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#4473])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][148] ([i915#2842]) +1 other test fail
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fence@submit:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#4812]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@gem_exec_fence@submit.html

  * igt@gem_exec_fence@submit3:
    - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#4812]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#3539] / [i915#4852]) +7 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#3539] / [i915#4852])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_params@no-bsd:
    - shard-rkl:          [PASS][153] -> [SKIP][154] ([fdo#109283] / [fdo#109315])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@gem_exec_params@no-bsd.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_exec_params@no-bsd.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([fdo#112283]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#3281]) +14 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#3281])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#3281]) +5 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#4537] / [i915#4812])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#4537] / [i915#4812]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_fence_thrash@bo-write-verify-none:
    - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#4860])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_fence_thrash@bo-write-verify-none.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#4860])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#4860]) +3 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-glk:          NOTRUN -> [SKIP][164] ([fdo#109271] / [i915#4613])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk6/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#4613])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#4613]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][167] -> [DMESG-WARN][168] ([i915#4936] / [i915#5493])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-apl:          NOTRUN -> [SKIP][169] ([fdo#109271] / [i915#4613]) +2 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl7/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_media_vme:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#284])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@gem_media_vme.html

  * igt@gem_mmap@bad-object:
    - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#4083]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_mmap@bad-object.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#4077]) +10 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#4077]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#4077]) +21 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#4083]) +5 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_mmap_wc@bad-object.html

  * igt@gem_mmap_wc@bad-offset:
    - shard-mtlp:         NOTRUN -> [SKIP][176] ([i915#4083]) +3 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_mmap_wc@bad-offset.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-rkl:          [PASS][177] -> [SKIP][178] ([i915#3282]) +3 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#3282]) +4 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#4270]) +3 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#4270]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#4270])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#4270]) +2 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@beyond-eob:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#3282]) +11 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@gem_readwrite@beyond-eob.html

  * igt@gem_readwrite@read-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#3282]) +4 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_readwrite@read-bad-handle.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-snb:          NOTRUN -> [SKIP][186] ([fdo#109271]) +70 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-snb1/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([fdo#109315]) +9 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#768]) +2 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#8428]) +4 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#4079]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#4079]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([fdo#109312])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@gem_softpin@evict-snoop-interruptible.html
    - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#4885])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_softpin@invalid:
    - shard-rkl:          [PASS][194] -> [SKIP][195] ([fdo#109315]) +19 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@gem_softpin@invalid.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_softpin@invalid.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#4879])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#3297])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#3297] / [i915#4880]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@mmap-offset-banned@gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#3297]) +2 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_userptr_blits@mmap-offset-banned@gtt.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#3297]) +2 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-dg2:          NOTRUN -> [FAIL][201] ([i915#3318])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([fdo#109289]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][203] -> [INCOMPLETE][204] ([i915#5566])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk2/igt@gen9_exec_parse@allowed-single.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk4/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#2527]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#2856]) +3 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#2856]) +4 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#2527])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          [PASS][209] -> [SKIP][210] ([i915#2527]) +3 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#4881])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@i915_fb_tiling.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - shard-rkl:          [PASS][212] -> [SKIP][213] ([i915#9588])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@i915_hangman@engine-engine-error@bcs0.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_module_load@load:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#6227])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@i915_module_load@load.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#8399])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg1:          NOTRUN -> [SKIP][216] ([fdo#109293] / [fdo#109506])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#6621])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#8925])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#8925])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@i915_pm_rps@thresholds-park@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#3555] / [i915#8925])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@i915_pm_rps@thresholds-park@gt1.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#4387])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@i915_pm_sseu@full-enable.html
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#8437])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#6188])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#4212]) +3 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][225] ([i915#4215])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [FAIL][226] ([i915#8247]) +3 other tests fail
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_async_flips@crc@pipe-a-hdmi-a-2.html

  * igt@kms_async_flips@crc@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [FAIL][227] ([i915#8247]) +3 other tests fail
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-19/igt@kms_async_flips@crc@pipe-c-hdmi-a-1.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#3555])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic@test-only:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#1845] / [i915#4098]) +8 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_atomic@test-only.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-apl:          NOTRUN -> [SKIP][230] ([fdo#109271] / [i915#1769])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#1769] / [i915#3555])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#4538] / [i915#5286])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][233] ([fdo#111614]) +1 other test skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#5286]) +3 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([fdo#111614] / [i915#3638])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([fdo#111614]) +6 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#5190]) +21 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([fdo#111615]) +8 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][239] ([i915#4538]) +1 other test skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-mtlp:         NOTRUN -> [SKIP][240] ([i915#6187]) +1 other test skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
    - shard-rkl:          NOTRUN -> [SKIP][241] ([fdo#111615])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([fdo#110723])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#4538] / [i915#5190]) +9 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#2705])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_cdclk@mode-transition@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#4087] / [i915#7213]) +4 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@kms_cdclk@mode-transition@pipe-d-dp-4.html

  * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#4087]) +3 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html

  * igt@kms_cdclk@plane-scaling@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#4087]) +3 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@kms_cdclk@plane-scaling@pipe-c-edp-1.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-dg1:          NOTRUN -> [SKIP][248] ([i915#7828]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-mtlp:         NOTRUN -> [SKIP][249] ([fdo#111827]) +1 other test skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([fdo#111827]) +2 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#7828]) +4 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#7828]) +15 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#7828]) +6 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html

  * igt@kms_color@degamma@pipe-a:
    - shard-mtlp:         NOTRUN -> [FAIL][254] ([i915#9257]) +3 other tests fail
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_color@degamma@pipe-a.html

  * igt@kms_color@gamma@pipe-a:
    - shard-rkl:          [PASS][255] -> [SKIP][256] ([i915#4098]) +9 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-2/igt@kms_color@gamma@pipe-a.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_color@gamma@pipe-a.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#7118])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][258] ([i915#7173])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html

  * igt@kms_content_protection@atomic@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [TIMEOUT][259] ([i915#7173])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl7/igt@kms_content_protection@atomic@pipe-a-dp-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#3116])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-1.html
    - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#3299])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#6944]) +1 other test skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#7118]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-256x256:
    - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#2575]) +8 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x256.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][265] ([i915#3359]) +1 other test skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#3359]) +3 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#3555]) +7 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-mtlp:         NOTRUN -> [SKIP][268] ([i915#3555] / [i915#8814]) +1 other test skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][269] ([fdo#111767] / [fdo#111825])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][270] ([i915#3546]) +3 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#4103] / [i915#4213] / [i915#5608])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][272] ([fdo#111767] / [i915#3546]) +1 other test skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][273] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][274] ([fdo#109274] / [i915#5354]) +8 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-apl:          [PASS][275] -> [FAIL][276] ([i915#2346])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][277] -> [FAIL][278] ([i915#2346])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#4103] / [i915#4213])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][280] ([i915#8588])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#3804])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#1257])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][283] ([i915#4098]) +25 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][284] ([i915#8812]) +1 other test skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][285] ([i915#3555] / [i915#3840])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [PASS][286] -> [FAIL][287] ([fdo#103375])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-dg2-3/igt@kms_fbcon_fbt@fbc-suspend.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-rkl:          NOTRUN -> [SKIP][288] ([fdo#111825]) +3 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][289] ([fdo#111767] / [i915#3637])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][290] ([i915#8381])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-apl:          NOTRUN -> [SKIP][291] ([fdo#109271] / [fdo#111767])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl3/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][292] ([i915#3637]) +4 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][293] ([fdo#109274]) +10 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][294] ([i915#3637] / [i915#4098]) +9 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@flip-vs-panning-vs-hang@a-dp1:
    - shard-apl:          [PASS][295] -> [INCOMPLETE][296] ([i915#1982])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl2/igt@kms_flip@flip-vs-panning-vs-hang@a-dp1.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl4/igt@kms_flip@flip-vs-panning-vs-hang@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][297] ([fdo#103375]) +2 other tests fail
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][298] ([i915#2672]) +4 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][299] ([i915#2672]) +5 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][300] ([i915#3555]) +11 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][301] ([i915#2672]) +3 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_tiling@flip-change-tiling:
    - shard-rkl:          NOTRUN -> [SKIP][302] ([i915#3555] / [i915#4098]) +2 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_flip_tiling@flip-change-tiling.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-mtlp:         NOTRUN -> [SKIP][303] ([i915#5274])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][304] ([i915#8708]) +7 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#5354]) +51 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#8708]) +28 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-dg1:          NOTRUN -> [SKIP][307] ([fdo#111825]) +2 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
    - shard-mtlp:         NOTRUN -> [SKIP][308] ([i915#1825]) +30 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][309] ([fdo#111825] / [i915#1825]) +20 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][310] ([i915#8708]) +5 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-rkl:          [PASS][311] -> [SKIP][312] ([i915#1849] / [i915#4098]) +14 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][313] ([i915#5460])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][314] ([i915#3458]) +1 other test skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:
    - shard-glk:          NOTRUN -> [SKIP][315] ([fdo#109271]) +40 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][316] ([i915#5439])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][317] ([i915#3023]) +10 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][318] ([i915#3458]) +29 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
    - shard-apl:          NOTRUN -> [SKIP][319] ([fdo#109271]) +122 other tests skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-dg1:          NOTRUN -> [SKIP][320] ([i915#433])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][321] ([i915#3555] / [i915#8228])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#3555] / [i915#8228]) +2 other tests skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@kms_hdr@static-toggle.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-mtlp:         NOTRUN -> [SKIP][323] ([i915#4816])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
    - shard-rkl:          NOTRUN -> [SKIP][324] ([i915#4070] / [i915#4816])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][325] ([fdo#109289]) +11 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_pipe_crc_basic@bad-source:
    - shard-rkl:          [PASS][326] -> [SKIP][327] ([i915#1845] / [i915#4098]) +25 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@kms_pipe_crc_basic@bad-source.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_pipe_crc_basic@bad-source.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-rkl:          NOTRUN -> [SKIP][328] ([i915#4098] / [i915#8825]) +2 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane@plane-position-hole:
    - shard-rkl:          NOTRUN -> [SKIP][329] ([i915#8825])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_lowres@tiling-x@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][330] ([i915#3582]) +3 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@kms_plane_lowres@tiling-x@pipe-c-edp-1.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][331] ([i915#8821])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][332] ([i915#3555] / [i915#8806])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-mtlp:         NOTRUN -> [SKIP][333] ([i915#6953])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][334] ([i915#8292])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-rkl:          NOTRUN -> [SKIP][335] ([i915#3555] / [i915#4098] / [i915#8152]) +1 other test skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][336] ([i915#5176] / [i915#9423]) +1 other test skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][337] ([i915#5235]) +15 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][338] ([i915#3555] / [i915#5235]) +1 other test skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][339] ([i915#5235]) +3 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][340] ([i915#5235]) +11 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
    - shard-rkl:          NOTRUN -> [SKIP][341] ([i915#8152])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-rkl:          NOTRUN -> [SKIP][342] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][343] ([i915#4098] / [i915#6953] / [i915#8152]) +2 other tests skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][344] ([i915#5235]) +9 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a-edp-1.html

  * igt@kms_prime@d3hot:
    - shard-rkl:          NOTRUN -> [SKIP][345] ([i915#6524])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_prime@d3hot.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-rkl:          [PASS][346] -> [SKIP][347] ([i915#1849])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-2/igt@kms_properties@plane-properties-legacy.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-apl:          NOTRUN -> [SKIP][348] ([fdo#109271] / [i915#658]) +1 other test skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-rkl:          NOTRUN -> [SKIP][349] ([fdo#111068] / [i915#658])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][350] ([i915#658])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-dg2:          NOTRUN -> [SKIP][351] ([i915#658]) +4 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-mtlp:         NOTRUN -> [SKIP][352] ([i915#4348])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-rkl:          NOTRUN -> [SKIP][353] ([i915#1072]) +3 other tests skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-dg2:          NOTRUN -> [SKIP][354] ([i915#1072]) +13 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr@sprite_plane_move:
    - shard-dg1:          NOTRUN -> [SKIP][355] ([i915#1072] / [i915#4078])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_psr@sprite_plane_move.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][356] ([i915#5461] / [i915#658])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-mtlp:         NOTRUN -> [SKIP][357] ([i915#4235])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-mtlp:         NOTRUN -> [SKIP][358] ([i915#5289])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-rkl:          [PASS][359] -> [INCOMPLETE][360] ([i915#8875] / [i915#9569])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-4/igt@kms_rotation_crc@sprite-rotation-270.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][361] ([i915#3555] / [i915#8823])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][362] ([i915#3555] / [i915#4098])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg1:          NOTRUN -> [SKIP][363] ([i915#8623])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
    - shard-mtlp:         [PASS][364] -> [FAIL][365] ([i915#9196])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html

  * igt@kms_vblank@ts-continuation-suspend@pipe-b-hdmi-a-1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][366] ([i915#8841]) +6 other tests dmesg-warn
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-snb1/igt@kms_vblank@ts-continuation-suspend@pipe-b-hdmi-a-1.html

  * igt@kms_vrr@flip-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][367] ([i915#3555] / [i915#8808])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_vrr@flip-basic.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][368] ([fdo#109271] / [i915#2437])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl7/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-rkl:          NOTRUN -> [SKIP][369] ([i915#2437])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][370] ([i915#2437])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@blocking-parameterized:
    - shard-rkl:          [PASS][371] -> [SKIP][372] ([i915#5608]) +1 other test skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@perf@blocking-parameterized.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@perf@blocking-parameterized.html

  * igt@perf@gen12-group-exclusive-stream-sample-oa:
    - shard-rkl:          [PASS][373] -> [SKIP][374] ([fdo#109289])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-4/igt@perf@gen12-group-exclusive-stream-sample-oa.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-sample-oa.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][375] ([fdo#109289])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][376] -> [FAIL][377] ([i915#4349]) +3 other tests fail
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg1:          NOTRUN -> [SKIP][378] ([i915#8516])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][379] ([i915#8516])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_udl:
    - shard-rkl:          NOTRUN -> [SKIP][380] ([fdo#109291])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][381] ([i915#3291] / [i915#3708]) +1 other test skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][382] ([fdo#109295] / [fdo#111656] / [i915#3708])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-read-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][383] ([i915#3708])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@prime_vgem@fence-read-hang.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2:          NOTRUN -> [SKIP][384] ([i915#3708])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@prime_vgem@fence-write-hang.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:
    - shard-dg2:          NOTRUN -> [FAIL][385] ([i915#9583]) +1 other test fail
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-signaled:
    - shard-apl:          NOTRUN -> [FAIL][386] ([i915#9583])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl7/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-signaled.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:
    - shard-glk:          NOTRUN -> [FAIL][387] ([i915#9583])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk6/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled:
    - shard-rkl:          NOTRUN -> [FAIL][388] ([i915#9583])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled.html
    - shard-mtlp:         NOTRUN -> [FAIL][389] ([i915#9583])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled.html

  * igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted:
    - shard-apl:          NOTRUN -> [FAIL][390] ([i915#9582])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl3/igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted.html

  * igt@v3d/v3d_mmap@mmap-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][391] ([i915#2575]) +9 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@v3d/v3d_mmap@mmap-bo.html

  * igt@v3d/v3d_submit_cl@bad-in-sync:
    - shard-dg1:          NOTRUN -> [SKIP][392] ([i915#2575])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@v3d/v3d_submit_cl@bad-in-sync.html

  * igt@v3d/v3d_submit_csd@single-out-sync:
    - shard-dg2:          NOTRUN -> [SKIP][393] ([i915#2575]) +17 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@v3d/v3d_submit_csd@single-out-sync.html

  * igt@vc4/vc4_perfmon@create-perfmon-0:
    - shard-rkl:          NOTRUN -> [SKIP][394] ([i915#7711]) +4 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@vc4/vc4_perfmon@create-perfmon-0.html

  * igt@vc4/vc4_purgeable_bo@mark-purgeable:
    - shard-dg1:          NOTRUN -> [SKIP][395] ([i915#7711]) +1 other test skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@vc4/vc4_purgeable_bo@mark-purgeable.html

  * igt@vc4/vc4_tiling@get-bad-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][396] ([i915#7711]) +11 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@vc4/vc4_tiling@get-bad-modifier.html

  * igt@vc4/vc4_wait_bo@used-bo-0ns:
    - shard-mtlp:         NOTRUN -> [SKIP][397] ([i915#7711]) +7 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@vc4/vc4_wait_bo@used-bo-0ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][398] ([i915#7742]) -> [PASS][399] +1 other test pass
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@fbdev@unaligned-write:
    - shard-rkl:          [SKIP][400] ([i915#2582]) -> [PASS][401]
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-5/igt@fbdev@unaligned-write.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@fbdev@unaligned-write.html

  * igt@gem_ctx_persistence@processes:
    - shard-mtlp:         [ABORT][402] ([i915#9414]) -> [PASS][403]
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-mtlp-4/igt@gem_ctx_persistence@processes.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@gem_ctx_persistence@processes.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          [ABORT][404] ([i915#7975] / [i915#8213]) -> [PASS][405]
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-dg1-14/igt@gem_eio@hibernate.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@fairslice:
    - shard-rkl:          [SKIP][406] ([Intel XE#874]) -> [PASS][407]
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][408] ([i915#2842]) -> [PASS][409]
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][410] ([i915#2842]) -> [PASS][411]
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [FAIL][412] ([i915#2842]) -> [PASS][413]
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-rkl:          [SKIP][414] ([fdo#109313]) -> [PASS][415]
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - shard-rkl:          [SKIP][416] ([i915#3281]) -> [PASS][417] +13 other tests pass
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-cpu.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          [SKIP][418] ([i915#7276]) -> [PASS][419]
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          [ABORT][420] ([i915#7975] / [i915#8213]) -> [PASS][421]
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][422] ([i915#3282]) -> [PASS][423] +3 other tests pass
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          [SKIP][424] ([i915#8411]) -> [PASS][425] +3 other tests pass
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_spin_batch@user-each:
    - shard-mtlp:         [DMESG-FAIL][426] ([i915#8962]) -> [PASS][427]
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-mtlp-4/igt@gem_spin_batch@user-each.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-3/igt@gem_spin_batch@user-each.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-rkl:          [SKIP][428] ([i915#2527]) -> [PASS][429] +1 other test pass
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-2/igt@gen9_exec_parse@bb-start-far.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-dg1:          [FAIL][430] ([i915#3591]) -> [PASS][431]
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [DMESG-FAIL][432] ([i915#5334]) -> [PASS][433]
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [FAIL][434] ([fdo#103375]) -> [PASS][435]
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [FAIL][436] ([i915#3743]) -> [PASS][437]
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * {igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-gen12-rc-ccs-cc}:
    - shard-rkl:          [SKIP][438] ([i915#4098]) -> [PASS][439] +5 other tests pass
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-5/igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - shard-rkl:          [SKIP][440] ([i915#1845] / [i915#4098]) -> [PASS][441] +17 other tests pass
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][442] ([i915#1849] / [i915#4098]) -> [PASS][443] +11 other tests pass
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-3:
    - shard-dg2:          [FAIL][444] ([fdo#103375]) -> [PASS][445] +1 other test pass
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-dg2-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-3.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-3.html

  * {igt@kms_plane@planar-pixel-format-settings}:
    - shard-rkl:          [SKIP][446] ([i915#9581]) -> [PASS][447]
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-5/igt@kms_plane@planar-pixel-format-settings.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@kms_plane@planar-pixel-format-settings.html

  * {igt@kms_pm_rpm@i2c}:
    - shard-dg2:          [FAIL][448] ([i915#8717]) -> [PASS][449]
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-dg2-2/igt@kms_pm_rpm@i2c.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@kms_pm_rpm@i2c.html

  * {igt@kms_pm_rpm@modeset-non-lpsp}:
    - shard-rkl:          [SKIP][450] ([i915#9519]) -> [PASS][451] +3 other tests pass
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html

  * {igt@kms_pm_rpm@pm-tiling}:
    - shard-rkl:          [SKIP][452] ([fdo#109308]) -> [PASS][453]
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-5/igt@kms_pm_rpm@pm-tiling.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_pm_rpm@pm-tiling.html

  * {igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4}:
    - shard-dg1:          [FAIL][454] ([i915#9196]) -> [PASS][455]
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-dg1-14/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-16/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4.html

  * igt@perf_pmu@busy-double-start@rcs0:
    - shard-mtlp:         [FAIL][456] ([i915#4349]) -> [PASS][457]
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-mtlp-7/igt@perf_pmu@busy-double-start@rcs0.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp-3/igt@perf_pmu@busy-double-start@rcs0.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          [SKIP][458] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][459] +1 other test pass
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-2/igt@prime_vgem@basic-write.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@prime_vgem@basic-write.html

  
#### Warnings ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][460] ([i915#3555]) -> [SKIP][461] ([i915#7957])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@gem_ccs@block-copy-compressed.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          [SKIP][462] ([i915#7957]) -> [SKIP][463] ([i915#3555])
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][464] ([i915#9323]) -> [SKIP][465] ([i915#7957])
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-2/igt@gem_ccs@suspend-resume.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_ccs@suspend-resume.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-rkl:          [FAIL][466] ([i915#2842]) -> [SKIP][467] ([i915#9591])
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-2/igt@gem_exec_fair@basic-pace@bcs0.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          [SKIP][468] ([i915#3281]) -> [SKIP][469] ([fdo#109315]) +2 other tests skip
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_mmap_gtt@coherency:
    - shard-rkl:          [SKIP][470] ([fdo#111656]) -> [SKIP][471] ([fdo#109315])
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@gem_mmap_gtt@coherency.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_mmap_gtt@coherency.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          [SKIP][472] ([i915#3282]) -> [WARN][473] ([i915#2658])
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-2/igt@gem_pwrite@basic-exhaustion.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-rkl:          [SKIP][474] ([i915#3297]) -> [SKIP][475] ([fdo#109315])
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - shard-tglu:         [FAIL][476] ([i915#2681] / [i915#3591]) -> [WARN][477] ([i915#2681])
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-tglu:         [WARN][478] ([i915#2681]) -> [FAIL][479] ([i915#2681] / [i915#3591])
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          [SKIP][480] ([i915#1845] / [i915#4098]) -> [SKIP][481] ([i915#1769] / [i915#3555])
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          [SKIP][482] ([i915#4098]) -> [SKIP][483] ([i915#5286]) +5 other tests skip
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-rkl:          [SKIP][484] ([i915#5286]) -> [SKIP][485] ([i915#4098]) +7 other tests skip
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][486] ([i915#5286]) -> [SKIP][487] ([fdo#109315]) +1 other test skip
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-rkl:          [SKIP][488] ([fdo#111614] / [i915#3638]) -> [SKIP][489] ([fdo#109315])
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-rkl

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/index.html

--===============2412767447900929974==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Clear possible sticky bits on =
PICA message bus</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/125849/">https://patchwork.freedesktop.org/series/125849/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125849v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13825_full -&gt; Patchwork_125849v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125849v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_125849v1_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v=
1/index.html</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
125849v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@device_reset@unbind-reset-rebind.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1258=
49v1/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-glk9/igt@kms_rotation_crc@multiplane-rotation-cropping-=
bottom.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125849v1/shard-glk1/igt@kms_rotation_crc@multiplane-rotation=
-cropping-bottom.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_pm_rpm@dpms-mode-unset-lpsp}:<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12584=
9v1/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125849v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3825/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13825/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shar=
d-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13825/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl2/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl2/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_13825/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_13825/shard-apl2/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl3/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/=
shard-apl3/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_13825/shard-apl4/boot.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13825/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_13825/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl6/boot.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3825/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13825/shard-apl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-apl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shar=
d-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13825/shard-apl7/boot.html">PASS</a>) ([i915#8293]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-ap=
l1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125849v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl1/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1=
/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125849v1/shard-apl1/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl2/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125849v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125849v1/shard-apl2/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125849v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl3/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/=
shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125849v1/shard-apl3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl4/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125849v1/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125849v1/shard-apl4/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl6=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125849v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl6/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/s=
hard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125849v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl7/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25849v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125849v1/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-apl7/=
boot.html">PASS</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3825/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13825/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shar=
d-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13825/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_13825/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_13825/shard-glk4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/=
shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_13825/shard-glk4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk3/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk=
3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13825/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_13825/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3825/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13825/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shard-glk1/boot.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13825/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13825/shard-glk1/boot.html">PASS</a>) ([i915#8293]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-gl=
k9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125849v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk9/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1=
/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125849v1/shard-glk8/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk8/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125849v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125849v1/shard-glk6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125849v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk4/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/=
shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125849v1/shard-glk4/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk4/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125849v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125849v1/shard-glk3/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk3=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125849v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk2/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/s=
hard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125849v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk1/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25849v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125849v1/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-glk1/=
boot.html">PASS</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@api_intel_bb@object-reloc-=
purge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> ([i915#7701]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@drm_fdinfo@busy-idle@bcs0=
.html">SKIP</a> ([i915#8414]) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@drm_fdinfo@idle.html">SKIP=
</a> ([i915#5608]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@drm_fdinfo@virtual-busy-h=
ang-all.html">SKIP</a> ([i915#8414]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_read@empty-block:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@drm_read@empty-block.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-r=
kl-5/igt@drm_read@empty-block.html">SKIP</a> ([i915#2575]) +12 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-2/igt@fbdev@read.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@f=
bdev@read.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-bltcopy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@gem_bad_reloc@negative-re=
loc-bltcopy.html">SKIP</a> ([i915#3281]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1258=
49v1/shard-rkl-4/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</a> ([i915=
#3281]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_busy@semaphore.html">S=
KIP</a> ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_create@create-ext-cpu-=
access-big.html">SKIP</a> ([i915#6335])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@gem_create@create-ext-cpu-=
access-big.html">INCOMPLETE</a> ([i915#9364])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@gem_ctx_exec@basic-nohangch=
eck.html">FAIL</a> ([i915#6268])</p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13825/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849=
v1/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> ([i915#62=
68])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@gem_ctx_freq@sysfs@gt0.htm=
l">FAIL</a> ([i915#9561])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_ctx_param@set-priorit=
y-not-supported.html">SKIP</a> ([fdo#109314])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-snb1/igt@gem_ctx_persistence@engines=
-queued.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_ctx_persistence@heartb=
eat-hostile.html">SKIP</a> ([i915#8555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-2/igt@gem_ctx_persistence@legacy-engines-hang@blt.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125849v1/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt=
.html">SKIP</a> ([i915#6252])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-external:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-mtlp-6/igt@gem_eio@in-flight-external.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/=
shard-mtlp-4/igt@gem_eio@in-flight-external.html">ABORT</a> ([i915#9262])</=
li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-1us:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-mtlp-2/igt@gem_eio@wait-1us.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-mtlp=
-4/igt@gem_eio@wait-1us.html">ABORT</a> ([i915#9414]) +1 other test abort</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@gem_exec_balancer@bonded-d=
ual.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@gem_exec_balancer@invalid-=
bonds.html">SKIP</a> ([i915#4036])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@gem_exec_balancer@parallel=
-out-fence.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_exec_fair@basic-none-=
share.html">SKIP</a> ([i915#4473] / [i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_exec_fair@basic-pace.h=
tml">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13825/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5849v1/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (=
[i915#2842])</p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13825/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125849v1/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a=
> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@gem_exec_fair@basic-pace-=
solo.html">SKIP</a> ([i915#4473])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@gem_exec_fair@basic-pace-s=
olo@rcs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@gem_exec_fence@submit.html=
">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@gem_exec_fence@submit3.ht=
ml">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +7 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_exec_flush@basic-wb-p=
ro-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@gem_exec_params@no-bsd.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard=
-rkl-5/igt@gem_exec_params@no-bsd.html">SKIP</a> ([fdo#109283] / [fdo#10931=
5])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_exec_params@secure-non=
-master.html">SKIP</a> ([fdo#112283]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@gem_exec_reloc@basic-cpu-g=
tt.html">SKIP</a> ([i915#3281]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_exec_reloc@basic-cpu-=
gtt-noreloc.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-w=
c-noreloc.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_exec_schedule@reorder=
-wide.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> ([i915#4537] / [i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_fence_thrash@bo-write=
-verify-none.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@gem_fence_thrash@bo-write=
-verify-y.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_fenced_exec_thrash@2-s=
pare-fences.html">SKIP</a> ([i915#4860]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-glk6/igt@gem_lmem_swapping@heavy-mul=
ti.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@gem_lmem_swapping@parallel=
-multi.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@gem_lmem_swapping@smem-oo=
m.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1258=
49v1/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> =
([i915#4936] / [i915#5493])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-apl7/igt@gem_lmem_swapping@verify-ra=
ndom-ccs.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-object:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_mmap@bad-object.html"=
>SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_mmap_gtt@cpuset-mediu=
m-copy-odd.html">SKIP</a> ([i915#4077]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_mmap_gtt@fault-concur=
rent.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@gem_mmap_gtt@zero-extend.h=
tml">SKIP</a> ([i915#4077]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_mmap_wc@bad-object.htm=
l">SKIP</a> ([i915#4083]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_mmap_wc@bad-offset.ht=
ml">SKIP</a> ([i915#4083]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125849v1/shard-rkl-1/igt@gem_partial_pwrite_pread@reads-uncached.html">S=
KIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@gem_partial_pwrite_pread@w=
rites-after-reads.html">SKIP</a> ([i915#3282]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@gem_pxp@reject-modify-cont=
ext-protection-off-1.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@gem_pxp@reject-modify-cont=
ext-protection-on.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gem_pxp@verify-pxp-key-ch=
ange-after-suspend-resume.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@gem_pxp@verify-pxp-stale-=
ctx-execution.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@gem_readwrite@beyond-eob.h=
tml">SKIP</a> ([i915#3282]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_readwrite@read-bad-ha=
ndle.html">SKIP</a> ([i915#3282]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-snb1/igt@gem_render_copy@x-tiled-to-=
vebox-yf-tiled.html">SKIP</a> ([fdo#109271]) +70 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_render_copy@y-tiled-cc=
s-to-yf-tiled-ccs.html">SKIP</a> ([fdo#109315]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_render_copy@y-tiled-to=
-vebox-y-tiled.html">SKIP</a> ([i915#768]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_render_copy@yf-tiled-=
ccs-to-y-tiled.html">SKIP</a> ([i915#8428]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@gem_set_tiling_vs_blt@tile=
d-to-tiled.html">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@gem_softpin@evict-snoop-int=
erruptible.html">SKIP</a> ([fdo#109312])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> ([i915#4885])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@invalid:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@gem_softpin@invalid.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rk=
l-5/igt@gem_softpin@invalid.html">SKIP</a> ([fdo#109315]) +19 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_unfence_active_buffers=
.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gem_userptr_blits@map-fixe=
d-invalidate-busy.html">SKIP</a> ([i915#3297] / [i915#4880]) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-banned@gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@gem_userptr_blits@mmap-of=
fset-banned@gtt.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@gem_userptr_blits@readonly=
-pwrite-unsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@gen7_exec_parse@chained-b=
atch.html">SKIP</a> ([fdo#109289]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-glk2/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v=
1/shard-glk4/igt@gen9_exec_parse@allowed-single.html">INCOMPLETE</a> ([i915=
#5566])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@gen9_exec_parse@batch-with=
out-end.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@gen9_exec_parse@batch-zer=
o-length.html">SKIP</a> ([i915#2856]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@gen9_exec_parse@bb-start-f=
ar.html">SKIP</a> ([i915#2856]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@gen9_exec_parse@cmd-cross=
ing-page.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/=
shard-rkl-4/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2527]) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@i915_fb_tiling.html">SKIP<=
/a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@i915_hangman@engine-engine-error@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125849v1/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">SKIP<=
/a> ([i915#9588])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@i915_module_load@load.html=
">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@i915_pm_freq_api@freq-basi=
c-api.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> ([fdo#109293] / [fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@i915_pm_rps@min-max-confi=
g-idle.html">SKIP</a> ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@i915_pm_rps@thresholds-idl=
e-park@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@i915_pm_rps@thresholds-pa=
rk@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@i915_pm_rps@thresholds-pa=
rk@gt1.html">SKIP</a> ([i915#3555] / [i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@i915_pm_sseu@full-enable.ht=
ml">SKIP</a> ([i915#4387])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> ([i915#8437])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@kms_addfb_basic@basic-x-ti=
led-legacy.html">SKIP</a> ([i915#4212]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_addfb_basic@basic-y-t=
iled-legacy.html">SKIP</a> ([i915#4215])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_async_flips@crc@pipe-a=
-hdmi-a-2.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-19/igt@kms_async_flips@crc@pipe-=
c-hdmi-a-1.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@test-only:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_atomic@test-only.html"=
>SKIP</a> ([i915#1845] / [i915#4098]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-apl3/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([fdo#109271=
] / [i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i91=
5#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_big_fb@4-tiled-32bpp-=
rotate-180.html">SKIP</a> ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-8bpp-r=
otate-270.html">SKIP</a> ([fdo#111614]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rot=
ate-270.html">SKIP</a> ([fdo#111614] / [i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-r=
otate-90.html">SKIP</a> ([fdo#111614]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_big_fb@y-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> ([i915#5190]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#111615]) +8 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-180.html">SKIP</a> ([i915#4538]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@kms_big_fb@yf-tiled-addfb-=
size-offset-overflow.html">SKIP</a> ([i915#6187]) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> ([fdo#111615])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([i915#4538] / [i915#5190]) +=
9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_big_joiner@2x-modeset.=
html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@kms_cdclk@mode-transition=
@pipe-d-dp-4.html">SKIP</a> ([i915#4087] / [i915#7213]) +4 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_cdclk@plane-scaling@pi=
pe-a-hdmi-a-2.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@kms_cdclk@plane-scaling@p=
ipe-c-edp-1.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_chamelium_color@ctm-b=
lue-to-red.html">SKIP</a> ([fdo#111827]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_chamelium_color@ctm-gr=
een-to-red.html">SKIP</a> ([fdo#111827]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_chamelium_frames@hdmi-=
crc-multiple.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_chamelium_frames@hdmi-=
crc-nonplanar-formats.html">SKIP</a> ([i915#7828]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@kms_chamelium_hpd@vga-hpd=
-enable-disable-mode.html">SKIP</a> ([i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma@pipe-a:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_color@degamma@pipe-a.=
html">FAIL</a> ([i915#9257]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-2/igt@kms_color@gamma@pipe-a.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard=
-rkl-5/igt@kms_color@gamma@pipe-a.html">SKIP</a> ([i915#4098]) +9 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@kms_content_protection@at=
omic-dpms@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-apl7/igt@kms_content_protection@atom=
ic@pipe-a-dp-1.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_content_protection@dp-m=
st-type-1.html">SKIP</a> ([i915#3116])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> ([i915#3299])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_content_protection@le=
gacy.html">SKIP</a> ([i915#6944]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@kms_content_protection@uev=
ent.html">SKIP</a> ([i915#7118]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onsc=
reen-256x256.html">SKIP</a> ([i915#2575]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> ([i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> ([i915#3359]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@kms_cursor_crc@cursor-slid=
ing-32x10.html">SKIP</a> ([i915#3555]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-sli=
ding-max-size.html">SKIP</a> ([i915#3555] / [i915#8814]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-atomic.html">SKIP</a> ([fdo#111767] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-nonb=
locking-modeset-vs-cursor-atomic.html">SKIP</a> ([i915#3546]) +3 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213] / [i=
915#5608])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_cursor_legacy@cursorb=
-vs-flipb-atomic-transitions.html">SKIP</a> ([fdo#111767] / [i915#3546]) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-=
vs-flipb-toggle.html">SKIP</a> ([fdo#109274] / [fdo#111767] / [i915#5354])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> ([fdo#109274] / [i915#5354]) +8 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125849v1/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125849v1/shard-glk9/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915=
#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_display_modes@mst-ext=
ended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_dp_aux_dev.html">SKIP<=
/a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_draw_crc@draw-method-m=
map-gtt.html">SKIP</a> ([i915#4098]) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> ([i915#8812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_dsc@dsc-basic.html">SK=
IP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-dg2-3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/sh=
ard-dg2-1/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> ([fdo#103375])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_flip@2x-dpms-vs-vblank=
-race.html">SKIP</a> ([fdo#111825]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-block=
ing-wf-vblank.html">SKIP</a> ([fdo#111767] / [i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-fences=
.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-apl3/igt@kms_flip@2x-flip-vs-rmfb-in=
terruptible.html">SKIP</a> ([fdo#109271] / [fdo#111767])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_flip@2x-flip-vs-suspe=
nd.html">SKIP</a> ([i915#3637]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_flip@2x-modeset-vs-vbl=
ank-race.html">SKIP</a> ([fdo#109274]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_flip@basic-flip-vs-dpm=
s.html">SKIP</a> ([i915#3637] / [i915#4098]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-vs-hang@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-apl2/igt@kms_flip@flip-vs-panning-vs-hang@a-dp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125849v1/shard-apl4/igt@kms_flip@flip-vs-panning-vs-hang@a-dp1.html">INCOM=
PLETE</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@kms_flip@flip-vs-suspend-i=
nterruptible@a-hdmi-a3.html">FAIL</a> ([fdo#103375]) +2 other tests fail</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2672]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3555]) +11 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a>=
 ([i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_flip_tiling@flip-chang=
e-tiling.html">SKIP</a> ([i915#3555] / [i915#4098]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_force_connector_basic=
@prune-stale-modes.html">SKIP</a> ([i915#5274])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +7 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> ([i915#5354]) +51 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +28 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> ([fdo#111825]) +2 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-move.html">SKIP</a> ([i915#1825]) +30 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#111825] / [i915#=
1825]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +5 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprim=
ary.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125849v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-shrfb-sca=
ledprimary.html">SKIP</a> ([i915#1849] / [i915#4098]) +14 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
fbc-tiling-y.html">SKIP</a> ([i915#5460])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#3458]) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-glk6/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-primscrn-shrfb-msflip-blt.html">SKIP</a> ([fdo#109271]) +40 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#3023]) +10 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_frontbuffer_tracking@p=
sr-1p-rte.html">SKIP</a> ([i915#3458]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-apl7/igt@kms_frontbuffer_tracking@ps=
r-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> ([fdo#109271]) +122 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_hdmi_inject@inject-au=
dio.html">SKIP</a> ([i915#433])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_hdr@bpc-switch-dpms.h=
tml">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@kms_hdr@static-toggle.html=
">SKIP</a> ([i915#3555] / [i915#8228]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_multipipe_modeset@basic=
-max-pipe-crc-check.html">SKIP</a> ([i915#4070] / [i915#4816])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@kms_pipe_b_c_ivb@from-pipe=
-c-to-b-with-3-lanes.html">SKIP</a> ([fdo#109289]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@bad-source:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@kms_pipe_crc_basic@bad-source.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v=
1/shard-rkl-5/igt@kms_pipe_crc_basic@bad-source.html">SKIP</a> ([i915#1845]=
 / [i915#4098]) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_plane@plane-panning-to=
p-left.html">SKIP</a> ([i915#4098] / [i915#8825]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_plane@plane-position-h=
ole.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@kms_plane_lowres@tiling-x=
@pipe-c-edp-1.html">SKIP</a> ([i915#3582]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@kms_plane_lowres@tiling-y.=
html">SKIP</a> ([i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> ([i915#3555] / [i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@kms_plane_scaling@intel-m=
ax-src-size.html">SKIP</a> ([i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-2.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-pixel-formats.html">SKIP</a> ([i915#3555] / [i9=
15#4098] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#=
5176] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-19/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> ([=
i915#5235]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d-edp-1.html">SKIP</a> ([i91=
5#3555] / [i915#5235]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#5235]) +3 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-d-hdmi-a-2.html">SKIP</a> ([i915#5235]) +11 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-5-upscale-20x20.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-5.html">SKIP</a> ([i915#3555] / [i915#4098]=
 / [i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#4098] / [i91=
5#6953] / [i915#8152]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@p=
ipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-75@pipe-a-edp-1.html">SKIP</a> ([i91=
5#5235]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_prime@d3hot.html">SKIP=
</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-2/igt@kms_properties@plane-properties-legacy.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125849v1/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html">SKI=
P</a> ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-apl7/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-exceed-fully-sf.html">SKIP</a> ([fdo#109271] / [i915#658]) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_psr2_sf@cursor-plane-u=
pdate-sf.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@kms_psr2_sf@overlay-plane-=
move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-2/igt@kms_psr2_sf@primary-plane-=
update-sf-dmg-area-big-fb.html">SKIP</a> ([i915#658]) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> ([i915#4348])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_psr@psr2_cursor_plane_=
onoff.html">SKIP</a> ([i915#1072]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_psr@psr2_sprite_plane_=
move.html">SKIP</a> ([i915#1072]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_move:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_psr@sprite_plane_move=
.html">SKIP</a> ([i915#1072] / [i915#4078])</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_psr_stress_test@flip-=
primary-invalidate-overlay.html">SKIP</a> ([i915#5461] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_rotation_crc@bad-pixe=
l-format.html">SKIP</a> ([i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-4/igt@kms_rotation_crc@sprite-rotation-270.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125849v1/shard-rkl-4/igt@kms_rotation_crc@sprite-rotation-270.html">INCOMPL=
ETE</a> ([i915#8875] / [i915#9569])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@kms_setmode@invalid-clone=
-exclusive-crtc.html">SKIP</a> ([i915#3555] / [i915#8823])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@kms_setmode@invalid-clone-=
single-crtc.html">SKIP</a> ([i915#3555] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125849v1/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-c-edp-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-snb1/igt@kms_vblank@ts-continuation-=
suspend@pipe-b-hdmi-a-1.html">DMESG-WARN</a> ([i915#8841]) +6 other tests d=
mesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-7/igt@kms_vrr@flip-basic.html">=
SKIP</a> ([i915#3555] / [i915#8808])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-apl7/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@kms_writeback@writeback-in=
valid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@perf@blocking-parameterized.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/=
shard-rkl-5/igt@perf@blocking-parameterized.html">SKIP</a> ([i915#5608]) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-sample-oa:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-4/igt@perf@gen12-group-exclusive-stream-sample-oa.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125849v1/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-sample-oa=
.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@perf@gen12-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
849v1/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> ([i91=
5#4349]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@prime_udl.html">SKIP</a> (=
[fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@prime_vgem@basic-fence-re=
ad.html">SKIP</a> ([i915#3291] / [i915#3708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-1/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> ([fdo#109295] / [fdo#111656] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-5/igt@prime_vgem@fence-read-han=
g.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-6/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@syncobj_timeline@invalid-=
multi-wait-available-unsubmitted.html">FAIL</a> ([i915#9583]) +1 other test=
 fail</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-signaled:<=
/p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-apl7/igt@syncobj_timeline@invalid-mu=
lti-wait-available-unsubmitted-signaled.html">FAIL</a> ([i915#9583])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:=
</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-glk6/igt@syncobj_timeline@invalid-mu=
lti-wait-available-unsubmitted-submitted.html">FAIL</a> ([i915#9583])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-=
signaled:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@syncobj_timeline@invalid-mu=
lti-wait-available-unsubmitted-submitted-signaled.html">FAIL</a> ([i915#958=
3])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@syncobj_timeline@invalid-m=
ulti-wait-available-unsubmitted-submitted-signaled.html">FAIL</a> ([i915#95=
83])</p>
</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-apl3/igt@syncobj_timeline@invalid-si=
ngle-wait-all-available-unsubmitted.html">FAIL</a> ([i915#9582])</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_mmap@mmap-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-2/igt@v3d/v3d_mmap@mmap-bo.html=
">SKIP</a> ([i915#2575]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-in-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@v3d/v3d_submit_cl@bad-in-=
sync.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@single-out-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-5/igt@v3d/v3d_submit_csd@single-=
out-sync.html">SKIP</a> ([i915#2575]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-perfmon-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-2/igt@vc4/vc4_perfmon@create-per=
fmon-0.html">SKIP</a> ([i915#7711]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-purgeable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg1-15/igt@vc4/vc4_purgeable_bo@mark=
-purgeable.html">SKIP</a> ([i915#7711]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-dg2-1/igt@vc4/vc4_tiling@get-bad-mod=
ifier.html">SKIP</a> ([i915#7711]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo-0ns:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-mtlp-1/igt@vc4/vc4_wait_bo@used-bo-0=
ns.html">SKIP</a> ([i915#7711]) +7 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAI=
L</a> ([i915#7742]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125849v1/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-5/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2=
582]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25849v1/shard-rkl-4/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@processes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-mtlp-4/igt@gem_ctx_persistence@processes.html">ABORT</a=
> ([i915#9414]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125849v1/shard-mtlp-5/igt@gem_ctx_persistence@processes.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-dg1-14/igt@gem_eio@hibernate.html">ABORT</a> ([i915#797=
5] / [i915#8213]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125849v1/shard-dg1-15/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> ([=
Intel XE#874]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125849v1/shard-rkl-4/igt@gem_exec_balancer@fairslice.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125849v1/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125849v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125849v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd=
.html">SKIP</a> ([fdo#109313]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> (=
[i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125849v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html">PASS</a> =
+13 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html">SKIP<=
/a> ([i915#7276]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125849v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html"=
>ABORT</a> ([i915#7975] / [i915#8213]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-11/igt@gem_exec_suspend@=
basic-s4-devices@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-u=
ncached.html">SKIP</a> ([i915#3282]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_partial_pwrite_p=
read@writes-after-reads-uncached.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">=
SKIP</a> ([i915#8411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-unt=
iled.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@user-each:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-mtlp-4/igt@gem_spin_batch@user-each.html">DMESG-FAIL</a=
> ([i915#8962]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125849v1/shard-mtlp-3/igt@gem_spin_batch@user-each.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-2/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (=
[i915#2527]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125849v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html">PASS</a> =
+1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">F=
AIL</a> ([i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125849v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@vec=
s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> ([i915#5334]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125849v1/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html">FAIL=
</a> ([fdo#103375]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125849v1/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-tglu-5/igt@kms_=
big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-gen12-rc-ccs-cc}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-5/igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-gen1=
2-rc-ccs-cc.html">SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@kms_ccs@pipe-a-c=
rc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">PASS</a> +5 other tests pass=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-var=
ying-size.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-4/igt@kms_=
cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> +17 other=
 tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
shrfb-draw-mmap-wc.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-1=
/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">=
PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-dg2-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hd=
mi-a-3.html">FAIL</a> ([fdo#103375]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125849v1/shard-dg2-7/igt@kms_pipe_crc_basic@s=
uspend-read-crc@pipe-d-hdmi-a-3.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_plane@planar-pixel-format-settings}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-5/igt@kms_plane@planar-pixel-format-settings.html">=
SKIP</a> ([i915#9581]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125849v1/shard-rkl-4/igt@kms_plane@planar-pixel-format-sett=
ings.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@i2c}:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-dg2-2/igt@kms_pm_rpm@i2c.html">FAIL</a> ([i915#8717]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1=
/shard-dg2-6/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([=
i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125849v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +3=
 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@pm-tiling}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-5/igt@kms_pm_rpm@pm-tiling.html">SKIP</a> ([fdo#109=
308]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25849v1/shard-rkl-1/igt@kms_pm_rpm@pm-tiling.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-dg1-14/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hd=
mi-a-4.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125849v1/shard-dg1-16/igt@kms_universal_plane@=
cursor-fb-leak@pipe-a-hdmi-a-4.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-mtlp-7/igt@perf_pmu@busy-double-start@rcs0.html">FAIL</=
a> ([i915#4349]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125849v1/shard-mtlp-3/igt@perf_pmu@busy-double-start@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-2/igt@prime_vgem@basic-write.html">SKIP</a> ([fdo#1=
09295] / [i915#3291] / [i915#3708]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@prime_vgem@basic-writ=
e.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@gem_ccs@block-copy-compressed.html">SKIP</a> =
([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125849v1/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a=
> ([i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#=
7957]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125849v1/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-2/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#=
9323]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125849v1/shard-rkl-5/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#7957]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-2/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125849v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html">SKIP</a=
> ([i915#9591])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@gem_exec_reloc@basic-write-read-noreloc.html"=
>SKIP</a> ([i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-n=
oreloc.html">SKIP</a> ([fdo#109315]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@gem_mmap_gtt@coherency.html">SKIP</a> ([fdo#1=
11656]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125849v1/shard-rkl-5/igt@gem_mmap_gtt@coherency.html">SKIP</a> ([fdo#10931=
5])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-2/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> ([=
i915#3282]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125849v1/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([=
i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@gem_userptr_blits@readonly-pwrite-unsync.html=
">SKIP</a> ([i915#3297]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125849v1/shard-rkl-5/igt@gem_userptr_blits@readonly-pwrit=
e-unsync.html">SKIP</a> ([fdo#109315])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FA=
IL</a> ([i915#2681] / [i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125849v1/shard-tglu-6/igt@i915_pm_rc6_residency=
@rc6-idle@bcs0.html">WARN</a> ([i915#2681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WA=
RN</a> ([i915#2681]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125849v1/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0=
.html">FAIL</a> ([i915#2681] / [i915#3591])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing-internal-panels.html">SKIP</a> ([i915#1845] / [i915#4098]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125849v1/=
shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-=
internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP<=
/a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125849v1/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html"=
>SKIP</a> ([i915#5286]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP<=
/a> ([i915#5286]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125849v1/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html"=
>SKIP</a> ([i915#4098]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP<=
/a> ([i915#5286]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125849v1/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html"=
>SKIP</a> ([fdo#109315]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13825/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</=
a> ([fdo#111614] / [i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125849v1/shard-rkl-5/igt@kms_big_fb@linear-8bpp-ro=
tate-90.html">SKIP</a> ([fdo#109315])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2412767447900929974==--
