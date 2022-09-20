Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53ED65BE046
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 10:36:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C003F10E38E;
	Tue, 20 Sep 2022 08:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05B6610E38E;
 Tue, 20 Sep 2022 08:36:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0A73A363D;
 Tue, 20 Sep 2022 08:36:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2546399272944664730=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Date: Tue, 20 Sep 2022 08:36:20 -0000
Message-ID: <166366298095.1411.18158258284800259657@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220919130505.1984383-1-suraj.kandpal@intel.com>
In-Reply-To: <20220919130505.1984383-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_Pipewriteback_=28rev7=29?=
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

--===============2546399272944664730==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable Pipewriteback (rev7)
URL   : https://patchwork.freedesktop.org/series/107440/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12158_full -> Patchwork_107440v7_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107440v7_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107440v7_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-rkl 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107440v7_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb6/igt@i915_suspend@basic-s3-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-iclb3/igt@i915_suspend@basic-s3-without-i915.html

  
#### Warnings ####

  * igt@kms_writeback@writeback-check-output:
    - shard-tglb:         [SKIP][3] ([i915#2437]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb3/igt@kms_writeback@writeback-check-output.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-tglb1/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-tglb:         [SKIP][5] ([i915#2437]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb2/igt@kms_writeback@writeback-fb-id.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-tglb8/igt@kms_writeback@writeback-fb-id.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][7], [FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25], [FAIL][26], [FAIL][27], [FAIL][28], [FAIL][29], [FAIL][30], [FAIL][31]) ([i915#6599]) -> ([FAIL][32], [FAIL][33], [FAIL][34], [FAIL][35], [FAIL][36], [FAIL][37], [FAIL][38], [FAIL][39], [FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43], [FAIL][44], [FAIL][45], [FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49], [FAIL][50], [FAIL][51], [FAIL][52], [FAIL][53], [FAIL][54], [FAIL][55], [FAIL][56])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl1/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl4/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl1/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl10/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl1/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl10/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl10/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl10/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl1/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl10/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl7/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl4/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl6/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl6/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl4/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl6/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl9/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl6/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl7/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl4/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl9/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl7/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl7/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl9/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl9/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl9/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl6/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl7/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl9/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl6/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl10/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl10/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl4/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl9/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl6/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl1/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl7/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl9/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl7/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl10/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl1/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl4/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl4/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl6/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl7/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl10/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl1/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl10/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl4/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl1/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_writeback@writeback-fb-id:
    - {shard-tglu}:       [SKIP][57] ([i915#2437]) -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglu-3/igt@kms_writeback@writeback-fb-id.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-tglu-2/igt@kms_writeback@writeback-fb-id.html

  
Known issues
------------

  Here are the changes found in Patchwork_107440v7_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83]) -> ([PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [FAIL][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108]) ([i915#4386])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl2/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl2/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl2/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl2/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl7/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl7/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl7/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl8/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl8/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl8/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl8/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl8/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl7/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl7/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl7/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl7/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl6/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl6/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl6/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl6/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl3/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl3/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl3/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl3/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl2/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl2/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl2/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl2/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl1/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl1/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl1/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [PASS][109] -> [SKIP][110] ([i915#4525]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb1/igt@gem_exec_balancer@parallel.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-iclb3/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][111] -> [FAIL][112] ([i915#2842])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][113] -> [FAIL][114] ([i915#2842])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-apl:          [PASS][115] -> [DMESG-FAIL][116] ([i915#6864])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/igt@gem_exec_flush@basic-uc-set-default.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl3/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][117] ([i915#4991])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl8/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-apl:          NOTRUN -> [SKIP][118] ([fdo#109271]) +62 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl8/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][119] -> [DMESG-WARN][120] ([i915#5566] / [i915#716])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk5/igt@gen9_exec_parse@allowed-single.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][121] -> [FAIL][122] ([i915#3989] / [i915#454])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-glk:          [PASS][123] -> [FAIL][124] ([i915#3743])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#3886]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl8/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color_chamelium@ctm-red-to-blue:
    - shard-apl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl3/igt@kms_color_chamelium@ctm-red-to-blue.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [PASS][127] -> [FAIL][128] ([i915#2346])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][129] ([fdo#109271])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-iclb:         [PASS][130] -> [DMESG-WARN][131] ([i915#2867])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb4/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-iclb6/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][132] ([i915#2672]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([i915#2587] / [i915#2672])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-apl:          [PASS][134] -> [DMESG-WARN][135] ([i915#180]) +2 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1:
    - shard-glk:          [PASS][136] -> [FAIL][137] ([i915#1888])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-apl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#658])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [PASS][139] -> [SKIP][140] ([i915#5519])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#533])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl3/igt@kms_vblank@pipe-d-wait-idle.html

  
#### Possible fixes ####

  * igt@drm_import_export@prime:
    - shard-apl:          [DMESG-WARN][142] ([i915#6864]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/igt@drm_import_export@prime.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl1/igt@drm_import_export@prime.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][144] ([i915#4525]) -> [PASS][145] +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][146] ([i915#2846]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][148] ([i915#2842]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][150] ([i915#2842]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [FAIL][152] ([i915#2842]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][154] ([i915#180]) -> [PASS][155] +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/igt@gem_workarounds@suspend-resume.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl3/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-iclb:         [FAIL][156] ([i915#3989]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb8/igt@i915_pm_dc@dc5-psr.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-iclb5/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [DMESG-WARN][158] ([i915#5591]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb5/igt@i915_selftest@live@hangcheck.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-tglb1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-snb:          [SKIP][160] ([fdo#109271]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb4/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-snb6/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-glk:          [FAIL][162] ([i915#43]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk6/igt@kms_vblank@pipe-b-accuracy-idle.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk3/igt@kms_vblank@pipe-b-accuracy-idle.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - {shard-tglu}:       [SKIP][164] ([i915#2437]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglu-6/igt@kms_writeback@writeback-invalid-parameters.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-tglu-3/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-tglb:         [SKIP][166] ([i915#2437]) -> [PASS][167] +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb1/igt@kms_writeback@writeback-pixel-formats.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-tglb7/igt@kms_writeback@writeback-pixel-formats.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-iclb:         [FAIL][168] ([i915#2684]) -> [WARN][169] ([i915#2684])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178], [FAIL][179]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/igt@runner@aborted.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/igt@runner@aborted.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/igt@runner@aborted.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/igt@runner@aborted.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl1/igt@runner@aborted.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl6/igt@runner@aborted.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl8/igt@runner@aborted.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl3/igt@runner@aborted.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl7/igt@runner@aborted.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl3/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][180], [FAIL][181]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][182], [FAIL][183]) ([i915#3002] / [i915#4312] / [i915#5257])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb8/igt@runner@aborted.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb1/igt@runner@aborted.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-tglb7/igt@runner@aborted.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-tglb7/igt@runner@aborted.html
    - shard-glk:          ([FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][188], [FAIL][189], [FAIL][190], [FAIL][191], [FAIL][192]) ([i915#3002] / [i915#4312] / [i915#5257])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk6/igt@runner@aborted.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk2/igt@runner@aborted.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk2/igt@runner@aborted.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk1/igt@runner@aborted.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk3/igt@runner@aborted.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk7/igt@runner@aborted.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk5/igt@runner@aborted.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk7/igt@runner@aborted.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk6/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][193], [FAIL][194]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][195], [FAIL][196]) ([i915#3002] / [i915#4312] / [i915#5257])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb7/igt@runner@aborted.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb5/igt@runner@aborted.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-iclb1/igt@runner@aborted.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-iclb8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
  [i915#6864]: https://gitlab.freedesktop.org/drm/intel/issues/6864
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716


Build changes
-------------

  * Linux: CI_DRM_12158 -> Patchwork_107440v7

  CI-20190529: 20190529
  CI_DRM_12158: 3bde74f15d452bf788ecab8933ee802b2ee9e673 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107440v7: 3bde74f15d452bf788ecab8933ee802b2ee9e673 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/index.html

--===============2546399272944664730==
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
<tr><td><b>Series:</b></td><td>Enable Pipewriteback (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/107440/">https://patchwork.freedesktop.org/series/107440/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107440v7/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107440v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12158_full -&gt; Patchwork_107440v=
7_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107440v7_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_107440v7_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-rkl </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
107440v7_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb6/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7440v7/shard-iclb3/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE<=
/a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-tglb3/igt@kms_writeback@writeback-check-output.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2437">i9=
15#2437</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_107440v7/shard-tglb1/igt@kms_writeback@writeback-check-output.html">I=
NCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-tglb2/igt@kms_writeback@writeback-fb-id.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07440v7/shard-tglb8/igt@kms_writeback@writeback-fb-id.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12158/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12158/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl10/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12158/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl10/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_12158/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl10/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_12158/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl10/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2158/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl4/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1215=
8/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl6/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/s=
hard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12158/shard-skl6/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shar=
d-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12158/shard-skl6/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-s=
kl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_12158/shard-skl4/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl9=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_12158/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl7/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12158/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl9/igt@r=
unner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/6599">i915#6599</a>) -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_107440v7/shard-skl9/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107=
440v7/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_107440v7/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl6/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_107440v7/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-sk=
l10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_107440v7/shard-skl4/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v=
7/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl6/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_107440v7/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl7/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_107440v7/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl7/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_107440v7/shard-skl10/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/s=
hard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl4/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07440v7/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_107440v7/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-skl10/igt@=
runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_107440v7/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-=
skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_107440v7/shard-skl4/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10744=
0v7/shard-skl1/igt@runner@aborted.html">FAIL</a>)</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_writeback@writeback-fb-id:<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-tglu-3/igt@kms_writeback@writeback-fb-id.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#243=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107440v7/shard-tglu-2/igt@kms_writeback@writeback-fb-id.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107440v7_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12158/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12158/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12158/shard-apl2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/sha=
rd-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12158/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12158/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12158/shard-apl3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158=
/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12158/shard-apl6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2158/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12158/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12158/shard-apl8/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl8/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107=
440v7/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_107440v7/shard-apl8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_107440v7/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/sh=
ard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_107440v7/shard-apl7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7440v7/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_107440v7/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_107440v7/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/sh=
ard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_107440v7/shard-apl3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7440v7/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_107440v7/shard-apl2/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_107440v7/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/sh=
ard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_107440v7/shard-apl1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl1/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4386=
">i915#4386</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb1/igt@gem_exec_balancer@parallel.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/s=
hard-iclb3/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07440v7/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107=
440v7/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-apl8/igt@gem_exec_flush@basic-uc-set-default.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7440v7/shard-apl3/igt@gem_exec_flush@basic-uc-set-default.html">DMESG-FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6864">i915#=
6864</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107440v7/shard-apl8/igt@gem_userptr_blits@input-che=
cking.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107440v7/shard-apl8/igt@gen7_exec_parse@oacontrol-t=
racking.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-glk5/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v=
7/shard-glk5/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-icl=
b3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3989">i915#3989</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-glk1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-=
180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107440v7/shard-glk6/igt@kms_big_fb@y-tiled-max-hw-st=
ride-64bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107440v7/shard-apl8/igt@kms_ccs@pipe-a-bad-aux-stri=
de-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-red-to-blue:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107440v7/shard-apl3/igt@kms_color_chamelium@ctm-red=
-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_107440v7/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107440v7/shard-glk5/igt@kms_dither@fb-8bpc-vs-panel=
-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb4/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10744=
0v7/shard-iclb6/igt@kms_flip@flip-vs-suspend@c-edp1.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107440v7/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107440v7/shard-iclb7/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_107440v7/shard-apl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107440v7/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888"=
>i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107440v7/shard-apl8/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_107440v7/shard-tglb3/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107440v7/shard-apl3/igt@kms_vblank@pipe-d-wait-idle=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_import_export@prime:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-apl8/igt@drm_import_export@prime.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6864">i915#6864<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7440v7/shard-apl1/igt@drm_import_export@prime.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_107440v7/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107=
440v7/shard-glk9/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_107440v7/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107440v7/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7440v7/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-apl3/igt@gem_workarounds@suspend-resume.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107440v7/shard-apl3/igt@gem_workarounds@suspend-resume.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb8/igt@i915_pm_dc@dc5-psr.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/sha=
rd-iclb5/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-tglb5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915=
#5591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107440v7/shard-tglb1/igt@i915_selftest@live@hangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-badstride:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-snb4/igt@kms_frontbuffer_tracking@fbc-badstride.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107440v7/shard-snb6/igt@kms_frontbuffer_tracking@fbc-badstride.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-accuracy-idle:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-glk6/igt@kms_vblank@pipe-b-accuracy-idle.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/43">i915#43</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1074=
40v7/shard-glk3/igt@kms_vblank@pipe-b-accuracy-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-tglu-6/igt@kms_writeback@writeback-invalid-parameters.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
437">i915#2437</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_107440v7/shard-tglu-3/igt@kms_writeback@writeback-invalid-para=
meters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-tglb1/igt@kms_writeback@writeback-pixel-formats.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2437">i=
915#2437</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_107440v7/shard-tglb7/igt@kms_writeback@writeback-pixel-formats.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_107440v7/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12158/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/6599">i915#6599</a>) -&gt; (<a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl1/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_107440v7/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-ap=
l8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_107440v7/shard-apl3/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7=
/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-apl3/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb1/igt@runner@a=
borted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/6599">i915#6599</a>) -&gt; (<a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-tglb7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107440v7/shard-tglb7/igt@runner@aborted.html">FAIL</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#=
5257</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-glk6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12158/shard-glk2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk1/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/6599">i915#6599</a>) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk3/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107440v7/shard-glk7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk5/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_107440v7/shard-glk7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-glk6/=
igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb5/igt@runner@a=
borted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/6599">i915#6599</a>) -&gt; (<a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v7/shard-iclb1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107440v7/shard-iclb8/igt@runner@aborted.html">FAIL</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#=
5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12158 -&gt; Patchwork_107440v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12158: 3bde74f15d452bf788ecab8933ee802b2ee9e673 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107440v7: 3bde74f15d452bf788ecab8933ee802b2ee9e673 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2546399272944664730==--
